#!/usr/bin/env python3
"""distributions_unicorn.py (qruov) -- input domains for the QR-UOV
(qruov1q127L3v156m54, AES PRG) Unicorn sweeps.

MAYO fills every buffer, and sweeps the secret, over GF(16) (field_mod 16).
QR-UOV has three kinds of data, so the domain is chosen per function:

  127  F_q elements (q = 127), one per byte: matrices, vectors, Fq/Fql
       arithmetic, the linear solver. The default.
  256  plain bytes: AES (BearSSL ct64 + the EVP shim), the NIST DRBG, seeds,
       the sk/pk/signature byte strings and the PRG output before rejection
       sampling.
  128  rejsamp_rejection_with_aux: bytes already reduced with & q, so in
       [0, 127], where 127 (= q) is the value it rejects.

A handful of inputs are structural rather than data, and a uniform fill of
them would index far outside memory; the witness gives them a
"distribution" (see DISTRIBUTIONS) and fixed scalars a realistic value
(FIXED_SCALAR_INIT). Functions whose input cannot be built from an argument
fill at all are listed in UNSUPPORTED with the reason.

CLI (used by the shell scripts):
    distributions_unicorn.py field-mod <func>     -> 127 / 256 / 128
    distributions_unicorn.py unsupported <func>   -> reason, exit 0; or exit 1
"""

import struct
import sys

QRUOV_Q = 127
QRUOV_m = 54

# default field_mod; kept under the name collect_dist_unicorn.py imports
QRUOV_FIELD_MOD = QRUOV_Q

_BYTE_PREFIXES = ("EVP_", "aes", "br_aes_", "PRG_", "crypto_sign")
_BYTE_FUNCS = {
    # AES rounds / key schedule / byte packing
    "add_round_key", "mix_columns", "shift_rows", "sub_word", "rotr32",
    "br_dec32le", "br_enc32le", "br_range_dec32le", "br_range_enc32le",
    "ctr128_inc",
    # DRBG, memory, seed and key byte strings
    "randombytes", "OPENSSL_cleanse", "restore_QRUOV_SEED",
    "store_QRUOV_SEED", "example_qruov",
    # take seeds, or raw PRG bytes before rejection sampling
    "QRUOV_KeyGen", "QRUOV_Sign", "Expand_sk", "Expand_y",
    "RejSampPRG_aes_ctr", "RejSamp", "rejsamp_and_q",
}
_FIELD_MOD_OVERRIDE = {
    "rejsamp_rejection_with_aux": QRUOV_Q + 1,
}


def field_mod_for(func):
    if func in _FIELD_MOD_OVERRIDE:
        return _FIELD_MOD_OVERRIDE[func]
    if func in _BYTE_FUNCS or func.startswith(_BYTE_PREFIXES):
        return 256
    return QRUOV_Q


# (function, parameter) -> distribution name. The solver passes the echelon
# form as int32 arrays: perm is a row permutation of 0..m-1 (A[perm[i]] is
# indexed with it), index the pivot columns, here those of a full-rank form.
DISTRIBUTIONS = {
    ("L_inverse", "perm"): "perm",
    ("consistent", "perm"): "perm",
    ("sample_a_solution", "perm"): "perm",
    ("sample_a_solution", "index"): "pivots",
}

# (function, fixed scalar) -> value, where the call-site constant the driver
# traced is not a usable one (the echelon rank is a runtime value, so the
# driver anchor starts at 0). consistent / L_inverse only do work when the
# rank is below m; sample_a_solution is the common full-rank case.
FIXED_SCALAR_INIT = {
    ("consistent", "rank"): QRUOV_m - 1,
    ("L_inverse", "rank"): QRUOV_m - 1,
    ("sample_a_solution", "rank"): QRUOV_m,
}

_AES_CTX = ("its context argument is a struct holding heap pointers "
            "(EVP_CIPHER_CTX / aesNNNctx: cipher descriptor, round-key "
            "pointer); an argument fill would make them dereference "
            "garbage, and the secret (the round keys) is behind the pointer, "
            "not in an argument the sweep can vary")
UNSUPPORTED = {
    "EVP_CIPHER_CTX_free": _AES_CTX,
    "EVP_EncryptInit_ex": _AES_CTX,
    "EVP_EncryptUpdate": _AES_CTX,
    "aes_encrypt_blocks": _AES_CTX,
    "aes_keyexp": _AES_CTX,
    "aes_release": _AES_CTX,
    "PRG_final_aes_ctr": _AES_CTX,
    "RejSampPRG_aes_ctr": _AES_CTX,
    "aes128_ecb": _AES_CTX,
    "aes192_ecb": _AES_CTX,
    "aes256_ecb": _AES_CTX,
    "example_qruov": "it takes no arguments (its sk is a local), so there is "
                     "no input buffer to sweep",
}


def random_fill(rng, field_mod, length):
    return [rng.randrange(field_mod) for _ in range(length)]


def _int32_words(words, length):
    data = b"".join(struct.pack("<i", w) for w in words)
    data = data[:length] + bytes(max(0, length - len(data)))
    return list(data)


def sample_for_distribution(dist_name, length, rng, field_mod):
    """Fill `length` bytes for a buffer with the given witness
    "distribution" (None: uniform in [0, field_mod))."""
    if dist_name == "perm":
        perm = list(range(QRUOV_m))
        rng.shuffle(perm)
        return _int32_words(perm, length)
    if dist_name == "pivots":
        return _int32_words(range(QRUOV_m), length)
    return random_fill(rng, field_mod, length)


def main(argv):
    if len(argv) != 3 or argv[1] not in ("field-mod", "unsupported"):
        print(__doc__.split("CLI (used by the shell scripts):")[1],
              file=sys.stderr)
        return 2
    func = argv[2]
    if argv[1] == "field-mod":
        print(field_mod_for(func))
        return 0
    if func in UNSUPPORTED:
        print(UNSUPPORTED[func])
        return 0
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
