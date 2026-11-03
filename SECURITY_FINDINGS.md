# QR-UOV reference implementation — fault-injection security findings

**Target:** QR-UOV round-2 reference implementation, parameter set
`qruov1q127L3v156m54` (q = 127, ℓ = 3, V = 52, M = 18, m = 54), AES-128-CTR PRG.
**Method:** simulation-based fault injection on LLVM IR, per function, run on an
in-process Unicorn Cortex-M4 emulator. Two distinguishers are evaluated per
faulty build — an **ineffective-fault** test (SIFA-style: is the fault's effect
secret-dependent?) and a **correction-fault** test (does the fault add a constant
α in the element's own group?) — plus a **direct-leak** check (does a faulty
output equal a secret input?).
**Date:** 2026-11-03.
**Status:** research evaluation, for responsible disclosure to the QR-UOV team.
This is a non-commercial reference implementation; nothing here claims a break of
the QR-UOV scheme itself.

---

## 0. What the test proves, and its limits

Each `ineffective`/`correction` detection establishes a **distinguisher
precondition** — that a fault at that instruction has a secret-dependent effect,
or adds a constant — with the secret swept one byte at a time over an **isolated
function**, inputs filled from fixed public seeds.

This is **necessary but not sufficient** for key recovery. It is **not** an
executed end-to-end attack against a real signing oracle. Whether a detection
yields key recovery depends on *where in the scheme* the faulted value sits. The
tiers in §3 reflect that semantic judgement, not the raw detector output.

Scope note: the AES / `br_aes_ct64_*` / `mix_columns` / `shift_rows` / `sub_word`
detections are SIFA-on-AES findings (expected — SIFA was designed for AES). They
matter here **only** through the PRG, and only when the faulted AES call is the
one expanding a *secret* seed (see §3, "PRG").

---

## 1. Background: the signing algorithm and where the secret lives

From the spec (Algorithm 2, `Sign`), the signature is

```
s = (y_1, …, y_v, y_{v+1}, …, y_n)^T  −  ( ϕ^{-1} S̄′ · (y_1, …, y_v)^T  ‖  0_m )
```

i.e. the central-map vector `(vinegar, oil-solution)` transformed by

```
S^{-1} = [ I_v   −S′  ]
         [ 0     I_m  ]
```

Consequences used below:

- The **oil part** `s_{v+1..n} = oil-solution` is emitted **raw** in every
  signature (no secret mixing).
- The **vinegar part** `s_{1..v} = y − S̄′ · oil` is the only place the secret
  linear map `S̄′` appears in the output.
- The vinegar `y` is **deterministic** from `seed_y`
  (`Expand_y`, `qruov.c:648`), hence fault-controllable.

Reference code path for the mixing (`SIG_GEN`, `qruov.c:586-587`):

```c
VECTOR_M_dot_VECTOR_M(oil, Sd[i], t);   // t = <oil, S̄′_i>    (matrix.c:92)
Fql_sub(u, t, QRUOV_SIG_S(sig)[i]);     // s_i = y_i − t       (Fql.h:48)
```

QR-UOV key recovery reduces to **plain UOV over F_{qℓ}** (QR-UOV spec; eprint
2026/298), so the UOV-family fault attacks below transfer in principle.

---

## 2. Literature context

No published **ineffective** or **correction** fault attack targets QR-UOV
specifically (confirmed by search, 2026-11). The closest prior art, by mechanism:

| Ref | Mechanism | Relevance |
|---|---|---|
| eprint 2026/154 — "Oil, Vinegar, and Sparks" | EMFI disrupts oil/vinegar **mixing** → oil vector leaks into signature → key recovery | **Directly matches Tier 1 below** |
| eprint 2024/277 — Krämer & Loiero | Faults on **vinegar** (reuse / reveal / zero) → UOV/Rainbow key recovery | Tier 2 |
| eprint 2025/2101 — Fault Attacks against UOV-based Signatures | Cortex-M4 clock glitch; MAYO key recovery from 2 faulty, or 1 correct + 1 faulty, signatures | Tier 1/2 (nearest device model) |
| Furue et al. (Springer 2025) | Fault on the **secret linear map** → ≈93-bit residual, p ≈ 0.414 | Tier 3 |
| eprint 2018/071 — SIFA | Ineffective-fault distinguisher on AES | the detector; AES/PRG hits |

