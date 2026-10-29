#pragma once
// QR-UOV LLVM IR build (no structs): Fql is a plain Fq[QRUOV_L] array instead
// of struct Fql_t, so Fql_add/sub/mul and restore_Fql write an output
// argument and Fq2Fql is gone (an Fq[QRUOV_L] already is an Fql).
// Copied from src/ref/Fql.h.
#include "qruov_misc.h"
#ifdef QRUOV_PRG_SHAKE
#include "mgf.h"
#endif

/* =====================================================================
   F_q
   ===================================================================== */

typedef uint8_t Fq ;

// ============================================================================
// Fq add/sub ...
// ============================================================================

inline static Fq Fq_add(Fq X, Fq Y){ return (Fq)(((int) X + (int) Y) % QRUOV_q) ; }
inline static Fq Fq_sub(Fq X, Fq Y){ return (Fq)(((int) X - (int) Y + QRUOV_q) % QRUOV_q) ; }
inline static Fq Fq_mul(Fq X, Fq Y){ return (Fq)(((int) X * (int) Y) % QRUOV_q) ; }
inline static Fq Fq_inv(Fq X){ extern Fq Fq_inv_table[QRUOV_q] ; return Fq_inv_table[X] ; }

// ============================================================================
// F_q^L = F_q[X]/(f(X))
// ============================================================================

typedef Fq Fql [QRUOV_L] ;

extern Fql Fql_zero ;

// ============================================================================
// F_q^L House keeping
// ============================================================================

inline static Fq  Fql2Fq(const Fql Z, int i){ return Z[i] ; }

// ============================================================================
// Fq^L add/sub
// ============================================================================

inline static void Fql_add(const Fql X, const Fql Y, Fql Z){
  for(int i=0; i<QRUOV_L; i++) Z[i] = Fq_add(X[i], Y[i]);
}

inline static void Fql_sub(const Fql X, const Fql Y, Fql Z){
  for(int i=0; i<QRUOV_L; i++) Z[i] = Fq_sub(X[i], Y[i]);
}

// ============================================================================
// Fq^L mul
// ============================================================================

inline static void Fql_mul(const Fql X, const Fql Y, Fql Z){
  int T[2*QRUOV_L-1] ;
  memset(T, 0, sizeof(T)) ;

  for(size_t i=0; i<QRUOV_L; i++){
    for(size_t j=0; j<QRUOV_L; j++){
      T[i+j] += (int) X[i] * (int) Y[j] ;
    }
  }

  for(size_t i = 2*QRUOV_L-2; i >= QRUOV_L; i--){
      T[i-QRUOV_L]          += QRUOV_fc0 * T[i] ;
      T[i-QRUOV_L+QRUOV_fe] += QRUOV_fc  * T[i] ;
  }

  for(size_t i=0; i<QRUOV_L; i++) Z[i] = (Fq)(T[i] % QRUOV_q) ;
}

/* =====================================================================
   memory I/O
   ===================================================================== */

inline static void store_bits(
  int             x,               // \in {0,...,255}
  const int       num_bits,        // \in {0,...,8}
  uint8_t       * pool,            //
  size_t        * pool_bits
){
  int    shift = (int)(*pool_bits &  7) ;
  size_t index = (*pool_bits >> 3) ;
  int    mask  = (1<<num_bits) - 1 ;

  x &= mask ;
  x <<= shift ;
  uint8_t x0 = (x & 0xFF) ;
  if(shift == 0){
    pool[index] = x0 ;
  }else{
    pool[index] |= x0 ;
  }
  if(shift + num_bits > 8){
    uint8_t x1 = (x >> 8) ;
    pool[index+1] = x1 ;
  }

  *pool_bits += (size_t) num_bits ;
}

inline static int restore_bits(     // \in {0,...,255}
  const uint8_t * pool,
  size_t        * pool_bits,
  const int       num_bits          // \in {0,...,8}
){
  int    shift = (int)(*pool_bits &  7) ;
  size_t index = (*pool_bits >> 3) ;
  int    mask  = (1<<num_bits) - 1 ;

  int x        = ((int) pool[index]) 
               | (((shift + num_bits > 8) ? (int)pool[index+1] : 0) << 8) ;
  x >>= shift ;
  x &= mask ; 
  *pool_bits += (size_t) num_bits ;
  return x ;
}

inline static void store_Fq(
  int             x,               // \in Fq
  uint8_t       * pool,
  size_t        * pool_bits
){
  store_bits(x, QRUOV_ceil_log_2_q, pool, pool_bits) ;
}

inline static Fq restore_Fq(
  const uint8_t * pool,
  size_t        * pool_bits
){
  return (Fq) restore_bits(pool, pool_bits, QRUOV_ceil_log_2_q) ;
}

inline static void store_Fq_vector(
  const Fq  * X,
  const int   n,
  uint8_t   * pool,
  size_t    * pool_bits
){
  for(size_t i=0; i<n; i++) store_Fq(X[i], pool, pool_bits) ;
}

inline static void restore_Fq_vector(
  const uint8_t * pool,
  size_t        * pool_bits,
  Fq            * Z,
  const size_t    n
){
  for(size_t i=0; i<n; i++) Z[i] = restore_Fq(pool, pool_bits) ;
}

inline static void store_Fql(
  const Fql       X,
  uint8_t       * pool,            // bit pool
  size_t        * pool_bits        // current bit index
){
  store_Fq_vector(X, QRUOV_L, pool, pool_bits) ;
}

inline static void restore_Fql(
  const uint8_t * pool,            // bit pool
  size_t        * pool_bits,       // current bit index
  Fql             Z                // output
){
  restore_Fq_vector(pool, pool_bits, Z, QRUOV_L) ;
}

inline static void store_Fql_vector(
  const Fql    * X,
  const size_t   n,
  uint8_t      * pool,
  size_t       * pool_bits
){
  for(size_t i=0; i<n; i++) store_Fql(X[i], pool, pool_bits) ;
}

inline static void restore_Fql_vector(
  const uint8_t * pool,
  size_t        * pool_bits,
  Fql           * Z,
  const size_t    n
){
  for(size_t i=0; i<n; i++) restore_Fql(pool, pool_bits, Z[i]) ;
}
