#!/usr/bin/env python3
"""
early_stop_sweep_unicorn.py (QR-UOV, Unicorn backend) -- incrementally
collect (or reuse already-collected) correct/faulty trials for increasing
secret values sv = 0, 1, 2, ..., and STOP as soon as the requested test(s)
(ineffective and/or correction) have found a witness, instead of
collecting the whole field_mod sweep (127 values for F_q code, 256 for
byte code, x 2 variants x every public seed x every ephemeral draw) and
analysing it afterwards.

Both tests only answer an EXISTENCE question:

  ineffective   forall p exists s1,s2 : (forall r Delta(s1,r,p)=0) and
                                        (forall r Delta(s2,r,p)!=0)
  correction    exists alpha != 0, s : forall (p, r) y1 = y2 + alpha

so once a witness is found, collecting the remaining secret values cannot
change the answer. Every output position of every output buffer is checked
as each new sv arrives, so a witness usually appears long before the end
of the domain.

Same model as dist_tests/kyber/early_stop_sweep_unicorn.py; QR-UOV specifics:

  - collection is collect_dist_unicorn.run_one() unchanged (single-byte
    override of --secret-buf[--secret-pos]);
  - outputs are decoded with output_repr.py (qruov.json "output-repr", or
    the function's domain), so positions are element indices (one per F_q
    coefficient, also inside the 7-bit packed pk / sm), the ineffective
    test compares decoded elements for equality, and the correction alpha
    is the difference in the element's own group: (y1 - y2) mod q for F_q
    elements, xor for plain bytes / int32;
  - all role:output buffers are checked (default; --out-buf narrows it),
    and a witness on any one of them answers the question;
  - files keep the layout of collect_dist_unicorn.sh, so existing full
    sweeps are replayed, and direct_leak / ineffective_qruov.py /
    correction_qruov.py read what this collects:
        <outdir>[_seed<p>][_eph<j>]/{correct,faulty}_sv<sv>.json
    (first seed: no _seed suffix; draw 0: no _eph suffix).

Resumability / replay: a trial whose file already exists (non-empty) is
loaded instead of re-run. Pointing this at a fully-collected sweep REPLAYS
it in sv order and reports how many values early stopping would have
needed, with no new trials. Pass --fresh to run_combined_unicorn.sh after
changing anything that affects what a trial computes.

Usage:
    python3 early_stop_sweep_unicorn.py \
        --witness test_qruov/Fq_sub/qemu_witness.json \
        --active-lengths test_qruov/Fq_sub/active_lengths.json \
        --correct-elf build/test_qruov/Fq_sub/Fq_sub.elf \
        --faulty-elf build/test_qruov/Fq_sub/binOpFault/Fq_sub_line2_opB.elf \
        --func Fq_sub --secret-buf X --secret-pos 0 \
        --outdir test_qruov/Fq_sub/binOpFault/Fq_sub_line2_opB/dist_paired \
        --seeds 0 1 2 3 --test both
"""

import argparse
import json
import os
import sys

import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "setup"))
sys.path.insert(0, os.path.abspath(os.path.join(HERE, "..", "..")))

from collect_dist_unicorn import run_one, RunFailed, RunTimeout  # noqa: E402
from distributions_unicorn import field_mod_for  # noqa: E402
from dist_tests.common.ineffective import IneffectiveTracker  # noqa: E402
from dist_tests.qruov.output_repr import (  # noqa: E402
    MOD_Q_KINDS, resolve, decode, difference)
from dist_tests.qruov.ineffective_qruov import get_buffer  # noqa: E402


def load_or_collect(sval, c_path, f_path, args, seed, eph_index):
    """Run a trial only for whichever of the two files is missing (or a
    zero-byte stub left by an interrupted run), then load both."""
    for variant, elf_path, out_path in (
        ("correct", args.correct_elf, c_path),
        ("faulty", args.faulty_elf, f_path),
    ):
        if os.path.exists(out_path) and os.path.getsize(out_path) > 0:
            continue
        run_one(elf_path, args.witness, args.active_lengths, args.func,
                args.field_mod, seed, variant, out_path, args.machine,
                args.fixed_scalars, args.secret_buf, args.secret_pos, sval,
                args.eph_secret, eph_index)
    with open(c_path) as f:
        c = json.load(f)
    with open(f_path) as f:
        fdata = json.load(f)
    return c, fdata