QR-UOV reduces to plain UOV over F_{qℓ}: QR-UOV spec; eprint 2026/298.

---

## 3. Findings, by key-recovery potential

### Tier 1 — plausible full key recovery (maps to eprint 2026/154)

**Location:** oil↔vinegar mixing in `SIG_GEN`, `s_i = y_i − <oil, S̄′_i>`.

**Detected faults (this implementation):**

| Function | Fault | Detectors |
|---|---|---|
| `SIG_GEN` | `fnSkip VECTOR_M_dot_VECTOR_M` (line 19) | ineffective (`sig` pos 18) |
| `VECTOR_M_dot_VECTOR_M` | 19 distinct binOp/loadStore/fnSkip sites | ineffective |
| `Fql_sub` | `line7_mem`, `fnSkip Fq_sub` | ineffective + **correction** (α = −1) |
| `Fq_sub` | `line2_opA` | **direct leak**: faulty output `ret` = input `X` |
| `vector_M_sub`, `Fq_vec_sub`, `vector_M_add` | sub/add sites | ineffective + correction |

**Why it recovers the key.** If the mixing term `<oil, S̄′_i>` is dropped
(function skip) or the subtraction returns its minuend (the `Fq_sub line2_opA`
direct-leak literally shows `output = X`), the faulty signature becomes the
**untransformed** central vector `s' = (y, oil-solution)`. The oil solution is
known (it is the raw oil part of *any* signature). Differencing a faulty against a
correct signature for the same message/salt:

```
s'_vinegar − s_vinegar = S̄′ · (oil-solution)        with oil-solution known.
```

