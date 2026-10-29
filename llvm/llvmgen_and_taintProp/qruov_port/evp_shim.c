/*
 * OpenSSL EVP subset used by the QR-UOV round-2 reference code, so that
 * src/ref builds without libcrypto (see include/openssl/evp.h).
 *
 *   AES-CTR : OpenSSL semantics, i.e. the 16-byte IV is a 128-bit big-endian
 *             counter and the keystream position persists across
 *             EVP_EncryptUpdate calls. Block cipher: aes_c.c (BearSSL ct64).
 *   AES-ECB : whole blocks only (rng.c encrypts one block per call).
 *   SHAKE   : incremental absorb, single FinalXOF, as QR-UOV uses it.
 */

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include <openssl/evp.h>

/* aes_c.c */
typedef struct { uint64_t *sk_exp; } aes128ctx;
typedef struct { uint64_t *sk_exp; } aes192ctx;
typedef struct { uint64_t *sk_exp; } aes256ctx;
void aes128_ecb_keyexp(aes128ctx *r, const unsigned char *key);
void aes192_ecb_keyexp(aes192ctx *r, const unsigned char *key);
void aes256_ecb_keyexp(aes256ctx *r, const unsigned char *key);
void aes128_ecb(unsigned char *out, const unsigned char *in, size_t nblocks, const aes128ctx *ctx);
void aes192_ecb(unsigned char *out, const unsigned char *in, size_t nblocks, const aes192ctx *ctx);
void aes256_ecb(unsigned char *out, const unsigned char *in, size_t nblocks, const aes256ctx *ctx);
void aes128_ctx_release(aes128ctx *r);
void aes192_ctx_release(aes192ctx *r);
void aes256_ctx_release(aes256ctx *r);

/* PQC_AES{128,192,256}_STATESIZE in aes_c.c (uint64_t words) */
#define AES128_RK_WORDS 88
#define AES192_RK_WORDS 104
#define AES256_RK_WORDS 120

/* =====================================================================
   misc
   ===================================================================== */

void OPENSSL_cleanse(void *ptr, size_t len) {
  volatile uint8_t *p = (volatile uint8_t *)ptr;
  while (len--) *p++ = 0;
}

void ERR_print_errors_fp(FILE *fp) { (void)fp; }

/* =====================================================================
   AES
   ===================================================================== */

enum { AES_MODE_CTR, AES_MODE_ECB };

struct evp_cipher_st {
  int key_len;
  int mode;
};

static const EVP_CIPHER aes_128_ctr = {16, AES_MODE_CTR};
static const EVP_CIPHER aes_192_ctr = {24, AES_MODE_CTR};
static const EVP_CIPHER aes_256_ctr = {32, AES_MODE_CTR};
static const EVP_CIPHER aes_256_ecb = {32, AES_MODE_ECB};

const EVP_CIPHER *EVP_aes_128_ctr(void) { return &aes_128_ctr; }
const EVP_CIPHER *EVP_aes_192_ctr(void) { return &aes_192_ctr; }
const EVP_CIPHER *EVP_aes_256_ctr(void) { return &aes_256_ctr; }
const EVP_CIPHER *EVP_aes_256_ecb(void) { return &aes_256_ecb; }

struct evp_cipher_ctx_st {
  const EVP_CIPHER *cipher;
  uint64_t *rk;           /* expanded round keys, owned (aesNNNctx.sk_exp) */
  uint8_t ctr[16];        /* CTR counter block */
  uint8_t ks[16];         /* current keystream block */
  unsigned int num;       /* bytes of ks already used, 0 = need a new block */
};

static size_t aes_rk_words(const EVP_CIPHER *c) {
  return c->key_len == 16 ? AES128_RK_WORDS
       : c->key_len == 24 ? AES192_RK_WORDS : AES256_RK_WORDS;
}

static void aes_release(EVP_CIPHER_CTX *ctx) {
  if (ctx->rk) {
    OPENSSL_cleanse(ctx->rk, aes_rk_words(ctx->cipher) * sizeof(uint64_t));
    free(ctx->rk);
    ctx->rk = NULL;
  }
}

static void aes_keyexp(EVP_CIPHER_CTX *ctx, const unsigned char *key) {
  switch (ctx->cipher->key_len) {
  case 16: { aes128ctx a; aes128_ecb_keyexp(&a, key); ctx->rk = a.sk_exp; break; }
  case 24: { aes192ctx a; aes192_ecb_keyexp(&a, key); ctx->rk = a.sk_exp; break; }
  default: { aes256ctx a; aes256_ecb_keyexp(&a, key); ctx->rk = a.sk_exp; break; }
  }
}

