#!/usr/bin/env bash
#
# run_tests_all.sh — build and run the Unicorn early-stop pipeline
# for EVERY QR-UOV function listed in qruov.json.
#
# For each function in qruov.json, in order:
#   1. dist_tests/qruov/qruov_build.sh test_qruov/<function>
#      (build the correct + faulty ELFs, extract the witness)
#   2. dist_tests/qruov/run_combined_unicorn.sh <function> --seeds 0,1,2,3 --fresh
#      (calibrate, then the early-stop ineffective + correction sweep per
#      faulty ELF; --fresh so a stale earlier collection is not replayed)
#
# Run from anywhere (the script cds to llvm/). Usage:
#   ./dist_tests/qruov/run_tests_all.sh
#
# A single function's failure (build or test) does not stop the sweep --
# it is recorded and reported in the summary at the end, and the script
# exits non-zero if anything failed. Functions the argument sweep cannot
# test (run_combined_unicorn.sh exit 3, see setup/distributions_unicorn.py
# UNSUPPORTED) are not built and are listed as skipped, not failed.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}/../.."   # llvm/: test_qruov/ and build/ are relative to it
CONFIG_JSON="../qruov.json" # QR-UOV repo root
QRUOV_BUILD="${SCRIPT_DIR}/qruov_build.sh"
RUN_UNICORN="${SCRIPT_DIR}/run_combined_unicorn.sh"
SEEDS="0,1,2,3"

if [[ ! -f "$CONFIG_JSON" ]]; then
    echo "[!] ${CONFIG_JSON} not found -- expected at the QR-UOV repo root" >&2
    exit 1
fi

if [[ ! -x "$QRUOV_BUILD" ]]; then
    echo "[!] ${QRUOV_BUILD} not found or not executable" >&2
    exit 1
fi

if [[ ! -x "$RUN_UNICORN" ]]; then
    echo "[!] required script not found or not executable: ${RUN_UNICORN}" >&2
    exit 1
fi

mapfile -t FUNCS < <(python3 -c "
import json, sys
with open('${CONFIG_JSON}') as f:
    print('\n'.join(json.load(f).keys()))
")

if [[ "${#FUNCS[@]}" -eq 0 ]]; then
    echo "[!] no functions found in ${CONFIG_JSON}" >&2
    exit 1
fi

echo "[i] found ${#FUNCS[@]} function(s) in ${CONFIG_JSON}"

FAILED=()
SKIPPED=()
for func in "${FUNCS[@]}"; do
    echo
    echo "############################################"
    echo "# ${func}"
    echo "############################################"

    if reason="$(python3 "${SCRIPT_DIR}/setup/distributions_unicorn.py" unsupported "$func")"; then
        echo "[skip] ${func}: ${reason}"
        SKIPPED+=("${func}")
        continue
    fi

    echo
    echo "=== [build] ${QRUOV_BUILD} test_qruov/${func} ==="
    if ! "$QRUOV_BUILD" "test_qruov/${func}"; then
        echo "[!] FAILED (build): ${func}" >&2
        FAILED+=("${func} (build)")
        continue
    fi

    echo
    echo "=== [test] ${RUN_UNICORN} ${func} --seeds ${SEEDS} --fresh ==="
    status=0
    "$RUN_UNICORN" "$func" --seeds "$SEEDS" --fresh || status=$?
    if [[ $status -eq 3 ]]; then
        SKIPPED+=("${func}")
        continue
    elif [[ $status -ne 0 ]]; then
        echo "[!] FAILED (test): ${func}" >&2
        FAILED+=("${func} (test)")
        continue
    fi

    echo "[i] OK: ${func}"
done

echo
echo "=== Summary: $((${#FUNCS[@]} - ${#FAILED[@]} - ${#SKIPPED[@]}))/${#FUNCS[@]} function(s) completed successfully, ${#SKIPPED[@]} skipped (not testable by the argument sweep) ==="
if [[ "${#SKIPPED[@]}" -gt 0 ]]; then
    echo "Skipped: ${SKIPPED[*]}"
fi
if [[ "${#FAILED[@]}" -gt 0 ]]; then
    echo "Failed:" >&2
    printf '  %s\n' "${FAILED[@]}" >&2
    exit 1
fi
