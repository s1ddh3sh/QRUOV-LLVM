#!/usr/bin/env python3
"""output_repr.py -- how a QR-UOV output buffer's bytes map to elements, and
what "difference" means for each element.

QR-UOV has one field, F_q with q = 127 (F_{q^3} = F_q[x]/(x^3 - x - 1) is
three F_q coefficients, so its addition is coefficient-wise mod q too), so no
per-function field is configured. What varies is the representation of an
output, written as comma-separated segments KIND:COUNT (COUNT is a number of
elements, or "*" for the rest of the buffer, only in the last segment):

    fq     one F_q element per byte              difference (y1 - y2) mod q
    fq7    F_q elements packed 7 bits each,      difference (y1 - y2) mod q
           LSB first (store_Fq / store_bits);
           the next segment starts on the following byte
    u64    little-endian uint64 accumulators of  difference (y1 - y2) mod q
           F_q products, reduced mod q later
    bytes  plain bytes (AES, seeds, salt)        difference y1 xor y2
    i32    little-endian int32 (solver indices)  difference y1 xor y2

Positions reported by the tests are element indices in this decoded list.

Default: "fq:*" for a function whose domain is F_q
(setup/distributions_unicorn.field_mod_for(func) == 127), else "bytes:*".
An output that differs is named in qruov.json:

    "SIG_GEN": {..., "output-repr": {"sig": "bytes:16,fq:*"}}

("output-repr" may also be a single string for every output.)

CLI: output_repr.py <func> <out_buf>  -> prints the representation
"""

import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "setup"))
from distributions_unicorn import QRUOV_Q, field_mod_for  # noqa: E402

# qruov.json at the QR-UOV repo root (<root>/llvm/dist_tests/qruov/)
CONFIG = os.path.abspath(os.path.join(HERE, "..", "..", "..", "qruov.json"))

KINDS = ("fq", "fq7", "u64", "bytes", "i32")
MOD_Q_KINDS = ("fq", "fq7", "u64")


def resolve(func, out_buf, config=CONFIG):
    """The representation of output `out_buf` of `func`."""
    entry = {}
    if os.path.isfile(config):
        with open(config) as f:
            entry = json.load(f).get(func) or {}
    repr_ = entry.get("output-repr")
    if isinstance(repr_, dict):
        repr_ = repr_.get(out_buf)
    if repr_:
        parse(repr_)                    # validate
        return repr_
    return "fq:*" if field_mod_for(func) == QRUOV_Q else "bytes:*"


def parse(repr_):
    segments = []
    parts = [p.strip() for p in repr_.split(",") if p.strip()]
    for i, part in enumerate(parts):
        kind, _, count = part.partition(":")
        if kind not in KINDS:
            raise ValueError(f"unknown representation {kind!r} in {repr_!r}")
        if count == "*":
            if i != len(parts) - 1:
                raise ValueError(f"'*' only in the last segment: {repr_!r}")
            n = None
        else:
            n = int(count)
        segments.append((kind, n))
    if not segments:
        raise ValueError(f"empty representation {repr_!r}")
    return segments


def decode(repr_, raw):
    """(values, kinds): one entry per element of `raw` (a list of bytes).
    A segment the buffer is too short for is decoded as far as it goes."""
    raw = bytes(v & 0xFF for v in raw)
    values, kinds = [], []
    pos = 0                             # byte offset
    for kind, n in parse(repr_):
        if kind == "fq7":
            bit = 8 * pos
            k = 0
            while (n is None or k < n) and bit + 7 <= 8 * len(raw):
                idx, shift = bit >> 3, bit & 7
                word = raw[idx] | ((raw[idx + 1] << 8) if idx + 1 < len(raw) else 0)
                values.append((word >> shift) & 0x7F)
                kinds.append(kind)
                bit += 7
                k += 1
            pos = (bit + 7) >> 3
            continue
        width = {"fq": 1, "bytes": 1, "u64": 8, "i32": 4}[kind]
        k = 0
        while (n is None or k < n) and pos + width <= len(raw):
            chunk = raw[pos:pos + width]
            values.append(int.from_bytes(chunk, "little", signed=(kind == "i32")))
            kinds.append(kind)
            pos += width
            k += 1
    return values, kinds


def difference(kind, y1, y2):
    """alpha such that y1 = y2 + alpha in the element's own group."""
    if kind in MOD_Q_KINDS:
        return (y1 - y2) % QRUOV_Q
    if kind == "i32":
        return (y1 ^ y2) & 0xFFFFFFFF
    return y1 ^ y2


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("usage: output_repr.py <func> <out_buf>", file=sys.stderr)
        sys.exit(2)
    print(resolve(sys.argv[1], sys.argv[2]))
