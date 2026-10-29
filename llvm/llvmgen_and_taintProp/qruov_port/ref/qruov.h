#pragma once

// QR-UOV LLVM IR build (no structs), copied from src/ref/qruov.h:
//   - QRUOV_SIGNATURE is a flat byte array r || s (same layout as the
//     struct it replaces), accessed through QRUOV_SIG_R / QRUOV_SIG_S
//   - mgf.h (MGF_CTX struct) is only needed by the SHAKE PRG option

#include <openssl/sha.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "qruov_misc.h"
#include "qruov_tau.h"
#include "Fql.h"
#include "matrix.h"
#ifdef QRUOV_PRG_SHAKE
#  include "mgf.h"
#endif

/* =====================================================================
   pseudo random generator
   ===================================================================== */

// #define QRUOV_PRG_SHAKE

#ifndef QRUOV_PRG_SHAKE
#  define QRUOV_PRG_CTX  EVP_CIPHER_CTX
#  define PRG_init       PRG_init_aes_ctr
#  define PRG_yield      PRG_yield_aes_ctr
#  define PRG_final      PRG_final_aes_ctr
#  define PRG_copy       PRG_copy_aes_ctr
#  define RejSampPRG     RejSampPRG_aes_ctr
#  define QRUOV_PRG2_CTX EVP_CIPHER_CTX
#  define PRG2_init      PRG_init_aes_ctr
#  define PRG2_yield     PRG_yield_aes_ctr
#  define PRG2_final     PRG_final_aes_ctr
#  define PRG2_copy      PRG_copy_aes_ctr
#else
#  define QRUOV_PRG_CTX  EVP_MD_CTX
#  define PRG_init       PRG_init_shake
#  define PRG_yield      PRG_yield_shake
#  define PRG_final      PRG_final_shake
#  define PRG_copy       PRG_copy_shake
#  define RejSampPRG     RejSampPRG_shake
#  define QRUOV_PRG2_CTX MGF_CTX_s
#  define PRG2_init      PRG_init_mgf
#  define PRG2_yield     PRG_yield_mgf
#  define PRG2_final     PRG_final_mgf
#  define PRG2_copy      PRG_copy_mgf
#endif

#if (QRUOV_security_strength_category == 1)
#  define EVP_AES_CTR  EVP_aes_128_ctr
#  define EVP_SHAKE    EVP_shake128
#elif (QRUOV_security_strength_category == 3)
#  define EVP_AES_CTR  EVP_aes_192_ctr
#  define EVP_SHAKE    EVP_shake256
#elif (QRUOV_security_strength_category == 5)
#  define EVP_AES_CTR  EVP_aes_256_ctr
#  define EVP_SHAKE    EVP_shake256
#else
#  error "illegal QRUOV_security_strength_category"
#endif

/* =====================================================================
   QRUOV functions
   ===================================================================== */

// SECRET       KEY : (sk_seed,        ,   )
// SIGNING      KEY : (sk_seed, pk_seed,   )
// VERIFICATION KEY : (       , pk_seed, P3)
//

typedef uint8_t QRUOV_SEED [QRUOV_SEED_LEN] ;
typedef uint8_t QRUOV_SALT [QRUOV_SALT_LEN] ;

// signature sig = (r, s): r = salt (QRUOV_SALT_LEN bytes), s in (F_q^L)^N
#define QRUOV_SIGNATURE_BYTES (QRUOV_SALT_LEN + QRUOV_N * QRUOV_L)
typedef uint8_t QRUOV_SIGNATURE [QRUOV_SIGNATURE_BYTES] ;

#define QRUOV_SIG_R(sig) ((uint8_t *)(sig))
#define QRUOV_SIG_S(sig) ((Fql *)((uint8_t *)(sig) + QRUOV_SALT_LEN))

extern void QRUOV_KeyGen(
  const QRUOV_SEED sk_seed,      // input
  const QRUOV_SEED pk_seed,      // input
  QRUOV_P3         P3            // output
) ;

