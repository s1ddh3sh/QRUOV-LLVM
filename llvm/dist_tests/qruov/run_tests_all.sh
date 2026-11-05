#!/usr/bin/env bash
#
# run_tests_all.sh — build and run the Unicorn early-stop pipeline
# for EVERY QR-UOV function listed in qruov.json (or a subset given on
# the command line), running the per-function pipelines in parallel.
#
# For each function, in order:
#   1. dist_tests/qruov/qruov_build.sh test_qruov/<function>
#      (build the correct + faulty ELFs, extract the witness)
#   2. dist_tests/qruov/run_combined_unicorn.sh <function> --seeds 0,1,2,3 --fresh
#      (calibrate, then the early-stop ineffective + correction sweep per
#      faulty ELF; --fresh so a stale earlier collection is not replayed)
#
# Per-function runs are independent: each writes only under
# test_qruov/<func>/ and build/test_qruov/<func>/, so they are run
# concurrently in a bounded job pool. Each function's output is captured
# to its own log and printed, whole, in function order once it finishes,
# so parallel logs never interleave.
#
# Run from anywhere (the script cds to llvm/). Usage:
#   ./dist_tests/qruov/run_tests_all.sh                  # all functions
#   ./dist_tests/qruov/run_tests_all.sh Fq_sub SIG_GEN   # just these
#   ./dist_tests/qruov/run_tests_all.sh -j 8             # cap at 8 parallel
#   JOBS=4 ./dist_tests/qruov/run_tests_all.sh           # same, via env
#   ./dist_tests/qruov/run_tests_all.sh --timing-csv t.csv  # timing CSV path
#
# Per-function wall times are printed and saved to a CSV (default
# test_qruov/timing_report.csv, relative to llvm/): one row per function
# plus __average_per_function__ and __total_wall_clock__ summary rows.
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

# Max concurrent per-function pipelines (the OUTER pool). Default: all cores.
# The core budget is split with the inner per-faulty-ELF pool below as
# INNER_JOBS = max(1, nproc / JOBS), so outer x inner <= nproc (no
# oversubscription). The default -j nproc therefore gives inner 1 -- each
# function runs its sweeps sequentially, exactly today's behaviour; lower
# -j (e.g. -j 4) to feed the freed cores into each function's ELF sweep.
# Override with -j or the JOBS env var.
DEFAULT_JOBS=$(nproc 2>/dev/null || echo 4)
JOBS="${JOBS:-$DEFAULT_JOBS}"

# Where the per-function timing results are written as CSV (relative to llvm/).
# Override with --timing-csv PATH.
TIMING_CSV="test_qruov/timing_report.csv"

# ---- parse args: -j/--jobs N set the pool size; bare words select funcs ----
SUBSET=()
while [[ $# -gt 0 ]]; do
    case "$1" in
        -j|--jobs)
            JOBS="${2:?-j requires a number}"; shift 2 ;;
        -j*)
            JOBS="${1#-j}"; shift ;;
        --jobs=*)
            JOBS="${1#--jobs=}"; shift ;;
        --timing-csv)
            TIMING_CSV="${2:?--timing-csv requires a path}"; shift 2 ;;
        --timing-csv=*)
            TIMING_CSV="${1#--timing-csv=}"; shift ;;
        -h|--help)
            sed -n '2,33p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
        -*)
            echo "[!] unknown option: $1" >&2; exit 2 ;;
        *)
            SUBSET+=("$1"); shift ;;
    esac
done

if ! [[ "$JOBS" =~ ^[0-9]+$ ]] || (( JOBS < 1 )); then
    echo "[!] invalid job count: ${JOBS}" >&2
    exit 2
fi

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

