#!/usr/bin/env bash
#
# collect_dist_unicorn.sh — Unicorn-backed variant of collect_dist.sh:
# runs the single-background paired secret sweep (2 x field-mod runs: e.g.
# 127 values x 2 variants for F_q code) for use with ineffective_qruov.py's raw
# (s1,s2) pair comparison, entirely IN-PROCESS via collect_dist_unicorn.py
# (dist_tests/common/unicorn_runner.py) -- no qemu-system-arm/gdb-multiarch
# subprocess is ever spawned, so the qemu/gdb hang-cleanup machinery in
# collect_dist.sh (pkill/fuser on the GDB port, setsid process-group
# kill) has nothing to clean up here and is dropped; `timeout` is kept as
# a generic safety net against a runaway/hung emulation.
#
# Output is scoped per faulty ELF, since a function directory can contain
# several distinct faulty builds (different fault sites/models) sharing
# one correct build:
#   test_qruov/<func_name>/<faulty_elf_stem>/dist_paired/
#
# Usage:
#   ./collect_dist_unicorn.sh <func_name> <correct_elf> <faulty_elf> <secret_buf> \
#       [--secret-pos POS] [--fixed-scalars name1,name2,...] [--seed N] \
#       [--timeout SECONDS] [--field-mod N] [--dist-dir-name NAME]
#
# --dist-dir-name NAME: output subdir name under the faulty-ELF dir
# (default dist_paired); used to keep one sweep per (public seed, eph draw).
#
# --eph-index J: ephemeral draw r_j for the --eph-secret buffers (default 0),
# independent of --seed.
#
# --secret-pos defaults to 0. --field-mod defaults to the function's domain
# (127 / 256 / 128, see dist_tests/qruov/setup/distributions_unicorn.py).

set -uo pipefail
# NOTE: deliberately NOT using `set -e` at the top level -- the
# collection step's exit status is handled explicitly below so a timeout
# or failure can be reported cleanly, matching collect_dist.sh's shape.

if [[ $# -lt 4 ]]; then
    echo "Usage: $0 <func_name> <correct_elf> <faulty_elf> <secret_buf> [--secret-pos POS] [--fixed-scalars name1,name2,...] [--seed N] [--timeout SECONDS] [--field-mod N]" >&2
    exit 1
fi

FUNC_NAME="$1"; shift
CORRECT_ELF="$1"; shift
FAULTY_ELF="$1"; shift
SECRET_BUF="$1"; shift

SECRET_POS=0
FIXED_SCALARS=""
EPH_SECRET=""
EPH_INDEX=0
SEED=0
TIMEOUT_SECS=120   # per-collection wall-clock cap; adjust if legitimate
                    # sweeps for large functions routinely exceed this
DIST_DIR_NAME=dist_paired
FIELD_MOD=""       # empty: collect_dist_unicorn.py uses field_mod_for(func)

while [[ $# -gt 0 ]]; do
    case "$1" in
        --secret-pos) SECRET_POS="$2"; shift 2 ;;
        --fixed-scalars) FIXED_SCALARS="$2"; shift 2 ;;
        --eph-secret) EPH_SECRET="$2"; shift 2 ;;
        --eph-index) EPH_INDEX="$2"; shift 2 ;;
        --seed) SEED="$2"; shift 2 ;;
        --timeout) TIMEOUT_SECS="$2"; shift 2 ;;
        --field-mod) FIELD_MOD="$2"; shift 2 ;;
        --dist-dir-name) DIST_DIR_NAME="$2"; shift 2 ;;
        *) echo "[!] unrecognized argument: $1" >&2; exit 1 ;;
    esac
done

if [[ -z "$SECRET_POS" ]]; then
    echo "[!] --secret-pos POS is required" >&2
    exit 1
fi

MACHINE=mps2-an386
SETUP_DIR="dist_tests/qruov/setup"
OUT_DIR="test_qruov/${FUNC_NAME}"
WITNESS="${OUT_DIR}/qemu_witness.json"
ACTIVE_LENGTHS="${OUT_DIR}/active_lengths.json"

if [[ ! -f "$CORRECT_ELF" ]]; then
    echo "[!] correct ELF not found: $CORRECT_ELF" >&2
    exit 1
fi
if [[ ! -f "$FAULTY_ELF" ]]; then
    echo "[!] faulty ELF not found: $FAULTY_ELF" >&2
    exit 1
fi

rel_stem() {
    python3 - "$1" "$2" <<'PYEOF'
import os, sys
elf, base = sys.argv[1], sys.argv[2]
rel = os.path.relpath(os.path.abspath(elf), os.path.abspath(base))
if rel.endswith(".elf"):
    rel = rel[:-4]
print(rel)
PYEOF
}

ELF_BASE_DIR="$(dirname "$CORRECT_ELF")"
FAULTY_STEM="$(rel_stem "$FAULTY_ELF" "$ELF_BASE_DIR")"
DIST_PAIRED_DIR="${OUT_DIR}/${FAULTY_STEM}/${DIST_DIR_NAME}"

mkdir -p "$OUT_DIR"

echo "=== collect_dist (unicorn): ${FUNC_NAME} / $(basename "$FAULTY_ELF") ==="

set +e
timeout --signal=TERM --kill-after=10 "$TIMEOUT_SECS" \
    python3 "${SETUP_DIR}/collect_dist_unicorn.py" \
        --witness "$WITNESS" --active-lengths "$ACTIVE_LENGTHS" \
        --correct-elf "$CORRECT_ELF" --faulty-elf "$FAULTY_ELF" \
        --func "$FUNC_NAME" ${FIELD_MOD:+--field-mod "$FIELD_MOD"} \
        --secret-buf "$SECRET_BUF" --secret-pos "$SECRET_POS" --seed "$SEED" \
        --outdir "$DIST_PAIRED_DIR" --machine "$MACHINE" \
        --fixed-scalars "$FIXED_SCALARS" \
        --eph-secret "$EPH_SECRET" --eph-index "$EPH_INDEX"
STATUS=$?
set -e

if [[ "$STATUS" -eq 124 || "$STATUS" -eq 137 ]]; then
    echo "[!] TIMED OUT after ${TIMEOUT_SECS}s: ${FUNC_NAME} / $(basename "$FAULTY_ELF")" >&2
    exit 124
elif [[ "$STATUS" -ne 0 ]]; then
    echo "[!] FAILED (exit ${STATUS}): ${FUNC_NAME} / $(basename "$FAULTY_ELF")" >&2
    exit "$STATUS"
fi

echo "=== done: ${FUNC_NAME} / $(basename "$FAULTY_ELF") ==="
echo "[i] full sweep in ${DIST_PAIRED_DIR}; analyse offline with"
echo "    dist_tests/qruov/{ineffective,correction}_qruov.py --dist-dir ... --out-buf <OUT_BUF>"
echo "    --active-len <N> --out-repr \"\$(dist_tests/qruov/output_repr.py ${FUNC_NAME} <OUT_BUF>)\""
echo "    or replay it with early_stop_sweep_unicorn.py (same directory layout)"

exit 0