static void aes_encrypt_blocks(const EVP_CIPHER_CTX *ctx, uint8_t *out,
                               const uint8_t *in, size_t nblocks) {
  switch (ctx->cipher->key_len) {
  case 16: { aes128ctx a = {ctx->rk}; aes128_ecb(out, in, nblocks, &a); break; }
  case 24: { aes192ctx a = {ctx->rk}; aes192_ecb(out, in, nblocks, &a); break; }
  default: { aes256ctx a = {ctx->rk}; aes256_ecb(out, in, nblocks, &a); break; }
  }
}

static void ctr128_inc(uint8_t ctr[16]) {
  for (int i = 15; i >= 0; i--)
    if (++ctr[i] != 0) break;
}

EVP_CIPHER_CTX *EVP_CIPHER_CTX_new(void) {
  return calloc(1, sizeof(EVP_CIPHER_CTX));
}

void EVP_CIPHER_CTX_free(EVP_CIPHER_CTX *ctx) {
  if (!ctx) return;
  aes_release(ctx);
  OPENSSL_cleanse(ctx, sizeof(EVP_CIPHER_CTX));
  free(ctx);
}

int EVP_CIPHER_CTX_copy(EVP_CIPHER_CTX *out, const EVP_CIPHER_CTX *in) {
  aes_release(out);
  memcpy(out, in, sizeof(EVP_CIPHER_CTX));
  if (in->rk) {
    size_t bytes = aes_rk_words(in->cipher) * sizeof(uint64_t);
    out->rk = malloc(bytes);
    if (!out->rk) return 0;
    memcpy(out->rk, in->rk, bytes);
  }
  return 1;
}

int EVP_EncryptInit_ex(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                       ENGINE *impl, const unsigned char *key,
                       const unsigned char *iv) {
  (void)impl;
  if (type) {
    aes_release(ctx);
    ctx->cipher = type;
  }
  if (!ctx->cipher) return 0;
  if (key) {
    aes_release(ctx);
    aes_keyexp(ctx, key);
    ctx->num = 0;
  }
  if (iv) {
    memcpy(ctx->ctr, iv, 16);
    ctx->num = 0;
  }
  return 1;
}

int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl) {
  if (!ctx->rk || inl < 0) return 0;

  if (ctx->cipher->mode == AES_MODE_ECB) {
    if (inl % 16) return 0;
    aes_encrypt_blocks(ctx, out, in, (size_t)inl / 16);
    *outl = inl;
    return 1;
  }

  for (int i = 0; i < inl; i++) {
    if (ctx->num == 0) {
      aes_encrypt_blocks(ctx, ctx->ks, ctx->ctr, 1);
      ctr128_inc(ctx->ctr);
    }
    out[i] = in[i] ^ ctx->ks[ctx->num];
    ctx->num = (ctx->num + 1) & 15;
  }
  *outl = inl;
  return 1;
}

/* =====================================================================
   SHAKE (Keccak-f[1600], compact form after tiny_sha3 by M.-J. O. Saarinen)
   ===================================================================== */

#define KECCAK_ROUNDS 24
#define ROL64(a, n) (((a) << (n)) | ((a) >> (64 - (n))))

static const uint64_t keccakf_rndc[KECCAK_ROUNDS] = {
    0x0000000000000001ULL, 0x0000000000008082ULL, 0x800000000000808aULL,
    0x8000000080008000ULL, 0x000000000000808bULL, 0x0000000080000001ULL,
    0x8000000080008081ULL, 0x8000000000008009ULL, 0x000000000000008aULL,
    0x0000000000000088ULL, 0x0000000080008009ULL, 0x000000008000000aULL,
    0x000000008000808bULL, 0x800000000000008bULL, 0x8000000000008089ULL,
    0x8000000000008003ULL, 0x8000000000008002ULL, 0x8000000000000080ULL,
    0x000000000000800aULL, 0x800000008000000aULL, 0x8000000080008081ULL,
    0x8000000000008080ULL, 0x0000000080000001ULL, 0x8000000080008008ULL};

static const unsigned int keccakf_rotc[24] = {
    1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 2, 14,
    27, 41, 56, 8, 25, 43, 62, 18, 39, 61, 20, 44};

static const unsigned int keccakf_piln[24] = {
    10, 7, 11, 17, 18, 3, 5, 16, 8, 21, 24, 4,
    15, 23, 19, 13, 12, 2, 20, 14, 22, 9, 6, 1};

