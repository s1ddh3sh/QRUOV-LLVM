#pragma once

/*
 * Default QR-UOV round-2 parameter set for the LLVM IR build, as
 * qruov_config_h_gen.c emits it for the qruov1q127L3v156m54 line of
 * src/qruov_config.src: the recommended security level I set
 * (q, v, m, L) = (127, 156, 54, 3) of spec Sec. 4.5 / Table 1, with
 * f = x^3 - x - 1 (Table 4) and the AES-128-CTR PRG (QRUOV_PRG_SHAKE unset,
 * the "a" build of src/Makefile).
 */

#define QRUOV_security_strength_category 1
#define QRUOV_q                          127
#define QRUOV_v                          156
#define QRUOV_m                          54
#define QRUOV_L                          3
#define QRUOV_fc                         1
#define QRUOV_fe                         1
#define QRUOV_fc0                        1
#define QRUOV_PLATFORM                   refa
