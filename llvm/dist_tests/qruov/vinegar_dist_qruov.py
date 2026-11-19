#!/usr/bin/env python3
"""vinegar_dist_qruov.py — secret-dependence *distribution* test on the QR-UOV
signing vinegar, run in-process via Unicorn (dist_tests/common/machine.py)
against a pair of gated whole-program QR-UOV ELFs (a correct build and a faulty
build). Same statistic as vinegar_dist_snova.py / vinegar_dist_mayo.py; the one
difference is WHAT keys the vinegar.

Why the swept variable is seed_y, not the private key
-----------------------------------------------------
In MAYO/SNOVA the vinegar is a DETERMINISTIC function of the long-term private
seed:  V = SHAKE(secret || msg || ...).  A fault that drops the secret makes V
recomputable from public data, so the test sweeps the SECRET and watches V
freeze.

QR-UOV signing is RANDOMIZED. In crypto_sign (src/ref/sign.c):

    QRUOV_SEED seed_y; randombytes(seed_y, QRUOV_SEED_LEN);   // fresh per signature
    QRUOV_Sign(seed_sk, seed_pk, seed_y, seed_r, seed_sol, m, mlen, sig);

The vinegar  y = Expand_y(seed_y)  is keyed by seed_y, an EPHEMERAL RNG output
(the analog of a per-signature nonce), NOT by the stored key. So the vinegar is
already independent of seed_sk even in the correct build -- sweeping the secret
would detect nothing. The meaningful fault is a RANDOMNESS/entropy collapse: a
fault that severs seed_y (e.g. skipping the AES-CTR PRG keying in Expand_y) so
the vinegar becomes constant/predictable across signatures, which leaks the oil
space exactly as a known vinegar would.

So this test sweeps N random seed_y values (patched at QRUOV_Sign's seed_y
argument), captures the vinegar y per seed in both builds, and compares the
per-position seed-sweep entropy:

    correct : as seed_y varies, y varies   -> each vinegar byte carries high
              entropy w.r.t. the seed_y sweep
    faulty  : as seed_y varies, y is frozen -> ~0 bits (vinegar lost the RNG)

    leak_fraction = #collapsed / #live-in-correct   (1 = full collapse)

The vinegar
-----------
y is a VECTOR_V of QRUOV_v = 156 vinegar variables over F_q = GF(127), stored one
GF(127) element per byte (y = [3 x [52 x i8]] = 156 bytes). Entropy is therefore
measured PER BYTE over an alphabet of 127 (vs GF(16) nibbles in MAYO/SNOVA).

How the vinegar is captured
---------------------------
QRUOV_Sign(seed_sk, seed_pk, seed_y, ...) has seed_y as its 3rd argument (r2); we
record that pointer at the sign entry, snapshot, and overwrite it per seed. The
vinegar is read at Expand_y(seed_y, y) -- hooked together with its gated
<Expand_y>__faulted clone (the occurrence-gated build dispatches the call to the
clone), reading the y buffer (arg r1) at the call's return.

Usage
-----
    python3 dist_tests/qruov/vinegar_dist_qruov.py \\
      --correct-elf build/test_qruov/Expand_y/full_qruov_gated/gated_Expand_y.elf \\
      --faulty-elf  build/test_qruov/Expand_y/loopOrFuncSkip/full_qruov_gated/gated_Expand_y_fnSkip_PRG_init_aes_ctr_line1.elf \\
      --n-seeds 64
"""

import argparse
import collections
import json
import math
import os
import random
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..")))

from dist_tests.common.machine import Machine, EmulationError  # noqa: E402

DEFAULT_ENTRY = "QRUOV_Sign"
EXPAND = "Expand_y"          # the vinegar PRG expansion; y is its 2nd argument
SEED_OFF = 0                 # seed_y is its own buffer (no public prefix)
SEED_LEN = 16                # QRUOV_SEED_LEN (category 1: AES-128 key)
SEED_REG = "r2"             # QRUOV_Sign's 3rd arg = seed_y
Y_REG = "r1"                # Expand_y's 2nd arg (fastcc) = y output buffer
VINEGAR_LEN = 156            # QRUOV_v GF(127) elements, one byte each
ALPHABET = 127               # GF(q), q = 127 -> per-byte entropy up to log2(127)
RUN_TIMEOUT_US = 300_000_000   # QR-UOV's KAT main runs the heavy keygen before
                               # sign; the boot-to-QRUOV_Sign emulation needs a
                               # generous wall-clock cap (esp. under -j contention)

# Entropy thresholds, as fractions of the max observable per-position entropy
# Hmax = min(log2(ALPHABET), log2(N)). A byte position is "live" above
# LIVE_FRAC*Hmax and "frozen" below FROZEN_FRAC*Hmax; the wide gap makes the
# verdict robust to finite-sample entropy bias.
LIVE_FRAC = 0.50
FROZEN_FRAC = 0.15