mapfile -t ALL_FUNCS < <(python3 -c "
import json, sys
with open('${CONFIG_JSON}') as f:
    print('\n'.join(json.load(f).keys()))
")

if [[ "${#ALL_FUNCS[@]}" -eq 0 ]]; then
    echo "[!] no functions found in ${CONFIG_JSON}" >&2
    exit 1
fi

# If function names were given on the command line, use those (validated
# against qruov.json); otherwise sweep everything.
if [[ "${#SUBSET[@]}" -gt 0 ]]; then
    FUNCS=()
    for want in "${SUBSET[@]}"; do
        found=0
        for have in "${ALL_FUNCS[@]}"; do
            [[ "$have" == "$want" ]] && { found=1; break; }
        done
        if [[ $found -eq 0 ]]; then
            echo "[!] '${want}' is not a function in ${CONFIG_JSON}" >&2
            exit 2
        fi
        FUNCS+=("$want")
    done
else
    FUNCS=("${ALL_FUNCS[@]}")
fi

# Do not spawn more workers than there is work.
if (( JOBS > ${#FUNCS[@]} )); then JOBS=${#FUNCS[@]}; fi

# run_combined_unicorn.sh now parallelises the per-faulty-ELF sweeps too, so
# divide the core budget: each of the JOBS function workers is given an inner
# -j so that (function workers) x (ELF sweeps per worker) <= nproc, instead
# of nproc x nproc processes fighting over the cores.
TOTAL_CORES=$(nproc 2>/dev/null || echo 1)
INNER_JOBS=$(( TOTAL_CORES / JOBS ))
(( INNER_JOBS < 1 )) && INNER_JOBS=1

echo "[i] testing ${#FUNCS[@]} function(s) from ${CONFIG_JSON}, up to ${JOBS} in parallel (${INNER_JOBS} ELF sweep(s) each)"

# ---- per-function worker: runs the whole pipeline, captures log + status ----
# Exit code written to the status file: 0 ok, 3 skipped (unsupported),
# 10 build failure, 11 test failure.
WORK_DIR="$(mktemp -d)"
trap 'rm -rf "$WORK_DIR"' EXIT

run_one_func() {
    local func="$1" log="$2" statusfile="$3" timefile="$4"
    local rc=0 t0 t1
    t0=$(date +%s.%N)
    (
        echo "############################################"
        echo "# ${func}"
        echo "############################################"

        if reason="$(python3 "${SCRIPT_DIR}/setup/distributions_unicorn.py" unsupported "$func")"; then
            echo "[skip] ${func}: ${reason}"
            exit 3
        fi

        echo
        echo "=== [build] ${QRUOV_BUILD} test_qruov/${func} ==="
        if ! "$QRUOV_BUILD" "test_qruov/${func}"; then
            echo "[!] FAILED (build): ${func}"
            exit 10
        fi

        echo
        echo "=== [test] ${RUN_UNICORN} ${func} --seeds ${SEEDS} -j ${INNER_JOBS} --fresh ==="
        local status=0
        "$RUN_UNICORN" "$func" --seeds "$SEEDS" -j "$INNER_JOBS" --fresh || status=$?
        if [[ $status -eq 3 ]]; then
            echo "[skip] ${func}: not testable by the argument sweep"
            exit 3
        elif [[ $status -ne 0 ]]; then
            echo "[!] FAILED (test): ${func}"
            exit 11
        fi

        echo "[i] OK: ${func}"
        exit 0
    ) >"$log" 2>&1 || rc=$?
    t1=$(date +%s.%N)
    echo "$rc" >"$statusfile"
    awk "BEGIN{printf \"%.2f\", ${t1} - ${t0}}" >"$timefile"
}

# ---- launch the pool, throttled to JOBS concurrent workers ----
declare -A LOG_OF STATUS_OF TIME_OF
WALL_START=$(date +%s.%N)
for func in "${FUNCS[@]}"; do
    # Wait for a free slot before launching the next worker.
    while (( $(jobs -rp | wc -l) >= JOBS )); do
        wait -n 2>/dev/null || true
    done
    safe="${func//[^A-Za-z0-9_.-]/_}"
    LOG_OF["$func"]="${WORK_DIR}/${safe}.log"
    STATUS_OF["$func"]="${WORK_DIR}/${safe}.status"
    TIME_OF["$func"]="${WORK_DIR}/${safe}.time"
    run_one_func "$func" "${LOG_OF[$func]}" "${STATUS_OF[$func]}" "${TIME_OF[$func]}" &
done
wait
WALL_END=$(date +%s.%N)

# ---- print each function's log in order, then tally results + timings ----
FAILED=()
SKIPPED=()
declare -A DUR_OF OUTCOME_OF
for func in "${FUNCS[@]}"; do
    echo
    cat "${LOG_OF[$func]}" 2>/dev/null || true
    status="$(cat "${STATUS_OF[$func]}" 2>/dev/null || echo 99)"
    dur="$(cat "${TIME_OF[$func]}" 2>/dev/null || echo 0)"
    DUR_OF["$func"]="$dur"
    echo "[time] ${func}: ${dur}s"
    case "$status" in
        0)  OUTCOME_OF["$func"]="ok" ;;
        3)  SKIPPED+=("${func}"); OUTCOME_OF["$func"]="skipped" ;;
        10) FAILED+=("${func} (build)"); OUTCOME_OF["$func"]="build-failed" ;;
        11) FAILED+=("${func} (test)"); OUTCOME_OF["$func"]="test-failed" ;;
        *)  FAILED+=("${func} (status ${status})"); OUTCOME_OF["$func"]="status-${status}" ;;
    esac
done

# ---- timing report: per-function wall time, then the average over all ----
echo
echo "=== Timing (per-function wall time) ==="
printf '%-48s %12s\n' "FUNCTION" "TIME (s)"
for func in "${FUNCS[@]}"; do
    printf '%-48s %12s\n' "$func" "${DUR_OF[$func]}"
done
# Average per function, and total wall clock for the whole (parallel) run.
avg="$(printf '%s\n' "${DUR_OF[@]}" | awk '{s+=$1; n++} END{if(n) printf "%.2f", s/n; else print "0.00"}')"
wall="$(awk "BEGIN{printf \"%.2f\", ${WALL_END} - ${WALL_START}}")"
echo "---"
echo "[time] average per function : ${avg}s  (over ${#FUNCS[@]} function(s))"
echo "[time] total wall clock      : ${wall}s  (up to ${JOBS} in parallel)"

# ---- persist the timing results to CSV ----
# One row per function, then two summary rows: __average_per_function__
# (mean of the per-function times) and __total_wall_clock__ (real elapsed
# time for the whole parallel run).
mkdir -p "$(dirname "$TIMING_CSV")"
{
    echo "function,outcome,time_seconds"
    for func in "${FUNCS[@]}"; do
        echo "${func},${OUTCOME_OF[$func]},${DUR_OF[$func]}"
    done
    echo "__average_per_function__,,${avg}"
    echo "__total_wall_clock__,,${wall}"
} > "$TIMING_CSV"
echo "[i] timing results -> ${TIMING_CSV}"

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
