#!/usr/bin/env python3
"""direct_leak.py -- direct-leak test for QR-UOV (round 2).

Question: does the fault make an output equal to the secret? For an input
x, run the correct build f and the faulted build f~ and compare each output
buffer O with the secret-buf S (then, if none matches, each eph_secret):

    trace leaks  iff  f~(x).O == S  and  f(x).O != S

"==" compares the bytes the two have in common, n = min(len O, len S), and
requires any further bytes of O to be zero: a scalar output equal to a
narrower scalar secret (ret == X), an output that is a prefix of a larger
secret (sig == Sd[:|sig|]), or a larger output holding just the secret.
f(x).O != S makes sure the fault put the secret there: a function that
copies its secret by design (store_QRUOV_SEED) does not count.

Over several trace pairs, the function leaks S through O iff
  - the fault changed O in at least one trace (traces where it was
    ineffective say nothing and are ignored),
  - in every trace where it changed O, f~(x).O == S, and
  - S is not the same in all those traces (a fault that forces a constant,
    e.g. zero, could equal a secret that happens to be that constant, but
    cannot follow one that changes).
Trace pairs are taken round-robin from all of the fault's collected
directories (public seeds, ephemeral draws), so S differs between them.

The reference value of S is the one the function saw: inputs[S]
(inputs["<S>_pre"] for an in-place buffer), or, when S is itself an output
(e.g. a keypair's sk), the correct run's outputs[S]; outputs that are
checked buffers are not compared.

qruov.json may name a buffer by its C parameter or by the call-site buffer
the driver bound it to; traces are keyed by parameter, so names are mapped
through qemu_witness.json's "alloca" aliases first.

No new sweep is needed: the test reads the trace pairs (correct_sv*.json /
faulty_sv*.json) already collected under test_qruov/<func>/<fault>/. If
there are none, a few pairs are collected with QR-UOV's Unicorn run_one()
(seed k, ephemeral draw k, no secret override) into
<fault>/direct_leak_trace/. Functions the argument sweep cannot test
(dist_tests/qruov/setup/distributions_unicorn.py UNSUPPORTED) are skipped.

A faulty ELF that gives no verdict within --elf-timeout seconds (default
120, e.g. a fault that makes the emulated function loop forever) is
recorded as "timeout" and skipped, like the ineffective/correction tests.

Per faulty ELF, the verdict goes to
    test_qruov/<func>/<faulty_stem>/direct_leak_result.txt
and, with --csv, one row per faulty ELF is written in the generic_tests_plot.py
schema (scheme,function,fault,source,test,detected,detail): an existing row
for the same (scheme, function, fault, test) is replaced where it stands,
otherwise the row is appended; rows of other functions are left as they are.

Paths are relative to llvm/ (test_qruov/, build/test_qruov/); qruov.json is
read from the QR-UOV repo root. Usage:
    python3 dist_tests/direct_leak.py --func Fq_sub
    python3 dist_tests/direct_leak.py --func SIG_GEN --traces 32 \\
        --csv ../direct_leak_report.csv
"""

import argparse
import csv
import importlib
import json
import os
import random
import multiprocessing
import re
import sys

# llvm/ (holds dist_tests/, test_qruov/, build/); qruov.json is one level up.
REPO_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
CONFIG_ROOT = os.path.dirname(REPO_ROOT)
if REPO_ROOT not in sys.path:
    sys.path.insert(0, REPO_ROOT)

SCHEMES = ("qruov",)
CSV_FIELDS = ["scheme", "function", "fault", "source", "test", "detected", "detail"]
TEST_NAME = "direct_leak"
FALLBACK_PAIRS = 4      # trace pairs collected when none exist
ELF_TIMEOUT_S = 120     # wall-clock cap per faulty ELF (0 = none)


CSV_KEY = ("scheme", "function", "fault", "test")


def _read_csv(csv_path):
    if not os.path.exists(csv_path) or os.path.getsize(csv_path) == 0:
        return []
    with open(csv_path, newline="") as f:
        return [{k: r.get(k, "") for k in CSV_FIELDS} for r in csv.DictReader(f)]