Each pair gives `v` linear equations in the entries of the secret `S̄′`. A handful
of (correct, faulty) pairs over-determine `S̄′ = S`, i.e. the **full private key**.
This is the eprint-2026/154 mechanism ("oil vector leaks into the signature →
recover the private key"), realised here as an **instruction/function skip**
rather than EM injection.

**Severity: high.** `SIG_GEN` performs the mixing with no redundancy or check; a
single skipped `VECTOR_M_dot_VECTOR_M` or dropped `Fql_sub` term suffices per
signature.

### Tier 2 — key recovery via known/biased vinegar (maps to 2024/277, 2025/2101)

**Location:** vinegar generation, `Expand_y → RejSamp` (`qruov.c:648`, Alg. 10).

**Detected faults:** `RejSamp fnSkip rejsamp_and_q` (ineff + corr);
`rejsamp_and_q` (6 ineffective + 6 correction); `Expand_sk fnSkip
RejSampPRG_aes_ctr`.

Because `y = Expand_y(seed_y)` is deterministic, a fault that fixes, zeroes, or
biases `y` enables the standard UOV reconciliation to recover the oil subspace
`O`. **Weaker than Tier 1**: QR-UOV masks the vinegar part of `s` with `S̄′·oil`,
so this likely needs several faulty signatures (consistent with the 2025/2101
"2 faulty signatures" bound for MAYO).

### Tier 3 — secret-matrix corruption (maps to Furue et al.)

**Location:** `Expandsk` (Alg. 4) building `S̄′`.

**Detected faults:** `Expand_sk fnSkip {ExpandMatrixVxM, MATRIX_TRANSPOSE_VxM}`
(ineffective); `ExpandMatrixVxM line15/17_mem` (ineff + corr);
`MATRIX_TRANSPOSE_VxM` (ineff + corr).

Corrupting `S̄′` to a known/degenerate value collapses into Tier 1 in the limit
`S̄′ → 0` (then `s_vinegar = y`). Partial corruption recovers part of the linear
map, then transforms the public system (Furue's method).

### Tier 4 — no key-recovery path (report as robustness, not vulnerability)

- **Linear solver** (`LU_decompose`, `L_inverse`, `consistent`,
  `sample_a_solution`): a wrong oil solution gives `P(s) ≠ t`, **rejected by
  verification** → denial of service, not leakage. (`LU_decompose` shows 8
  ineffective + 8 correction, but all downstream of the Lx=t−u solve.)
- **Deep arithmetic ineffective hits** inside `Fq_add` / `Fq_mul` /
  `VECTOR_*_dot_*` accumulators: the `s1 = 0 ineffective` signal only reveals that
  one intermediate was 0 — SIFA-usable in aggregate, no clean structural link to
  the key on its own.

### PRG (AES-128-CTR) — context-dependent

The large `br_aes_ct64_bitslice_Sbox` (175 ineffective), `mix_columns` (47),
`shift_rows` (28), `sub_word`, `add_round_key` sets are **SIFA-on-AES**. They are a
QR-UOV concern **only** when the faulted AES call expands a *secret* seed
(`seed_sk → S̄′`, or `seed_y → vinegar`); the identical S-box skip under the
`seed_pk` expansion leaks nothing secret. These findings need **call-site
context** (which `Expand*` invoked the AES) before they can be ranked — see §5.

---

## 4. Summary table

| Tier | Location | Representative detection | Known attack | Key recovery |
|---|---|---|---|---|
| 1 | `SIG_GEN` oil/vinegar mixing | `SIG_GEN fnSkip VECTOR_M_dot_VECTOR_M`; `Fq_sub` direct-leak | 2026/154 | **plausible, 1 faulty sig/pair** |
| 2 | vinegar `Expand_y`/`RejSamp` | `rejsamp_and_q` corr ×6 | 2024/277, 2025/2101 | plausible, several faulty sigs |
| 3 | secret matrix `Expandsk` | `Expand_sk fnSkip ExpandMatrixVxM` | Furue et al. | partial → full |
| 4 | linear solver, deep arithmetic | `LU_decompose` corr ×8 | — | none (DoS / weak) |
| PRG | AES-CTR | `br_aes_ct64_bitslice_Sbox` ineff ×175 | SIFA 2018/071 | only if expanding a secret seed |

---

## 5. Recommended mitigations and follow-ups

**For the implementation (QR-UOV team):**

1. **Protect the `SIG_GEN` mixing (Tier 1, highest priority).** Verify the
   produced signature before release — recompute `P(s)` and check `P(s) = t`. A
   single verify-after-sign defeats the Tier-1, Tier-2 and Tier-3 leaks, since a
   skipped mixing / known vinegar / corrupted `S̄′` all yield `P(s) ≠ t`.
2. **Redundant / checked vinegar expansion** so a faulted `Expand_y` cannot
   silently fix or bias `y`.
3. **Integrity check on `S̄′`** after `Expandsk` (e.g. recompute-and-compare, or a
   checksum over the expanded matrix).

**For this analysis (to turn "plausible" into "demonstrated"):**

4. Run the Tier-1 differencing on the already-collected faulty vs. correct
   `crypto_sign` traces and confirm `S̄′` solves out of the linear system. This is
   the one step that converts §3 Tier 1 from a reasoned claim into an executed
   key recovery.
5. Tag each AES fault by the `Expand*` call-site so the PRG findings split into
   secret-relevant vs. public.

---

## 6. References

- Oil, Vinegar, and Sparks — Key Recovery from UOV via Single EMFI. eprint 2026/154. https://eprint.iacr.org/2026/154
- Fault Attacks against UOV-based Signatures. eprint 2025/2101. https://eprint.iacr.org/2025/2101.pdf
- Krämer & Loiero, Fault Attacks on UOV and Rainbow. eprint 2024/277. https://eprint.iacr.org/2024/277.pdf
- Furue et al., Performance Analysis of Fault Attack on UOV. https://link.springer.com/chapter/10.1007/978-981-96-1218-5_10
- Dobraunig et al., SIFA. eprint 2018/071. https://eprint.iacr.org/2018/071.pdf
- Key Recovery Attacks on UOV Using p^ℓ-truncated Polynomial Rings. eprint 2026/298. https://eprint.iacr.org/2026/298.pdf
- QR-UOV specification (round 2). https://csrc.nist.gov/csrc/media/Projects/pqc-dig-sig/documents/qruov-spec-round2-web.pdf

## Appendix — provenance

- Detection data: `fault_report_qruov.csv` (4173 rows), from
  `generic_tests_plot.py` over `llvm/test_qruov/*/*/test_result.txt`.
- Per-function sweeps: `dist_tests/qruov/run_combined_unicorn.sh` (early-stop
  ineffective + correction), `dist_tests/qruov/early_stop_sweep_unicorn.py`.
- Output decoding (F_q element vs. 7-bit packed vs. uint64 vs. bytes):
  `dist_tests/qruov/output_repr.py`.
- Signing reference: `llvm/llvmgen_and_taintProp/qruov_port/ref/qruov.c`
  (`SIG_GEN` lines 581-594, `QRUOV_Sign` 596-709), `Fql.h`, `matrix.c`.
