#pragma once

/*
 * Static version of the api.h that src/ref/api_h_gen.c generates; the sizes
 * use the same expressions, so they follow qruov_config.h.
 * For qruov1q127L3v156m54: sk 32, pk 24256, sig 200 bytes.
 */

#include "qruov.h"

#define CRYPTO_SECRETKEYBYTES (QRUOV_SEED_LEN*2)
#define CRYPTO_PUBLICKEYBYTES                                                \
  (QRUOV_SEED_LEN+BITS2BYTES(QRUOV_ceil_log_2_q*QRUOV_L*((QRUOV_M*(QRUOV_M+1))/2)*QRUOV_m))
#define CRYPTO_BYTES          (QRUOV_SALT_LEN+BITS2BYTES(QRUOV_ceil_log_2_q*QRUOV_n))

#define CRYPTO_ALGNAME QRUOV_ALGNAME

int
crypto_sign_keypair(unsigned char *pk, unsigned char *sk);

int
crypto_sign(unsigned char *sm, unsigned long long *smlen,
            const unsigned char *m, unsigned long long mlen,
            const unsigned char *sk);

int
crypto_sign_open(unsigned char *m, unsigned long long *mlen,
                 const unsigned char *sm, unsigned long long smlen,
                 const unsigned char *pk);