static void KeccakF1600(uint64_t st[25]) {
  uint64_t t, bc[5];
  for (int r = 0; r < KECCAK_ROUNDS; r++) {
    /* theta */
    for (int i = 0; i < 5; i++)
      bc[i] = st[i] ^ st[i + 5] ^ st[i + 10] ^ st[i + 15] ^ st[i + 20];
    for (int i = 0; i < 5; i++) {
      t = bc[(i + 4) % 5] ^ ROL64(bc[(i + 1) % 5], 1);
      for (int j = 0; j < 25; j += 5) st[j + i] ^= t;
    }
    /* rho, pi */
    t = st[1];
    for (int i = 0; i < 24; i++) {
      int j = keccakf_piln[i];
      bc[0] = st[j];
      st[j] = ROL64(t, keccakf_rotc[i]);
      t = bc[0];
    }
    /* chi */
    for (int j = 0; j < 25; j += 5) {
      for (int i = 0; i < 5; i++) bc[i] = st[j + i];
      for (int i = 0; i < 5; i++)
        st[j + i] ^= (~bc[(i + 1) % 5]) & bc[(i + 2) % 5];
    }
    /* iota */
    st[0] ^= keccakf_rndc[r];
  }
}

/* EVP_MD: the rate in bytes */
static const EVP_MD shake128_md = 168;
static const EVP_MD shake256_md = 136;

const EVP_MD *EVP_shake128(void) { return &shake128_md; }
const EVP_MD *EVP_shake256(void) { return &shake256_md; }

/* EVP_MD_CTX: uint64_t[MD_CTX_WORDS] */
#define MD_RATE      25 /* bytes */
#define MD_POS       26 /* byte offset inside the rate */
#define MD_SQUEEZING 27
#define MD_CTX_WORDS 28

static void keccak_xor_byte(uint64_t st[25], unsigned int i, uint8_t b) {
  st[i >> 3] ^= (uint64_t)b << (8 * (i & 7));
}

static uint8_t keccak_get_byte(const uint64_t st[25], unsigned int i) {
  return (uint8_t)(st[i >> 3] >> (8 * (i & 7)));
}

EVP_MD_CTX *EVP_MD_CTX_new(void) { return calloc(MD_CTX_WORDS, sizeof(uint64_t)); }

void EVP_MD_CTX_free(EVP_MD_CTX *ctx) {
  if (!ctx) return;
  OPENSSL_cleanse(ctx, MD_CTX_WORDS * sizeof(uint64_t));
  free(ctx);
}

int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in) {
  memcpy(out, in, MD_CTX_WORDS * sizeof(uint64_t));
  return 1;
}

int EVP_MD_CTX_copy(EVP_MD_CTX *out, const EVP_MD_CTX *in) {
  return EVP_MD_CTX_copy_ex(out, in);
}

int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl) {
  (void)impl;
  memset(ctx, 0, MD_CTX_WORDS * sizeof(uint64_t));
  ctx[MD_RATE] = *type;
  return 1;
}

int EVP_DigestUpdate(EVP_MD_CTX *ctx, const void *d, size_t cnt) {
  const uint8_t *in = (const uint8_t *)d;
  unsigned int rate = (unsigned int)ctx[MD_RATE];
  unsigned int pos = (unsigned int)ctx[MD_POS];
  if (ctx[MD_SQUEEZING]) return 0;
  for (size_t i = 0; i < cnt; i++) {
    keccak_xor_byte(ctx, pos++, in[i]);
    if (pos == rate) {
      KeccakF1600(ctx);
      pos = 0;
    }
  }
  ctx[MD_POS] = pos;
  return 1;
}

int EVP_DigestFinalXOF(EVP_MD_CTX *ctx, unsigned char *md, size_t len) {
  unsigned int rate = (unsigned int)ctx[MD_RATE];
  unsigned int pos = (unsigned int)ctx[MD_POS];
  if (!ctx[MD_SQUEEZING]) {
    keccak_xor_byte(ctx, pos, 0x1F);
    keccak_xor_byte(ctx, rate - 1, 0x80);
    KeccakF1600(ctx);
    pos = 0;
    ctx[MD_SQUEEZING] = 1;
  }
  for (size_t i = 0; i < len; i++) {
    if (pos == rate) {
      KeccakF1600(ctx);
      pos = 0;
    }
    md[i] = keccak_get_byte(ctx, pos++);
  }
  ctx[MD_POS] = pos;
  return 1;
}