extern void QRUOV_Sign(
  // ---------------------------------------------------
  const QRUOV_SEED seed_sk,        // input (signing key)
  const QRUOV_SEED seed_pk,        // input (signing key)
  // ---------------------------------------------------
  const QRUOV_SEED seed_y,         // input (random (F_q)^v)
  const QRUOV_SEED seed_r,         // input (random byte)
  const QRUOV_SEED seed_sol,       // input (random (F_q)^*)
  // ---------------------------------------------------
  const uint8_t    message[],      // input (message)
  const size_t     message_length, // input (message)
  // ---------------------------------------------------
  QRUOV_SIGNATURE  sig             // output
) ;

extern int QRUOV_Verify(         // NG:0, OK:1,
  const QRUOV_SEED      pk_seed, // input
  const QRUOV_P3        P3,      // input
                                 //
  const uint8_t         Msg[],   // input
  const size_t          Msg_len, // input
                                 //
  const QRUOV_SIGNATURE sig      // input
) ;

/* =====================================================================
   memory I/O
   ===================================================================== */

inline static void store_QRUOV_SEED (
  const QRUOV_SEED   seed,      // input
  uint8_t          * pool,      // output
  size_t           * pool_bits  // must be 8*n
){
  size_t index = (*pool_bits >> 3) ;
  memcpy(pool+index, seed, QRUOV_SEED_LEN) ;
  *pool_bits += (QRUOV_SEED_LEN<<3) ;
}

inline static void restore_QRUOV_SEED (
  const uint8_t * pool,      // input
  size_t        * pool_bits, // must be 8*n
  QRUOV_SEED      seed       // output
){
  size_t index = (*pool_bits >> 3) ;
  memcpy(seed, pool+index, QRUOV_SEED_LEN) ;
  *pool_bits += (QRUOV_SEED_LEN<<3) ;
}

inline static void store_QRUOV_SALT (
  const QRUOV_SALT   salt,      // input
  uint8_t          * pool,      // output
  size_t           * pool_bits  // must be 8*n
){
  size_t index = (*pool_bits >> 3) ;
  memcpy(pool+index, salt, QRUOV_SALT_LEN) ;
  *pool_bits += (QRUOV_SALT_LEN<<3) ;
}

inline static void restore_QRUOV_SALT (
  const uint8_t * pool,      // input
  size_t        * pool_bits, // must be 8*n
  QRUOV_SALT      salt       // output
){
  size_t index = (*pool_bits >> 3) ;
  memcpy(salt, pool+index, QRUOV_SALT_LEN) ;
  *pool_bits += (QRUOV_SALT_LEN<<3) ;
}

extern void store_QRUOV_P3(
  const QRUOV_P3   P3,        // input
  uint8_t        * pool,      // output
  size_t         * pool_bits  //
);

extern void restore_QRUOV_P3(
  const uint8_t * pool,      // input
  size_t        * pool_bits, // input (current bit index)
  QRUOV_P3        P3         // output
);

inline static void store_QRUOV_SIGNATURE(
  const QRUOV_SIGNATURE   sig,      // input
  uint8_t               * pool,     // output
  size_t                * pool_bits // output (current bit index) // must be 8*n
){
  store_QRUOV_SALT (QRUOV_SIG_R(sig), pool, pool_bits) ;
  for(size_t i=0; i<QRUOV_N; i++) store_Fql(QRUOV_SIG_S(sig)[i], pool, pool_bits) ;
  return ;
}

inline static void restore_QRUOV_SIGNATURE(
  const uint8_t   * pool,      // input
  size_t          * pool_bits, // input (current bit index) // must be 8*n
  QRUOV_SIGNATURE   sig        // output
){
  restore_QRUOV_SALT (pool, pool_bits, QRUOV_SIG_R(sig)) ;
  for(size_t i=0; i<QRUOV_N; i++) restore_Fql(pool, pool_bits, QRUOV_SIG_S(sig)[i]) ;
  return ;
}
