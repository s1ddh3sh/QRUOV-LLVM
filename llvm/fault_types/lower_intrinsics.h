#pragma once

// Shared by loop_fn_Fault and binOp_load_store_Fault.
//
// llvmgen lowers funnel shifts, byte swaps and min/max to plain instructions,
// so no_struct/qruov1.ll is intrinsic-free. The generators' InstCombine /
// IndVarSimplify re-form them (rotr32's and mix_columns' shl/lshr/or become
// llvm.fshl, loop bounds become llvm.smax), which deletes the very BinOps the
// taint JSON points at. lowerIntrinsics() undoes that after each pipeline,
// with the same expansions as llvmgen's lowerIntrinsic. The new instructions
// keep the call's debug location (IRBuilder inherits it).

#include "llvm/IR/Constants.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"

namespace fault_types {

using namespace llvm;

static Value *lowerFunnelShift(IRBuilder<> &B, Value *X, Value *Y,
                               Value *Shift, bool left) {
  auto *Ty = cast<IntegerType>(X->getType());
  unsigned BW = Ty->getBitWidth();
  if (auto *C = dyn_cast<ConstantInt>(Shift))
    if (C->getZExtValue() % BW == 0)
      return left ? X : Y;
  Shift = B.CreateAnd(Shift, ConstantInt::get(Ty, BW - 1));
  Value *Rev = B.CreateSub(ConstantInt::get(Ty, BW), Shift);
  // shl before lshr, as llvmgen emits them (argument evaluation order of a
  // nested CreateOr(...) call would be unspecified)
  Value *Hi = B.CreateShl(X, left ? Shift : Rev);
  Value *Lo = B.CreateLShr(Y, left ? Rev : Shift);
  return B.CreateOr(Hi, Lo);
}

static Value *lowerByteSwap(IRBuilder<> &B, Value *X) {
  auto *Ty = cast<IntegerType>(X->getType());
  unsigned bytes = Ty->getBitWidth() / 8;
  Value *Res = ConstantInt::get(Ty, 0);
  for (unsigned i = 0; i < bytes; i++) {
    Value *Byte = B.CreateAnd(X, ConstantInt::get(Ty, 0xFFULL << (8 * i)));
    unsigned to = bytes - 1 - i;
    if (to > i)
      Byte = B.CreateShl(Byte, 8 * (to - i));
    else if (to < i)
      Byte = B.CreateLShr(Byte, 8 * (i - to));
    Res = B.CreateOr(Res, Byte);
  }
  return Res;
}

// Returns true if the module changed.
static bool lowerIntrinsics(Module &M) {
  SmallVector<CallInst *, 64> work;
  for (Function &F : M)
    for (BasicBlock &BB : F)
      for (Instruction &I : BB)
        if (auto *CI = dyn_cast<CallInst>(&I))
          if (Function *Callee = CI->getCalledFunction())
            switch (Callee->getIntrinsicID()) {
            case Intrinsic::smax:
            case Intrinsic::smin:
            case Intrinsic::umax:
            case Intrinsic::umin:
            case Intrinsic::fshl:
            case Intrinsic::fshr:
              work.push_back(CI);
              break;
            case Intrinsic::bswap:
              if (CI->getType()->isIntegerTy(16) ||
                  CI->getType()->isIntegerTy(32) ||
                  CI->getType()->isIntegerTy(64))
                work.push_back(CI);
              break;
            default:
              break;
            }

  for (CallInst *CI : work) {
    IRBuilder<> B(CI);
    Value *A = CI->getArgOperand(0);
    Value *Res = nullptr;
    switch (CI->getCalledFunction()->getIntrinsicID()) {
    case Intrinsic::smax:
      Res = B.CreateSelect(B.CreateICmpSGT(A, CI->getArgOperand(1)), A,
                           CI->getArgOperand(1));
      break;
    case Intrinsic::smin:
      Res = B.CreateSelect(B.CreateICmpSLT(A, CI->getArgOperand(1)), A,
                           CI->getArgOperand(1));
      break;
    case Intrinsic::umax:
      Res = B.CreateSelect(B.CreateICmpUGT(A, CI->getArgOperand(1)), A,
                           CI->getArgOperand(1));
      break;
    case Intrinsic::umin:
      Res = B.CreateSelect(B.CreateICmpULT(A, CI->getArgOperand(1)), A,
                           CI->getArgOperand(1));
      break;
    case Intrinsic::fshl:
      Res = lowerFunnelShift(B, A, CI->getArgOperand(1), CI->getArgOperand(2),
                             /*left=*/true);
      break;
    case Intrinsic::fshr:
      Res = lowerFunnelShift(B, A, CI->getArgOperand(1), CI->getArgOperand(2),
                             /*left=*/false);
      break;
    case Intrinsic::bswap:
      Res = lowerByteSwap(B, A);
      break;
    default:
      continue;
    }
    CI->replaceAllUsesWith(Res);
    CI->eraseFromParent();
  }

  for (auto FI = M.begin(); FI != M.end();) {
    Function &F = *FI++;
    if (F.isIntrinsic() && F.use_empty())
      F.eraseFromParent();
  }
  return !work.empty();
}

// Value a skipped call leaves behind for its users: the first argument of
// the call's own type (e.g. the accumulator c of Fq_vec_dot_accumulate(a, b,
// c), i.e. "the term was not added"), else zero. nullptr for void calls.
static Value *skippedCallResult(CallInst *CI) {
  Type *Ty = CI->getType();
  if (Ty->isVoidTy())
    return nullptr;
  for (Value *Arg : CI->args())
    if (Arg->getType() == Ty)
      return Arg;
  return Constant::getNullValue(Ty);
}

} // namespace fault_types