def _write_csv(csv_path, rows):
    """Write to a temporary file, then rename it over the CSV, so a kill in
    the middle (the runner's per-function timeout) never leaves it torn."""
    tmp = f"{csv_path}.tmp{os.getpid()}"
    with open(tmp, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=CSV_FIELDS)
        w.writeheader()
        w.writerows(rows)
    os.replace(tmp, csv_path)


def upsert_csv_row(csv_path, row):
    """Replace the row with the same (scheme, function, fault, test) where it
    stands, or append it if there is none; every other row is kept. Written
    one row at a time, so finished ELFs survive if the function is killed."""
    rows = _read_csv(csv_path)
    key = tuple(row[k] for k in CSV_KEY)
    for i, r in enumerate(rows):
        if tuple(r[k] for k in CSV_KEY) == key:
            rows[i] = row
            break
    else:
        rows.append(row)
    _write_csv(csv_path, rows)


def prune_csv_rows(csv_path, scheme, func, faults):
    """Drop this function's rows for faults that no longer have an ELF, so
    the function's entry matches what was just tested."""
    rows = _read_csv(csv_path)
    kept = [r for r in rows if not (r["scheme"] == scheme and r["function"] == func
                                    and r["test"] == TEST_NAME
                                    and r["fault"] not in faults)]
    if len(kept) != len(rows):
        _write_csv(csv_path, kept)


# ---------------------------------------------------------------------------
# Config / file discovery
# ---------------------------------------------------------------------------

def load_config(scheme, func):
    with open(os.path.join(CONFIG_ROOT, f"{scheme}.json")) as f:
        entry = json.load(f).get(func)
    if entry is None:
        raise SystemExit(f"[!] '{func}' not found in {scheme}.json")
    return {
        "secret_buf": entry.get("secret-buf") or "",
        "fixed_scalars": entry.get("fixed-scalars") or "",
        "eph_secret": entry.get("eph_secret") or "",
    }


def resolve_names(witness, names):
    """Map comma-separated qruov.json buffer names onto the witness layout's
    parameter keys: a parameter name is kept, a call-site name bound to
    exactly one parameter (its "alloca") is replaced by that parameter."""
    if not names or not os.path.isfile(witness):
        return names
    with open(witness) as f:
        layout = json.load(f)["layout"]
    out = []
    for name in names.split(","):
        hits = [k for k, s in layout.items() if s.get("alloca") == name]
        out.append(name if name in layout or len(hits) != 1 else hits[0])
    return ",".join(out)


def faulty_elfs(elf_dir, correct_elf):
    """Every .elf under elf_dir except the correct build and whole-program
    full_<scheme>_gated/ builds (same rule as the scheme runners)."""
    out = []
    for root, _dirs, files in os.walk(elf_dir):
        if re.search(r"(^|/)full_\w+_gated(/|$)", os.path.relpath(root, elf_dir)):
            continue
        for name in files:
            path = os.path.join(root, name)
            if name.endswith(".elf") and not os.path.samefile(path, correct_elf):
                out.append(path)
    return sorted(out)


_SV_RE = re.compile(r"^correct_sv(\d+)\.json$")


def existing_trace_pairs(fault_dir, limit):
    """Up to `limit` (correct, faulty) trace paths from every directory under
    fault_dir that holds a sweep (dist_paired, its seed/eph variants, a
    previous direct_leak_trace), taken round-robin across the directories so
    that different public seeds and ephemeral draws are mixed. Each
    directory's pairs are shuffled first (fixed seed, so runs repeat):
    in sv order, every directory would start with the same swept secret
    value (sv 0). limit <= 0 means all of them."""
    rng = random.Random(0)
    per_dir = []
    for root, _dirs, files in sorted(os.walk(fault_dir)):
        pairs = []
        for name in sorted(files, key=lambda n: int(_SV_RE.match(n).group(1))
                           if _SV_RE.match(n) else -1):
            if not _SV_RE.match(name):
                continue
            cpath = os.path.join(root, name)
            fpath = os.path.join(root, name.replace("correct_sv", "faulty_sv"))
            if os.path.getsize(cpath) > 0 and os.path.exists(fpath) \
                    and os.path.getsize(fpath) > 0:
                pairs.append((cpath, fpath))
        if pairs:
            rng.shuffle(pairs)
            per_dir.append(pairs)
    out = []
    for i in range(max((len(p) for p in per_dir), default=0)):
        for pairs in per_dir:
            if i < len(pairs):
                out.append(pairs[i])
                if 0 < limit <= len(out):
                    return out
    return out


