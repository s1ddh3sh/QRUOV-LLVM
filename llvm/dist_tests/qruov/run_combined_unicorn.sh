#!/usr/bin/env bash
#
# run_combined_unicorn.sh — runs early_stop_sweep_unicorn.py for one QR-UOV
# function (qruov1q127L3v156m54, AES PRG) against EVERY faulty ELF found
# alongside the correct one, taking only the function name. Every trial
# runs IN-PROCESS via the Unicorn Cortex-M4 emulator
# (dist_tests/common/unicorn_runner.py); no qemu-system-arm/gdb-multiarch
# install is required.
#
#   [1/2] calibrate_unicorn.py            (once for the function)
#   [2/2] early_stop_sweep_unicorn.py     (per faulty ELF: sweeps the secret
#         value 0, 1, 2, ... and stops as soon as the ineffective and
#         correction tests both have a witness, instead of collecting the
#         whole 127- / 256-value domain first)
#
# Usage:
#   ./run_combined_unicorn.sh [func_name] [--secret-buf NAME] [--secret-pos POS] \
#       [--elf-dir DIR] [--fixed-scalars n1,n2,...] [--seed N] \
#       [--seeds p0,p1,...] [--eph-draws J] [--out-buf NAME] [--field-mod N] \
#       [--test ineffective|correction|both] [--require any|all] [--fresh]
#
# func_name is optional: without it (or if the first argument starts with
# "--"), every function in <repo_root>/qruov.json is run in turn with the
# same flags. One function's failure does not stop the others; the script
# exits non-zero if anything failed.
#
# --fresh: delete each faulty ELF's dist_paired*/ directories before
# sweeping. Without it, already-collected correct_sv*/faulty_sv*.json are
# REPLAYED (the sweep is resumable, see early_stop_sweep_unicorn.py) --
# a stale collection from a run with different parameters would be
# reused, so pass --fresh after changing anything a trial computes.
#
# --seeds p0,p1,...: public-background seeds (the correction test's
# "for all p" needs >= 2; the ineffective test needs a pair on each). The
# first seed's trials go to dist_paired/, every other seed p's to
# dist_paired_seed<p>/. Default 0,1,2,3.
#
# --eph-draws J: for a function with an "eph_secret" (qruov.json), J
# ephemeral draws r_0..r_{J-1}, independent of the public seeds; every seed
# is run with every draw (draw j > 0 in <seed dir>_eph<j>/). Default 4;
# J = 1 without an eph_secret.
#
# --out-buf NAME: check only this output. Default: every role:output buffer
# of the witness, each decoded per output_repr.py (qruov.json
# "output-repr"); a witness on any of them answers the test.
#
# --test / --require: which tests to run, and whether to stop when ANY or
# (default) ALL of them have a hit.
#
# --secret-buf/--fixed-scalars default to qruov.json[func_name];
# --field-mod to the function's domain (setup/distributions_unicorn.py:
# 127 F_q, 256 bytes, 128 rejsamp_rejection_with_aux) and caps the secret
# values swept; --secret-pos to 0.
#
# Functions the argument sweep cannot test (setup/distributions_unicorn.py
# UNSUPPORTED: the AES-context functions, the argument-less example_qruov)
# are refused with the reason and exit status 3.
#
# Run from anywhere: the script cds to llvm/. If the correct ELF or the
# witness is missing, dist_tests/qruov/qruov_build.sh is run first.
#
# ELF layout (default --elf-dir is build/test_qruov/<func_name>):
#   <elf-dir>/<func_name>.elf   -- the correct build
#   <elf-dir>/**/*.elf          -- every other .elf is a faulty variant,
#                                  except under full_qruov_gated/
#
# Results, per faulty ELF:
#   test_qruov/<func>/<faulty_stem>/test_result.txt   (sweep log, [RESULT] lines)
#   test_qruov/<func>/<faulty_stem>/dist_paired*/     (collected trials)
# and a DETECTED / SATISFIED summary table at the end.
#
# Example:
#   ./run_combined_unicorn.sh Fq_sub
#   ./run_combined_unicorn.sh Fql_sub --secret-buf Y --secret-pos 1
#   ./run_combined_unicorn.sh rejsamp_and_q --seeds 0,1 --fresh
#   ./run_combined_unicorn.sh --test ineffective     # every function