class VinegarSession:
    """Boots one gated QR-UOV ELF to the QRUOV_Sign entry, snapshots there, and
    captures the per-call vinegar block for an arbitrary seed_y by hooking
    Expand_y (and its gated __faulted clone) and reading its output buffer."""

    def __init__(self, elf_path, entry=DEFAULT_ENTRY):
        self.entry = entry
        m = Machine.from_elf(elf_path)
        self.m = m
        self.elf_path = elf_path
        m.run_until("main")
        main_pc = m.reg("pc") | 1
        self.main_ret = m.reg("lr") & ~1

        addrs = {}
        for name in (entry, f"{entry}__faulted"):
            try:
                addrs[name] = m.addr_of(name)
            except KeyError:
                continue
        if entry not in addrs:
            raise EmulationError(f"{elf_path}: no symbol named {entry!r}")
        # Expand_y and its gated clone -- the occurrence-gated build dispatches the
        # single Expand_y call to the __faulted clone, so hook both.
        self.expand_addrs = []
        for name in (EXPAND, f"{EXPAND}__faulted"):
            try:
                self.expand_addrs.append(m.addr_of(name))
            except KeyError:
                continue
        if not self.expand_addrs:
            raise EmulationError(f"{elf_path}: no symbol named {EXPAND!r}")

        hit = {}

        def sign_hook(machine, address, size):
            if "seed" not in hit:
                hit["seed"] = machine.reg(SEED_REG)          # seed_y pointer
                hit["pc"] = address
                hit["ret"] = machine.reg("lr") & ~1
                machine.uc.emu_stop()

        handles = [m.hook_code(sign_hook, begin=a, end=a, precise=False)
                   for a in addrs.values()]
        try:
            m._emu_start(main_pc, self.main_ret, timeout=RUN_TIMEOUT_US)
        finally:
            for h in handles:
                m.unhook(h)
        if "seed" not in hit:
            raise EmulationError(f"{elf_path}: {entry} never reached from main")

        self.seed_ptr = hit["seed"]
        self.sign_pc = hit["pc"]
        self.sign_ret = hit["ret"]
        self.snap = m.snapshot()

    def vinegar(self, seed_bytes):
        """Return the vinegar block for a given SEED_LEN-byte seed_y.

        Overwrite seed_y at QRUOV_Sign's argument buffer, run the sign body, and
        read the vinegar at Expand_y's return (its y buffer, arg r1).
        """
        m = self.m
        m.restore(self.snap)
        m.write(self.seed_ptr + SEED_OFF, bytes(seed_bytes))
        cap = {}

        def eh(machine, address, size):
            # Expand_y(seed_y=r0, y=r1); capture the y pointer + return site.
            if "dest" not in cap:
                cap["dest"] = machine.reg(Y_REG)
                cap["ret"] = machine.reg("lr") & ~1
                cap["entry"] = address
                machine.uc.emu_stop()

        hs = [m.hook_code(eh, begin=a, end=a, precise=False)
              for a in self.expand_addrs]
        try:
            m._emu_start(self.sign_pc | 1, self.sign_ret, timeout=RUN_TIMEOUT_US)
            if "dest" not in cap:
                raise EmulationError(
                    f"{self.elf_path}: {EXPAND} not reached from {self.entry}")
            # Run the Expand_y body to completion, then read its output buffer.
            m._emu_start(cap["entry"] | 1, cap["ret"], timeout=RUN_TIMEOUT_US)
            return bytes(m.read(cap["dest"], VINEGAR_LEN))
        finally:
            for h in hs:
                m.unhook(h)


# --------------------------------------------------------------------------
# distribution statistics  (per BYTE, alphabet = GF(127))
# --------------------------------------------------------------------------

def _entropy_bits(values):
    if not values:
        return 0.0
    n = len(values)
    h = 0.0
    for cnt in collections.Counter(values).values():
        p = cnt / n
        h -= p * math.log2(p)
    return h


def _position_entropies(blocks):
    npos = len(blocks[0])
    return [_entropy_bits([b[p] for b in blocks]) for p in range(npos)]


def _hist_str(blocks):
    c = collections.Counter()
    for b in blocks:
        c.update(b)
    total = sum(c.values()) or 1
    top = sorted(c.items(), key=lambda kv: -kv[1])[:8]
    return " ".join(f"{v}:{100 * cnt / total:.0f}%" for v, cnt in sorted(top))