# ---------------------------------------------------------------------------
# Fallback: collect a few trace pairs with the scheme's own Unicorn run_one()
# ---------------------------------------------------------------------------

def collect_pairs(scheme, func, cfg, witness, active_lengths, correct_elf,
                  faulty_elf, out_dir, n):
    mod = importlib.import_module(f"dist_tests.{scheme}.setup.collect_dist_unicorn")
    dist = importlib.import_module(f"dist_tests.{scheme}.setup.distributions_unicorn")
    field_mod = dist.field_mod_for(func)    # 127 for F_q code, 256 for bytes

    pairs = []
    for k in range(n):
        pair = (os.path.join(out_dir, f"correct_sv{k:02d}.json"),
                os.path.join(out_dir, f"faulty_sv{k:02d}.json"))
        for variant, elf, out_path in (("correct", correct_elf, pair[0]),
                                       ("faulty", faulty_elf, pair[1])):
            # seed k / eph draw k; secret_pos = -1: no override, the secret
            # keeps its sampled value.
            common = (elf, witness, active_lengths, func, field_mod, k, variant,
                      out_path, "mps2-an386", cfg["fixed_scalars"])
            mod.run_one(*common, cfg["secret_buf"], -1, 0,
                        cfg["eph_secret"], k)
        pairs.append(pair)
    return pairs


# ---------------------------------------------------------------------------
# The test
# ---------------------------------------------------------------------------

def as_bytes(values):
    return bytes(v & 0xFF for v in values)


def buffer_reference(buf, correct):
    """(bytes, where) of the value of `buf` the function saw, or (None, why)."""
    inputs, outputs = correct.get("inputs", {}), correct.get("outputs", {})
    for name in (buf, f"{buf}_pre"):
        if name in inputs:
            return as_bytes(inputs[name]), f"input '{name}'"
    if buf in outputs:
        return as_bytes(outputs[buf]), f"correct output '{buf}'"
    return None, f"'{buf}' not in the trace"


def equals_secret(out, secret):
    """out == secret on their common length, any further bytes of out zero
    (so a wider scalar output compares as an integer)."""
    n = min(len(out), len(secret))
    return n > 0 and out[:n] == secret[:n] and not any(out[n:])


def check_buffer(buf, skip_outputs, traces):
    """Does the fault make an output equal to `buf`?
    traces: [(correct, faulty)]. Returns (verdict, detail),
    verdict in 'yes' / 'no' / 'skip'."""
    refs = []
    for correct, faulty in traces:
        value, where = buffer_reference(buf, correct)
        if value is not None:
            refs.append((value, where, correct, faulty))
    if not refs:
        return "skip", f"'{buf}' not in any trace"
    where = refs[0][1]

    outputs = sorted({name for _, _, _, f in refs for name in f.get("outputs", {})}
                     - skip_outputs)
    hits, constant, changed_any = [], [], False
    for name in outputs:
        changed, leaking, values = 0, 0, set()
        for value, _, correct, faulty in refs:
            c_out = as_bytes(correct.get("outputs", {}).get(name, []))
            f_out = as_bytes(faulty.get("outputs", {}).get(name, []))
            if c_out == f_out:
                continue                # fault ineffective on this output here
            changed += 1
            if equals_secret(f_out, value) and not equals_secret(c_out, value):
                leaking += 1
                values.add(value)
        changed_any |= changed > 0
        if not changed or leaking != changed:
            continue
        msg = (f"faulty output '{name}' equals {where} in all {changed} "
               f"trace(s) where the fault changed it")
        if len(values) > 1:
            hits.append(msg)
        else:
            constant.append(msg)
    if hits:
        return "yes", "; ".join(hits)
    if constant:
        return "no", (constant[0] + ", but the value never varied across the "
                      "traces, so a constant could match by chance")
    if not changed_any:
        return "no", "the fault changed no output in the traces"
    return "no", f"no faulty output equals {where}"