set -euo pipefail

FUNC_NAME=""
if [[ $# -ge 1 && "$1" != --* ]]; then
    FUNC_NAME="$1"; shift
fi

SECRET_POS=0
ELF_DIR_OVERRIDE=""
FIXED_SCALARS_OVERRIDE=""
SECRET_BUF_OVERRIDE=""
SEED=0
SEEDS="0,1,2,3"
OUT_BUF_OVERRIDE=""
FIELD_MOD_OVERRIDE=""
EPH_DRAWS_ARG=4
TEST=both
REQUIRE=all
FRESH=0

while [[ $# -gt 0 ]]; do
    case "$1" in
        --secret-buf) SECRET_BUF_OVERRIDE="$2"; shift 2 ;;
        --secret-pos) SECRET_POS="$2"; shift 2 ;;
        --elf-dir) ELF_DIR_OVERRIDE="$2"; shift 2 ;;
        --fixed-scalars) FIXED_SCALARS_OVERRIDE="$2"; shift 2 ;;
        --seed) SEED="$2"; shift 2 ;;
        --seeds) SEEDS="$2"; shift 2 ;;
        --out-buf) OUT_BUF_OVERRIDE="$2"; shift 2 ;;
        --field-mod) FIELD_MOD_OVERRIDE="$2"; shift 2 ;;
        --eph-draws) EPH_DRAWS_ARG="$2"; shift 2 ;;
        --test) TEST="$2"; shift 2 ;;
        --require) REQUIRE="$2"; shift 2 ;;
        --fresh) FRESH=1; shift ;;
        *) echo "[!] unrecognized argument: $1" >&2; exit 1 ;;
    esac
done

SEED_LIST=("$SEED")
if [[ -n "$SEEDS" ]]; then
    read -r -a SEED_LIST <<< "${SEEDS//,/ }"
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}/../.."   # llvm/: test_qruov/ and build/ are relative to it
SETUP_DIR="dist_tests/qruov/setup"
CONFIG_JSON="../qruov.json" # QR-UOV repo root