def _collision_rate(blocks):
    n = len(blocks)
    if n < 2:
        return 0.0
    pairs = n * (n - 1) // 2
    same = sum(c * (c - 1) // 2 for c in collections.Counter(blocks).values())
    return same / pairs


def collect(label, elf_path, seeds, entry=DEFAULT_ENTRY):
    sess = VinegarSession(elf_path, entry=entry)
    vs = [sess.vinegar(s) for s in seeds]
    ent = _position_entropies(vs)
    res = {
        "label": label.strip(), "elf": elf_path,
        "n_seeds": len(seeds), "block_len": len(vs[0]),
        "distinct": len(set(vs)),
        "collision_rate": _collision_rate(vs),
        "mean_pos_entropy": sum(ent) / len(ent),
        "pos_entropy": ent,
        "byte_hist": _hist_str(vs),
        "blocks_hex": [v.hex() for v in vs],
    }
    print(f"[i] {label}: {len(seeds)} seeds -> {res['distinct']} distinct block(s), "
          f"collision rate {res['collision_rate']:.3f}, "
          f"mean per-position entropy {res['mean_pos_entropy']:.2f} bits")
    print(f"[i] {label}: byte histogram (top values): {res['byte_hist']}")
    return res


def compare(res_c, res_f, n_seeds):
    hmax = min(math.log2(ALPHABET), math.log2(n_seeds)) if n_seeds > 1 else 0.0
    live_t = LIVE_FRAC * hmax
    frozen_t = FROZEN_FRAC * hmax

    hc, hf = res_c["pos_entropy"], res_f["pos_entropy"]
    live = [p for p in range(len(hc)) if hc[p] >= live_t]
    collapsed = [p for p in live if hf[p] <= frozen_t]
    leak_fraction = (len(collapsed) / len(live)) if live else 0.0
    return {
        "hmax_bits": hmax, "live_threshold": live_t, "frozen_threshold": frozen_t,
        "n_positions": len(hc), "n_live_in_correct": len(live),
        "n_collapsed": len(collapsed), "leak_fraction": leak_fraction,
        "collapsed_positions": collapsed,
    }


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--correct-elf", required=True)
    ap.add_argument("--faulty-elf", required=True)
    ap.add_argument("--func", default=DEFAULT_ENTRY,
                    help="fixed observation point: the signing entry symbol whose "
                         "vinegar is captured (default %(default)s). The faulty ELF's "
                         "injected fault may live anywhere in the call tree; this only "
                         "names where the vinegar is read, and is the SAME for every "
                         "gated ELF pair.")
    ap.add_argument("--n-seeds", type=int, default=64,
                    help="number of random seed_y values swept (default 64).")
    ap.add_argument("--seed", type=int, default=1, help="RNG seed for the swept seeds.")
    ap.add_argument("--report", default=None)
    args = ap.parse_args()

    for lbl, p in (("correct", args.correct_elf), ("faulty", args.faulty_elf)):
        if not os.path.isfile(p):
            print(f"[!] {lbl} ELF not found: {p}", file=sys.stderr)
            sys.exit(1)
    if args.n_seeds < 2:
        print("[!] --n-seeds must be >= 2 for a distribution comparison", file=sys.stderr)
        sys.exit(1)

    rng = random.Random(args.seed)
    seeds = [bytes(rng.randrange(256) for _ in range(SEED_LEN)) for _ in range(args.n_seeds)]

    print("=" * 74)
    print("QR-UOV vinegar entropy DISTRIBUTION test (seed_y sweep, correct vs faulty)")
    print("=" * 74)

    try:
        res_c = collect("correct", args.correct_elf, seeds, entry=args.func)
        res_f = collect("faulty ", args.faulty_elf, seeds, entry=args.func)
    except EmulationError as e:
        print(f"[!] emulation failed: {e}", file=sys.stderr)
        sys.exit(2)

    cmp = compare(res_c, res_f, args.n_seeds)

    print()
    print("=" * 74)
    print("Verdict")
    print("=" * 74)
    print(f"[i] max observable per-position entropy Hmax = {cmp['hmax_bits']:.2f} bits "
          f"(live > {cmp['live_threshold']:.2f}, frozen < {cmp['frozen_threshold']:.2f})")
    print(f"[i] correct: mean per-position entropy {res_c['mean_pos_entropy']:.2f} bits "
          f"({cmp['n_live_in_correct']}/{cmp['n_positions']} positions seed-dependent)")
    print(f"[i] faulty : mean per-position entropy {res_f['mean_pos_entropy']:.2f} bits")
    print(f"[i] leak: {cmp['n_collapsed']}/{cmp['n_live_in_correct']} seed-dependent "
          f"positions FROZEN in the faulty build (leak fraction {cmp['leak_fraction']:.2f})")

    lf = cmp["leak_fraction"]
    if lf >= 0.999:
        verdict = "full"
        print("[!] FULL COLLAPSE: every seed-dependent position of the vinegar is "
              "frozen in the faulty build -- seed_y no longer drives the vinegar PRG, "
              "so the vinegar is constant/predictable across signatures, leaking the "
              "oil space exactly as a known vinegar would.")
        exit_code = 1
    elif lf > 0.0:
        verdict = "partial"
        print(f"[!] PARTIAL COLLAPSE: {cmp['n_collapsed']} of {cmp['n_live_in_correct']} "
              "seed-dependent vinegar positions are frozen in the faulty build. "
              f"Collapsed byte positions: {cmp['collapsed_positions']}")
        exit_code = 1
    else:
        verdict = "none"
        print("[i] NO COLLAPSE: the faulty build's vinegar depends on seed_y as "
              "strongly as the correct build's.")
        exit_code = 0

    if args.report:
        with open(args.report, "w") as f:
            json.dump({"correct": res_c, "faulty": res_f,
                       "comparison": cmp, "verdict": verdict,
                       "collapse_detected": exit_code == 1}, f, indent=2)
        print(f"[i] report written to {args.report}")

    sys.exit(exit_code)


if __name__ == "__main__":
    main()
