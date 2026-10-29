/**
 * An example to demonstrate how to use the QR-UOV API (NIST signature API of
 * src/ref/sign.c). It is the entry point (main) of the LLVM IR module that
 * level_prop analyses:
 * - crypto_sign_keypair
 * - crypto_sign
 * - crypto_sign_open
 */

#include <stdlib.h>
#include <string.h>

#include "api.h"
#include "rng.h"

static int example_qruov(void) {

    unsigned long long mlen = 32;
    unsigned long long smlen = 0;
    unsigned long long m2len = 0;

    unsigned char *pk = calloc(CRYPTO_PUBLICKEYBYTES, 1);
    unsigned char *sk = calloc(CRYPTO_SECRETKEYBYTES, 1);

    unsigned char *sm = calloc(CRYPTO_BYTES + mlen, 1);
    unsigned char *m2 = calloc(CRYPTO_BYTES + mlen, 1);

    unsigned char m[32] = { 0xe };

    // fixed DRBG seed, as in PQCgenKAT_sign.c
    unsigned char entropy_input[48];
    for (int i = 0; i < 48; i++)
        entropy_input[i] = i;
    randombytes_init(entropy_input, NULL, 256);

    int res = crypto_sign_keypair(pk, sk);
    if (res != 0) {
        res = -1;
        goto err;
    }

    res = crypto_sign(sm, &smlen, m, mlen, sk);
    if (res != 0) {
        res = -1;
        goto err;
    }

    res = crypto_sign_open(m2, &m2len, sm, smlen, pk);
    if (res != 0 || m2len != mlen || memcmp(m, m2, mlen)) {
        res = -1;
        goto err;
    }

err:
    free(pk);
    OPENSSL_cleanse(sk, CRYPTO_SECRETKEYBYTES);
    free(sk);
    free(sm);
    free(m2);
    return res;
}

int main(void) {
    return example_qruov();
}