# ---------------------------------------------------------------------------
# Everything below runs for exactly one function, in a subshell so an
# internal `exit N` only ends that function's run (the all-functions mode
# at the bottom calls it once per qruov.json key).
# ---------------------------------------------------------------------------
run_one_function() {
(
set -euo pipefail
FUNC_NAME="$1"
OUT_DIR="test_qruov/${FUNC_NAME}"
WITNESS="${OUT_DIR}/qemu_witness.json"
ACTIVE_LENGTHS="${OUT_DIR}/active_lengths.json"
ELF_DIR="${ELF_DIR_OVERRIDE:-build/test_qruov/${FUNC_NAME}}"
CORRECT_ELF="${ELF_DIR}/${FUNC_NAME}.elf"
EPH_DRAWS="$EPH_DRAWS_ARG"

if REASON="$(python3 "${SETUP_DIR}/distributions_unicorn.py" unsupported "$FUNC_NAME")"; then
    echo "[skip] ${FUNC_NAME}: not testable by the argument sweep -- ${REASON}" >&2
    exit 3
fi
FIELD_MOD="${FIELD_MOD_OVERRIDE:-$(python3 "${SETUP_DIR}/distributions_unicorn.py" field-mod "$FUNC_NAME")}"

# ---------------------------------------------------------------------------
# Resolve secret-buf/fixed-scalars/eph_secret: explicit flag wins, else
# qruov.json[func_name].
# ---------------------------------------------------------------------------
read -r JSON_SECRET_BUF JSON_FIXED_SCALARS JSON_EPH_SECRET <<< "$(python3 - "$CONFIG_JSON" "$FUNC_NAME" <<'PYEOF'
import json, sys
path, func = sys.argv[1], sys.argv[2]
try:
    with open(path) as f:
        config = json.load(f)
except FileNotFoundError:
    config = {}
entry = config.get(func) or {}
# ONE line, space-joined: `read -r` only reads the first line of its
# here-string (none of these values contain whitespace).
print((entry.get("secret-buf") or "__NONE__") + " " + (entry.get("fixed-scalars") or "__NONE__") + " " + (entry.get("eph_secret") or "__NONE__"))
PYEOF
)"
[[ "$JSON_SECRET_BUF" == "__NONE__" ]] && JSON_SECRET_BUF=""
[[ "$JSON_FIXED_SCALARS" == "__NONE__" ]] && JSON_FIXED_SCALARS=""
[[ "$JSON_EPH_SECRET" == "__NONE__" ]] && JSON_EPH_SECRET=""
EPH_SECRET="$JSON_EPH_SECRET"
[[ -z "$EPH_SECRET" ]] && EPH_DRAWS=1

if [[ -n "$SECRET_BUF_OVERRIDE" ]]; then
    SECRET_BUF="$SECRET_BUF_OVERRIDE"
elif [[ -n "$JSON_SECRET_BUF" ]]; then
    SECRET_BUF="$JSON_SECRET_BUF"
    echo "[i] secret-buf auto-resolved from ${CONFIG_JSON}: '${SECRET_BUF}'"
else
    echo "[!] no secret-buf for '${FUNC_NAME}': not found in ${CONFIG_JSON} and no --secret-buf given" >&2
    exit 1
fi
FIXED_SCALARS="${FIXED_SCALARS_OVERRIDE:-$JSON_FIXED_SCALARS}"

if [[ ! -f "$CORRECT_ELF" || ! -f "$WITNESS" ]]; then
    echo "[i] ${CORRECT_ELF} or ${WITNESS} missing -- building test_qruov/${FUNC_NAME} first"
    "${SCRIPT_DIR}/qruov_build.sh" "test_qruov/${FUNC_NAME}"
fi
[[ -d "$ELF_DIR" ]] || { echo "[!] elf dir not found: $ELF_DIR" >&2; exit 1; }
[[ -f "$CORRECT_ELF" ]] || { echo "[!] correct elf not found: $CORRECT_ELF" >&2; exit 1; }
[[ -f "$WITNESS" ]] || { echo "[!] qemu_witness.json not found: $WITNESS" >&2; exit 1; }

# qruov.json may name a buffer by its parameter or by the call-site buffer
# the driver bound it to (heap_<N> or a caller-named buffer); the witness
# layout is keyed by parameter, so map secret-buf / eph_secret onto it.
resolve_layout_name() {
    python3 - "$WITNESS" "$1" <<'PYEOF'
import json, sys
layout = json.load(open(sys.argv[1]))["layout"]
name = sys.argv[2]
hits = [k for k, s in layout.items() if s.get("alloca") == name]
print(name if name in layout or len(hits) != 1 else hits[0])
PYEOF
}
for var in SECRET_BUF EPH_SECRET; do
    [[ -z "${!var}" ]] && continue
    resolved="$(resolve_layout_name "${!var}")"
    if [[ "$resolved" != "${!var}" ]]; then
        echo "[i] ${var,,}: '${!var}' is parameter '${resolved}' of ${FUNC_NAME}"
        printf -v "$var" '%s' "$resolved"
    fi
done

# Fail now, not after the first trial, if a name does not match the layout.
if ! python3 - "$WITNESS" "$SECRET_BUF" "$EPH_SECRET" <<'PYEOF'
import json, sys
layout = json.load(open(sys.argv[1]))["layout"]
bad = [n for n in sys.argv[2:] if n and n not in layout]
if bad:
    aliases = {k: s["alloca"] for k, s in layout.items() if "alloca" in s}
    print(f"[!] {bad} not in the witness layout: name a parameter "
          f"{list(layout)} (or the driver buffer it is bound to: {aliases}) "
          f"in qruov.json", file=sys.stderr)
    sys.exit(1)
PYEOF
then
    exit 1
fi

# Every faulty ELF anywhere under ELF_DIR (nested, e.g. binOpFault/*.elf),
# except the full_qruov_gated/ whole-program builds.
FAULTY_ELFS=()
while IFS= read -r -d '' f; do
    FAULTY_ELFS+=("$f")
done < <(find "$ELF_DIR" -type f -name '*.elf' -not -path '*/full_qruov_gated/*' -not -samefile "$CORRECT_ELF" -print0 | sort -z)
if [[ ${#FAULTY_ELFS[@]} -eq 0 ]]; then
    echo "[!] no faulty ELFs found under $ELF_DIR (besides $CORRECT_ELF)" >&2
    exit 1
fi

# rel_stem: faulty ELF path relative to ELF_DIR, minus .elf -- the result
# directory under test_qruov/<func>/ (same as collect_dist_unicorn.sh).
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

OUT_BUF_ARGS=()
[[ -n "$OUT_BUF_OVERRIDE" ]] && OUT_BUF_ARGS=(--out-buf "$OUT_BUF_OVERRIDE")

echo "[i] function:     ${FUNC_NAME} [unicorn backend, early stop]"
echo "[i] secret buf:   ${SECRET_BUF} (pos ${SECRET_POS}), up to ${FIELD_MOD} values"
echo "[i] eph secret:   ${EPH_SECRET:-<none>} (${EPH_DRAWS} draw(s), each run with every public seed)"
echo "[i] seeds:        ${SEED_LIST[*]}"
echo "[i] test:         ${TEST} (stop when ${REQUIRE} have a hit)"
echo "[i] correct elf:  ${CORRECT_ELF}"
echo "[i] faulty elfs:  ${#FAULTY_ELFS[@]} found under ${ELF_DIR}"
for f in "${FAULTY_ELFS[@]}"; do
    echo "                   - ${f#${ELF_DIR}/}"
done

# ---------------------------------------------------------------------------
# [1/2] calibrate, once for the function (active_lengths.json depends on
# the correct build only).
# ---------------------------------------------------------------------------
echo ""
echo "########## [1/2] calibrate (unicorn): ${FUNC_NAME} ##########"
python3 "${SETUP_DIR}/calibrate_unicorn.py" \
    --witness "$WITNESS" --elf "$CORRECT_ELF" \
    --field-mod "$FIELD_MOD" --machine mps2-an386 \
    --out "$ACTIVE_LENGTHS" --fixed-scalars "$FIXED_SCALARS"

# ---------------------------------------------------------------------------
# [2/2] early-stop sweep per faulty ELF; log tee'd to test_result.txt.
# ---------------------------------------------------------------------------
echo ""
echo "########## [2/2] early_stop_sweep_unicorn.py (${#FAULTY_ELFS[@]} faulty ELF(s)) ##########"
SUMMARY_ROWS=()
OVERALL_STATUS=0

for FAULTY_ELF in "${FAULTY_ELFS[@]}"; do
    FAULTY_STEM="$(rel_stem "$FAULTY_ELF" "$ELF_DIR")"
    STEM_DIR="${OUT_DIR}/${FAULTY_STEM}"
    DIST_PAIRED_DIR="${STEM_DIR}/dist_paired"
    if [[ "$FRESH" -eq 1 ]]; then
        for d in "${STEM_DIR}"/dist_paired "${STEM_DIR}"/dist_paired_*; do
            [[ -d "$d" ]] || continue
            echo "[i] --fresh: removing ${d}"
            rm -rf "$d"
        done
    fi
    mkdir -p "$STEM_DIR"
    RESULT_FILE="${STEM_DIR}/test_result.txt"

    echo ""
    echo "=== early-stop sweep (unicorn): ${FUNC_NAME} / ${FAULTY_STEM} ==="
    set +e
    python3 -u "${SCRIPT_DIR}/early_stop_sweep_unicorn.py" \
        --witness "$WITNESS" --active-lengths "$ACTIVE_LENGTHS" \
        --correct-elf "$CORRECT_ELF" --faulty-elf "$FAULTY_ELF" \
        --func "$FUNC_NAME" --field-mod "$FIELD_MOD" \
        --secret-buf "$SECRET_BUF" --secret-pos "$SECRET_POS" \
        --outdir "$DIST_PAIRED_DIR" --machine mps2-an386 \
        --fixed-scalars "$FIXED_SCALARS" \
        --eph-secret "$EPH_SECRET" --eph-draws "$EPH_DRAWS" \
        --seeds "${SEED_LIST[@]}" \
        "${OUT_BUF_ARGS[@]}" \
        --test "$TEST" --require "$REQUIRE" \
        2>&1 | tee "$RESULT_FILE"
    STATUS=${PIPESTATUS[0]}
    set -e
    if [[ $STATUS -ne 0 && $STATUS -ne 124 ]]; then
        OVERALL_STATUS=1
    fi

    INEFF_STATUS="-"
    CORR_STATUS="-"
    if [[ $STATUS -eq 124 ]] || grep -q "TimeoutExpired" "$RESULT_FILE"; then
        INEFF_STATUS="TIMEOUT"
        CORR_STATUS="TIMEOUT"
    elif [[ $STATUS -ne 0 ]]; then
        INEFF_STATUS="ERROR"
        CORR_STATUS="ERROR"
    fi
    if grep -q "^\[RESULT\] ineffective test: DETECTED" "$RESULT_FILE"; then
        INEFF_STATUS="DETECTED"
    elif grep -q "^\[RESULT\] ineffective test:" "$RESULT_FILE"; then
        INEFF_STATUS="not detected"
    fi
    if grep -q "^\[RESULT\] correction test: SATISFIED" "$RESULT_FILE"; then
        CORR_STATUS="SATISFIED"
    elif grep -q "^\[RESULT\] correction test:" "$RESULT_FILE"; then
        CORR_STATUS="not satisfied"
    fi
    SUMMARY_ROWS+=("${FAULTY_STEM}|${INEFF_STATUS}|${CORR_STATUS}")

    echo "=== done: ${FUNC_NAME} / ${FAULTY_STEM} ==="
    echo "[i] result -> ${RESULT_FILE}"
done

echo ""
echo "########## summary: ${FUNC_NAME} (${#FAULTY_ELFS[@]} faulty ELF(s)) ##########"
printf "%-55s %-15s %-15s\n" "FAULTY ELF" "INEFFECTIVE" "CORRECTION"
for row in "${SUMMARY_ROWS[@]}"; do
    IFS='|' read -r stem ineff corr <<< "$row"
    printf "%-55s %-15s %-15s\n" "$stem" "$ineff" "$corr"
done

exit $OVERALL_STATUS
)
}

# ---------------------------------------------------------------------------
# Dispatch: one function, or every function in qruov.json.
# ---------------------------------------------------------------------------
if [[ -n "$FUNC_NAME" ]]; then
    run_one_function "$FUNC_NAME"
    exit $?
fi

if [[ ! -f "$CONFIG_JSON" ]]; then
    echo "[!] ${CONFIG_JSON} not found -- expected at the QR-UOV repo root" >&2
    exit 1
fi
mapfile -t ALL_FUNCS < <(python3 -c "
import json
with open('${CONFIG_JSON}') as f:
    print('\n'.join(json.load(f).keys()))
")
if [[ "${#ALL_FUNCS[@]}" -eq 0 ]]; then
    echo "[!] no functions found in ${CONFIG_JSON}" >&2
    exit 1
fi

echo "[i] no <func_name> given -- running all ${#ALL_FUNCS[@]} function(s) from ${CONFIG_JSON}"
FAILED_FUNCS=()
SKIPPED_FUNCS=()
for f in "${ALL_FUNCS[@]}"; do
    echo
    echo "################################################################"
    echo "# ${f}"
    echo "################################################################"
    status=0
    run_one_function "$f" || status=$?
    if [[ $status -eq 0 ]]; then
        echo "[i] OK: ${f}"
    elif [[ $status -eq 3 ]]; then
        SKIPPED_FUNCS+=("$f")
    else
        echo "[!] FAILED: ${f}" >&2
        FAILED_FUNCS+=("$f")
    fi
done

echo
echo "=== Overall: $((${#ALL_FUNCS[@]} - ${#FAILED_FUNCS[@]} - ${#SKIPPED_FUNCS[@]}))/${#ALL_FUNCS[@]} function(s) completed without failure, ${#SKIPPED_FUNCS[@]} skipped ==="
[[ "${#SKIPPED_FUNCS[@]}" -gt 0 ]] && echo "Skipped: ${SKIPPED_FUNCS[*]}"
if [[ "${#FAILED_FUNCS[@]}" -gt 0 ]]; then
    echo "Failed:" >&2
    printf '  %s\n' "${FAILED_FUNCS[@]}" >&2
    exit 1
fi