def check_traces(secret_buf, eph_bufs, traces):
    """The secret-buf first; only if no output leaks it, each eph_secret
    buffer. Returns (verdict, detail), verdict in 'yes' / 'no' / 'skip'."""
    checked = [("secret-buf", secret_buf)] + [("eph_secret", e) for e in eph_bufs]
    skip_outputs = {buf for _, buf in checked}
    results = []
    for role, buf in checked:
        verdict, detail = check_buffer(buf, skip_outputs, traces)
        if verdict == "yes":
            return "yes", f"{role}: {detail}"
        results.append((verdict, f"{role}: {detail}"))
    if any(v == "no" for v, _ in results):
        return "no", "; ".join(d for v, d in results if v == "no")
    return "skip", "; ".join(d for _, d in results)


# ---------------------------------------------------------------------------
# Driver for one (scheme, function)
# ---------------------------------------------------------------------------

def is_timeout(exc):
    """True for an emulation timeout (TrialTimeout / RunTimeout), also when
    a collector has wrapped it in another exception."""
    while exc is not None:
        if "Timeout" in type(exc).__name__:
            return True
        exc = exc.__cause__ or exc.__context__
    return False


def judge_elf(scheme, func, cfg, eph_bufs, n_traces, witness, active,
              correct_elf, elf, fault_dir):
    """Verdict for one faulty ELF: (verdict, detail, n_pairs, source)."""
    pairs = existing_trace_pairs(fault_dir, n_traces)
    source = "existing"
    try:
        if not pairs:
            if not (os.path.isfile(witness) and os.path.isfile(active)):
                raise RuntimeError("no collected trace and no witness/"
                                   "active_lengths.json to collect one "
                                   "(run the scheme's calibrate first)")
            source = "collected"
            pairs = collect_pairs(scheme, func, cfg, witness, active,
                                  correct_elf, elf,
                                  os.path.join(fault_dir, "direct_leak_trace"),
                                  FALLBACK_PAIRS)
        traces = []
        for cpath, fpath in pairs:
            with open(cpath) as f:
                correct = json.load(f)
            with open(fpath) as f:
                traces.append((correct, json.load(f)))
        verdict, detail = check_traces(cfg["secret_buf"], eph_bufs, traces)
    except Exception as e:              # one bad ELF must not stop the rest
        if is_timeout(e):
            verdict, detail = "timeout", f"subprocess.TimeoutExpired: {e}"
        else:
            verdict, detail = "error", f"{type(e).__name__}: {e}"
    return verdict, detail, len(pairs), source


def _judge_child(conn, args):
    try:
        conn.send(judge_elf(*args))
    except BaseException as e:          # report, never leave the parent waiting
        conn.send(("error", f"{type(e).__name__}: {e}", 0, "-"))
    finally:
        conn.close()


def judge_with_timeout(args, timeout):
    """judge_elf() in a forked child, killed after `timeout` seconds. A
    signal cannot do this: Unicorn runs the emulation (and its Python hooks,
    whose exceptions ctypes swallows) in C, so only killing the process
    reliably stops a faulty ELF that loops forever. Same convention as the
    ineffective/correction tests: recorded as a timeout and skipped."""
    if timeout <= 0:
        return judge_elf(*args)
    ctx = multiprocessing.get_context("fork")
    recv, send = ctx.Pipe(duplex=False)
    proc = ctx.Process(target=_judge_child, args=(send, args), daemon=True)
    proc.start()
    send.close()
    try:
        if recv.poll(timeout):
            return recv.recv()
    except EOFError:                    # child died without an answer
        return "error", f"worker exited with code {proc.exitcode}", 0, "-"
    finally:
        if proc.is_alive():
            proc.kill()
        proc.join()
        recv.close()
    return ("timeout", f"subprocess.TimeoutExpired: no verdict within {timeout} s, "
                       f"skipped", 0, "-")