def output_buffers(witness, requested):
    with open(witness) as f:
        layout = json.load(f)["layout"]
    outs = [n for n, s in layout.items() if s.get("role") == "output"]
    if requested:
        bad = [n for n in requested if n not in outs]
        if bad:
            raise SystemExit(f"[!] --out-buf {bad} not a role:output buffer "
                             f"of the witness layout (outputs: {outs})")
        return requested
    if not outs:
        raise SystemExit("[!] no role:output entry in the witness layout")
    return outs


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--witness", required=True)
    ap.add_argument("--active-lengths", required=True)
    ap.add_argument("--correct-elf", required=True)
    ap.add_argument("--faulty-elf", required=True)
    ap.add_argument("--func", required=True)
    ap.add_argument("--field-mod", type=int, default=None,
                    help="secret values 0..N-1 swept at most (also the "
                         "range of the uniform background fill). Default: "
                         "the function's domain, field_mod_for(--func).")
    ap.add_argument("--outdir", required=True,
                    help="sweep dir of the first seed / draw 0 "
                         "(<faulty stem>/dist_paired); the others are "
                         "siblings with _seed<p> / _eph<j> suffixes")
    ap.add_argument("--machine", default="mps2-an386")
    ap.add_argument("--fixed-scalars", default="")
    ap.add_argument("--eph-secret", default="",
                    help="comma-separated ephemeral-secret buffers: sampled "
                         "as --eph-draws draws r_j, independent of the public "
                         "seeds; every seed is run with every draw")
    ap.add_argument("--eph-draws", type=int, default=4,
                    help="J ephemeral draws (only with --eph-secret; "
                         "otherwise J = 1). Default: %(default)s")
    ap.add_argument("--secret-buf", required=True)
    ap.add_argument("--secret-pos", type=int, required=True)
    ap.add_argument("--seed", type=int, default=0)
    ap.add_argument("--seeds", type=int, nargs="+", default=None,
                    help="public-background seeds p (>= 2 for a meaningful "
                         "'for all p'). Default: just --seed.")
    ap.add_argument("--out-buf", nargs="+", default=None,
                    help="output buffer(s) to check. Default: every "
                         "role:output buffer of the witness.")
    ap.add_argument("--test", choices=["ineffective", "correction", "both"],
                    default="both")
    ap.add_argument("--require", choices=["any", "all"], default="all",
                    help="with --test both: stop when ANY requested test has "
                         "a hit, or (default) when EVERY one has")
    args = ap.parse_args()

    if args.field_mod is None:
        args.field_mod = field_mod_for(args.func)
    seeds = args.seeds if args.seeds else [args.seed]
    n_eph = args.eph_draws if args.eph_secret else 1
    want_ineffective = args.test in ("ineffective", "both")
    want_correction = args.test in ("correction", "both")
    if want_correction and len(seeds) < 2:
        print("[!] fewer than 2 public seeds: 'for all p' is vacuous, so "
              "every s trivially satisfies the correction test.",
              file=sys.stderr)
    if args.eph_secret and n_eph < 2:
        print("[!] --eph-secret with --eph-draws < 2: 'forall r' is vacuous "
              "(one ephemeral draw).", file=sys.stderr)

    out_bufs = output_buffers(args.witness, args.out_buf)
    reprs = {b: resolve(args.func, b) for b in out_bufs}
    for b in out_bufs:
        print(f"[i] output '{b}' representation: {reprs[b]}")

    # Grid: every public seed p_k x every ephemeral draw r_j, seed-major.
    grid = [(p, j) for p in seeds for j in range(n_eph)]
    dirs = {}
    for i, p in enumerate(seeds):
        for j in range(n_eph):
            d = args.outdir + (f"_seed{p}" if i > 0 else "") \
                + (f"_eph{j}" if j > 0 else "")
            os.makedirs(d, exist_ok=True)
            dirs[(p, j)] = d

    trackers = {}            # out_buf -> IneffectiveTracker (sized lazily)
    ineffective_hit = None   # (out_buf, pos, [(s1, s2) per seed])
    correction_hit = None    # (out_buf, pos, s, alpha, kind)
    n_collected = n_reused = n_examined = 0

    for sval in range(args.field_mod):
        records = {}
        reused = True
        try:
            for key in grid:
                d = dirs[key]
                c_path = os.path.join(d, f"correct_sv{sval:02d}.json")
                f_path = os.path.join(d, f"faulty_sv{sval:02d}.json")
                reused &= os.path.exists(c_path) and os.path.exists(f_path)
                records[key] = load_or_collect(sval, c_path, f_path, args,
                                               key[0], key[1])
        except RunTimeout as e:
            # A hanging ELF hangs for every sv: abort this ELF.
            print(f"[!] sv={sval}: {e}", file=sys.stderr)
            print("[RESULT] aborted: subprocess.TimeoutExpired -- "
                  "emulation timed out, moving on to the next ELF")
            sys.exit(124)
        except RunFailed as e:
            print(f"[!] sv={sval}: collection failed, skipping sv.\n{e}",
                  file=sys.stderr)
            continue
        n_examined += 1
        if reused:
            n_reused += 1
        else:
            n_collected += 1

        for buf in out_bufs:
            # decoded (correct, faulty, kinds) per grid point
            dec = {}
            for key, (c, fdata) in records.items():
                co, kinds = decode(reprs[buf], get_buffer(c, buf))
                fo, _ = decode(reprs[buf], get_buffer(fdata, buf))
                dec[key] = (co, fo, kinds)
            n_pos = min(min(len(co), len(fo)) for co, fo, _ in dec.values())
            if n_pos == 0:
                continue

            if want_ineffective and ineffective_hit is None:
                if buf not in trackers:
                    trackers[buf] = IneffectiveTracker(n_pos, len(seeds))
                eq = np.array([[[dec[(p, j)][0][i] == dec[(p, j)][1][i]
                                 for i in range(n_pos)]
                                for j in range(n_eph)]
                               for p in seeds], dtype=bool)   # (K, J, n_pos)
                trackers[buf].update(sval, eq)
                h = trackers[buf].hit()
                if h is not None:
                    pos, wit = h
                    ineffective_hit = (buf, pos, wit)
                    print(f"[+] INEFFECTIVE hit on '{buf}' pos {pos}: a pair "
                          f"on each of {len(seeds)} public seeds {seeds}, "
                          f"constant over {n_eph} ephemeral draw(s): "
                          + ", ".join(f"p={p}: s1={a} (ineffective) vs "
                                      f"s2={b} (effective)"
                                      for p, (a, b) in zip(seeds, wit)))

            if want_correction and correction_hit is None:
                kinds = dec[grid[0]][2]
                deltas = np.array([[difference(kinds[i], co[i], fo[i])
                                    for i in range(n_pos)]
                                   for co, fo, _ in dec.values()],
                                  dtype=np.int64)              # (|grid|, n_pos)
                # alpha != 0 (y1 == y2 is an unaffected position) and the
                # same alpha on every (p, r)
                ok = (deltas[0] != 0) & (deltas == deltas[0]).all(axis=0)
                pos = np.flatnonzero(ok)
                if pos.size:
                    pos = int(pos[0])
                    alpha = int(deltas[0][pos])
                    correction_hit = (buf, pos, sval, alpha, kinds[pos])
                    print(f"[+] CORRECTION hit on '{buf}' pos {pos} "
                          f"({kinds[pos]}): s={sval}, alpha={alpha} constant "
                          f"across {len(seeds)} public seeds {seeds} x "
                          f"{n_eph} ephemeral draw(s)")

        found = []
        if want_ineffective:
            found.append(ineffective_hit is not None)
        if want_correction:
            found.append(correction_hit is not None)
        if any(found) if args.require == "any" else all(found):
            print(f"[i] stopping sweep at sv={sval}: {n_examined} secret "
                  f"value(s) examined ({n_collected} newly collected, "
                  f"{n_reused} reused from disk), out of {args.field_mod} -- "
                  f"{100 * (sval + 1) / args.field_mod:.1f}% of the full "
                  f"sweep.")
            break
    else:
        print(f"[i] swept all {args.field_mod} secret value(s) "
              f"({n_examined} examined, {n_collected} newly collected, "
              f"{n_reused} reused from disk) without satisfying "
              f"--require={args.require} for --test={args.test}")

    print()
    J = f"{n_eph} ephemeral draw(s)"
    if want_ineffective:
        if ineffective_hit:
            buf, pos, wit = ineffective_hit
            s1, s2 = wit[0]
            print(f"[RESULT] ineffective test: DETECTED on '{buf}' pos {pos} "
                  f"(s1={s1} ineffective, s2={s2} effective; pair on each of "
                  f"{len(seeds)} public seeds, constant over {J})")
        else:
            print("[RESULT] ineffective test: no disagreement found in range "
                  "swept")
    if want_correction:
        if correction_hit:
            buf, pos, sv, alpha, kind = correction_hit
            rel = "+ alpha (mod q)" if kind in MOD_Q_KINDS else "xor alpha"
            print(f"[RESULT] correction test: SATISFIED on '{buf}' pos {pos} "
                  f"(s={sv}, alpha={alpha}: y1 = y2 {rel} for all "
                  f"{len(seeds)} swept p x {J})")
        else:
            print("[RESULT] correction test: no (s, alpha) with constant "
                  "Delta across (p, r) found in range swept")


if __name__ == "__main__":
    main()
