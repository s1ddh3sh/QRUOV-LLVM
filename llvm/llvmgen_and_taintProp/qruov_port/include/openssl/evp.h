#pragma once

/*
 * Minimal OpenSSL EVP replacement for building the QR-UOV round-2 reference
 * code (src/ref) as freestanding Cortex-M4 LLVM IR. Only the calls made by
 * qruov.c and rng.c are provided:
 *   - AES-128/192/256-CTR (PRG, AES option) and AES-256-ECB (NIST DRBG),
 *   - SHAKE128/256 as XOF (Expand_mu, Hash, PRG SHAKE option).
 * Implemented in qruov_port/evp_shim.c on top of qruov_port/aes_c.c.
 * Only the AES types are structs; the XOF types are flat (no-struct build):
 * EVP_MD is the SHAKE rate in bytes and an EVP_MD_CTX is a uint64_t array
 * (Keccak state + rate/position/phase words, see evp_shim.c).
 */

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h> /* OpenSSL's headers pull it in; rng.c relies on it */

typedef void                      ENGINE;
typedef struct evp_cipher_st      EVP_CIPHER;
typedef struct evp_cipher_ctx_st  EVP_CIPHER_CTX;
typedef unsigned int              EVP_MD;
typedef uint64_t                  EVP_MD_CTX;

/* ciphers */
const EVP_CIPHER *EVP_aes_128_ctr(void);
const EVP_CIPHER *EVP_aes_192_ctr(void);
const EVP_CIPHER *EVP_aes_256_ctr(void);
const EVP_CIPHER *EVP_aes_256_ecb(void);

EVP_CIPHER_CTX *EVP_CIPHER_CTX_new(void);
void EVP_CIPHER_CTX_free(EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_copy(EVP_CIPHER_CTX *out, const EVP_CIPHER_CTX *in);
int EVP_EncryptInit_ex(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                       ENGINE *impl, const unsigned char *key,
                       const unsigned char *iv);
int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl);

/* XOFs */
const EVP_MD *EVP_shake128(void);
const EVP_MD *EVP_shake256(void);

EVP_MD_CTX *EVP_MD_CTX_new(void);
void EVP_MD_CTX_free(EVP_MD_CTX *ctx);
int EVP_MD_CTX_copy(EVP_MD_CTX *out, const EVP_MD_CTX *in);
int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in);
int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl);
int EVP_DigestUpdate(EVP_MD_CTX *ctx, const void *d, size_t cnt);
int EVP_DigestFinalXOF(EVP_MD_CTX *ctx, unsigned char *md, size_t len);

/* misc */
void OPENSSL_cleanse(void *ptr, size_t len);
void ERR_print_errors_fp(FILE *fp);