def run_function(scheme, func, n_traces, csv_path, elf_timeout=ELF_TIMEOUT_S):
    dist = importlib.import_module(f"dist_tests.{scheme}.setup.distributions_unicorn")
    if func in dist.UNSUPPORTED:
        print(f"[skip] {scheme} / {func}: not testable by the argument sweep "
              f"-- {dist.UNSUPPORTED[func]}")
        return
    cfg = load_config(scheme, func)
    if not cfg["secret_buf"]:
        raise SystemExit(f"[!] '{func}' has no secret-buf in {scheme}.json")

    out_root = os.path.join(REPO_ROOT, f"test_{scheme}", func)
    witness = os.path.join(out_root, "qemu_witness.json")
    active = os.path.join(out_root, "active_lengths.json")
    elf_dir = os.path.join(REPO_ROOT, "build", f"test_{scheme}", func)
    correct_elf = os.path.join(elf_dir, f"{func}.elf")
    if not os.path.isfile(correct_elf):
        raise SystemExit(f"[!] not found: {os.path.relpath(correct_elf, REPO_ROOT)}")

    elfs = faulty_elfs(elf_dir, correct_elf)
    cfg["secret_buf"] = resolve_names(witness, cfg["secret_buf"])
    cfg["eph_secret"] = resolve_names(witness, cfg["eph_secret"])
    eph_bufs = [e for e in cfg["eph_secret"].split(",") if e]
    print(f"[i] {scheme} / {func}: secret-buf '{cfg['secret_buf']}'"
          + (f", eph_secret {eph_bufs}" if eph_bufs else "")
          + f", {len(elfs)} faulty ELF(s)")

    n_yes = n_timeout = 0
    for elf in elfs:
        stem = os.path.relpath(elf, elf_dir)[:-len(".elf")]
        fault_dir = os.path.join(out_root, stem)
        verdict, detail, n_pairs, source = judge_with_timeout(
            (scheme, func, cfg, eph_bufs, n_traces, witness, active,
             correct_elf, elf, fault_dir), elf_timeout)

        n_yes += verdict == "yes"
        n_timeout += verdict == "timeout"
        label = {"yes": "DETECTED", "no": "not detected", "skip": "skipped",
                 "timeout": "TIMEOUT", "error": "error"}[verdict]
        line = f"[RESULT] direct-leak test: {label} -- {detail}"
        print(f"    {stem}: {label} -- {detail}")
        os.makedirs(fault_dir, exist_ok=True)
        with open(os.path.join(fault_dir, "direct_leak_result.txt"), "w") as f:
            f.write(f"scheme: {scheme}\nfunction: {func}\nfault: {stem}\n"
                    f"secret-buf: {cfg['secret_buf']}\n"
                    f"eph_secret: {','.join(eph_bufs) or '-'}\n"
                    f"traces: {n_pairs} ({source})\n{line}\n")
        if csv_path:
            upsert_csv_row(csv_path, {
                "scheme": scheme, "function": func, "fault": stem,
                "source": "direct_leak_result.txt", "test": TEST_NAME,
                "detected": verdict, "detail": detail})

    if csv_path:
        prune_csv_rows(csv_path, scheme, func,
                       {os.path.relpath(e, elf_dir)[:-len(".elf")] for e in elfs})
    print(f"[i] {scheme} / {func}: {n_yes}/{len(elfs)} faulty ELF(s) write the "
          f"secret directly into an output"
          + (f", {n_timeout} timed out" if n_timeout else ""))


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("--scheme", default="qruov", choices=SCHEMES)
    ap.add_argument("--func", required=True,
                    help="function key in qruov.json")
    ap.add_argument("--traces", type=int, default=16,
                    help="existing trace pairs to use per faulty ELF, taken "
                         "round-robin over its collected directories "
                         "(0 = all). Default: %(default)s")
    ap.add_argument("--csv", default="",
                    help="CSV to update: one row per faulty ELF, replaced in "
                         "place if it exists, appended otherwise")
    ap.add_argument("--elf-timeout", type=int, default=ELF_TIMEOUT_S,
                    help="wall-clock seconds per faulty ELF before it is "
                         "recorded as a timeout and skipped (0 = no limit). "
                         "Default: %(default)s")
    args = ap.parse_args()
    run_function(args.scheme, args.func, args.traces,
                 os.path.abspath(args.csv) if args.csv else "", args.elf_timeout)


if __name__ == "__main__":
    main()
