; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-eabihf"

%struct.evp_cipher_st = type { i32, i32 }
%struct.AES256_CTR_DRBG_struct = type { [32 x i8], [16 x i8], i32 }
%struct.aes128ctx = type { ptr }

@__const.example_qruov.m = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@aes_128_ctr = internal constant %struct.evp_cipher_st { i32 16, i32 0 }, align 4, !dbg !0
@aes_192_ctr = internal constant %struct.evp_cipher_st { i32 24, i32 0 }, align 4, !dbg !27
@aes_256_ctr = internal constant %struct.evp_cipher_st { i32 32, i32 0 }, align 4, !dbg !37
@aes_256_ecb = internal constant %struct.evp_cipher_st { i32 32, i32 1 }, align 4, !dbg !39
@shake128_md = internal constant i32 168, align 4, !dbg !41
@shake256_md = internal constant i32 136, align 4, !dbg !45
@keccakf_piln = internal unnamed_addr constant [24 x i32] [i32 10, i32 7, i32 11, i32 17, i32 18, i32 3, i32 5, i32 16, i32 8, i32 21, i32 24, i32 4, i32 15, i32 23, i32 19, i32 13, i32 12, i32 2, i32 20, i32 14, i32 22, i32 9, i32 6, i32 1], align 4, !dbg !47
@keccakf_rotc = internal unnamed_addr constant [24 x i32] [i32 1, i32 3, i32 6, i32 10, i32 15, i32 21, i32 28, i32 36, i32 45, i32 55, i32 2, i32 14, i32 27, i32 41, i32 56, i32 8, i32 25, i32 43, i32 62, i32 18, i32 39, i32 61, i32 20, i32 44], align 4, !dbg !53
@keccakf_rndc = internal unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 8, !dbg !55
@Rcon = internal unnamed_addr constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !59
@crypto_sign_keypair.P3 = internal global [54 x [18 x [3 x [18 x i8]]]] zeroinitializer, align 1, !dbg !72
@crypto_sign_open.P3 = internal global [54 x [18 x [3 x [18 x i8]]]] zeroinitializer, align 1, !dbg !91
@Fq_inv_table = dso_local local_unnamed_addr global [127 x i8] c"\00\01@U 3jm\10qYh5Xv\11\08\0Fxkly4tZ=,P;\\H)\04MGb<gur6\1F|A\1A0:d-F^\05\16\0C(a]N.\1C$\19T}\02+f[cQ1\22\1EWsiz!9R\1BEOe>\03`I\0D\0A\18C\1D82{V7#D/SB%\0BK\06\13\14\07pwn\09'J\17&\0Eo\12\15L_*?~", align 1, !dbg !112
@Fql_zero = dso_local local_unnamed_addr global [3 x i8] zeroinitializer, align 1, !dbg !117
@_impure_ptr = external dso_local local_unnamed_addr global ptr, align 4
@DRBG_ctx = dso_local global %struct.AES256_CTR_DRBG_struct zeroinitializer, align 4, !dbg !123

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 !dbg !157 {
entry:
  %call = call fastcc i32 @example_qruov() #4, !dbg !161
  ret i32 %call, !dbg !162
}

; Function Attrs: nounwind
define internal fastcc range(i32 -1, 1) i32 @example_qruov() unnamed_addr #0 !dbg !163 {
entry:
  %smlen = alloca i64, align 8
  %m2len = alloca i64, align 8
  %m = alloca [32 x i8], align 1
  %entropy_input = alloca [48 x i8], align 1
    #dbg_value(i64 32, !164, !DIExpression(), !165)
    #dbg_value(i64 0, !166, !DIExpression(), !165)
  store i64 0, ptr %smlen, align 8, !dbg !167
    #dbg_value(i64 0, !168, !DIExpression(), !165)
  store i64 0, ptr %m2len, align 8, !dbg !169
  %call = call dereferenceable_or_null(24256) ptr @calloc(i32 noundef 24256, i32 noundef 1) #5, !dbg !170
    #dbg_value(ptr %call, !171, !DIExpression(), !165)
  %call1 = call dereferenceable_or_null(32) ptr @calloc(i32 noundef 32, i32 noundef 1) #5, !dbg !172
    #dbg_value(ptr %call1, !173, !DIExpression(), !165)
  %call2 = call dereferenceable_or_null(232) ptr @calloc(i32 noundef 232, i32 noundef 1) #5, !dbg !174
    #dbg_value(ptr %call2, !175, !DIExpression(), !165)
  %call5 = call dereferenceable_or_null(232) ptr @calloc(i32 noundef 232, i32 noundef 1) #5, !dbg !176
    #dbg_value(ptr %call5, !177, !DIExpression(), !165)
    #dbg_declare(ptr %m, !178, !DIExpression(), !179)
  call void @qruov_memcpy(ptr %m, ptr @__const.example_qruov.m, i32 32), !dbg !179
    #dbg_declare(ptr %entropy_input, !180, !DIExpression(), !184)
    #dbg_value(i32 0, !185, !DIExpression(), !187)
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !189
    #dbg_value(i32 %i.0, !185, !DIExpression(), !187)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !190
  br i1 %exitcond, label %for.body, label %for.end, !dbg !192

for.body:                                         ; preds = %for.cond
  %conv7 = trunc nuw nsw i32 %i.0 to i8, !dbg !193
  %arrayidx = getelementptr inbounds nuw [48 x i8], ptr %entropy_input, i32 0, i32 %i.0, !dbg !194
  store i8 %conv7, ptr %arrayidx, align 1, !dbg !195
  %inc = add nuw nsw i32 %i.0, 1, !dbg !196
    #dbg_value(i32 %inc, !185, !DIExpression(), !187)
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %for.cond
  call void @randombytes_init(ptr noundef nonnull %entropy_input, ptr noundef null, i32 noundef 256) #4, !dbg !201
  %call8 = call i32 @crypto_sign_keypair(ptr noundef %call, ptr noundef %call1) #4, !dbg !202
    #dbg_value(i32 0, !203, !DIExpression(), !165)
    #dbg_value(ptr %smlen, !166, !DIExpression(DW_OP_deref), !165)
  %call12 = call i32 @crypto_sign(ptr noundef %call2, ptr noundef nonnull %smlen, ptr noundef nonnull %m, i64 noundef 32, ptr noundef %call1) #4, !dbg !204
    #dbg_value(i32 0, !203, !DIExpression(), !165)
  %0 = load i64, ptr %smlen, align 8, !dbg !205
    #dbg_value(i64 %0, !166, !DIExpression(), !165)
    #dbg_value(ptr %m2len, !168, !DIExpression(DW_OP_deref), !165)
  %call17 = call i32 @crypto_sign_open(ptr noundef %call5, ptr noundef nonnull %m2len, ptr noundef %call2, i64 noundef %0, ptr noundef %call) #4, !dbg !206
    #dbg_value(i32 %call17, !203, !DIExpression(), !165)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !207
  %1 = load i64, ptr %m2len, align 8
    #dbg_value(i64 %1, !168, !DIExpression(), !165)
  %cmp20.not = icmp eq i64 %1, 32
  %or.cond = select i1 %cmp18.not, i1 %cmp20.not, i1 false, !dbg !209
  br i1 %or.cond, label %lor.lhs.false22, label %err, !dbg !209

lor.lhs.false22:                                  ; preds = %for.end
  %call25 = call i32 @memcmp(ptr noundef nonnull %m, ptr noundef %call5, i32 noundef 32) #6, !dbg !210
  %tobool.not = icmp ne i32 %call25, 0, !dbg !210
  %spec.select = sext i1 %tobool.not to i32, !dbg !211
  br label %err, !dbg !211

err:                                              ; preds = %lor.lhs.false22, %for.end
  %res.0 = phi i32 [ -1, %for.end ], [ %spec.select, %lor.lhs.false22 ], !dbg !165
    #dbg_value(i32 %res.0, !203, !DIExpression(), !165)
    #dbg_label(!212, !213)
  call void @free(ptr noundef %call) #6, !dbg !214
  call void @OPENSSL_cleanse(ptr noundef %call1, i32 noundef 32) #4, !dbg !215
  call void @free(ptr noundef %call1) #6, !dbg !216
  call void @free(ptr noundef %call2) #6, !dbg !217
  call void @free(ptr noundef %call5) #6, !dbg !218
  ret i32 %res.0, !dbg !219
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @qruov_memset(ptr noundef %dst, i8 noundef zeroext %val, i32 noundef %len) local_unnamed_addr #0 !dbg !220 {
entry:
    #dbg_value(ptr %dst, !224, !DIExpression(), !225)
    #dbg_value(i8 %val, !226, !DIExpression(), !225)
    #dbg_value(i32 %len, !227, !DIExpression(), !225)
    #dbg_value(ptr %dst, !228, !DIExpression(), !225)
    #dbg_value(i32 0, !229, !DIExpression(), !231)
  br label %for.cond, !dbg !232

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !233
    #dbg_value(i32 %i.0, !229, !DIExpression(), !231)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !234
  br i1 %exitcond, label %for.body, label %for.end, !dbg !236

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !237
  store i8 %val, ptr %arrayidx, align 1, !dbg !238
  %inc = add i32 %i.0, 1, !dbg !239
    #dbg_value(i32 %inc, !229, !DIExpression(), !231)
  br label %for.cond, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond
  ret void, !dbg !243
}

; Function Attrs: nounwind
define dso_local void @qruov_memcpy(ptr noundef %dst, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 !dbg !244 {
entry:
    #dbg_value(ptr %dst, !249, !DIExpression(), !250)
    #dbg_value(ptr %src, !251, !DIExpression(), !250)
    #dbg_value(i32 %len, !252, !DIExpression(), !250)
    #dbg_value(ptr %dst, !253, !DIExpression(), !250)
    #dbg_value(ptr %src, !254, !DIExpression(), !250)
    #dbg_value(i32 0, !255, !DIExpression(), !257)
  br label %for.cond, !dbg !258

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !259
    #dbg_value(i32 %i.0, !255, !DIExpression(), !257)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !260
  br i1 %exitcond, label %for.body, label %for.end, !dbg !262

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %src, i32 %i.0, !dbg !263
  %0 = load i8, ptr %arrayidx, align 1, !dbg !263
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !264
  store i8 %0, ptr %arrayidx1, align 1, !dbg !265
  %inc = add i32 %i.0, 1, !dbg !266
    #dbg_value(i32 %inc, !255, !DIExpression(), !257)
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  ret void, !dbg !270
}

; Function Attrs: nounwind
define dso_local void @OPENSSL_cleanse(ptr noundef %ptr, i32 noundef %len) local_unnamed_addr #0 !dbg !271 {
entry:
    #dbg_value(ptr %ptr, !274, !DIExpression(), !275)
    #dbg_value(i32 %len, !276, !DIExpression(), !275)
    #dbg_value(ptr %ptr, !277, !DIExpression(), !275)
  br label %while.cond, !dbg !278

while.cond:                                       ; preds = %while.body, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %while.body ]
  %p.0 = phi ptr [ %ptr, %entry ], [ %incdec.ptr, %while.body ], !dbg !275
    #dbg_value(ptr %p.0, !277, !DIExpression(), !275)
    #dbg_value(i32 %len.addr.0, !276, !DIExpression(), !275)
    #dbg_value(i32 %len.addr.0, !276, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !275)
  %tobool.not = icmp eq i32 %len.addr.0, 0, !dbg !278
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !278

while.body:                                       ; preds = %while.cond
  %dec = add i32 %len.addr.0, -1, !dbg !279
    #dbg_value(i32 %dec, !276, !DIExpression(), !275)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i32 1, !dbg !280
    #dbg_value(ptr %incdec.ptr, !277, !DIExpression(), !275)
  store volatile i8 0, ptr %p.0, align 1, !dbg !281
  br label %while.cond, !dbg !278, !llvm.loop !282

while.end:                                        ; preds = %while.cond
  ret void, !dbg !284
}

; Function Attrs: nounwind
define dso_local void @ERR_print_errors_fp(ptr noundef %fp) local_unnamed_addr #0 !dbg !285 {
entry:
    #dbg_value(ptr %fp, !457, !DIExpression(), !458)
  ret void, !dbg !459
}

; Function Attrs: nounwind
define dso_local ptr @EVP_aes_128_ctr() local_unnamed_addr #0 !dbg !460 {
entry:
  ret ptr @aes_128_ctr, !dbg !464
}

; Function Attrs: nounwind
define dso_local ptr @EVP_aes_192_ctr() local_unnamed_addr #0 !dbg !465 {
entry:
  ret ptr @aes_192_ctr, !dbg !466
}

; Function Attrs: nounwind
define dso_local ptr @EVP_aes_256_ctr() local_unnamed_addr #0 !dbg !467 {
entry:
  ret ptr @aes_256_ctr, !dbg !468
}

; Function Attrs: nounwind
define dso_local ptr @EVP_aes_256_ecb() local_unnamed_addr #0 !dbg !469 {
entry:
  ret ptr @aes_256_ecb, !dbg !470
}

; Function Attrs: nounwind
define dso_local ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #0 !dbg !471 {
entry:
  %call = call dereferenceable_or_null(44) ptr @calloc(i32 noundef 1, i32 noundef 44) #5, !dbg !485
  ret ptr %call, !dbg !486
}

; Function Attrs: nounwind
define dso_local void @EVP_CIPHER_CTX_free(ptr noundef %ctx) local_unnamed_addr #0 !dbg !487 {
entry:
    #dbg_value(ptr %ctx, !490, !DIExpression(), !491)
  %tobool.not = icmp eq ptr %ctx, null, !dbg !492
  br i1 %tobool.not, label %return, label %if.end, !dbg !494

if.end:                                           ; preds = %entry
  call fastcc void @aes_release(ptr noundef nonnull %ctx) #4, !dbg !495
  call void @OPENSSL_cleanse(ptr noundef nonnull %ctx, i32 noundef 44) #4, !dbg !496
  call void @free(ptr noundef nonnull %ctx) #6, !dbg !497
  br label %return, !dbg !498

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !498
}

; Function Attrs: nounwind
define internal fastcc void @aes_release(ptr noundef %ctx) unnamed_addr #0 !dbg !499 {
entry:
    #dbg_value(ptr %ctx, !500, !DIExpression(), !501)
  %rk = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !502
  %0 = load ptr, ptr %rk, align 4, !dbg !502
  %tobool.not = icmp eq ptr %0, null, !dbg !504
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !504

if.then:                                          ; preds = %entry
  %rk1 = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !505
  %1 = load ptr, ptr %rk1, align 4, !dbg !505
  %2 = load ptr, ptr %ctx, align 4, !dbg !507
  %call = call fastcc i32 @aes_rk_words(ptr noundef %2) #4, !dbg !508
  %mul = shl nuw nsw i32 %call, 3, !dbg !509
  call void @OPENSSL_cleanse(ptr noundef %1, i32 noundef %mul) #4, !dbg !510
  %rk2 = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !511
  %3 = load ptr, ptr %rk2, align 4, !dbg !511
  call void @free(ptr noundef %3) #6, !dbg !512
  %rk3 = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !513
  store ptr null, ptr %rk3, align 4, !dbg !514
  br label %if.end, !dbg !515

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !516
}

; Function Attrs: nounwind
define internal fastcc range(i32 88, 121) i32 @aes_rk_words(ptr noundef %c) unnamed_addr #0 !dbg !517 {
entry:
    #dbg_value(ptr %c, !520, !DIExpression(), !521)
  %0 = load i32, ptr %c, align 4, !dbg !522
  %cmp = icmp eq i32 %0, 16, !dbg !523
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !524

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %c, align 4, !dbg !525
  %cmp2 = icmp eq i32 %1, 24, !dbg !526
  %cond = select i1 %cmp2, i32 104, i32 120, !dbg !527
  br label %cond.end, !dbg !524

cond.end:                                         ; preds = %entry, %cond.false
  %cond3 = phi i32 [ %cond, %cond.false ], [ 88, %entry ], !dbg !524
  ret i32 %cond3, !dbg !528
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @EVP_CIPHER_CTX_copy(ptr noundef %out, ptr noundef %in) local_unnamed_addr #0 !dbg !529 {
entry:
    #dbg_value(ptr %out, !534, !DIExpression(), !535)
    #dbg_value(ptr %in, !536, !DIExpression(), !535)
  call fastcc void @aes_release(ptr noundef %out) #4, !dbg !537
  %call = call ptr @memcpy(ptr noundef %out, ptr noundef %in, i32 noundef 44) #6, !dbg !538
  %rk = getelementptr inbounds nuw i8, ptr %in, i32 4, !dbg !539
  %0 = load ptr, ptr %rk, align 4, !dbg !539
  %tobool.not = icmp eq ptr %0, null, !dbg !541
  br i1 %tobool.not, label %return, label %if.then, !dbg !541

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %in, align 4, !dbg !542
  %call1 = call fastcc i32 @aes_rk_words(ptr noundef %1) #4, !dbg !544
  %mul = shl nuw nsw i32 %call1, 3, !dbg !545
    #dbg_value(i32 %mul, !546, !DIExpression(), !547)
  %call2 = call ptr @malloc(i32 noundef %mul) #7, !dbg !548
  %rk3 = getelementptr inbounds nuw i8, ptr %out, i32 4, !dbg !549
  store ptr %call2, ptr %rk3, align 4, !dbg !550
  %tobool5.not = icmp eq ptr %call2, null, !dbg !551
  br i1 %tobool5.not, label %return, label %if.end, !dbg !553

if.end:                                           ; preds = %if.then
  %rk7 = getelementptr inbounds nuw i8, ptr %out, i32 4, !dbg !554
  %2 = load ptr, ptr %rk7, align 4, !dbg !554
  %rk8 = getelementptr inbounds nuw i8, ptr %in, i32 4, !dbg !555
  %3 = load ptr, ptr %rk8, align 4, !dbg !555
  %call9 = call ptr @memcpy(ptr noundef %2, ptr noundef %3, i32 noundef %mul) #6, !dbg !556
  br label %return, !dbg !557

return:                                           ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ 1, %entry ], !dbg !535
  ret i32 %retval.0, !dbg !558
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @EVP_EncryptInit_ex(ptr noundef %ctx, ptr noundef %type, ptr noundef %impl, ptr noundef %key, ptr noundef %iv) local_unnamed_addr #0 !dbg !559 {
entry:
    #dbg_value(ptr %ctx, !564, !DIExpression(), !565)
    #dbg_value(ptr %type, !566, !DIExpression(), !565)
    #dbg_value(ptr %impl, !567, !DIExpression(), !565)
    #dbg_value(ptr %key, !568, !DIExpression(), !565)
    #dbg_value(ptr %iv, !569, !DIExpression(), !565)
  %tobool.not = icmp eq ptr %type, null, !dbg !570
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !570

if.then:                                          ; preds = %entry
  call fastcc void @aes_release(ptr noundef %ctx) #4, !dbg !572
  store ptr %type, ptr %ctx, align 4, !dbg !574
  br label %if.end, !dbg !575

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %ctx, align 4, !dbg !576
  %tobool2.not = icmp eq ptr %0, null, !dbg !578
  br i1 %tobool2.not, label %return, label %if.end4, !dbg !579

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %key, null, !dbg !580
  br i1 %tobool5.not, label %if.end7, label %if.then6, !dbg !580

if.then6:                                         ; preds = %if.end4
  call fastcc void @aes_release(ptr noundef nonnull %ctx) #4, !dbg !582
  call fastcc void @aes_keyexp(ptr noundef nonnull %ctx, ptr noundef nonnull %key) #4, !dbg !584
  %num = getelementptr inbounds nuw i8, ptr %ctx, i32 40, !dbg !585
  store i32 0, ptr %num, align 4, !dbg !586
  br label %if.end7, !dbg !587

if.end7:                                          ; preds = %if.then6, %if.end4
  %tobool8.not = icmp eq ptr %iv, null, !dbg !588
  br i1 %tobool8.not, label %return, label %if.then9, !dbg !588

if.then9:                                         ; preds = %if.end7
  %ctr = getelementptr inbounds nuw i8, ptr %ctx, i32 8, !dbg !590
  %call = call ptr @memcpy(ptr noundef nonnull %ctr, ptr noundef nonnull %iv, i32 noundef 16) #6, !dbg !592
  %num10 = getelementptr inbounds nuw i8, ptr %ctx, i32 40, !dbg !593
  store i32 0, ptr %num10, align 4, !dbg !594
  br label %return, !dbg !595

return:                                           ; preds = %if.end7, %if.then9, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.then9 ], [ 1, %if.end7 ], !dbg !565
  ret i32 %retval.0, !dbg !596
}

; Function Attrs: nounwind
define internal fastcc void @aes_keyexp(ptr noundef %ctx, ptr noundef nonnull %key) unnamed_addr #0 !dbg !597 {
entry:
  %a = alloca %struct.aes128ctx, align 4
  %a2 = alloca %struct.aes128ctx, align 4
  %a5 = alloca %struct.aes128ctx, align 4
    #dbg_value(ptr %ctx, !600, !DIExpression(), !601)
    #dbg_value(ptr %key, !602, !DIExpression(), !601)
  %0 = load ptr, ptr %ctx, align 4, !dbg !603
  %1 = load i32, ptr %0, align 4, !dbg !604
  switch i32 %1, label %sw.default [
    i32 16, label %sw.bb
    i32 24, label %sw.bb1
  ], !dbg !605

sw.bb:                                            ; preds = %entry
    #dbg_declare(ptr %a, !606, !DIExpression(), !613)
  call void @aes128_ecb_keyexp(ptr noundef nonnull %a, ptr noundef nonnull %key) #4, !dbg !614
  %2 = load ptr, ptr %a, align 4, !dbg !615
  %rk = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !616
  store ptr %2, ptr %rk, align 4, !dbg !617
  br label %sw.epilog, !dbg !618

sw.bb1:                                           ; preds = %entry
    #dbg_declare(ptr %a2, !619, !DIExpression(), !625)
  call void @aes192_ecb_keyexp(ptr noundef nonnull %a2, ptr noundef nonnull %key) #4, !dbg !626
  %3 = load ptr, ptr %a2, align 4, !dbg !627
  %rk4 = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !628
  store ptr %3, ptr %rk4, align 4, !dbg !629
  br label %sw.epilog, !dbg !630

sw.default:                                       ; preds = %entry
    #dbg_declare(ptr %a5, !631, !DIExpression(), !637)
  call void @aes256_ecb_keyexp(ptr noundef nonnull %a5, ptr noundef nonnull %key) #4, !dbg !638
  %4 = load ptr, ptr %a5, align 4, !dbg !639
  %rk7 = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !640
  store ptr %4, ptr %rk7, align 4, !dbg !641
  br label %sw.epilog, !dbg !642

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void, !dbg !643
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @EVP_EncryptUpdate(ptr noundef %ctx, ptr noundef %out, ptr noundef %outl, ptr noundef %in, i32 noundef %inl) local_unnamed_addr #0 !dbg !644 {
entry:
    #dbg_value(ptr %ctx, !648, !DIExpression(), !649)
    #dbg_value(ptr %out, !650, !DIExpression(), !649)
    #dbg_value(ptr %outl, !651, !DIExpression(), !649)
    #dbg_value(ptr %in, !652, !DIExpression(), !649)
    #dbg_value(i32 %inl, !653, !DIExpression(), !649)
  %rk = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !654
  %0 = load ptr, ptr %rk, align 4, !dbg !654
  %tobool.not = icmp eq ptr %0, null, !dbg !656
  %cmp = icmp slt i32 %inl, 0
  %or.cond = or i1 %tobool.not, %cmp, !dbg !657
  br i1 %or.cond, label %return, label %if.end, !dbg !657

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx, align 4, !dbg !658
  %mode = getelementptr inbounds nuw i8, ptr %1, i32 4, !dbg !660
  %2 = load i32, ptr %mode, align 4, !dbg !660
  %cmp1 = icmp eq i32 %2, 1, !dbg !661
  br i1 %cmp1, label %if.then2, label %for.cond.preheader, !dbg !661

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !662

if.then2:                                         ; preds = %if.end
  %rem1 = and i32 %inl, 15, !dbg !664
  %tobool3.not = icmp eq i32 %rem1, 0, !dbg !664
  br i1 %tobool3.not, label %if.end5, label %return, !dbg !664

if.end5:                                          ; preds = %if.then2
  %div3 = lshr exact i32 %inl, 4, !dbg !667
  call fastcc void @aes_encrypt_blocks(ptr noundef nonnull %ctx, ptr noundef %out, ptr noundef %in, i32 noundef %div3) #4, !dbg !668
  store i32 %inl, ptr %outl, align 4, !dbg !669
  br label %return, !dbg !670

for.cond:                                         ; preds = %for.cond.preheader, %if.end13
  %i.0 = phi i32 [ %inc, %if.end13 ], [ 0, %for.cond.preheader ], !dbg !671
    #dbg_value(i32 %i.0, !672, !DIExpression(), !673)
  %exitcond = icmp ne i32 %i.0, %inl, !dbg !674
  br i1 %exitcond, label %for.body, label %for.end, !dbg !662

for.body:                                         ; preds = %for.cond
  %num = getelementptr inbounds nuw i8, ptr %ctx, i32 40, !dbg !676
  %3 = load i32, ptr %num, align 4, !dbg !676
  %cmp8 = icmp eq i32 %3, 0, !dbg !679
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !679

if.then9:                                         ; preds = %for.body
  %ks = getelementptr inbounds nuw i8, ptr %ctx, i32 24, !dbg !680
  %ctr = getelementptr inbounds nuw i8, ptr %ctx, i32 8, !dbg !682
  call fastcc void @aes_encrypt_blocks(ptr noundef nonnull %ctx, ptr noundef nonnull %ks, ptr noundef nonnull %ctr, i32 noundef 1) #4, !dbg !683
  %ctr11 = getelementptr inbounds nuw i8, ptr %ctx, i32 8, !dbg !684
  call fastcc void @ctr128_inc(ptr noundef nonnull %ctr11) #4, !dbg !685
  br label %if.end13, !dbg !686

if.end13:                                         ; preds = %if.then9, %for.body
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !687
  %4 = load i8, ptr %arrayidx, align 1, !dbg !687
  %ks14 = getelementptr inbounds nuw i8, ptr %ctx, i32 24, !dbg !688
  %num15 = getelementptr inbounds nuw i8, ptr %ctx, i32 40, !dbg !689
  %5 = load i32, ptr %num15, align 4, !dbg !689
  %arrayidx16 = getelementptr inbounds nuw [16 x i8], ptr %ks14, i32 0, i32 %5, !dbg !690
  %6 = load i8, ptr %arrayidx16, align 1, !dbg !690
  %xor2 = xor i8 %4, %6, !dbg !691
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !692
  store i8 %xor2, ptr %arrayidx19, align 1, !dbg !693
  %num20 = getelementptr inbounds nuw i8, ptr %ctx, i32 40, !dbg !694
  %7 = load i32, ptr %num20, align 4, !dbg !694
  %add = add i32 %7, 1, !dbg !695
  %and = and i32 %add, 15, !dbg !696
  %num21 = getelementptr inbounds nuw i8, ptr %ctx, i32 40, !dbg !697
  store i32 %and, ptr %num21, align 4, !dbg !698
  %inc = add nuw i32 %i.0, 1, !dbg !699
    #dbg_value(i32 %inc, !672, !DIExpression(), !673)
  br label %for.cond, !dbg !700, !llvm.loop !701

for.end:                                          ; preds = %for.cond
  store i32 %inl, ptr %outl, align 4, !dbg !703
  br label %return, !dbg !704

return:                                           ; preds = %if.then2, %entry, %for.end, %if.end5
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 1, %for.end ], [ 0, %entry ], [ 0, %if.then2 ], !dbg !649
  ret i32 %retval.0, !dbg !705
}

; Function Attrs: nounwind
define internal fastcc void @aes_encrypt_blocks(ptr noundef %ctx, ptr noundef %out, ptr noundef %in, i32 noundef range(i32 0, 134217728) %nblocks) unnamed_addr #0 !dbg !706 {
entry:
  %a = alloca %struct.aes128ctx, align 4
  %a2 = alloca %struct.aes128ctx, align 4
  %a5 = alloca %struct.aes128ctx, align 4
    #dbg_value(ptr %ctx, !709, !DIExpression(), !710)
    #dbg_value(ptr %out, !711, !DIExpression(), !710)
    #dbg_value(ptr %in, !712, !DIExpression(), !710)
    #dbg_value(i32 %nblocks, !713, !DIExpression(), !710)
  %0 = load ptr, ptr %ctx, align 4, !dbg !714
  %1 = load i32, ptr %0, align 4, !dbg !715
  switch i32 %1, label %sw.default [
    i32 16, label %sw.bb
    i32 24, label %sw.bb1
  ], !dbg !716

sw.bb:                                            ; preds = %entry
    #dbg_declare(ptr %a, !717, !DIExpression(), !720)
  %rk = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !721
  %2 = load ptr, ptr %rk, align 4, !dbg !721
  store ptr %2, ptr %a, align 4, !dbg !722
  call void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef nonnull %a) #4, !dbg !723
  br label %sw.epilog, !dbg !724

sw.bb1:                                           ; preds = %entry
    #dbg_declare(ptr %a2, !725, !DIExpression(), !727)
  %rk4 = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !728
  %3 = load ptr, ptr %rk4, align 4, !dbg !728
  store ptr %3, ptr %a2, align 4, !dbg !729
  call void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef nonnull %a2) #4, !dbg !730
  br label %sw.epilog, !dbg !731

sw.default:                                       ; preds = %entry
    #dbg_declare(ptr %a5, !732, !DIExpression(), !734)
  %rk7 = getelementptr inbounds nuw i8, ptr %ctx, i32 4, !dbg !735
  %4 = load ptr, ptr %rk7, align 4, !dbg !735
  store ptr %4, ptr %a5, align 4, !dbg !736
  call void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef nonnull %a5) #4, !dbg !737
  br label %sw.epilog, !dbg !738

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void, !dbg !739
}

; Function Attrs: nounwind
define internal fastcc void @ctr128_inc(ptr noundef %ctr) unnamed_addr #0 !dbg !740 {
entry:
    #dbg_value(ptr %ctr, !743, !DIExpression(), !744)
    #dbg_value(i32 15, !745, !DIExpression(), !747)
  br label %for.cond, !dbg !748

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 15, %entry ], [ %dec, %for.inc ], !dbg !749
    #dbg_value(i32 %i.0, !745, !DIExpression(), !747)
  %cmp = icmp sgt i32 %i.0, -1, !dbg !750
  br i1 %cmp, label %for.body, label %for.end, !dbg !752

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %ctr, i32 %i.0, !dbg !753
  %0 = load i8, ptr %arrayidx, align 1, !dbg !755
  %inc = add i8 %0, 1, !dbg !755
  store i8 %inc, ptr %arrayidx, align 1, !dbg !755
  %cmp1.not = icmp eq i8 %inc, 0, !dbg !756
  br i1 %cmp1.not, label %for.inc, label %for.end, !dbg !756

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !757
    #dbg_value(i32 %dec, !745, !DIExpression(), !747)
  br label %for.cond, !dbg !758, !llvm.loop !759

for.end:                                          ; preds = %for.body, %for.cond
  ret void, !dbg !761
}

; Function Attrs: nounwind
define dso_local ptr @EVP_shake128() local_unnamed_addr #0 !dbg !762 {
entry:
  ret ptr @shake128_md, !dbg !766
}

; Function Attrs: nounwind
define dso_local ptr @EVP_shake256() local_unnamed_addr #0 !dbg !767 {
entry:
  ret ptr @shake256_md, !dbg !768
}

; Function Attrs: nounwind
define dso_local ptr @EVP_MD_CTX_new() local_unnamed_addr #0 !dbg !769 {
entry:
  %call = call dereferenceable_or_null(224) ptr @calloc(i32 noundef 28, i32 noundef 8) #5, !dbg !774
  ret ptr %call, !dbg !775
}

; Function Attrs: nounwind
define dso_local void @EVP_MD_CTX_free(ptr noundef %ctx) local_unnamed_addr #0 !dbg !776 {
entry:
    #dbg_value(ptr %ctx, !779, !DIExpression(), !780)
  %tobool.not = icmp eq ptr %ctx, null, !dbg !781
  br i1 %tobool.not, label %return, label %if.end, !dbg !783

if.end:                                           ; preds = %entry
  call void @OPENSSL_cleanse(ptr noundef nonnull %ctx, i32 noundef 224) #4, !dbg !784
  call void @free(ptr noundef nonnull %ctx) #6, !dbg !785
  br label %return, !dbg !786

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !786
}

; Function Attrs: nounwind
define dso_local i32 @EVP_MD_CTX_copy_ex(ptr noundef %out, ptr noundef %in) local_unnamed_addr #0 !dbg !787 {
entry:
    #dbg_value(ptr %out, !792, !DIExpression(), !793)
    #dbg_value(ptr %in, !794, !DIExpression(), !793)
  %call = call ptr @memcpy(ptr noundef %out, ptr noundef %in, i32 noundef 224) #6, !dbg !795
  ret i32 1, !dbg !796
}

; Function Attrs: nounwind
define dso_local i32 @EVP_MD_CTX_copy(ptr noundef %out, ptr noundef %in) local_unnamed_addr #0 !dbg !797 {
entry:
    #dbg_value(ptr %out, !798, !DIExpression(), !799)
    #dbg_value(ptr %in, !800, !DIExpression(), !799)
  %call = call i32 @EVP_MD_CTX_copy_ex(ptr noundef %out, ptr noundef %in) #4, !dbg !801
  ret i32 1, !dbg !802
}

; Function Attrs: nounwind
define dso_local i32 @EVP_DigestInit_ex(ptr noundef %ctx, ptr noundef %type, ptr noundef %impl) local_unnamed_addr #0 !dbg !803 {
entry:
    #dbg_value(ptr %ctx, !806, !DIExpression(), !807)
    #dbg_value(ptr %type, !808, !DIExpression(), !807)
    #dbg_value(ptr %impl, !809, !DIExpression(), !807)
  %call = call ptr @memset(ptr noundef %ctx, i32 noundef 0, i32 noundef 224) #6, !dbg !810
  %0 = load i32, ptr %type, align 4, !dbg !811
  %conv = zext i32 %0 to i64, !dbg !811
  %arrayidx = getelementptr inbounds nuw i8, ptr %ctx, i32 200, !dbg !812
  store i64 %conv, ptr %arrayidx, align 8, !dbg !813
  ret i32 1, !dbg !814
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @EVP_DigestUpdate(ptr noundef %ctx, ptr noundef %d, i32 noundef %cnt) local_unnamed_addr #0 !dbg !815 {
entry:
    #dbg_value(ptr %ctx, !818, !DIExpression(), !819)
    #dbg_value(ptr %d, !820, !DIExpression(), !819)
    #dbg_value(i32 %cnt, !821, !DIExpression(), !819)
    #dbg_value(ptr %d, !822, !DIExpression(), !819)
  %arrayidx = getelementptr inbounds nuw i8, ptr %ctx, i32 200, !dbg !823
  %0 = load i64, ptr %arrayidx, align 8, !dbg !823
  %conv = trunc i64 %0 to i32, !dbg !824
    #dbg_value(i32 %conv, !825, !DIExpression(), !819)
    #dbg_value(i64 poison, !826, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !819)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %ctx, i32 216, !dbg !827
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !827
  %tobool.not = icmp eq i64 %1, 0, !dbg !827
  br i1 %tobool.not, label %if.end, label %return, !dbg !827

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %ctx, i32 208, !dbg !829
  %2 = load i64, ptr %arrayidx1, align 8, !dbg !829
    #dbg_value(i64 %2, !826, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !819)
  %conv2 = trunc i64 %2 to i32, !dbg !830
    #dbg_value(i32 %conv2, !826, !DIExpression(), !819)
    #dbg_value(i32 0, !831, !DIExpression(), !833)
  br label %for.cond, !dbg !834

for.cond:                                         ; preds = %for.inc, %if.end
  %pos.0 = phi i32 [ %conv2, %if.end ], [ %pos.1, %for.inc ], !dbg !819
  %i.0 = phi i32 [ 0, %if.end ], [ %inc10, %for.inc ], !dbg !835
    #dbg_value(i32 %i.0, !831, !DIExpression(), !833)
    #dbg_value(i32 %pos.0, !826, !DIExpression(), !819)
  %exitcond = icmp ne i32 %i.0, %cnt, !dbg !836
  br i1 %exitcond, label %for.body, label %for.end, !dbg !838

for.body:                                         ; preds = %for.cond
  %inc = add i32 %pos.0, 1, !dbg !839
    #dbg_value(i32 %inc, !826, !DIExpression(), !819)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %d, i32 %i.0, !dbg !841
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !841
  call fastcc void @keccak_xor_byte(ptr noundef %ctx, i32 noundef %pos.0, i8 noundef zeroext %3) #4, !dbg !842
  %cmp6 = icmp eq i32 %inc, %conv, !dbg !843
  br i1 %cmp6, label %if.then8, label %for.inc, !dbg !843

if.then8:                                         ; preds = %for.body
  call fastcc void @KeccakF1600(ptr noundef %ctx) #4, !dbg !845
    #dbg_value(i32 0, !826, !DIExpression(), !819)
  br label %for.inc, !dbg !847

for.inc:                                          ; preds = %for.body, %if.then8
  %pos.1 = phi i32 [ 0, %if.then8 ], [ %inc, %for.body ], !dbg !848
    #dbg_value(i32 %pos.1, !826, !DIExpression(), !819)
  %inc10 = add i32 %i.0, 1, !dbg !849
    #dbg_value(i32 %inc10, !831, !DIExpression(), !833)
  br label %for.cond, !dbg !850, !llvm.loop !851

for.end:                                          ; preds = %for.cond
  %pos.0.lcssa = phi i32 [ %pos.0, %for.cond ], !dbg !819
  %conv11 = zext i32 %pos.0.lcssa to i64, !dbg !853
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %ctx, i32 208, !dbg !854
  store i64 %conv11, ptr %arrayidx12, align 8, !dbg !855
  br label %return, !dbg !856

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !819
  ret i32 %retval.0, !dbg !857
}

; Function Attrs: nounwind
define internal fastcc void @keccak_xor_byte(ptr noundef %st, i32 noundef %i, i8 noundef zeroext %b) unnamed_addr #0 !dbg !858 {
entry:
    #dbg_value(ptr %st, !861, !DIExpression(), !862)
    #dbg_value(i32 %i, !863, !DIExpression(), !862)
    #dbg_value(i8 %b, !864, !DIExpression(), !862)
  %conv = zext i8 %b to i64, !dbg !865
  %and = shl i32 %i, 3, !dbg !866
  %mul = and i32 %and, 56, !dbg !866
  %sh_prom = zext nneg i32 %mul to i64, !dbg !867
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !867
  %shr = lshr i32 %i, 3, !dbg !868
  %arrayidx = getelementptr inbounds nuw i64, ptr %st, i32 %shr, !dbg !869
  %0 = load i64, ptr %arrayidx, align 8, !dbg !870
  %xor = xor i64 %0, %shl, !dbg !870
  store i64 %xor, ptr %arrayidx, align 8, !dbg !870
  ret void, !dbg !871
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600(ptr noundef %st) unnamed_addr #0 !dbg !872 {
entry:
  %bc = alloca [5 x i64], align 8
    #dbg_value(ptr %st, !875, !DIExpression(), !876)
    #dbg_declare(ptr %bc, !877, !DIExpression(), !881)
    #dbg_value(i32 0, !882, !DIExpression(), !884)
  br label %for.cond, !dbg !885

for.cond:                                         ; preds = %for.end92, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc97, %for.end92 ], !dbg !886
    #dbg_value(i32 %r.0, !882, !DIExpression(), !884)
  %exitcond5 = icmp ne i32 %r.0, 24, !dbg !887
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end98, !dbg !889

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !890

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %i.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !893
    #dbg_value(i32 %i.0, !894, !DIExpression(), !895)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !896
  br i1 %exitcond, label %for.body3, label %for.cond16.preheader, !dbg !890

for.cond16.preheader:                             ; preds = %for.cond1
  br label %for.cond16, !dbg !898

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i64, ptr %st, i32 %i.0, !dbg !900
  %0 = load i64, ptr %arrayidx, align 8, !dbg !900
  %1 = getelementptr inbounds nuw i64, ptr %st, i32 %i.0, !dbg !901
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %1, i32 40, !dbg !901
  %2 = load i64, ptr %arrayidx4, align 8, !dbg !901
  %xor = xor i64 %0, %2, !dbg !902
  %3 = getelementptr inbounds nuw i64, ptr %st, i32 %i.0, !dbg !903
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %3, i32 80, !dbg !903
  %4 = load i64, ptr %arrayidx6, align 8, !dbg !903
  %xor7 = xor i64 %xor, %4, !dbg !904
  %5 = getelementptr inbounds nuw i64, ptr %st, i32 %i.0, !dbg !905
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %5, i32 120, !dbg !905
  %6 = load i64, ptr %arrayidx9, align 8, !dbg !905
  %xor10 = xor i64 %xor7, %6, !dbg !906
  %7 = getelementptr inbounds nuw i64, ptr %st, i32 %i.0, !dbg !907
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %7, i32 160, !dbg !907
  %8 = load i64, ptr %arrayidx12, align 8, !dbg !907
  %xor13 = xor i64 %xor10, %8, !dbg !908
  %arrayidx14 = getelementptr inbounds nuw [5 x i64], ptr %bc, i32 0, i32 %i.0, !dbg !909
  store i64 %xor13, ptr %arrayidx14, align 8, !dbg !910
  %inc = add nuw nsw i32 %i.0, 1, !dbg !911
    #dbg_value(i32 %inc, !894, !DIExpression(), !895)
  br label %for.cond1, !dbg !912, !llvm.loop !913

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc37
  %i15.0 = phi i32 [ %inc38, %for.inc37 ], [ 0, %for.cond16.preheader ], !dbg !915
    #dbg_value(i32 %i15.0, !916, !DIExpression(), !917)
  %exitcond1 = icmp ne i32 %i15.0, 5, !dbg !918
  br i1 %exitcond1, label %for.body18, label %for.end39, !dbg !898

for.body18:                                       ; preds = %for.cond16
  %add19 = add nuw nsw i32 %i15.0, 4, !dbg !920
  %rem = urem i32 %add19, 5, !dbg !922
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %bc, i32 0, i32 %rem, !dbg !923
  %9 = load i64, ptr %arrayidx20, align 8, !dbg !923
  %add21 = add nuw nsw i32 %i15.0, 1, !dbg !924
  %10 = icmp eq i32 %add21, 5, !dbg !924
  %rem22 = select i1 %10, i32 0, i32 %add21, !dbg !924
  %arrayidx23 = getelementptr inbounds nuw [5 x i64], ptr %bc, i32 0, i32 %rem22, !dbg !924
  %11 = load i64, ptr %arrayidx23, align 8, !dbg !924
  %add24 = add nuw nsw i32 %i15.0, 1, !dbg !924
  %12 = icmp eq i32 %add24, 5, !dbg !924
  %rem25 = select i1 %12, i32 0, i32 %add24, !dbg !924
  %arrayidx26 = getelementptr inbounds nuw [5 x i64], ptr %bc, i32 0, i32 %rem25, !dbg !924
  %13 = load i64, ptr %arrayidx26, align 8, !dbg !924
  %14 = shl i64 %11, 1, !dbg !924
  %15 = lshr i64 %13, 63, !dbg !924
  %16 = or i64 %14, %15, !dbg !924
  %xor27 = xor i64 %9, %16, !dbg !925
    #dbg_value(i64 %xor27, !926, !DIExpression(), !876)
    #dbg_value(i32 0, !927, !DIExpression(), !929)
  br label %for.cond28, !dbg !930

for.cond28:                                       ; preds = %for.body30, %for.body18
  %j.0 = phi i32 [ 0, %for.body18 ], [ %add35, %for.body30 ], !dbg !931
    #dbg_value(i32 %j.0, !927, !DIExpression(), !929)
  %cmp29 = icmp samesign ult i32 %j.0, 25, !dbg !932
  br i1 %cmp29, label %for.body30, label %for.inc37, !dbg !934

for.body30:                                       ; preds = %for.cond28
  %17 = getelementptr i64, ptr %st, i32 %j.0, !dbg !935
  %arrayidx32 = getelementptr i64, ptr %17, i32 %i15.0, !dbg !935
  %18 = load i64, ptr %arrayidx32, align 8, !dbg !936
  %xor33 = xor i64 %18, %xor27, !dbg !936
  store i64 %xor33, ptr %arrayidx32, align 8, !dbg !936
  %add35 = add nuw nsw i32 %j.0, 5, !dbg !937
    #dbg_value(i32 %add35, !927, !DIExpression(), !929)
  br label %for.cond28, !dbg !938, !llvm.loop !939

for.inc37:                                        ; preds = %for.cond28
  %inc38 = add nuw nsw i32 %i15.0, 1, !dbg !941
    #dbg_value(i32 %inc38, !916, !DIExpression(), !917)
  br label %for.cond16, !dbg !942, !llvm.loop !943

for.end39:                                        ; preds = %for.cond16
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %st, i32 8, !dbg !945
    #dbg_value(i64 poison, !926, !DIExpression(), !876)
    #dbg_value(i32 0, !946, !DIExpression(), !948)
  br label %for.cond42, !dbg !949

for.cond42:                                       ; preds = %for.body44, %for.end39
  %i41.0 = phi i32 [ 0, %for.end39 ], [ %inc58, %for.body44 ], !dbg !950
  %t.0.in = phi ptr [ %arrayidx40, %for.end39 ], [ %bc, %for.body44 ]
    #dbg_value(i64 poison, !926, !DIExpression(), !876)
    #dbg_value(i32 %i41.0, !946, !DIExpression(), !948)
  %exitcond2 = icmp ne i32 %i41.0, 24, !dbg !951
  br i1 %exitcond2, label %for.body44, label %for.cond61.preheader, !dbg !953

for.cond61.preheader:                             ; preds = %for.cond42
  br label %for.cond61, !dbg !954

for.body44:                                       ; preds = %for.cond42
  %t.0 = load i64, ptr %t.0.in, align 8, !dbg !956
    #dbg_value(i64 %t.0, !926, !DIExpression(), !876)
  %arrayidx46 = getelementptr inbounds nuw [24 x i32], ptr @keccakf_piln, i32 0, i32 %i41.0, !dbg !957
  %19 = load i32, ptr %arrayidx46, align 4, !dbg !957
    #dbg_value(i32 %19, !959, !DIExpression(), !960)
  %arrayidx47 = getelementptr inbounds i64, ptr %st, i32 %19, !dbg !961
  %20 = load i64, ptr %arrayidx47, align 8, !dbg !961
  store i64 %20, ptr %bc, align 8, !dbg !962
  %arrayidx49 = getelementptr inbounds nuw [24 x i32], ptr @keccakf_rotc, i32 0, i32 %i41.0, !dbg !963
  %21 = load i32, ptr %arrayidx49, align 4, !dbg !963
  %sh_prom = zext nneg i32 %21 to i64, !dbg !963
  %shl50 = shl i64 %t.0, %sh_prom, !dbg !963
  %sub = sub i32 64, %21, !dbg !963
  %sh_prom52 = zext nneg i32 %sub to i64, !dbg !963
  %shr53 = lshr i64 %t.0, %sh_prom52, !dbg !963
  %or54 = or i64 %shl50, %shr53, !dbg !963
  %arrayidx55 = getelementptr inbounds i64, ptr %st, i32 %19, !dbg !964
  store i64 %or54, ptr %arrayidx55, align 8, !dbg !965
    #dbg_value(i64 poison, !926, !DIExpression(), !876)
    #dbg_value(i64 poison, !926, !DIExpression(), !876)
  %inc58 = add nuw nsw i32 %i41.0, 1, !dbg !966
    #dbg_value(i32 %inc58, !946, !DIExpression(), !948)
  br label %for.cond42, !dbg !967, !llvm.loop !968

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc90
  %j60.0 = phi i32 [ %add91, %for.inc90 ], [ 0, %for.cond61.preheader ], !dbg !970
    #dbg_value(i32 %j60.0, !971, !DIExpression(), !972)
  %cmp62 = icmp ult i32 %j60.0, 25, !dbg !973
  br i1 %cmp62, label %for.cond65.preheader, label %for.end92, !dbg !954

for.cond65.preheader:                             ; preds = %for.cond61
  br label %for.cond65, !dbg !975

for.cond65:                                       ; preds = %for.cond65.preheader, %for.body67
  %i64.0 = phi i32 [ %inc72, %for.body67 ], [ 0, %for.cond65.preheader ], !dbg !978
    #dbg_value(i32 %i64.0, !979, !DIExpression(), !980)
  %exitcond3 = icmp ne i32 %i64.0, 5, !dbg !981
  br i1 %exitcond3, label %for.body67, label %for.cond75.preheader, !dbg !975

for.cond75.preheader:                             ; preds = %for.cond65
  br label %for.cond75, !dbg !983

for.body67:                                       ; preds = %for.cond65
  %22 = getelementptr i64, ptr %st, i32 %j60.0, !dbg !985
  %arrayidx69 = getelementptr i64, ptr %22, i32 %i64.0, !dbg !985
  %23 = load i64, ptr %arrayidx69, align 8, !dbg !985
  %arrayidx70 = getelementptr inbounds nuw [5 x i64], ptr %bc, i32 0, i32 %i64.0, !dbg !986
  store i64 %23, ptr %arrayidx70, align 8, !dbg !987
  %inc72 = add nuw nsw i32 %i64.0, 1, !dbg !988
    #dbg_value(i32 %inc72, !979, !DIExpression(), !980)
  br label %for.cond65, !dbg !989, !llvm.loop !990

for.cond75:                                       ; preds = %for.cond75.preheader, %for.body77
  %i74.0 = phi i32 [ %inc88, %for.body77 ], [ 0, %for.cond75.preheader ], !dbg !992
    #dbg_value(i32 %i74.0, !993, !DIExpression(), !994)
  %exitcond4 = icmp ne i32 %i74.0, 5, !dbg !995
  br i1 %exitcond4, label %for.body77, label %for.inc90, !dbg !983

for.body77:                                       ; preds = %for.cond75
  %add78 = add nuw nsw i32 %i74.0, 1, !dbg !997
  %24 = icmp eq i32 %add78, 5, !dbg !998
  %rem79 = select i1 %24, i32 0, i32 %add78, !dbg !998
  %arrayidx80 = getelementptr inbounds nuw [5 x i64], ptr %bc, i32 0, i32 %rem79, !dbg !999
  %25 = load i64, ptr %arrayidx80, align 8, !dbg !999
  %not = xor i64 %25, -1, !dbg !1000
  %add81 = add nuw nsw i32 %i74.0, 2, !dbg !1001
  %rem82 = urem i32 %add81, 5, !dbg !1002
  %arrayidx83 = getelementptr inbounds nuw [5 x i64], ptr %bc, i32 0, i32 %rem82, !dbg !1003
  %26 = load i64, ptr %arrayidx83, align 8, !dbg !1003
  %and = and i64 %26, %not, !dbg !1004
  %27 = getelementptr i64, ptr %st, i32 %j60.0, !dbg !1005
  %arrayidx85 = getelementptr i64, ptr %27, i32 %i74.0, !dbg !1005
  %28 = load i64, ptr %arrayidx85, align 8, !dbg !1006
  %xor86 = xor i64 %28, %and, !dbg !1006
  store i64 %xor86, ptr %arrayidx85, align 8, !dbg !1006
  %inc88 = add nuw nsw i32 %i74.0, 1, !dbg !1007
    #dbg_value(i32 %inc88, !993, !DIExpression(), !994)
  br label %for.cond75, !dbg !1008, !llvm.loop !1009

for.inc90:                                        ; preds = %for.cond75
  %add91 = add nuw nsw i32 %j60.0, 5, !dbg !1011
    #dbg_value(i32 %add91, !971, !DIExpression(), !972)
  br label %for.cond61, !dbg !1012, !llvm.loop !1013

for.end92:                                        ; preds = %for.cond61
  %arrayidx93 = getelementptr inbounds [24 x i64], ptr @keccakf_rndc, i32 0, i32 %r.0, !dbg !1015
  %29 = load i64, ptr %arrayidx93, align 8, !dbg !1015
  %30 = load i64, ptr %st, align 8, !dbg !1016
  %xor95 = xor i64 %30, %29, !dbg !1016
  store i64 %xor95, ptr %st, align 8, !dbg !1016
  %inc97 = add nuw nsw i32 %r.0, 1, !dbg !1017
    #dbg_value(i32 %inc97, !882, !DIExpression(), !884)
  br label %for.cond, !dbg !1018, !llvm.loop !1019

for.end98:                                        ; preds = %for.cond
  ret void, !dbg !1021
}

; Function Attrs: nounwind
define dso_local i32 @EVP_DigestFinalXOF(ptr noundef %ctx, ptr noundef %md, i32 noundef %len) local_unnamed_addr #0 !dbg !1022 {
entry:
    #dbg_value(ptr %ctx, !1025, !DIExpression(), !1026)
    #dbg_value(ptr %md, !1027, !DIExpression(), !1026)
    #dbg_value(i32 %len, !1028, !DIExpression(), !1026)
  %arrayidx = getelementptr inbounds nuw i8, ptr %ctx, i32 200, !dbg !1029
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1029
  %conv = trunc i64 %0 to i32, !dbg !1030
    #dbg_value(i32 %conv, !1031, !DIExpression(), !1026)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %ctx, i32 208, !dbg !1032
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1032
  %conv2 = trunc i64 %1 to i32, !dbg !1033
    #dbg_value(i32 %conv2, !1034, !DIExpression(), !1026)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %ctx, i32 216, !dbg !1035
  %2 = load i64, ptr %arrayidx3, align 8, !dbg !1035
  %tobool.not = icmp eq i64 %2, 0, !dbg !1035
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1037

if.then:                                          ; preds = %entry
  call fastcc void @keccak_xor_byte(ptr noundef nonnull %ctx, i32 noundef %conv2, i8 noundef zeroext 31) #4, !dbg !1038
  %sub = add i32 %conv, -1, !dbg !1040
  call fastcc void @keccak_xor_byte(ptr noundef nonnull %ctx, i32 noundef %sub, i8 noundef zeroext -128) #4, !dbg !1041
  call fastcc void @KeccakF1600(ptr noundef nonnull %ctx) #4, !dbg !1042
    #dbg_value(i32 0, !1034, !DIExpression(), !1026)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %ctx, i32 216, !dbg !1043
  store i64 1, ptr %arrayidx4, align 8, !dbg !1044
  br label %if.end, !dbg !1045

if.end:                                           ; preds = %if.then, %entry
  %pos.0 = phi i32 [ %conv2, %entry ], [ 0, %if.then ], !dbg !1026
    #dbg_value(i32 %pos.0, !1034, !DIExpression(), !1026)
    #dbg_value(i32 0, !1046, !DIExpression(), !1048)
  br label %for.cond, !dbg !1049

for.cond:                                         ; preds = %if.end9, %if.end
  %pos.1 = phi i32 [ %pos.0, %if.end ], [ %inc, %if.end9 ], !dbg !1026
  %i.0 = phi i32 [ 0, %if.end ], [ %inc11, %if.end9 ], !dbg !1050
    #dbg_value(i32 %i.0, !1046, !DIExpression(), !1048)
    #dbg_value(i32 %pos.1, !1034, !DIExpression(), !1026)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !1051
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1053

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %pos.1, %conv, !dbg !1054
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1054

if.then8:                                         ; preds = %for.body
  call fastcc void @KeccakF1600(ptr noundef %ctx) #4, !dbg !1057
    #dbg_value(i32 0, !1034, !DIExpression(), !1026)
  br label %if.end9, !dbg !1059

if.end9:                                          ; preds = %if.then8, %for.body
  %pos.2 = phi i32 [ 0, %if.then8 ], [ %pos.1, %for.body ], !dbg !1026
    #dbg_value(i32 %pos.2, !1034, !DIExpression(), !1026)
    #dbg_value(i32 %pos.2, !1034, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1026)
  %call = call fastcc zeroext i8 @keccak_get_byte(ptr noundef %ctx, i32 noundef %pos.2) #4, !dbg !1060
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %md, i32 %i.0, !dbg !1061
  store i8 %call, ptr %arrayidx10, align 1, !dbg !1062
  %inc = add i32 %pos.2, 1, !dbg !1063
    #dbg_value(i32 %inc, !1034, !DIExpression(), !1026)
  %inc11 = add i32 %i.0, 1, !dbg !1064
    #dbg_value(i32 %inc11, !1046, !DIExpression(), !1048)
  br label %for.cond, !dbg !1065, !llvm.loop !1066

for.end:                                          ; preds = %for.cond
  %pos.1.lcssa = phi i32 [ %pos.1, %for.cond ], !dbg !1026
  %conv12 = zext i32 %pos.1.lcssa to i64, !dbg !1068
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ctx, i32 208, !dbg !1069
  store i64 %conv12, ptr %arrayidx13, align 8, !dbg !1070
  ret i32 1, !dbg !1071
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @keccak_get_byte(ptr noundef %st, i32 noundef %i) unnamed_addr #0 !dbg !1072 {
entry:
    #dbg_value(ptr %st, !1076, !DIExpression(), !1077)
    #dbg_value(i32 %i, !1078, !DIExpression(), !1077)
  %shr = lshr i32 %i, 3, !dbg !1079
  %arrayidx = getelementptr inbounds nuw i64, ptr %st, i32 %shr, !dbg !1080
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1080
  %and = shl i32 %i, 3, !dbg !1081
  %mul = and i32 %and, 56, !dbg !1081
  %sh_prom = zext nneg i32 %mul to i64, !dbg !1082
  %shr1 = lshr i64 %0, %sh_prom, !dbg !1082
  %conv = trunc i64 %shr1 to i8, !dbg !1083
  ret i8 %conv, !dbg !1084
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !1085 {
entry:
  %skey = alloca [22 x i64], align 8
    #dbg_value(ptr %r, !1093, !DIExpression(), !1094)
    #dbg_value(ptr %key, !1095, !DIExpression(), !1094)
    #dbg_declare(ptr %skey, !1096, !DIExpression(), !1100)
  %call = call dereferenceable_or_null(704) ptr @malloc(i32 noundef 704) #7, !dbg !1101
  store ptr %call, ptr %r, align 4, !dbg !1102
  %cmp = icmp eq ptr %call, null, !dbg !1103
  br i1 %cmp, label %if.then, label %if.end, !dbg !1103

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !1105
  br label %if.end, !dbg !1107

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 16) #4, !dbg !1108
  %0 = load ptr, ptr %r, align 4, !dbg !1109
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 10) #4, !dbg !1110
  ret void, !dbg !1111
}

declare dso_local void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %comp_skey, ptr noundef %key, i32 noundef range(i32 16, 33) %key_len) unnamed_addr #0 !dbg !1112 {
entry:
  %skey = alloca [60 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %comp_skey, !1115, !DIExpression(), !1116)
    #dbg_value(ptr %key, !1117, !DIExpression(), !1116)
    #dbg_value(i32 %key_len, !1118, !DIExpression(), !1116)
    #dbg_declare(ptr %skey, !1119, !DIExpression(), !1123)
  %0 = and i32 %key_len, 60, !dbg !1124
    #dbg_value(i32 %key_len, !1125, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus_uconst, 10, DW_OP_stack_value), !1116)
  %shr1 = lshr i32 %key_len, 2, !dbg !1126
    #dbg_value(i32 %shr1, !1127, !DIExpression(), !1116)
  %shl = add nuw nsw i32 %0, 28, !dbg !1124
    #dbg_value(i32 %shl, !1128, !DIExpression(), !1116)
  %shr3 = lshr i32 %key_len, 2, !dbg !1129
  call fastcc void @br_range_dec32le(ptr noundef nonnull %skey, i32 noundef %shr3, ptr noundef %key) #4, !dbg !1130
  %shr4 = lshr i32 %key_len, 2, !dbg !1131
  %sub5 = add nsw i32 %shr4, -1, !dbg !1132
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub5, !dbg !1133
  %1 = load i32, ptr %arrayidx, align 4, !dbg !1133
    #dbg_value(i32 %1, !1134, !DIExpression(), !1116)
    #dbg_value(i32 %shr1, !1135, !DIExpression(), !1116)
    #dbg_value(i32 0, !1136, !DIExpression(), !1116)
    #dbg_value(i32 0, !1137, !DIExpression(), !1116)
  br label %for.cond, !dbg !1138

for.cond:                                         ; preds = %if.end16, %entry
  %i.0 = phi i32 [ %shr1, %entry ], [ %inc26, %if.end16 ], !dbg !1140
  %j.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end16 ], !dbg !1141
  %k.0 = phi i32 [ 0, %entry ], [ %spec.select1, %if.end16 ], !dbg !1141
  %tmp.0 = phi i32 [ %1, %entry ], [ %xor19, %if.end16 ], !dbg !1116
    #dbg_value(i32 %tmp.0, !1134, !DIExpression(), !1116)
    #dbg_value(i32 %k.0, !1137, !DIExpression(), !1116)
    #dbg_value(i32 %j.0, !1136, !DIExpression(), !1116)
    #dbg_value(i32 %i.0, !1135, !DIExpression(), !1116)
  %exitcond = icmp ne i32 %i.0, %shl, !dbg !1142
  br i1 %exitcond, label %for.body, label %for.cond27.preheader, !dbg !1144

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !1145

for.body:                                         ; preds = %for.cond
  %cmp6 = icmp eq i32 %j.0, 0, !dbg !1147
  br i1 %cmp6, label %if.then, label %if.else, !dbg !1147

if.then:                                          ; preds = %for.body
  %2 = shl i32 %tmp.0, 24, !dbg !1150
  %3 = lshr i32 %tmp.0, 8, !dbg !1150
  %4 = or i32 %2, %3, !dbg !1150
    #dbg_value(i32 %4, !1134, !DIExpression(), !1116)
  %call = call fastcc i32 @sub_word(i32 noundef %4) #4, !dbg !1152
  %arrayidx9 = getelementptr inbounds nuw [10 x i8], ptr @Rcon, i32 0, i32 %k.0, !dbg !1153
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1153
  %conv = zext i8 %5 to i32, !dbg !1153
  %xor = xor i32 %call, %conv, !dbg !1154
    #dbg_value(i32 %xor, !1134, !DIExpression(), !1116)
  br label %if.end16, !dbg !1155

if.else:                                          ; preds = %for.body
  %cmp10 = icmp samesign ugt i32 %key_len, 27, !dbg !1156
  %cmp12 = icmp eq i32 %j.0, 4
  %or.cond = and i1 %cmp10, %cmp12, !dbg !1158
  br i1 %or.cond, label %if.then14, label %if.end16, !dbg !1158

if.then14:                                        ; preds = %if.else
  %call15 = call fastcc i32 @sub_word(i32 noundef %tmp.0) #4, !dbg !1159
    #dbg_value(i32 %call15, !1134, !DIExpression(), !1116)
  br label %if.end16, !dbg !1161

if.end16:                                         ; preds = %if.else, %if.then14, %if.then
  %tmp.2 = phi i32 [ %xor, %if.then ], [ %call15, %if.then14 ], [ %tmp.0, %if.else ], !dbg !1162
    #dbg_value(i32 %tmp.2, !1134, !DIExpression(), !1116)
  %sub17 = sub nuw nsw i32 %i.0, %shr1, !dbg !1163
  %arrayidx18 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %sub17, !dbg !1164
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !1164
  %xor19 = xor i32 %tmp.2, %6, !dbg !1165
    #dbg_value(i32 %xor19, !1134, !DIExpression(), !1116)
  %arrayidx20 = getelementptr inbounds nuw [60 x i32], ptr %skey, i32 0, i32 %i.0, !dbg !1166
  store i32 %xor19, ptr %arrayidx20, align 4, !dbg !1167
  %inc = add i32 %j.0, 1, !dbg !1168
    #dbg_value(i32 %inc, !1136, !DIExpression(), !1116)
  %cmp21 = icmp eq i32 %inc, %shr1, !dbg !1170
  %spec.select = select i1 %cmp21, i32 0, i32 %inc, !dbg !1170
  %inc24 = zext i1 %cmp21 to i32, !dbg !1170
  %spec.select1 = add i32 %k.0, %inc24, !dbg !1170
    #dbg_value(i32 %spec.select1, !1137, !DIExpression(), !1116)
    #dbg_value(i32 %spec.select, !1136, !DIExpression(), !1116)
  %inc26 = add nuw nsw i32 %i.0, 1, !dbg !1171
    #dbg_value(i32 %inc26, !1135, !DIExpression(), !1116)
  br label %for.cond, !dbg !1172, !llvm.loop !1173

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.1 = phi i32 [ %add73, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !1175
  %j.2 = phi i32 [ %add74, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !1175
    #dbg_value(i32 %j.2, !1136, !DIExpression(), !1116)
    #dbg_value(i32 %i.1, !1135, !DIExpression(), !1116)
  %cmp28 = icmp samesign ult i32 %i.1, %shl, !dbg !1176
  br i1 %cmp28, label %for.body30, label %for.end75, !dbg !1145

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %q, !1178, !DIExpression(), !1181)
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1182
  %add.ptr = getelementptr inbounds nuw i32, ptr %skey, i32 %i.1, !dbg !1183
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q, ptr noundef nonnull %arrayidx32, ptr noundef nonnull %add.ptr) #4, !dbg !1184
  %7 = load i64, ptr %q, align 8, !dbg !1185
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1186
  store i64 %7, ptr %arrayidx35, align 8, !dbg !1187
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1188
  store i64 %7, ptr %arrayidx37, align 8, !dbg !1189
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1190
  store i64 %7, ptr %arrayidx39, align 8, !dbg !1191
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1192
  %8 = load i64, ptr %arrayidx40, align 8, !dbg !1192
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1193
  store i64 %8, ptr %arrayidx41, align 8, !dbg !1194
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1195
  store i64 %8, ptr %arrayidx43, align 8, !dbg !1196
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1197
  store i64 %8, ptr %arrayidx45, align 8, !dbg !1198
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !1199
  %9 = load i64, ptr %q, align 8, !dbg !1200
  %and = and i64 %9, 1229782938247303441, !dbg !1201
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1202
  %10 = load i64, ptr %arrayidx48, align 8, !dbg !1202
  %and49 = and i64 %10, 2459565876494606882, !dbg !1203
  %or50 = or disjoint i64 %and, %and49, !dbg !1204
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1205
  %11 = load i64, ptr %arrayidx51, align 8, !dbg !1205
  %and52 = and i64 %11, 4919131752989213764, !dbg !1206
  %or53 = or disjoint i64 %or50, %and52, !dbg !1207
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1208
  %12 = load i64, ptr %arrayidx54, align 8, !dbg !1208
  %and55 = and i64 %12, -8608480567731124088, !dbg !1209
  %or56 = or disjoint i64 %or53, %and55, !dbg !1210
  %arrayidx58 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %j.2, !dbg !1211
  store i64 %or56, ptr %arrayidx58, align 8, !dbg !1212
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1213
  %13 = load i64, ptr %arrayidx59, align 8, !dbg !1213
  %and60 = and i64 %13, 1229782938247303441, !dbg !1214
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1215
  %14 = load i64, ptr %arrayidx61, align 8, !dbg !1215
  %and62 = and i64 %14, 2459565876494606882, !dbg !1216
  %or63 = or disjoint i64 %and60, %and62, !dbg !1217
  %arrayidx64 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1218
  %15 = load i64, ptr %arrayidx64, align 8, !dbg !1218
  %and65 = and i64 %15, 4919131752989213764, !dbg !1219
  %or66 = or disjoint i64 %or63, %and65, !dbg !1220
  %arrayidx67 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1221
  %16 = load i64, ptr %arrayidx67, align 8, !dbg !1221
  %and68 = and i64 %16, -8608480567731124088, !dbg !1222
  %or69 = or disjoint i64 %or66, %and68, !dbg !1223
  %add70 = or disjoint i32 %j.2, 1, !dbg !1224
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %add70, !dbg !1225
  store i64 %or69, ptr %arrayidx71, align 8, !dbg !1226
  %add73 = add nuw nsw i32 %i.1, 4, !dbg !1227
    #dbg_value(i32 %add73, !1135, !DIExpression(), !1116)
  %add74 = add nuw nsw i32 %j.2, 2, !dbg !1228
    #dbg_value(i32 %add74, !1136, !DIExpression(), !1116)
  br label %for.cond27, !dbg !1229, !llvm.loop !1230

for.end75:                                        ; preds = %for.cond27
  ret void, !dbg !1232
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_skey_expand(ptr noundef %skey, ptr noundef nonnull %comp_skey, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !1233 {
entry:
    #dbg_value(ptr %skey, !1236, !DIExpression(), !1237)
    #dbg_value(ptr %comp_skey, !1238, !DIExpression(), !1237)
    #dbg_value(i32 %nrounds, !1239, !DIExpression(), !1237)
  %add = shl nuw nsw i32 %nrounds, 1, !dbg !1240
  %shl = add nuw nsw i32 %add, 2, !dbg !1240
    #dbg_value(i32 %shl, !1241, !DIExpression(), !1237)
    #dbg_value(i32 0, !1242, !DIExpression(), !1237)
    #dbg_value(i32 0, !1243, !DIExpression(), !1237)
  br label %for.cond, !dbg !1244

for.cond:                                         ; preds = %for.body, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1246
  %v.0 = phi i32 [ 0, %entry ], [ %add21, %for.body ], !dbg !1246
    #dbg_value(i32 %v.0, !1243, !DIExpression(), !1237)
    #dbg_value(i32 %u.0, !1242, !DIExpression(), !1237)
  %exitcond = icmp ne i32 %u.0, %shl, !dbg !1247
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1249

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %comp_skey, i32 %u.0, !dbg !1250
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1250
    #dbg_value(i64 %0, !1252, !DIExpression(), !1253)
    #dbg_value(i64 %0, !1254, !DIExpression(), !1253)
    #dbg_value(i64 %0, !1255, !DIExpression(), !1253)
    #dbg_value(i64 %0, !1256, !DIExpression(), !1253)
  %and = and i64 %0, 1229782938247303441, !dbg !1257
    #dbg_value(i64 %and, !1256, !DIExpression(), !1253)
    #dbg_value(i64 %0, !1255, !DIExpression(DW_OP_constu, 2459565876494606882, DW_OP_and, DW_OP_stack_value), !1253)
    #dbg_value(i64 %0, !1254, !DIExpression(DW_OP_constu, 4919131752989213764, DW_OP_and, DW_OP_stack_value), !1253)
    #dbg_value(i64 %0, !1252, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !1253)
  %and1 = lshr i64 %0, 1, !dbg !1258
  %shr = and i64 %and1, 1229782938247303441, !dbg !1258
    #dbg_value(i64 %shr, !1255, !DIExpression(), !1253)
  %and2 = lshr i64 %0, 2, !dbg !1259
  %shr4 = and i64 %and2, 1229782938247303441, !dbg !1259
    #dbg_value(i64 %shr4, !1254, !DIExpression(), !1253)
  %and3 = lshr i64 %0, 3, !dbg !1260
  %shr5 = and i64 %and3, 1229782938247303441, !dbg !1260
    #dbg_value(i64 %shr5, !1252, !DIExpression(), !1253)
  %sub = mul nuw i64 %and, 15, !dbg !1261
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %skey, i32 %v.0, !dbg !1262
  store i64 %sub, ptr %arrayidx8, align 8, !dbg !1263
  %sub10 = mul nuw i64 %shr, 15, !dbg !1264
  %add11 = or disjoint i32 %v.0, 1, !dbg !1265
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %skey, i32 %add11, !dbg !1266
  store i64 %sub10, ptr %arrayidx12, align 8, !dbg !1267
  %sub14 = mul nuw i64 %shr4, 15, !dbg !1268
  %add15 = or disjoint i32 %v.0, 2, !dbg !1269
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %skey, i32 %add15, !dbg !1270
  store i64 %sub14, ptr %arrayidx16, align 8, !dbg !1271
  %sub18 = mul nuw i64 %shr5, 15, !dbg !1272
  %add19 = or disjoint i32 %v.0, 3, !dbg !1273
  %arrayidx20 = getelementptr inbounds nuw i64, ptr %skey, i32 %add19, !dbg !1274
  store i64 %sub18, ptr %arrayidx20, align 8, !dbg !1275
  %inc = add nuw nsw i32 %u.0, 1, !dbg !1276
    #dbg_value(i32 %inc, !1242, !DIExpression(), !1237)
  %add21 = add nuw nsw i32 %v.0, 4, !dbg !1277
    #dbg_value(i32 %add21, !1243, !DIExpression(), !1237)
  br label %for.cond, !dbg !1278, !llvm.loop !1279

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1281
}

; Function Attrs: nounwind
define internal fastcc void @br_range_dec32le(ptr noundef nonnull %v, i32 noundef range(i32 3, 17) %num, ptr noundef %src) unnamed_addr #0 !dbg !1282 {
entry:
    #dbg_value(ptr %v, !1286, !DIExpression(), !1287)
    #dbg_value(i32 %num, !1288, !DIExpression(), !1287)
    #dbg_value(ptr %src, !1289, !DIExpression(), !1287)
  br label %while.cond, !dbg !1290

while.cond:                                       ; preds = %while.body, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr, %while.body ]
  %num.addr.0 = phi i32 [ %num, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %v.addr.0, !1286, !DIExpression(), !1287)
    #dbg_value(i32 %num.addr.0, !1288, !DIExpression(), !1287)
    #dbg_value(ptr %src.addr.0, !1289, !DIExpression(), !1287)
    #dbg_value(i32 %num.addr.0, !1288, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1287)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !1291
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !1290

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !1292
    #dbg_value(i32 %dec, !1288, !DIExpression(), !1287)
  %call = call fastcc i32 @br_dec32le(ptr noundef %src.addr.0) #4, !dbg !1293
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !1295
    #dbg_value(ptr %incdec.ptr, !1286, !DIExpression(), !1287)
  store i32 %call, ptr %v.addr.0, align 4, !dbg !1296
  %add.ptr = getelementptr inbounds nuw i8, ptr %src.addr.0, i32 4, !dbg !1297
    #dbg_value(ptr %add.ptr, !1289, !DIExpression(), !1287)
  br label %while.cond, !dbg !1290, !llvm.loop !1298

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1300
}

; Function Attrs: nounwind
define internal fastcc i32 @sub_word(i32 noundef %x) unnamed_addr #0 !dbg !1301 {
entry:
  %q = alloca [8 x i64], align 8
    #dbg_value(i32 %x, !1304, !DIExpression(), !1305)
    #dbg_declare(ptr %q, !1306, !DIExpression(), !1307)
  %call = call ptr @memset(ptr noundef nonnull %q, i32 noundef 0, i32 noundef 64) #6, !dbg !1308
  %conv = zext i32 %x to i64, !dbg !1309
  store i64 %conv, ptr %q, align 8, !dbg !1310
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !1311
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !1312
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !1313
  %0 = load i64, ptr %q, align 8, !dbg !1314
  %conv5 = trunc i64 %0 to i32, !dbg !1315
  ret i32 %conv5, !dbg !1316
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %q0, ptr noundef nonnull %q1, ptr noundef nonnull %w) unnamed_addr #0 !dbg !1317 {
entry:
    #dbg_value(ptr %q0, !1322, !DIExpression(), !1323)
    #dbg_value(ptr %q1, !1324, !DIExpression(), !1323)
    #dbg_value(ptr %w, !1325, !DIExpression(), !1323)
  %0 = load i32, ptr %w, align 4, !dbg !1326
  %conv = zext i32 %0 to i64, !dbg !1326
    #dbg_value(i64 %conv, !1327, !DIExpression(), !1323)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !1328
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1328
  %conv2 = zext i32 %1 to i64, !dbg !1328
    #dbg_value(i64 %conv2, !1329, !DIExpression(), !1323)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !1330
  %2 = load i32, ptr %arrayidx3, align 4, !dbg !1330
  %conv4 = zext i32 %2 to i64, !dbg !1330
    #dbg_value(i64 %conv4, !1331, !DIExpression(), !1323)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !1332
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !1332
  %conv6 = zext i32 %3 to i64, !dbg !1332
    #dbg_value(i64 %conv6, !1333, !DIExpression(), !1323)
  %shl = shl nuw nsw i64 %conv, 16, !dbg !1334
  %or = or i64 %shl, %conv, !dbg !1335
    #dbg_value(i64 %or, !1327, !DIExpression(), !1323)
  %shl7 = shl nuw nsw i64 %conv2, 16, !dbg !1336
  %or8 = or i64 %shl7, %conv2, !dbg !1337
    #dbg_value(i64 %or8, !1329, !DIExpression(), !1323)
  %shl9 = shl nuw nsw i64 %conv4, 16, !dbg !1338
  %or10 = or i64 %shl9, %conv4, !dbg !1339
    #dbg_value(i64 %or10, !1331, !DIExpression(), !1323)
  %shl11 = shl nuw nsw i64 %conv6, 16, !dbg !1340
  %or12 = or i64 %shl11, %conv6, !dbg !1341
    #dbg_value(i64 %or12, !1333, !DIExpression(), !1323)
  %and = and i64 %or, 281470681808895, !dbg !1342
    #dbg_value(i64 %and, !1327, !DIExpression(), !1323)
  %and13 = and i64 %or8, 281470681808895, !dbg !1343
    #dbg_value(i64 %and13, !1329, !DIExpression(), !1323)
  %and14 = and i64 %or10, 281470681808895, !dbg !1344
    #dbg_value(i64 %and14, !1331, !DIExpression(), !1323)
  %and15 = and i64 %or12, 281470681808895, !dbg !1345
    #dbg_value(i64 %and15, !1333, !DIExpression(), !1323)
  %shl16 = shl nuw nsw i64 %and, 8, !dbg !1346
  %or17 = or i64 %and, %shl16, !dbg !1347
    #dbg_value(i64 %or17, !1327, !DIExpression(), !1323)
  %shl18 = shl nuw nsw i64 %and13, 8, !dbg !1348
  %or19 = or i64 %and13, %shl18, !dbg !1349
    #dbg_value(i64 %or19, !1329, !DIExpression(), !1323)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !1331, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1323)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !1333, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1323)
  %and24 = and i64 %or17, 71777214294589695, !dbg !1350
    #dbg_value(i64 %and24, !1327, !DIExpression(), !1323)
  %and25 = and i64 %or19, 71777214294589695, !dbg !1351
    #dbg_value(i64 %and25, !1329, !DIExpression(), !1323)
    #dbg_value(!DIArgList(i64 %and14, i64 %and14), !1331, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !1323)
    #dbg_value(!DIArgList(i64 %and15, i64 %and15), !1333, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_constu, 71777214294589695, DW_OP_and, DW_OP_stack_value), !1323)
  %4 = shl nuw i64 %and14, 16, !dbg !1352
  %5 = shl nuw nsw i64 %and14, 8, !dbg !1352
  %and26 = or i64 %4, %5, !dbg !1352
  %shl28 = and i64 %and26, -71777214294589696, !dbg !1352
  %or29 = or disjoint i64 %and24, %shl28, !dbg !1353
  store i64 %or29, ptr %q0, align 8, !dbg !1354
  %6 = shl nuw i64 %and15, 16, !dbg !1355
  %7 = shl nuw nsw i64 %and15, 8, !dbg !1355
  %and27 = or i64 %6, %7, !dbg !1355
  %shl30 = and i64 %and27, -71777214294589696, !dbg !1355
  %or31 = or disjoint i64 %and25, %shl30, !dbg !1356
  store i64 %or31, ptr %q1, align 8, !dbg !1357
  ret void, !dbg !1358
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) unnamed_addr #0 !dbg !1359 {
entry:
    #dbg_value(ptr %q, !1360, !DIExpression(), !1361)
  %0 = load i64, ptr %q, align 8, !dbg !1362
    #dbg_value(i64 %0, !1364, !DIExpression(), !1365)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1362
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1362
    #dbg_value(i64 %1, !1366, !DIExpression(), !1365)
  %and = and i64 %0, 6148914691236517205, !dbg !1362
  %and2 = shl i64 %1, 1, !dbg !1362
  %shl = and i64 %and2, -6148914691236517206, !dbg !1362
  %or = or disjoint i64 %and, %shl, !dbg !1362
  store i64 %or, ptr %q, align 8, !dbg !1362
  %and4 = lshr i64 %0, 1, !dbg !1362
  %shr = and i64 %and4, 6148914691236517205, !dbg !1362
  %and5 = and i64 %1, -6148914691236517206, !dbg !1362
  %or6 = or disjoint i64 %shr, %and5, !dbg !1362
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1362
  store i64 %or6, ptr %arrayidx7, align 8, !dbg !1362
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1367
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !1367
    #dbg_value(i64 %2, !1369, !DIExpression(), !1370)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1367
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !1367
    #dbg_value(i64 %3, !1371, !DIExpression(), !1370)
  %and13 = and i64 %2, 6148914691236517205, !dbg !1367
  %and14 = shl i64 %3, 1, !dbg !1367
  %shl15 = and i64 %and14, -6148914691236517206, !dbg !1367
  %or16 = or disjoint i64 %and13, %shl15, !dbg !1367
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1367
  store i64 %or16, ptr %arrayidx17, align 8, !dbg !1367
  %and18 = lshr i64 %2, 1, !dbg !1367
  %shr19 = and i64 %and18, 6148914691236517205, !dbg !1367
  %and20 = and i64 %3, -6148914691236517206, !dbg !1367
  %or21 = or disjoint i64 %shr19, %and20, !dbg !1367
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1367
  store i64 %or21, ptr %arrayidx22, align 8, !dbg !1367
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1372
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !1372
    #dbg_value(i64 %4, !1374, !DIExpression(), !1375)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1372
  %5 = load i64, ptr %arrayidx28, align 8, !dbg !1372
    #dbg_value(i64 %5, !1376, !DIExpression(), !1375)
  %and29 = and i64 %4, 6148914691236517205, !dbg !1372
  %and30 = shl i64 %5, 1, !dbg !1372
  %shl31 = and i64 %and30, -6148914691236517206, !dbg !1372
  %or32 = or disjoint i64 %and29, %shl31, !dbg !1372
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1372
  store i64 %or32, ptr %arrayidx33, align 8, !dbg !1372
  %and34 = lshr i64 %4, 1, !dbg !1372
  %shr35 = and i64 %and34, 6148914691236517205, !dbg !1372
  %and36 = and i64 %5, -6148914691236517206, !dbg !1372
  %or37 = or disjoint i64 %shr35, %and36, !dbg !1372
  %arrayidx38 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1372
  store i64 %or37, ptr %arrayidx38, align 8, !dbg !1372
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1377
  %6 = load i64, ptr %arrayidx43, align 8, !dbg !1377
    #dbg_value(i64 %6, !1379, !DIExpression(), !1380)
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1377
  %7 = load i64, ptr %arrayidx44, align 8, !dbg !1377
    #dbg_value(i64 %7, !1381, !DIExpression(), !1380)
  %and45 = and i64 %6, 6148914691236517205, !dbg !1377
  %and46 = shl i64 %7, 1, !dbg !1377
  %shl47 = and i64 %and46, -6148914691236517206, !dbg !1377
  %or48 = or disjoint i64 %and45, %shl47, !dbg !1377
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1377
  store i64 %or48, ptr %arrayidx49, align 8, !dbg !1377
  %and50 = lshr i64 %6, 1, !dbg !1377
  %shr51 = and i64 %and50, 6148914691236517205, !dbg !1377
  %and52 = and i64 %7, -6148914691236517206, !dbg !1377
  %or53 = or disjoint i64 %shr51, %and52, !dbg !1377
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1377
  store i64 %or53, ptr %arrayidx54, align 8, !dbg !1377
  %8 = load i64, ptr %q, align 8, !dbg !1382
    #dbg_value(i64 %8, !1384, !DIExpression(), !1385)
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1382
  %9 = load i64, ptr %arrayidx60, align 8, !dbg !1382
    #dbg_value(i64 %9, !1386, !DIExpression(), !1385)
  %and61 = and i64 %8, 3689348814741910323, !dbg !1382
  %and62 = shl i64 %9, 2, !dbg !1382
  %shl63 = and i64 %and62, -3689348814741910324, !dbg !1382
  %or64 = or disjoint i64 %and61, %shl63, !dbg !1382
  store i64 %or64, ptr %q, align 8, !dbg !1382
  %and66 = lshr i64 %8, 2, !dbg !1382
  %shr67 = and i64 %and66, 3689348814741910323, !dbg !1382
  %and68 = and i64 %9, -3689348814741910324, !dbg !1382
  %or69 = or disjoint i64 %shr67, %and68, !dbg !1382
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1382
  store i64 %or69, ptr %arrayidx70, align 8, !dbg !1382
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1387
  %10 = load i64, ptr %arrayidx75, align 8, !dbg !1387
    #dbg_value(i64 %10, !1389, !DIExpression(), !1390)
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1387
  %11 = load i64, ptr %arrayidx76, align 8, !dbg !1387
    #dbg_value(i64 %11, !1391, !DIExpression(), !1390)
  %and77 = and i64 %10, 3689348814741910323, !dbg !1387
  %and78 = shl i64 %11, 2, !dbg !1387
  %shl79 = and i64 %and78, -3689348814741910324, !dbg !1387
  %or80 = or disjoint i64 %and77, %shl79, !dbg !1387
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1387
  store i64 %or80, ptr %arrayidx81, align 8, !dbg !1387
  %and82 = lshr i64 %10, 2, !dbg !1387
  %shr83 = and i64 %and82, 3689348814741910323, !dbg !1387
  %and84 = and i64 %11, -3689348814741910324, !dbg !1387
  %or85 = or disjoint i64 %shr83, %and84, !dbg !1387
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1387
  store i64 %or85, ptr %arrayidx86, align 8, !dbg !1387
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1392
  %12 = load i64, ptr %arrayidx91, align 8, !dbg !1392
    #dbg_value(i64 %12, !1394, !DIExpression(), !1395)
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1392
  %13 = load i64, ptr %arrayidx92, align 8, !dbg !1392
    #dbg_value(i64 %13, !1396, !DIExpression(), !1395)
  %and93 = and i64 %12, 3689348814741910323, !dbg !1392
  %and94 = shl i64 %13, 2, !dbg !1392
  %shl95 = and i64 %and94, -3689348814741910324, !dbg !1392
  %or96 = or disjoint i64 %and93, %shl95, !dbg !1392
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1392
  store i64 %or96, ptr %arrayidx97, align 8, !dbg !1392
  %and98 = lshr i64 %12, 2, !dbg !1392
  %shr99 = and i64 %and98, 3689348814741910323, !dbg !1392
  %and100 = and i64 %13, -3689348814741910324, !dbg !1392
  %or101 = or disjoint i64 %shr99, %and100, !dbg !1392
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1392
  store i64 %or101, ptr %arrayidx102, align 8, !dbg !1392
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1397
  %14 = load i64, ptr %arrayidx107, align 8, !dbg !1397
    #dbg_value(i64 %14, !1399, !DIExpression(), !1400)
  %arrayidx108 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1397
  %15 = load i64, ptr %arrayidx108, align 8, !dbg !1397
    #dbg_value(i64 %15, !1401, !DIExpression(), !1400)
  %and109 = and i64 %14, 3689348814741910323, !dbg !1397
  %and110 = shl i64 %15, 2, !dbg !1397
  %shl111 = and i64 %and110, -3689348814741910324, !dbg !1397
  %or112 = or disjoint i64 %and109, %shl111, !dbg !1397
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1397
  store i64 %or112, ptr %arrayidx113, align 8, !dbg !1397
  %and114 = lshr i64 %14, 2, !dbg !1397
  %shr115 = and i64 %and114, 3689348814741910323, !dbg !1397
  %and116 = and i64 %15, -3689348814741910324, !dbg !1397
  %or117 = or disjoint i64 %shr115, %and116, !dbg !1397
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1397
  store i64 %or117, ptr %arrayidx118, align 8, !dbg !1397
  %16 = load i64, ptr %q, align 8, !dbg !1402
    #dbg_value(i64 %16, !1404, !DIExpression(), !1405)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1402
  %17 = load i64, ptr %arrayidx124, align 8, !dbg !1402
    #dbg_value(i64 %17, !1406, !DIExpression(), !1405)
  %and125 = and i64 %16, 1085102592571150095, !dbg !1402
  %and126 = shl i64 %17, 4, !dbg !1402
  %shl127 = and i64 %and126, -1085102592571150096, !dbg !1402
  %or128 = or disjoint i64 %and125, %shl127, !dbg !1402
  store i64 %or128, ptr %q, align 8, !dbg !1402
  %and130 = lshr i64 %16, 4, !dbg !1402
  %shr131 = and i64 %and130, 1085102592571150095, !dbg !1402
  %and132 = and i64 %17, -1085102592571150096, !dbg !1402
  %or133 = or disjoint i64 %shr131, %and132, !dbg !1402
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1402
  store i64 %or133, ptr %arrayidx134, align 8, !dbg !1402
  %arrayidx139 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1407
  %18 = load i64, ptr %arrayidx139, align 8, !dbg !1407
    #dbg_value(i64 %18, !1409, !DIExpression(), !1410)
  %arrayidx140 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1407
  %19 = load i64, ptr %arrayidx140, align 8, !dbg !1407
    #dbg_value(i64 %19, !1411, !DIExpression(), !1410)
  %and141 = and i64 %18, 1085102592571150095, !dbg !1407
  %and142 = shl i64 %19, 4, !dbg !1407
  %shl143 = and i64 %and142, -1085102592571150096, !dbg !1407
  %or144 = or disjoint i64 %and141, %shl143, !dbg !1407
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1407
  store i64 %or144, ptr %arrayidx145, align 8, !dbg !1407
  %and146 = lshr i64 %18, 4, !dbg !1407
  %shr147 = and i64 %and146, 1085102592571150095, !dbg !1407
  %and148 = and i64 %19, -1085102592571150096, !dbg !1407
  %or149 = or disjoint i64 %shr147, %and148, !dbg !1407
  %arrayidx150 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1407
  store i64 %or149, ptr %arrayidx150, align 8, !dbg !1407
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1412
  %20 = load i64, ptr %arrayidx155, align 8, !dbg !1412
    #dbg_value(i64 %20, !1414, !DIExpression(), !1415)
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1412
  %21 = load i64, ptr %arrayidx156, align 8, !dbg !1412
    #dbg_value(i64 %21, !1416, !DIExpression(), !1415)
  %and157 = and i64 %20, 1085102592571150095, !dbg !1412
  %and158 = shl i64 %21, 4, !dbg !1412
  %shl159 = and i64 %and158, -1085102592571150096, !dbg !1412
  %or160 = or disjoint i64 %and157, %shl159, !dbg !1412
  %arrayidx161 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1412
  store i64 %or160, ptr %arrayidx161, align 8, !dbg !1412
  %and162 = lshr i64 %20, 4, !dbg !1412
  %shr163 = and i64 %and162, 1085102592571150095, !dbg !1412
  %and164 = and i64 %21, -1085102592571150096, !dbg !1412
  %or165 = or disjoint i64 %shr163, %and164, !dbg !1412
  %arrayidx166 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1412
  store i64 %or165, ptr %arrayidx166, align 8, !dbg !1412
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1417
  %22 = load i64, ptr %arrayidx171, align 8, !dbg !1417
    #dbg_value(i64 %22, !1419, !DIExpression(), !1420)
  %arrayidx172 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1417
  %23 = load i64, ptr %arrayidx172, align 8, !dbg !1417
    #dbg_value(i64 %23, !1421, !DIExpression(), !1420)
  %and173 = and i64 %22, 1085102592571150095, !dbg !1417
  %and174 = shl i64 %23, 4, !dbg !1417
  %shl175 = and i64 %and174, -1085102592571150096, !dbg !1417
  %or176 = or disjoint i64 %and173, %shl175, !dbg !1417
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1417
  store i64 %or176, ptr %arrayidx177, align 8, !dbg !1417
  %and178 = lshr i64 %22, 4, !dbg !1417
  %shr179 = and i64 %and178, 1085102592571150095, !dbg !1417
  %and180 = and i64 %23, -1085102592571150096, !dbg !1417
  %or181 = or disjoint i64 %shr179, %and180, !dbg !1417
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1417
  store i64 %or181, ptr %arrayidx182, align 8, !dbg !1417
  ret void, !dbg !1422
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) unnamed_addr #0 !dbg !1423 {
entry:
    #dbg_value(ptr %q, !1424, !DIExpression(), !1425)
  %arrayidx = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1426
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1426
    #dbg_value(i64 %0, !1427, !DIExpression(), !1425)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1428
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1428
    #dbg_value(i64 %1, !1429, !DIExpression(), !1425)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1430
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1430
    #dbg_value(i64 %2, !1431, !DIExpression(), !1425)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1432
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !1432
    #dbg_value(i64 %3, !1433, !DIExpression(), !1425)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1434
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !1434
    #dbg_value(i64 %4, !1435, !DIExpression(), !1425)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1436
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !1436
    #dbg_value(i64 %5, !1437, !DIExpression(), !1425)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1438
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !1438
    #dbg_value(i64 %6, !1439, !DIExpression(), !1425)
  %7 = load i64, ptr %q, align 8, !dbg !1440
    #dbg_value(i64 %7, !1441, !DIExpression(), !1425)
  %xor = xor i64 %3, %5, !dbg !1442
    #dbg_value(i64 %xor, !1443, !DIExpression(), !1425)
  %xor8 = xor i64 %0, %6, !dbg !1444
    #dbg_value(i64 %xor8, !1445, !DIExpression(), !1425)
  %xor9 = xor i64 %0, %3, !dbg !1446
    #dbg_value(i64 %xor9, !1447, !DIExpression(), !1425)
  %xor10 = xor i64 %0, %5, !dbg !1448
    #dbg_value(i64 %xor10, !1449, !DIExpression(), !1425)
  %xor11 = xor i64 %1, %2, !dbg !1450
    #dbg_value(i64 %xor11, !1451, !DIExpression(), !1425)
  %xor12 = xor i64 %xor11, %7, !dbg !1452
    #dbg_value(i64 %xor12, !1453, !DIExpression(), !1425)
  %xor13 = xor i64 %xor12, %3, !dbg !1454
    #dbg_value(i64 %xor13, !1455, !DIExpression(), !1425)
  %xor14 = xor i64 %xor8, %xor, !dbg !1456
    #dbg_value(i64 %xor14, !1457, !DIExpression(), !1425)
  %xor15 = xor i64 %xor12, %0, !dbg !1458
    #dbg_value(i64 %xor15, !1459, !DIExpression(), !1425)
  %xor16 = xor i64 %xor12, %6, !dbg !1460
    #dbg_value(i64 %xor16, !1461, !DIExpression(), !1425)
  %xor17 = xor i64 %xor16, %xor10, !dbg !1462
    #dbg_value(i64 %xor17, !1463, !DIExpression(), !1425)
  %xor18 = xor i64 %4, %xor14, !dbg !1464
    #dbg_value(i64 %xor18, !1465, !DIExpression(), !1425)
  %xor19 = xor i64 %xor18, %5, !dbg !1466
    #dbg_value(i64 %xor19, !1467, !DIExpression(), !1425)
  %xor20 = xor i64 %xor18, %1, !dbg !1468
    #dbg_value(i64 %xor20, !1469, !DIExpression(), !1425)
  %xor21 = xor i64 %xor19, %7, !dbg !1470
    #dbg_value(i64 %xor21, !1471, !DIExpression(), !1425)
  %xor22 = xor i64 %xor19, %xor11, !dbg !1472
    #dbg_value(i64 %xor22, !1473, !DIExpression(), !1425)
  %xor23 = xor i64 %xor20, %xor9, !dbg !1474
    #dbg_value(i64 %xor23, !1475, !DIExpression(), !1425)
  %xor24 = xor i64 %7, %xor23, !dbg !1476
    #dbg_value(i64 %xor24, !1477, !DIExpression(), !1425)
  %xor25 = xor i64 %xor22, %xor23, !dbg !1478
    #dbg_value(i64 %xor25, !1479, !DIExpression(), !1425)
    #dbg_value(!DIArgList(i64 %xor22, i64 %xor10), !1480, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
  %xor27 = xor i64 %xor11, %xor23, !dbg !1481
    #dbg_value(i64 %xor27, !1482, !DIExpression(), !1425)
    #dbg_value(!DIArgList(i64 %xor8, i64 %xor27), !1483, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
    #dbg_value(!DIArgList(i64 %0, i64 %xor27), !1484, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
  %and = and i64 %xor14, %xor19, !dbg !1485
    #dbg_value(i64 %and, !1486, !DIExpression(), !1425)
  %and30 = and i64 %xor17, %xor21, !dbg !1487
    #dbg_value(i64 %and30, !1488, !DIExpression(), !1425)
  %xor31 = xor i64 %and30, %and, !dbg !1489
    #dbg_value(i64 %xor31, !1490, !DIExpression(), !1425)
  %and32 = and i64 %xor13, %7, !dbg !1491
    #dbg_value(i64 %and32, !1492, !DIExpression(), !1425)
    #dbg_value(!DIArgList(i64 %and32, i64 %and), !1493, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
  %and34 = and i64 %xor8, %xor27, !dbg !1494
    #dbg_value(i64 %and34, !1495, !DIExpression(), !1425)
  %and35 = and i64 %xor16, %xor12, !dbg !1496
    #dbg_value(i64 %and35, !1497, !DIExpression(), !1425)
    #dbg_value(!DIArgList(i64 %and35, i64 %and34), !1498, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
  %and37 = and i64 %xor15, %xor24, !dbg !1499
    #dbg_value(i64 %and37, !1500, !DIExpression(), !1425)
    #dbg_value(!DIArgList(i64 %and37, i64 %and34), !1501, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
  %and39 = and i64 %xor9, %xor23, !dbg !1502
    #dbg_value(i64 %and39, !1503, !DIExpression(), !1425)
  %and40 = and i64 %xor, %xor25, !dbg !1504
    #dbg_value(i64 %and40, !1505, !DIExpression(), !1425)
  %xor41 = xor i64 %and40, %and39, !dbg !1506
    #dbg_value(i64 %xor41, !1507, !DIExpression(), !1425)
  %and42 = and i64 %xor10, %xor22, !dbg !1508
    #dbg_value(i64 %and42, !1509, !DIExpression(), !1425)
  %xor43 = xor i64 %and42, %and39, !dbg !1510
    #dbg_value(i64 %xor43, !1511, !DIExpression(), !1425)
  %xor44 = xor i64 %xor31, %xor41, !dbg !1512
    #dbg_value(i64 %xor44, !1513, !DIExpression(), !1425)
    #dbg_value(!DIArgList(i64 %and32, i64 %xor43, i64 %and), !1514, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
    #dbg_value(!DIArgList(i64 %and35, i64 %xor41, i64 %and34), !1515, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
    #dbg_value(!DIArgList(i64 %and37, i64 %xor43, i64 %and34), !1516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
  %xor48 = xor i64 %xor44, %xor20, !dbg !1517
    #dbg_value(i64 %xor48, !1518, !DIExpression(), !1425)
  %8 = xor i64 %xor10, %and32, !dbg !1519
  %9 = xor i64 %8, %xor22, !dbg !1519
  %10 = xor i64 %9, %and, !dbg !1519
  %xor49 = xor i64 %10, %xor43, !dbg !1519
    #dbg_value(i64 %xor49, !1520, !DIExpression(), !1425)
  %11 = xor i64 %xor27, %and35, !dbg !1521
  %12 = xor i64 %11, %xor8, !dbg !1521
  %13 = xor i64 %12, %and34, !dbg !1521
  %xor50 = xor i64 %13, %xor41, !dbg !1521
    #dbg_value(i64 %xor50, !1522, !DIExpression(), !1425)
  %14 = xor i64 %xor27, %and37, !dbg !1523
  %15 = xor i64 %14, %0, !dbg !1523
  %16 = xor i64 %15, %and34, !dbg !1523
  %xor51 = xor i64 %16, %xor43, !dbg !1523
    #dbg_value(i64 %xor51, !1524, !DIExpression(), !1425)
  %xor52 = xor i64 %xor48, %xor49, !dbg !1525
    #dbg_value(i64 %xor52, !1526, !DIExpression(), !1425)
  %and53 = and i64 %xor48, %xor50, !dbg !1527
    #dbg_value(i64 %and53, !1528, !DIExpression(), !1425)
  %xor54 = xor i64 %xor51, %and53, !dbg !1529
    #dbg_value(i64 %xor54, !1530, !DIExpression(), !1425)
  %and55 = and i64 %xor52, %xor54, !dbg !1531
    #dbg_value(i64 %and55, !1532, !DIExpression(), !1425)
  %xor56 = xor i64 %and55, %xor49, !dbg !1533
    #dbg_value(i64 %xor56, !1534, !DIExpression(), !1425)
  %xor57 = xor i64 %xor50, %xor51, !dbg !1535
    #dbg_value(i64 %xor57, !1536, !DIExpression(), !1425)
  %xor58 = xor i64 %xor49, %and53, !dbg !1537
    #dbg_value(i64 %xor58, !1538, !DIExpression(), !1425)
  %and59 = and i64 %xor58, %xor57, !dbg !1539
    #dbg_value(i64 %and59, !1540, !DIExpression(), !1425)
  %xor60 = xor i64 %and59, %xor51, !dbg !1541
    #dbg_value(i64 %xor60, !1542, !DIExpression(), !1425)
  %xor61 = xor i64 %xor50, %xor60, !dbg !1543
    #dbg_value(i64 %xor61, !1544, !DIExpression(), !1425)
  %xor62 = xor i64 %and59, %and53, !dbg !1545
    #dbg_value(i64 %xor62, !1546, !DIExpression(), !1425)
  %and63 = and i64 %xor51, %xor62, !dbg !1547
    #dbg_value(i64 %and63, !1548, !DIExpression(), !1425)
  %xor64 = xor i64 %and63, %xor61, !dbg !1549
    #dbg_value(i64 %xor64, !1550, !DIExpression(), !1425)
  %xor65 = xor i64 %xor54, %and63, !dbg !1551
    #dbg_value(i64 %xor65, !1552, !DIExpression(), !1425)
  %and66 = and i64 %xor56, %xor65, !dbg !1553
    #dbg_value(i64 %and66, !1554, !DIExpression(), !1425)
  %xor67 = xor i64 %xor52, %and66, !dbg !1555
    #dbg_value(i64 %xor67, !1556, !DIExpression(), !1425)
  %xor68 = xor i64 %xor67, %xor64, !dbg !1557
    #dbg_value(i64 %xor68, !1558, !DIExpression(), !1425)
  %xor69 = xor i64 %xor56, %xor60, !dbg !1559
    #dbg_value(i64 %xor69, !1560, !DIExpression(), !1425)
  %xor70 = xor i64 %xor56, %xor67, !dbg !1561
    #dbg_value(i64 %xor70, !1562, !DIExpression(), !1425)
  %xor71 = xor i64 %and63, %xor50, !dbg !1563
    #dbg_value(i64 %xor71, !1564, !DIExpression(), !1425)
  %xor72 = xor i64 %xor69, %xor68, !dbg !1565
    #dbg_value(i64 %xor72, !1566, !DIExpression(), !1425)
  %and73 = and i64 %xor71, %xor19, !dbg !1567
    #dbg_value(i64 %and73, !1568, !DIExpression(), !1425)
  %and74 = and i64 %xor64, %xor21, !dbg !1569
    #dbg_value(i64 %and74, !1570, !DIExpression(), !1425)
  %and75 = and i64 %xor60, %7, !dbg !1571
    #dbg_value(i64 %and75, !1572, !DIExpression(), !1425)
  %and76 = and i64 %xor70, %xor27, !dbg !1573
    #dbg_value(i64 %and76, !1574, !DIExpression(), !1425)
  %and77 = and i64 %xor67, %xor12, !dbg !1575
    #dbg_value(i64 %and77, !1576, !DIExpression(), !1425)
  %and78 = and i64 %xor56, %xor24, !dbg !1577
    #dbg_value(i64 %and78, !1578, !DIExpression(), !1425)
  %and79 = and i64 %xor69, %xor23, !dbg !1579
    #dbg_value(i64 %and79, !1580, !DIExpression(), !1425)
  %and80 = and i64 %xor72, %xor25, !dbg !1581
    #dbg_value(i64 %and80, !1582, !DIExpression(), !1425)
  %and81 = and i64 %xor68, %xor22, !dbg !1583
    #dbg_value(i64 %and81, !1584, !DIExpression(), !1425)
  %and82 = and i64 %xor71, %xor14, !dbg !1585
    #dbg_value(i64 %and82, !1586, !DIExpression(), !1425)
  %and83 = and i64 %xor64, %xor17, !dbg !1587
    #dbg_value(i64 %and83, !1588, !DIExpression(), !1425)
  %and84 = and i64 %xor60, %xor13, !dbg !1589
    #dbg_value(i64 %and84, !1590, !DIExpression(), !1425)
  %and85 = and i64 %xor70, %xor8, !dbg !1591
    #dbg_value(i64 %and85, !1592, !DIExpression(), !1425)
  %and86 = and i64 %xor67, %xor16, !dbg !1593
    #dbg_value(i64 %and86, !1594, !DIExpression(), !1425)
  %and87 = and i64 %xor56, %xor15, !dbg !1595
    #dbg_value(i64 %and87, !1596, !DIExpression(), !1425)
  %and88 = and i64 %xor69, %xor9, !dbg !1597
    #dbg_value(i64 %and88, !1598, !DIExpression(), !1425)
  %and89 = and i64 %xor72, %xor, !dbg !1599
    #dbg_value(i64 %and89, !1600, !DIExpression(), !1425)
  %and90 = and i64 %xor68, %xor10, !dbg !1601
    #dbg_value(i64 %and90, !1602, !DIExpression(), !1425)
  %xor91 = xor i64 %and88, %and89, !dbg !1603
    #dbg_value(i64 %xor91, !1604, !DIExpression(), !1425)
  %xor92 = xor i64 %and83, %and84, !dbg !1605
    #dbg_value(i64 %xor92, !1606, !DIExpression(), !1425)
  %xor93 = xor i64 %and78, %and86, !dbg !1607
    #dbg_value(i64 %xor93, !1608, !DIExpression(), !1425)
  %xor94 = xor i64 %and82, %and83, !dbg !1609
    #dbg_value(i64 %xor94, !1610, !DIExpression(), !1425)
  %xor95 = xor i64 %and75, %and85, !dbg !1611
    #dbg_value(i64 %xor95, !1612, !DIExpression(), !1425)
  %xor96 = xor i64 %and75, %and78, !dbg !1613
    #dbg_value(i64 %xor96, !1614, !DIExpression(), !1425)
  %xor97 = xor i64 %and80, %and81, !dbg !1615
    #dbg_value(i64 %xor97, !1616, !DIExpression(), !1425)
  %xor98 = xor i64 %and73, %and76, !dbg !1617
    #dbg_value(i64 %xor98, !1618, !DIExpression(), !1425)
  %xor99 = xor i64 %and79, %and80, !dbg !1619
    #dbg_value(i64 %xor99, !1620, !DIExpression(), !1425)
  %xor100 = xor i64 %and89, %and90, !dbg !1621
    #dbg_value(i64 %xor100, !1622, !DIExpression(), !1425)
  %xor101 = xor i64 %and85, %xor93, !dbg !1623
    #dbg_value(i64 %xor101, !1624, !DIExpression(), !1425)
  %xor102 = xor i64 %xor95, %xor98, !dbg !1625
    #dbg_value(i64 %xor102, !1626, !DIExpression(), !1425)
  %xor103 = xor i64 %and77, %xor91, !dbg !1627
    #dbg_value(i64 %xor103, !1628, !DIExpression(), !1425)
  %xor104 = xor i64 %and76, %xor99, !dbg !1629
    #dbg_value(i64 %xor104, !1630, !DIExpression(), !1425)
  %xor105 = xor i64 %xor91, %xor102, !dbg !1631
    #dbg_value(i64 %xor105, !1632, !DIExpression(), !1425)
  %xor106 = xor i64 %and87, %xor102, !dbg !1633
    #dbg_value(i64 %xor106, !1634, !DIExpression(), !1425)
  %xor107 = xor i64 %xor97, %xor103, !dbg !1635
    #dbg_value(i64 %xor107, !1636, !DIExpression(), !1425)
  %xor108 = xor i64 %xor94, %xor103, !dbg !1637
    #dbg_value(i64 %xor108, !1638, !DIExpression(), !1425)
  %xor109 = xor i64 %and77, %xor104, !dbg !1639
    #dbg_value(i64 %xor109, !1640, !DIExpression(), !1425)
  %xor110 = xor i64 %xor106, %xor107, !dbg !1641
    #dbg_value(i64 %xor110, !1642, !DIExpression(), !1425)
  %xor111 = xor i64 %and74, %xor108, !dbg !1643
    #dbg_value(i64 %xor111, !1644, !DIExpression(), !1425)
  %xor112 = xor i64 %xor104, %xor108, !dbg !1645
    #dbg_value(i64 %xor112, !1646, !DIExpression(), !1425)
  %17 = xor i64 %xor107, %xor101, !dbg !1647
  %xor113 = xor i64 %17, -1, !dbg !1647
    #dbg_value(i64 %xor113, !1648, !DIExpression(), !1425)
  %18 = xor i64 %xor105, %xor93, !dbg !1649
  %xor115 = xor i64 %18, -1, !dbg !1649
    #dbg_value(i64 %xor115, !1650, !DIExpression(), !1425)
    #dbg_value(!DIArgList(i64 %xor109, i64 %xor110), !1651, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !1425)
  %xor117 = xor i64 %xor98, %xor111, !dbg !1652
    #dbg_value(i64 %xor117, !1653, !DIExpression(), !1425)
  %xor118 = xor i64 %xor96, %xor111, !dbg !1654
    #dbg_value(i64 %xor118, !1655, !DIExpression(), !1425)
  %xor119 = xor i64 %xor92, %xor110, !dbg !1656
    #dbg_value(i64 %xor119, !1657, !DIExpression(), !1425)
  %19 = xor i64 %xor117, %xor109, !dbg !1658
  %xor121 = xor i64 %19, -1, !dbg !1658
    #dbg_value(i64 %xor121, !1659, !DIExpression(), !1425)
  %20 = xor i64 %xor110, %xor100, !dbg !1660
  %21 = xor i64 %20, %xor109, !dbg !1660
  %xor123 = xor i64 %21, -1, !dbg !1660
    #dbg_value(i64 %xor123, !1661, !DIExpression(), !1425)
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1662
  store i64 %xor112, ptr %arrayidx124, align 8, !dbg !1663
  %arrayidx125 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1664
  store i64 %xor121, ptr %arrayidx125, align 8, !dbg !1665
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1666
  store i64 %xor123, ptr %arrayidx126, align 8, !dbg !1667
  %arrayidx127 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1668
  store i64 %xor117, ptr %arrayidx127, align 8, !dbg !1669
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1670
  store i64 %xor118, ptr %arrayidx128, align 8, !dbg !1671
  %arrayidx129 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1672
  store i64 %xor119, ptr %arrayidx129, align 8, !dbg !1673
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1674
  store i64 %xor113, ptr %arrayidx130, align 8, !dbg !1675
  store i64 %xor115, ptr %q, align 8, !dbg !1676
  ret void, !dbg !1677
}

; Function Attrs: nounwind
define internal fastcc i32 @br_dec32le(ptr noundef %src) unnamed_addr #0 !dbg !1678 {
entry:
    #dbg_value(ptr %src, !1681, !DIExpression(), !1682)
  %0 = load i8, ptr %src, align 1, !dbg !1683
  %conv = zext i8 %0 to i32, !dbg !1684
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %src, i32 1, !dbg !1685
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !1685
  %conv2 = zext i8 %1 to i32, !dbg !1686
  %shl = shl nuw nsw i32 %conv2, 8, !dbg !1687
  %or = or disjoint i32 %shl, %conv, !dbg !1688
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %src, i32 2, !dbg !1689
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !1689
  %conv4 = zext i8 %2 to i32, !dbg !1690
  %shl5 = shl nuw nsw i32 %conv4, 16, !dbg !1691
  %or6 = or disjoint i32 %or, %shl5, !dbg !1692
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %src, i32 3, !dbg !1693
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !1693
  %conv8 = zext i8 %3 to i32, !dbg !1694
  %shl9 = shl nuw i32 %conv8, 24, !dbg !1695
  %or10 = or disjoint i32 %or6, %shl9, !dbg !1696
  ret i32 %or10, !dbg !1697
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !1698 {
entry:
    #dbg_value(ptr %r, !1699, !DIExpression(), !1700)
    #dbg_value(ptr %key, !1701, !DIExpression(), !1700)
  call void @aes128_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !1702
  ret void, !dbg !1703
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !1704 {
entry:
  %skey = alloca [26 x i64], align 8
    #dbg_value(ptr %r, !1712, !DIExpression(), !1713)
    #dbg_value(ptr %key, !1714, !DIExpression(), !1713)
    #dbg_declare(ptr %skey, !1715, !DIExpression(), !1717)
  %call = call dereferenceable_or_null(832) ptr @malloc(i32 noundef 832) #7, !dbg !1718
  store ptr %call, ptr %r, align 4, !dbg !1719
  %cmp = icmp eq ptr %call, null, !dbg !1720
  br i1 %cmp, label %if.then, label %if.end, !dbg !1720

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !1722
  br label %if.end, !dbg !1724

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 24) #4, !dbg !1725
  %0 = load ptr, ptr %r, align 4, !dbg !1726
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 12) #4, !dbg !1727
  ret void, !dbg !1728
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !1729 {
entry:
    #dbg_value(ptr %r, !1730, !DIExpression(), !1731)
    #dbg_value(ptr %key, !1732, !DIExpression(), !1731)
  call void @aes192_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !1733
  ret void, !dbg !1734
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !1735 {
entry:
  %skey = alloca [30 x i64], align 8
    #dbg_value(ptr %r, !1743, !DIExpression(), !1744)
    #dbg_value(ptr %key, !1745, !DIExpression(), !1744)
    #dbg_declare(ptr %skey, !1746, !DIExpression(), !1750)
  %call = call dereferenceable_or_null(960) ptr @malloc(i32 noundef 960) #7, !dbg !1751
  store ptr %call, ptr %r, align 4, !dbg !1752
  %cmp = icmp eq ptr %call, null, !dbg !1753
  br i1 %cmp, label %if.then, label %if.end, !dbg !1753

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 111) #6, !dbg !1755
  br label %if.end, !dbg !1757

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @br_aes_ct64_keysched(ptr noundef nonnull %skey, ptr noundef %key, i32 noundef 32) #4, !dbg !1758
  %0 = load ptr, ptr %r, align 4, !dbg !1759
  call fastcc void @br_aes_ct64_skey_expand(ptr noundef %0, ptr noundef nonnull %skey, i32 noundef 14) #4, !dbg !1760
  ret void, !dbg !1761
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr_keyexp(ptr noundef %r, ptr noundef %key) local_unnamed_addr #0 !dbg !1762 {
entry:
    #dbg_value(ptr %r, !1763, !DIExpression(), !1764)
    #dbg_value(ptr %key, !1765, !DIExpression(), !1764)
  call void @aes256_ecb_keyexp(ptr noundef %r, ptr noundef %key) #4, !dbg !1766
  ret void, !dbg !1767
}

; Function Attrs: nounwind
define dso_local void @aes128_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !1768 {
entry:
    #dbg_value(ptr %out, !1773, !DIExpression(), !1774)
    #dbg_value(ptr %in, !1775, !DIExpression(), !1774)
    #dbg_value(i32 %nblocks, !1776, !DIExpression(), !1774)
    #dbg_value(ptr %ctx, !1777, !DIExpression(), !1774)
  %0 = load ptr, ptr %ctx, align 4, !dbg !1778
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 10) #4, !dbg !1779
  ret void, !dbg !1780
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !1781 {
entry:
  %blocks = alloca [16 x i32], align 4
  %t = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !1784, !DIExpression(), !1785)
    #dbg_value(ptr %in, !1786, !DIExpression(), !1785)
    #dbg_value(i32 %nblocks, !1787, !DIExpression(), !1785)
    #dbg_value(ptr %rkeys, !1788, !DIExpression(), !1785)
    #dbg_value(i32 %nrounds, !1789, !DIExpression(), !1785)
    #dbg_declare(ptr %blocks, !1790, !DIExpression(), !1792)
    #dbg_declare(ptr %t, !1793, !DIExpression(), !1797)
  br label %while.cond, !dbg !1798

while.cond:                                       ; preds = %while.body, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %while.body ]
  %in.addr.0 = phi ptr [ %in, %entry ], [ %add.ptr, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr2, %while.body ]
    #dbg_value(ptr %out.addr.0, !1784, !DIExpression(), !1785)
    #dbg_value(ptr %in.addr.0, !1786, !DIExpression(), !1785)
    #dbg_value(i32 %nblocks.addr.0, !1787, !DIExpression(), !1785)
  %cmp = icmp ugt i32 %nblocks.addr.0, 3, !dbg !1799
  br i1 %cmp, label %while.body, label %while.end, !dbg !1798

while.body:                                       ; preds = %while.cond
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef 16, ptr noundef %in.addr.0) #4, !dbg !1800
  call fastcc void @aes_ecb4x(ptr noundef %out.addr.0, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !1802
  %sub = add i32 %nblocks.addr.0, -4, !dbg !1803
    #dbg_value(i32 %sub, !1787, !DIExpression(), !1785)
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 64, !dbg !1804
    #dbg_value(ptr %add.ptr, !1786, !DIExpression(), !1785)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !1805
    #dbg_value(ptr %add.ptr2, !1784, !DIExpression(), !1785)
  br label %while.cond, !dbg !1798, !llvm.loop !1806

while.end:                                        ; preds = %while.cond
  %nblocks.addr.0.lcssa = phi i32 [ %nblocks.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %tobool.not = icmp eq i32 %nblocks.addr.0.lcssa, 0, !dbg !1808
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1808

if.then:                                          ; preds = %while.end
  %mul = shl nuw nsw i32 %nblocks.addr.0.lcssa, 2, !dbg !1810
  call fastcc void @br_range_dec32le(ptr noundef nonnull %blocks, i32 noundef %mul, ptr noundef %in.addr.0.lcssa) #4, !dbg !1812
  call fastcc void @aes_ecb4x(ptr noundef nonnull %t, ptr noundef nonnull %blocks, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !1813
  %mul7 = shl nuw nsw i32 %nblocks.addr.0.lcssa, 4, !dbg !1814
  %call = call ptr @memcpy(ptr noundef %out.addr.0.lcssa, ptr noundef nonnull %t, i32 noundef %mul7) #6, !dbg !1815
  br label %if.end, !dbg !1816

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !1817
}

; Function Attrs: nounwind
define internal fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !1818 {
entry:
  %w = alloca [16 x i32], align 4
  %q = alloca [8 x i64], align 8
    #dbg_value(ptr %out, !1821, !DIExpression(), !1822)
    #dbg_value(ptr %ivw, !1823, !DIExpression(), !1822)
    #dbg_value(ptr %sk_exp, !1824, !DIExpression(), !1822)
    #dbg_value(i32 %nrounds, !1825, !DIExpression(), !1822)
    #dbg_declare(ptr %w, !1826, !DIExpression(), !1827)
    #dbg_declare(ptr %q, !1828, !DIExpression(), !1829)
  %call = call ptr @memcpy(ptr noundef nonnull %w, ptr noundef nonnull %ivw, i32 noundef 64) #6, !dbg !1830
    #dbg_value(i32 0, !1831, !DIExpression(), !1822)
  br label %for.cond, !dbg !1832

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1834
    #dbg_value(i32 %i.0, !1831, !DIExpression(), !1822)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1835
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1837

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.0, !dbg !1838
  %add = or disjoint i32 %i.0, 4, !dbg !1840
  %arrayidx1 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add, !dbg !1841
  %add.ptr.idx = shl nuw nsw i32 %i.0, 4, !dbg !1842
  %add.ptr = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr.idx, !dbg !1842
  call fastcc void @br_aes_ct64_interleave_in(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx1, ptr noundef nonnull %add.ptr) #4, !dbg !1843
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1844
    #dbg_value(i32 %inc, !1831, !DIExpression(), !1822)
  br label %for.cond, !dbg !1845, !llvm.loop !1846

for.end:                                          ; preds = %for.cond
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !1848
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk_exp) #4, !dbg !1849
    #dbg_value(i32 1, !1831, !DIExpression(), !1822)
  br label %for.cond5, !dbg !1850

for.cond5:                                        ; preds = %for.body7, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc15, %for.body7 ], !dbg !1852
    #dbg_value(i32 %i.1, !1831, !DIExpression(), !1822)
  %exitcond1 = icmp ne i32 %i.1, %nrounds, !dbg !1853
  br i1 %exitcond1, label %for.body7, label %for.end16, !dbg !1855

for.body7:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !1856
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !1858
  call fastcc void @mix_columns(ptr noundef nonnull %q) #4, !dbg !1859
  %add.ptr13.idx = shl nuw nsw i32 %i.1, 6, !dbg !1860
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr13.idx, !dbg !1860
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr13) #4, !dbg !1861
  %inc15 = add nuw nsw i32 %i.1, 1, !dbg !1862
    #dbg_value(i32 %inc15, !1831, !DIExpression(), !1822)
  br label %for.cond5, !dbg !1863, !llvm.loop !1864

for.end16:                                        ; preds = %for.cond5
  call fastcc void @br_aes_ct64_bitslice_Sbox(ptr noundef nonnull %q) #4, !dbg !1866
  call fastcc void @shift_rows(ptr noundef nonnull %q) #4, !dbg !1867
  %add.ptr20.idx = shl nuw nsw i32 %nrounds, 6, !dbg !1868
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %sk_exp, i32 %add.ptr20.idx, !dbg !1868
  call fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef nonnull %add.ptr20) #4, !dbg !1869
  call fastcc void @br_aes_ct64_ortho(ptr noundef nonnull %q) #4, !dbg !1870
    #dbg_value(i32 0, !1831, !DIExpression(), !1822)
  br label %for.cond22, !dbg !1871

for.cond22:                                       ; preds = %for.body24, %for.end16
  %i.2 = phi i32 [ 0, %for.end16 ], [ %inc32, %for.body24 ], !dbg !1873
    #dbg_value(i32 %i.2, !1831, !DIExpression(), !1822)
  %exitcond2 = icmp ne i32 %i.2, 4, !dbg !1874
  br i1 %exitcond2, label %for.body24, label %for.end33, !dbg !1876

for.body24:                                       ; preds = %for.cond22
  %add.ptr27.idx = shl nuw nsw i32 %i.2, 4, !dbg !1877
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %w, i32 %add.ptr27.idx, !dbg !1877
  %arrayidx28 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %i.2, !dbg !1879
  %0 = load i64, ptr %arrayidx28, align 8, !dbg !1879
  %add29 = or disjoint i32 %i.2, 4, !dbg !1880
  %arrayidx30 = getelementptr inbounds nuw [8 x i64], ptr %q, i32 0, i32 %add29, !dbg !1881
  %1 = load i64, ptr %arrayidx30, align 8, !dbg !1881
  call fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %add.ptr27, i64 noundef %0, i64 noundef %1) #4, !dbg !1882
  %inc32 = add nuw nsw i32 %i.2, 1, !dbg !1883
    #dbg_value(i32 %inc32, !1831, !DIExpression(), !1822)
  br label %for.cond22, !dbg !1884, !llvm.loop !1885

for.end33:                                        ; preds = %for.cond22
  call fastcc void @br_range_enc32le(ptr noundef %out, ptr noundef nonnull %w, i32 noundef 16) #4, !dbg !1887
  ret void, !dbg !1888
}

; Function Attrs: nounwind
define internal fastcc void @add_round_key(ptr noundef nonnull %q, ptr noundef %sk) unnamed_addr #0 !dbg !1889 {
entry:
    #dbg_value(ptr %q, !1892, !DIExpression(), !1893)
    #dbg_value(ptr %sk, !1894, !DIExpression(), !1893)
  %0 = load i64, ptr %sk, align 8, !dbg !1895
  %1 = load i64, ptr %q, align 8, !dbg !1896
  %xor = xor i64 %1, %0, !dbg !1896
  store i64 %xor, ptr %q, align 8, !dbg !1896
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %sk, i32 8, !dbg !1897
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1897
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1898
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !1899
  %xor4 = xor i64 %3, %2, !dbg !1899
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !1899
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %sk, i32 16, !dbg !1900
  %4 = load i64, ptr %arrayidx5, align 8, !dbg !1900
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1901
  %5 = load i64, ptr %arrayidx6, align 8, !dbg !1902
  %xor7 = xor i64 %5, %4, !dbg !1902
  store i64 %xor7, ptr %arrayidx6, align 8, !dbg !1902
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %sk, i32 24, !dbg !1903
  %6 = load i64, ptr %arrayidx8, align 8, !dbg !1903
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1904
  %7 = load i64, ptr %arrayidx9, align 8, !dbg !1905
  %xor10 = xor i64 %7, %6, !dbg !1905
  store i64 %xor10, ptr %arrayidx9, align 8, !dbg !1905
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !1906
  %8 = load i64, ptr %arrayidx11, align 8, !dbg !1906
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1907
  %9 = load i64, ptr %arrayidx12, align 8, !dbg !1908
  %xor13 = xor i64 %9, %8, !dbg !1908
  store i64 %xor13, ptr %arrayidx12, align 8, !dbg !1908
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sk, i32 40, !dbg !1909
  %10 = load i64, ptr %arrayidx14, align 8, !dbg !1909
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1910
  %11 = load i64, ptr %arrayidx15, align 8, !dbg !1911
  %xor16 = xor i64 %11, %10, !dbg !1911
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !1911
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %sk, i32 48, !dbg !1912
  %12 = load i64, ptr %arrayidx17, align 8, !dbg !1912
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1913
  %13 = load i64, ptr %arrayidx18, align 8, !dbg !1914
  %xor19 = xor i64 %13, %12, !dbg !1914
  store i64 %xor19, ptr %arrayidx18, align 8, !dbg !1914
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %sk, i32 56, !dbg !1915
  %14 = load i64, ptr %arrayidx20, align 8, !dbg !1915
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1916
  %15 = load i64, ptr %arrayidx21, align 8, !dbg !1917
  %xor22 = xor i64 %15, %14, !dbg !1917
  store i64 %xor22, ptr %arrayidx21, align 8, !dbg !1917
  ret void, !dbg !1918
}

; Function Attrs: nounwind
define internal fastcc void @shift_rows(ptr noundef nonnull %q) unnamed_addr #0 !dbg !1919 {
entry:
    #dbg_value(ptr %q, !1920, !DIExpression(), !1921)
    #dbg_value(i32 0, !1922, !DIExpression(), !1921)
  br label %for.cond, !dbg !1923

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1925
    #dbg_value(i32 %i.0, !1922, !DIExpression(), !1921)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1926
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1928

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !1929
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1929
    #dbg_value(i64 %0, !1931, !DIExpression(), !1932)
  %and = and i64 %0, 65535, !dbg !1933
  %and1 = lshr i64 %0, 4, !dbg !1934
  %shr = and i64 %and1, 268369920, !dbg !1934
  %or = or disjoint i64 %and, %shr, !dbg !1935
  %and2 = shl i64 %0, 12, !dbg !1936
  %shl = and i64 %and2, 4026531840, !dbg !1936
  %or3 = or disjoint i64 %or, %shl, !dbg !1937
  %and4 = lshr i64 %0, 8, !dbg !1938
  %shr5 = and i64 %and4, 1095216660480, !dbg !1938
  %or6 = or disjoint i64 %or3, %shr5, !dbg !1939
  %and7 = shl i64 %0, 8, !dbg !1940
  %shl8 = and i64 %and7, 280375465082880, !dbg !1940
  %or9 = or disjoint i64 %or6, %shl8, !dbg !1941
  %and10 = lshr i64 %0, 12, !dbg !1942
  %shr11 = and i64 %and10, 4222124650659840, !dbg !1942
  %or12 = or disjoint i64 %or9, %shr11, !dbg !1943
  %and13 = shl i64 %0, 4, !dbg !1944
  %shl14 = and i64 %and13, -4503599627370496, !dbg !1944
  %or15 = or i64 %or12, %shl14, !dbg !1945
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %q, i32 %i.0, !dbg !1946
  store i64 %or15, ptr %arrayidx16, align 8, !dbg !1947
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1948
    #dbg_value(i32 %inc, !1922, !DIExpression(), !1921)
  br label %for.cond, !dbg !1949, !llvm.loop !1950

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1952
}

; Function Attrs: nounwind
define internal fastcc void @mix_columns(ptr noundef nonnull %q) unnamed_addr #0 !dbg !1953 {
entry:
    #dbg_value(ptr %q, !1954, !DIExpression(), !1955)
  %0 = load i64, ptr %q, align 8, !dbg !1956
    #dbg_value(i64 %0, !1957, !DIExpression(), !1955)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1958
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1958
    #dbg_value(i64 %1, !1959, !DIExpression(), !1955)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !1960
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1960
    #dbg_value(i64 %2, !1961, !DIExpression(), !1955)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !1962
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !1962
    #dbg_value(i64 %3, !1963, !DIExpression(), !1955)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !1964
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !1964
    #dbg_value(i64 %4, !1965, !DIExpression(), !1955)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !1966
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !1966
    #dbg_value(i64 %5, !1967, !DIExpression(), !1955)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !1968
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !1968
    #dbg_value(i64 %6, !1969, !DIExpression(), !1955)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !1970
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !1970
    #dbg_value(i64 %7, !1971, !DIExpression(), !1955)
  %8 = shl i64 %0, 48, !dbg !1972
  %9 = lshr i64 %0, 16, !dbg !1972
  %10 = or i64 %8, %9, !dbg !1972
    #dbg_value(i64 %10, !1973, !DIExpression(), !1955)
  %11 = shl i64 %1, 48, !dbg !1974
  %12 = lshr i64 %1, 16, !dbg !1974
  %13 = or i64 %11, %12, !dbg !1974
    #dbg_value(i64 %13, !1975, !DIExpression(), !1955)
  %14 = shl i64 %2, 48, !dbg !1976
  %15 = lshr i64 %2, 16, !dbg !1976
  %16 = or i64 %14, %15, !dbg !1976
    #dbg_value(i64 %16, !1977, !DIExpression(), !1955)
  %17 = shl i64 %3, 48, !dbg !1978
  %18 = lshr i64 %3, 16, !dbg !1978
  %19 = or i64 %17, %18, !dbg !1978
    #dbg_value(i64 %19, !1979, !DIExpression(), !1955)
  %20 = shl i64 %4, 48, !dbg !1980
  %21 = lshr i64 %4, 16, !dbg !1980
  %22 = or i64 %20, %21, !dbg !1980
    #dbg_value(i64 %22, !1981, !DIExpression(), !1955)
  %23 = shl i64 %5, 48, !dbg !1982
  %24 = lshr i64 %5, 16, !dbg !1982
  %25 = or i64 %23, %24, !dbg !1982
    #dbg_value(i64 %25, !1983, !DIExpression(), !1955)
  %26 = shl i64 %6, 48, !dbg !1984
  %27 = lshr i64 %6, 16, !dbg !1984
  %28 = or i64 %26, %27, !dbg !1984
    #dbg_value(i64 %28, !1985, !DIExpression(), !1955)
  %29 = shl i64 %7, 48, !dbg !1986
  %30 = lshr i64 %7, 16, !dbg !1986
  %31 = or i64 %29, %30, !dbg !1986
    #dbg_value(i64 %31, !1987, !DIExpression(), !1955)
  %xor30 = xor i64 %0, %10, !dbg !1988
  %call = call fastcc i64 @rotr32(i64 noundef %xor30) #4, !dbg !1989
  %32 = xor i64 %31, %call, !dbg !1990
  %33 = xor i64 %32, %7, !dbg !1990
  %xor31 = xor i64 %33, %10, !dbg !1990
  store i64 %xor31, ptr %q, align 8, !dbg !1991
  %xor37 = xor i64 %1, %13, !dbg !1992
  %call38 = call fastcc i64 @rotr32(i64 noundef %xor37) #4, !dbg !1993
  %34 = xor i64 %10, %call38, !dbg !1994
  %35 = xor i64 %34, %0, !dbg !1994
  %36 = xor i64 %35, %7, !dbg !1994
  %37 = xor i64 %36, %31, !dbg !1994
  %xor39 = xor i64 %37, %13, !dbg !1994
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %q, i32 8, !dbg !1995
  store i64 %xor39, ptr %arrayidx40, align 8, !dbg !1996
  %xor43 = xor i64 %2, %16, !dbg !1997
  %call44 = call fastcc i64 @rotr32(i64 noundef %xor43) #4, !dbg !1998
  %38 = xor i64 %13, %call44, !dbg !1999
  %39 = xor i64 %38, %1, !dbg !1999
  %xor45 = xor i64 %39, %16, !dbg !1999
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %q, i32 16, !dbg !2000
  store i64 %xor45, ptr %arrayidx46, align 8, !dbg !2001
  %xor51 = xor i64 %3, %19, !dbg !2002
  %call52 = call fastcc i64 @rotr32(i64 noundef %xor51) #4, !dbg !2003
  %40 = xor i64 %16, %call52, !dbg !2004
  %41 = xor i64 %40, %2, !dbg !2004
  %42 = xor i64 %41, %7, !dbg !2004
  %43 = xor i64 %42, %31, !dbg !2004
  %xor53 = xor i64 %43, %19, !dbg !2004
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %q, i32 24, !dbg !2005
  store i64 %xor53, ptr %arrayidx54, align 8, !dbg !2006
  %xor59 = xor i64 %4, %22, !dbg !2007
  %call60 = call fastcc i64 @rotr32(i64 noundef %xor59) #4, !dbg !2008
  %44 = xor i64 %19, %call60, !dbg !2009
  %45 = xor i64 %44, %3, !dbg !2009
  %46 = xor i64 %45, %7, !dbg !2009
  %47 = xor i64 %46, %31, !dbg !2009
  %xor61 = xor i64 %47, %22, !dbg !2009
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %q, i32 32, !dbg !2010
  store i64 %xor61, ptr %arrayidx62, align 8, !dbg !2011
  %xor65 = xor i64 %5, %25, !dbg !2012
  %call66 = call fastcc i64 @rotr32(i64 noundef %xor65) #4, !dbg !2013
  %48 = xor i64 %22, %call66, !dbg !2014
  %49 = xor i64 %48, %4, !dbg !2014
  %xor67 = xor i64 %49, %25, !dbg !2014
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %q, i32 40, !dbg !2015
  store i64 %xor67, ptr %arrayidx68, align 8, !dbg !2016
  %xor71 = xor i64 %6, %28, !dbg !2017
  %call72 = call fastcc i64 @rotr32(i64 noundef %xor71) #4, !dbg !2018
  %50 = xor i64 %25, %call72, !dbg !2019
  %51 = xor i64 %50, %5, !dbg !2019
  %xor73 = xor i64 %51, %28, !dbg !2019
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %q, i32 48, !dbg !2020
  store i64 %xor73, ptr %arrayidx74, align 8, !dbg !2021
  %xor77 = xor i64 %7, %31, !dbg !2022
  %call78 = call fastcc i64 @rotr32(i64 noundef %xor77) #4, !dbg !2023
  %52 = xor i64 %28, %call78, !dbg !2024
  %53 = xor i64 %52, %6, !dbg !2024
  %xor79 = xor i64 %53, %31, !dbg !2024
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %q, i32 56, !dbg !2025
  store i64 %xor79, ptr %arrayidx80, align 8, !dbg !2026
  ret void, !dbg !2027
}

; Function Attrs: nounwind
define internal fastcc void @br_aes_ct64_interleave_out(ptr noundef nonnull %w, i64 noundef %q0, i64 noundef %q1) unnamed_addr #0 !dbg !2028 {
entry:
    #dbg_value(ptr %w, !2031, !DIExpression(), !2032)
    #dbg_value(i64 %q0, !2033, !DIExpression(), !2032)
    #dbg_value(i64 %q1, !2034, !DIExpression(), !2032)
  %and = and i64 %q0, 71777214294589695, !dbg !2035
    #dbg_value(i64 %and, !2036, !DIExpression(), !2032)
  %and1 = and i64 %q1, 71777214294589695, !dbg !2037
    #dbg_value(i64 %and1, !2038, !DIExpression(), !2032)
  %shr = lshr i64 %q0, 8, !dbg !2039
  %and2 = and i64 %shr, 71776119077928960, !dbg !2040
    #dbg_value(i64 %shr, !2041, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !2032)
  %shr3 = lshr i64 %q1, 8, !dbg !2042
  %and4 = and i64 %shr3, 71776119077928960, !dbg !2043
    #dbg_value(i64 %shr3, !2044, !DIExpression(DW_OP_constu, 71777214294589440, DW_OP_and, DW_OP_stack_value), !2032)
  %shr5 = lshr i64 %and, 8, !dbg !2045
  %or = or disjoint i64 %and, %shr5, !dbg !2046
    #dbg_value(i64 %or, !2036, !DIExpression(), !2032)
  %shr6 = lshr i64 %and1, 8, !dbg !2047
  %or7 = or disjoint i64 %and1, %shr6, !dbg !2048
    #dbg_value(i64 %or7, !2038, !DIExpression(), !2032)
  %0 = and i64 %q0, 280375465148160, !dbg !2049
  %1 = or disjoint i64 %and2, %0, !dbg !2049
  %or9 = lshr exact i64 %1, 8, !dbg !2049
    #dbg_value(!DIArgList(i64 %and2, i64 %0), !2041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !2032)
  %2 = and i64 %q1, 280375465148160, !dbg !2050
  %3 = or disjoint i64 %and4, %2, !dbg !2050
  %or11 = lshr exact i64 %3, 8, !dbg !2050
    #dbg_value(!DIArgList(i64 %and4, i64 %2), !2044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_stack_value), !2032)
  %and12 = and i64 %or, 281470681808895, !dbg !2051
    #dbg_value(i64 %and12, !2036, !DIExpression(), !2032)
  %and13 = and i64 %or7, 281470681808895, !dbg !2052
    #dbg_value(i64 %and13, !2038, !DIExpression(), !2032)
    #dbg_value(i64 %or9, !2041, !DIExpression(), !2032)
    #dbg_value(i64 %or11, !2044, !DIExpression(), !2032)
  %shr16 = lshr i64 %and12, 16, !dbg !2053
  %or181 = or disjoint i64 %and12, %shr16, !dbg !2054
  %or18 = trunc i64 %or181 to i32, !dbg !2054
  store i32 %or18, ptr %w, align 4, !dbg !2055
  %shr20 = lshr i64 %and13, 16, !dbg !2056
  %or222 = or disjoint i64 %and13, %shr20, !dbg !2057
  %or22 = trunc i64 %or222 to i32, !dbg !2057
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %w, i32 4, !dbg !2058
  store i32 %or22, ptr %arrayidx23, align 4, !dbg !2059
  %shr25 = lshr i64 %1, 24, !dbg !2060
  %or273 = or disjoint i64 %or9, %shr25, !dbg !2061
  %or27 = trunc i64 %or273 to i32, !dbg !2061
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %w, i32 8, !dbg !2062
  store i32 %or27, ptr %arrayidx28, align 4, !dbg !2063
  %shr30 = lshr i64 %3, 24, !dbg !2064
  %or324 = or disjoint i64 %or11, %shr30, !dbg !2065
  %or32 = trunc i64 %or324 to i32, !dbg !2065
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %w, i32 12, !dbg !2066
  store i32 %or32, ptr %arrayidx33, align 4, !dbg !2067
  ret void, !dbg !2068
}

; Function Attrs: nounwind
define internal fastcc void @br_range_enc32le(ptr noundef %dst, ptr noundef nonnull %v, i32 noundef %num) unnamed_addr #0 !dbg !2069 {
entry:
    #dbg_value(ptr %dst, !2072, !DIExpression(), !2073)
    #dbg_value(ptr %v, !2074, !DIExpression(), !2073)
    #dbg_value(i32 16, !2075, !DIExpression(), !2073)
  br label %while.cond, !dbg !2076

while.cond:                                       ; preds = %while.body, %entry
  %num.addr.0 = phi i32 [ 16, %entry ], [ %dec, %while.body ]
  %v.addr.0 = phi ptr [ %v, %entry ], [ %incdec.ptr, %while.body ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %while.body ]
    #dbg_value(ptr %dst.addr.0, !2072, !DIExpression(), !2073)
    #dbg_value(ptr %v.addr.0, !2074, !DIExpression(), !2073)
    #dbg_value(i32 %num.addr.0, !2075, !DIExpression(), !2073)
    #dbg_value(i32 %num.addr.0, !2075, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2073)
  %cmp.not = icmp eq i32 %num.addr.0, 0, !dbg !2077
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !2076

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %num.addr.0, -1, !dbg !2078
    #dbg_value(i32 %dec, !2075, !DIExpression(), !2073)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %v.addr.0, i32 4, !dbg !2079
    #dbg_value(ptr %incdec.ptr, !2074, !DIExpression(), !2073)
  %0 = load i32, ptr %v.addr.0, align 4, !dbg !2081
  call fastcc void @br_enc32le(ptr noundef %dst.addr.0, i32 noundef %0) #4, !dbg !2082
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 4, !dbg !2083
    #dbg_value(ptr %add.ptr, !2072, !DIExpression(), !2073)
  br label %while.cond, !dbg !2076, !llvm.loop !2084

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2086
}

; Function Attrs: nounwind
define internal fastcc void @br_enc32le(ptr noundef %dst, i32 noundef %x) unnamed_addr #0 !dbg !2087 {
entry:
    #dbg_value(ptr %dst, !2090, !DIExpression(), !2091)
    #dbg_value(i32 %x, !2092, !DIExpression(), !2091)
  %conv = trunc i32 %x to i8, !dbg !2093
  store i8 %conv, ptr %dst, align 1, !dbg !2094
  %shr = lshr i32 %x, 8, !dbg !2095
  %conv1 = trunc i32 %shr to i8, !dbg !2096
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !2097
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !2098
  %shr3 = lshr i32 %x, 16, !dbg !2099
  %conv4 = trunc i32 %shr3 to i8, !dbg !2100
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !2101
  store i8 %conv4, ptr %arrayidx5, align 1, !dbg !2102
  %shr6 = lshr i32 %x, 24, !dbg !2103
  %conv7 = trunc nuw i32 %shr6 to i8, !dbg !2104
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !2105
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !2106
  ret void, !dbg !2107
}

; Function Attrs: nounwind
define internal fastcc i64 @rotr32(i64 noundef %x) unnamed_addr #0 !dbg !2108 {
entry:
    #dbg_value(i64 %x, !2111, !DIExpression(), !2112)
  %0 = shl i64 %x, 32, !dbg !2113
  %1 = lshr i64 %x, 32, !dbg !2113
  %2 = or i64 %0, %1, !dbg !2113
  ret i64 %2, !dbg !2114
}

; Function Attrs: nounwind
define dso_local void @aes128_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !2115 {
entry:
    #dbg_value(ptr %out, !2118, !DIExpression(), !2119)
    #dbg_value(i32 %outlen, !2120, !DIExpression(), !2119)
    #dbg_value(ptr %iv, !2121, !DIExpression(), !2119)
    #dbg_value(ptr %ctx, !2122, !DIExpression(), !2119)
  %0 = load ptr, ptr %ctx, align 4, !dbg !2123
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 10) #4, !dbg !2124
  ret void, !dbg !2125
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %rkeys, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !2126 {
entry:
  %ivw = alloca [16 x i32], align 4
  %tmp = alloca [64 x i8], align 1
    #dbg_value(ptr %out, !2129, !DIExpression(), !2130)
    #dbg_value(i32 %outlen, !2131, !DIExpression(), !2130)
    #dbg_value(ptr %iv, !2132, !DIExpression(), !2130)
    #dbg_value(ptr %rkeys, !2133, !DIExpression(), !2130)
    #dbg_value(i32 %nrounds, !2134, !DIExpression(), !2130)
    #dbg_declare(ptr %ivw, !2135, !DIExpression(), !2136)
    #dbg_value(i32 0, !2137, !DIExpression(), !2130)
  call fastcc void @br_range_dec32le(ptr noundef nonnull %ivw, i32 noundef 3, ptr noundef %iv) #4, !dbg !2138
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 16, !dbg !2139
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !2140
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %ivw, i32 32, !dbg !2141
  %call6 = call ptr @memcpy(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !2142
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %ivw, i32 48, !dbg !2143
  %call10 = call ptr @memcpy(ptr noundef nonnull %add.ptr8, ptr noundef nonnull %ivw, i32 noundef 12) #6, !dbg !2144
  %call11 = call fastcc i32 @br_swap32(i32 noundef 0) #4, !dbg !2145
  %arrayidx = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !2146
  store i32 %call11, ptr %arrayidx, align 4, !dbg !2147
  %call12 = call fastcc i32 @br_swap32(i32 noundef 1) #4, !dbg !2148
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !2149
  store i32 %call12, ptr %arrayidx13, align 4, !dbg !2150
  %call15 = call fastcc i32 @br_swap32(i32 noundef 2) #4, !dbg !2151
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !2152
  store i32 %call15, ptr %arrayidx16, align 4, !dbg !2153
  %call18 = call fastcc i32 @br_swap32(i32 noundef 3) #4, !dbg !2154
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !2155
  store i32 %call18, ptr %arrayidx19, align 4, !dbg !2156
  br label %while.cond, !dbg !2157

while.cond:                                       ; preds = %while.body, %entry
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub, %while.body ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr21, %while.body ]
    #dbg_value(ptr %out.addr.0, !2129, !DIExpression(), !2130)
    #dbg_value(i32 %outlen.addr.0, !2131, !DIExpression(), !2130)
  %cmp = icmp ugt i32 %outlen.addr.0, 64, !dbg !2158
  br i1 %cmp, label %while.body, label %while.end, !dbg !2157

while.body:                                       ; preds = %while.cond
  call fastcc void @aes_ctr4x(ptr noundef %out.addr.0, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !2159
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 64, !dbg !2161
    #dbg_value(ptr %add.ptr21, !2129, !DIExpression(), !2130)
  %sub = add i32 %outlen.addr.0, -64, !dbg !2162
    #dbg_value(i32 %sub, !2131, !DIExpression(), !2130)
  br label %while.cond, !dbg !2157, !llvm.loop !2163

while.end:                                        ; preds = %while.cond
  %outlen.addr.0.lcssa = phi i32 [ %outlen.addr.0, %while.cond ]
  %out.addr.0.lcssa = phi ptr [ %out.addr.0, %while.cond ]
  %cmp22.not = icmp eq i32 %outlen.addr.0.lcssa, 0, !dbg !2165
  br i1 %cmp22.not, label %if.end, label %if.then, !dbg !2165

if.then:                                          ; preds = %while.end
    #dbg_declare(ptr %tmp, !2167, !DIExpression(), !2169)
  call fastcc void @aes_ctr4x(ptr noundef nonnull %tmp, ptr noundef nonnull %ivw, ptr noundef %rkeys, i32 noundef %nrounds) #4, !dbg !2170
    #dbg_value(i32 0, !2171, !DIExpression(), !2130)
  br label %for.cond, !dbg !2172

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !2174
    #dbg_value(i32 %i.0, !2171, !DIExpression(), !2130)
  %cmp25 = icmp ult i32 %i.0, %outlen.addr.0.lcssa, !dbg !2175
  br i1 %cmp25, label %for.body, label %if.end.loopexit, !dbg !2177

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %tmp, i32 0, i32 %i.0, !dbg !2178
  %0 = load i8, ptr %arrayidx26, align 1, !dbg !2178
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %out.addr.0.lcssa, i32 %i.0, !dbg !2180
  store i8 %0, ptr %arrayidx27, align 1, !dbg !2181
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2182
    #dbg_value(i32 %inc, !2171, !DIExpression(), !2130)
  br label %for.cond, !dbg !2183, !llvm.loop !2184

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2186

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !2186
}

; Function Attrs: nounwind
define internal fastcc i32 @br_swap32(i32 noundef %x) unnamed_addr #0 !dbg !2187 {
entry:
    #dbg_value(i32 %x, !2188, !DIExpression(), !2189)
    #dbg_value(!DIArgList(i32 %x, i32 %x), !2188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 18446744073692839680, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shr, DW_OP_constu, 16711935, DW_OP_and, DW_OP_or, DW_OP_stack_value), !2189)
  %0 = and i32 %x, 255, !dbg !2190
  %1 = shl i32 %0, 24, !dbg !2190
  %2 = and i32 %x, 65280, !dbg !2190
  %3 = shl i32 %2, 8, !dbg !2190
  %4 = and i32 %x, 16711680, !dbg !2190
  %5 = lshr i32 %4, 8, !dbg !2190
  %6 = and i32 %x, -16777216, !dbg !2190
  %7 = lshr i32 %6, 24, !dbg !2190
  %8 = or i32 %1, %3, !dbg !2190
  %9 = or i32 %8, %5, !dbg !2190
  %10 = or i32 %9, %7, !dbg !2190
  ret i32 %10, !dbg !2191
}

; Function Attrs: nounwind
define internal fastcc void @aes_ctr4x(ptr noundef %out, ptr noundef nonnull %ivw, ptr noundef %sk_exp, i32 noundef range(i32 10, 15) %nrounds) unnamed_addr #0 !dbg !2192 {
entry:
    #dbg_value(ptr %out, !2195, !DIExpression(), !2196)
    #dbg_value(ptr %ivw, !2197, !DIExpression(), !2196)
    #dbg_value(ptr %sk_exp, !2198, !DIExpression(), !2196)
    #dbg_value(i32 %nrounds, !2199, !DIExpression(), !2196)
  call fastcc void @aes_ecb4x(ptr noundef %out, ptr noundef %ivw, ptr noundef %sk_exp, i32 noundef %nrounds) #4, !dbg !2200
  %add.ptr = getelementptr inbounds nuw i8, ptr %ivw, i32 12, !dbg !2201
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr) #4, !dbg !2202
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %ivw, i32 28, !dbg !2203
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr1) #4, !dbg !2204
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %ivw, i32 44, !dbg !2205
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr2) #4, !dbg !2206
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %ivw, i32 60, !dbg !2207
  call fastcc void @inc4_be(ptr noundef nonnull %add.ptr3) #4, !dbg !2208
  ret void, !dbg !2209
}

; Function Attrs: nounwind
define internal fastcc void @inc4_be(ptr noundef nonnull %x) unnamed_addr #0 !dbg !2210 {
entry:
    #dbg_value(ptr %x, !2213, !DIExpression(), !2214)
  %0 = load i32, ptr %x, align 4, !dbg !2215
  %call = call fastcc i32 @br_swap32(i32 noundef %0) #4, !dbg !2216
  %add = add i32 %call, 4, !dbg !2217
    #dbg_value(i32 %add, !2218, !DIExpression(), !2214)
  %call1 = call fastcc i32 @br_swap32(i32 noundef %add) #4, !dbg !2219
  store i32 %call1, ptr %x, align 4, !dbg !2220
  ret void, !dbg !2221
}

; Function Attrs: nounwind
define dso_local void @aes192_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !2222 {
entry:
    #dbg_value(ptr %out, !2227, !DIExpression(), !2228)
    #dbg_value(ptr %in, !2229, !DIExpression(), !2228)
    #dbg_value(i32 %nblocks, !2230, !DIExpression(), !2228)
    #dbg_value(ptr %ctx, !2231, !DIExpression(), !2228)
  %0 = load ptr, ptr %ctx, align 4, !dbg !2232
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 12) #4, !dbg !2233
  ret void, !dbg !2234
}

; Function Attrs: nounwind
define dso_local void @aes192_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !2235 {
entry:
    #dbg_value(ptr %out, !2238, !DIExpression(), !2239)
    #dbg_value(i32 %outlen, !2240, !DIExpression(), !2239)
    #dbg_value(ptr %iv, !2241, !DIExpression(), !2239)
    #dbg_value(ptr %ctx, !2242, !DIExpression(), !2239)
  %0 = load ptr, ptr %ctx, align 4, !dbg !2243
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 12) #4, !dbg !2244
  ret void, !dbg !2245
}

; Function Attrs: nounwind
define dso_local void @aes256_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %ctx) local_unnamed_addr #0 !dbg !2246 {
entry:
    #dbg_value(ptr %out, !2251, !DIExpression(), !2252)
    #dbg_value(ptr %in, !2253, !DIExpression(), !2252)
    #dbg_value(i32 %nblocks, !2254, !DIExpression(), !2252)
    #dbg_value(ptr %ctx, !2255, !DIExpression(), !2252)
  %0 = load ptr, ptr %ctx, align 4, !dbg !2256
  call fastcc void @aes_ecb(ptr noundef %out, ptr noundef %in, i32 noundef %nblocks, ptr noundef %0, i32 noundef 14) #4, !dbg !2257
  ret void, !dbg !2258
}

; Function Attrs: nounwind
define dso_local void @aes256_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %ctx) local_unnamed_addr #0 !dbg !2259 {
entry:
    #dbg_value(ptr %out, !2262, !DIExpression(), !2263)
    #dbg_value(i32 %outlen, !2264, !DIExpression(), !2263)
    #dbg_value(ptr %iv, !2265, !DIExpression(), !2263)
    #dbg_value(ptr %ctx, !2266, !DIExpression(), !2263)
  %0 = load ptr, ptr %ctx, align 4, !dbg !2267
  call fastcc void @aes_ctr(ptr noundef %out, i32 noundef %outlen, ptr noundef %iv, ptr noundef %0, i32 noundef 14) #4, !dbg !2268
  ret void, !dbg !2269
}

; Function Attrs: nounwind
define dso_local void @aes128_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !2270 {
entry:
    #dbg_value(ptr %r, !2273, !DIExpression(), !2274)
  %0 = load ptr, ptr %r, align 4, !dbg !2275
  call void @free(ptr noundef %0) #6, !dbg !2276
  ret void, !dbg !2277
}

; Function Attrs: nounwind
define dso_local void @aes192_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !2278 {
entry:
    #dbg_value(ptr %r, !2281, !DIExpression(), !2282)
  %0 = load ptr, ptr %r, align 4, !dbg !2283
  call void @free(ptr noundef %0) #6, !dbg !2284
  ret void, !dbg !2285
}

; Function Attrs: nounwind
define dso_local void @aes256_ctx_release(ptr noundef %r) local_unnamed_addr #0 !dbg !2286 {
entry:
    #dbg_value(ptr %r, !2289, !DIExpression(), !2290)
  %0 = load ptr, ptr %r, align 4, !dbg !2291
  call void @free(ptr noundef %0) #6, !dbg !2292
  ret void, !dbg !2293
}

; Function Attrs: nounwind
define dso_local void @QRUOV_KeyGen(ptr noundef %seed_sk, ptr noundef %seed_pk, ptr noundef %P3) local_unnamed_addr #0 !dbg !2294 {
entry:
  %Sd = alloca [52 x [3 x [18 x i8]]], align 1
  %SdT = alloca [18 x [3 x [52 x i8]]], align 1
  %Pi1 = alloca [52 x [3 x [52 x i8]]], align 1
  %Pi2 = alloca [52 x [3 x [18 x i8]]], align 1
  %Pi2T = alloca [18 x [3 x [52 x i8]]], align 1
  %TMP = alloca [18 x [3 x [52 x i8]]], align 1
    #dbg_value(ptr %seed_sk, !2299, !DIExpression(), !2300)
    #dbg_value(ptr %seed_pk, !2301, !DIExpression(), !2300)
    #dbg_value(ptr %P3, !2302, !DIExpression(), !2300)
    #dbg_declare(ptr %Sd, !2303, !DIExpression(), !2308)
    #dbg_declare(ptr %SdT, !2309, !DIExpression(), !2316)
    #dbg_declare(ptr %Pi1, !2317, !DIExpression(), !2320)
    #dbg_declare(ptr %Pi2, !2321, !DIExpression(), !2322)
    #dbg_declare(ptr %Pi2T, !2323, !DIExpression(), !2324)
    #dbg_declare(ptr %TMP, !2325, !DIExpression(), !2326)
  call fastcc void @Expand_sk(ptr noundef %seed_sk, ptr noundef nonnull %Sd, ptr noundef nonnull %SdT) #4, !dbg !2327
  %call = call fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed_pk) #4, !dbg !2328
    #dbg_value(ptr %call, !2329, !DIExpression(), !2300)
    #dbg_value(i32 0, !2333, !DIExpression(), !2335)
  br label %for.cond, !dbg !2336

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2337
    #dbg_value(i32 %i.0, !2333, !DIExpression(), !2335)
  %exitcond = icmp ne i32 %i.0, 54, !dbg !2338
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2340

for.body:                                         ; preds = %for.cond
  %conv = zext nneg i32 %i.0 to i64, !dbg !2341
  call fastcc void @Expand_pk(ptr noundef %call, i64 noundef %conv, ptr noundef nonnull %Pi1, ptr noundef nonnull %Pi2) #4, !dbg !2343
  call void @MATRIX_TRANSPOSE_VxM(ptr noundef nonnull %Pi2, ptr noundef nonnull %Pi2T) #4, !dbg !2344
  call void @MATRIX_MxV_MUL_SYMMETRIC_MATRIX_VxV(ptr noundef nonnull %SdT, ptr noundef nonnull %Pi1, ptr noundef nonnull %TMP) #4, !dbg !2345
  call void @MATRIX_SUB_MxV(ptr noundef nonnull %Pi2T, ptr noundef nonnull %TMP, ptr noundef nonnull %TMP) #4, !dbg !2346
  %arrayidx = getelementptr inbounds nuw [18 x [3 x [18 x i8]]], ptr %P3, i32 %i.0, !dbg !2347
  call void @MATRIX_MUL_MxV_VxM(ptr noundef nonnull %TMP, ptr noundef nonnull %Sd, ptr noundef %arrayidx) #4, !dbg !2348
  %arrayidx17 = getelementptr inbounds nuw [18 x [3 x [18 x i8]]], ptr %P3, i32 %i.0, !dbg !2349
  call void @MATRIX_MUL_ADD_MxV_VxM(ptr noundef nonnull %SdT, ptr noundef nonnull %Pi2, ptr noundef %arrayidx17) #4, !dbg !2350
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2351
    #dbg_value(i32 %inc, !2333, !DIExpression(), !2335)
  br label %for.cond, !dbg !2352, !llvm.loop !2353

for.end:                                          ; preds = %for.cond
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call) #4, !dbg !2355
  call void @OPENSSL_cleanse(ptr noundef nonnull %TMP, i32 noundef 2808) #4, !dbg !2356
  call void @OPENSSL_cleanse(ptr noundef nonnull %Sd, i32 noundef 2808) #4, !dbg !2357
  call void @OPENSSL_cleanse(ptr noundef nonnull %SdT, i32 noundef 2808) #4, !dbg !2358
  ret void, !dbg !2359
}

; Function Attrs: nounwind
define internal fastcc void @Expand_sk(ptr noundef %seed_sk, ptr noundef nonnull %Sd, ptr noundef nonnull %SdT) unnamed_addr #0 !dbg !2360 {
entry:
  %r2 = alloca [2916 x i8], align 1
    #dbg_value(ptr %seed_sk, !2365, !DIExpression(), !2366)
    #dbg_value(ptr %Sd, !2367, !DIExpression(), !2366)
    #dbg_value(ptr %SdT, !2368, !DIExpression(), !2366)
    #dbg_value(i32 2808, !2369, !DIExpression(), !2366)
    #dbg_declare(ptr %r2, !2371, !DIExpression(), !2375)
  %call = call fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed_sk) #4, !dbg !2376
    #dbg_value(ptr %call, !2377, !DIExpression(), !2366)
  call fastcc void @RejSampPRG_aes_ctr(ptr noundef %call, i64 noundef 0, i32 noundef 2808, i32 noundef 2916, ptr noundef nonnull %r2) #4, !dbg !2378
  call fastcc void @ExpandMatrixVxM(ptr noundef nonnull %r2, ptr noundef %Sd) #4, !dbg !2379
  call void @MATRIX_TRANSPOSE_VxM(ptr noundef nonnull %Sd, ptr noundef nonnull %SdT) #4, !dbg !2380
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call) #4, !dbg !2381
  call void @OPENSSL_cleanse(ptr noundef nonnull %r2, i32 noundef 2916) #4, !dbg !2382
  ret void, !dbg !2383
}

; Function Attrs: nounwind
define internal fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed) unnamed_addr #0 !dbg !2384 {
entry:
    #dbg_value(ptr %seed, !2387, !DIExpression(), !2388)
  %call = call ptr @EVP_CIPHER_CTX_new() #4, !dbg !2389
    #dbg_value(ptr %call, !2390, !DIExpression(), !2388)
  %call1 = call ptr @EVP_aes_128_ctr() #4, !dbg !2391
  %call2 = call i32 @EVP_EncryptInit_ex(ptr noundef %call, ptr noundef nonnull @aes_128_ctr, ptr noundef null, ptr noundef %seed, ptr noundef null) #4, !dbg !2392
  ret ptr %call, !dbg !2393
}

; Function Attrs: nounwind
define internal fastcc void @Expand_pk(ptr noundef %ctx0, i64 noundef range(i64 -2147483648, 54) %index, ptr noundef nonnull %Pi1, ptr noundef nonnull %Pi2) unnamed_addr #0 !dbg !2394 {
entry:
  %r1 = alloca [4267 x i8], align 1
  %r2 = alloca [2916 x i8], align 1
    #dbg_value(ptr %ctx0, !2397, !DIExpression(), !2398)
    #dbg_value(i64 %index, !2399, !DIExpression(), !2398)
    #dbg_value(ptr %Pi1, !2400, !DIExpression(), !2398)
    #dbg_value(ptr %Pi2, !2401, !DIExpression(), !2398)
    #dbg_value(i32 4134, !2402, !DIExpression(), !2398)
    #dbg_value(i32 2808, !2403, !DIExpression(), !2398)
    #dbg_declare(ptr %r1, !2404, !DIExpression(), !2408)
    #dbg_declare(ptr %r2, !2409, !DIExpression(), !2410)
  %call = call fastcc ptr @PRG_copy_aes_ctr(ptr noundef %ctx0) #4, !dbg !2411
    #dbg_value(ptr %call, !2412, !DIExpression(), !2398)
  %mul = shl nsw i64 %index, 1, !dbg !2413
  call fastcc void @RejSampPRG_aes_ctr(ptr noundef %call, i64 noundef %mul, i32 noundef 4134, i32 noundef 4267, ptr noundef nonnull %r1) #4, !dbg !2414
  call fastcc void @ExpandSymmetricMatrixVxV(ptr noundef nonnull %r1, ptr noundef %Pi1) #4, !dbg !2415
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call) #4, !dbg !2416
  %call2 = call fastcc ptr @PRG_copy_aes_ctr(ptr noundef %ctx0) #4, !dbg !2417
    #dbg_value(ptr %call2, !2418, !DIExpression(), !2398)
  %mul3 = shl nsw i64 %index, 1, !dbg !2419
  %add = or disjoint i64 %mul3, 1, !dbg !2420
  call fastcc void @RejSampPRG_aes_ctr(ptr noundef %call2, i64 noundef %add, i32 noundef 2808, i32 noundef 2916, ptr noundef nonnull %r2) #4, !dbg !2421
  call fastcc void @ExpandMatrixVxM(ptr noundef nonnull %r2, ptr noundef %Pi2) #4, !dbg !2422
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call2) #4, !dbg !2423
  ret void, !dbg !2424
}

; Function Attrs: nounwind
define internal fastcc void @PRG_final_aes_ctr(ptr noundef %ctx) unnamed_addr #0 !dbg !2425 {
entry:
    #dbg_value(ptr %ctx, !2428, !DIExpression(), !2429)
  call void @EVP_CIPHER_CTX_free(ptr noundef %ctx) #4, !dbg !2430
  ret void, !dbg !2431
}

; Function Attrs: nounwind
define internal fastcc ptr @PRG_copy_aes_ctr(ptr noundef %src) unnamed_addr #0 !dbg !2432 {
entry:
    #dbg_value(ptr %src, !2435, !DIExpression(), !2436)
  %call = call ptr @EVP_CIPHER_CTX_new() #4, !dbg !2437
    #dbg_value(ptr %call, !2438, !DIExpression(), !2436)
  %call1 = call i32 @EVP_CIPHER_CTX_copy(ptr noundef %call, ptr noundef %src) #4, !dbg !2439
  ret ptr %call, !dbg !2440
}

; Function Attrs: nounwind
define internal fastcc void @RejSampPRG_aes_ctr(ptr noundef %ctx, i64 noundef %index, i32 noundef range(i32 54, 4135) %length, i32 noundef range(i32 82, 4268) %tau, ptr noundef nonnull %dst) unnamed_addr #0 !dbg !2441 {
entry:
  %out_len = alloca i32, align 4
  %iv = alloca [16 x i8], align 1
    #dbg_value(ptr %ctx, !2444, !DIExpression(), !2445)
    #dbg_value(i64 %index, !2446, !DIExpression(), !2445)
    #dbg_value(i32 %length, !2447, !DIExpression(), !2445)
    #dbg_value(i32 %tau, !2448, !DIExpression(), !2445)
    #dbg_value(ptr %dst, !2449, !DIExpression(), !2445)
    #dbg_declare(ptr %iv, !2450, !DIExpression(), !2451)
  call void @qruov_memset(ptr %iv, i8 0, i32 16), !dbg !2451
  call fastcc void @save64(i64 noundef %index, ptr noundef nonnull %iv) #4, !dbg !2452
  %call = call i32 @EVP_EncryptInit_ex(ptr noundef %ctx, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %iv) #4, !dbg !2453
  %call2 = call ptr @memset(ptr noundef nonnull %dst, i32 noundef 0, i32 noundef %tau) #6, !dbg !2454
    #dbg_value(ptr %out_len, !2455, !DIExpression(DW_OP_deref), !2445)
  %call3 = call i32 @EVP_EncryptUpdate(ptr noundef %ctx, ptr noundef nonnull %dst, ptr noundef nonnull %out_len, ptr noundef nonnull %dst, i32 noundef %tau) #4, !dbg !2456
  call fastcc void @RejSamp(i32 noundef %length, i32 noundef %tau, ptr noundef %dst) #4, !dbg !2457
  ret void, !dbg !2458
}

; Function Attrs: nounwind
define internal fastcc void @ExpandSymmetricMatrixVxV(ptr noundef nonnull %src, ptr noundef nonnull %A) unnamed_addr #0 !dbg !2459 {
entry:
    #dbg_value(ptr %src, !2462, !DIExpression(), !2463)
    #dbg_value(ptr %A, !2464, !DIExpression(), !2463)
    #dbg_value(ptr %src, !2465, !DIExpression(), !2463)
    #dbg_value(i32 0, !2466, !DIExpression(), !2468)
  br label %for.cond, !dbg !2469

for.cond:                                         ; preds = %for.end25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.end25 ], !dbg !2470
  %s.0 = phi ptr [ %src, %entry ], [ %s.1.lcssa, %for.end25 ], !dbg !2471
    #dbg_value(ptr %s.0, !2465, !DIExpression(), !2463)
    #dbg_value(i32 %i.0, !2466, !DIExpression(), !2468)
  %exitcond4 = icmp ne i32 %i.0, 52, !dbg !2472
  br i1 %exitcond4, label %for.cond1.preheader, label %for.end29, !dbg !2474

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2475

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc23
  %j.0 = phi i32 [ %inc24, %for.inc23 ], [ 0, %for.cond1.preheader ], !dbg !2478
  %s.1 = phi ptr [ %s.3, %for.inc23 ], [ %s.0, %for.cond1.preheader ], !dbg !2471
    #dbg_value(ptr %s.1, !2465, !DIExpression(), !2463)
    #dbg_value(i32 %j.0, !2479, !DIExpression(), !2480)
  %exitcond3 = icmp ne i32 %j.0, 52, !dbg !2481
  br i1 %exitcond3, label %for.body3, label %for.end25, !dbg !2475

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp ult i32 %j.0, %i.0, !dbg !2483
  br i1 %cmp4, label %for.cond5.preheader, label %for.cond14.preheader, !dbg !2483

for.cond14.preheader:                             ; preds = %for.body3
  br label %for.cond14, !dbg !2486

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !2489

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2492
    #dbg_value(i32 %k.0, !2493, !DIExpression(), !2494)
  %exitcond2 = icmp ne i32 %k.0, 3, !dbg !2495
  br i1 %exitcond2, label %for.body7, label %for.inc23.loopexit, !dbg !2489

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds [3 x [52 x i8]], ptr %A, i32 %j.0, i32 %k.0, i32 %i.0, !dbg !2497
  %0 = load i8, ptr %arrayidx9, align 1, !dbg !2497
  %arrayidx12 = getelementptr inbounds [3 x [52 x i8]], ptr %A, i32 %i.0, i32 %k.0, i32 %j.0, !dbg !2498
  store i8 %0, ptr %arrayidx12, align 1, !dbg !2499
  %inc = add nuw nsw i32 %k.0, 1, !dbg !2500
    #dbg_value(i32 %inc, !2493, !DIExpression(), !2494)
  br label %for.cond5, !dbg !2501, !llvm.loop !2502

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %s.2 = phi ptr [ %incdec.ptr, %for.body16 ], [ %s.1, %for.cond14.preheader ], !dbg !2463
  %k13.0 = phi i32 [ %inc21, %for.body16 ], [ 0, %for.cond14.preheader ], !dbg !2504
    #dbg_value(i32 %k13.0, !2505, !DIExpression(), !2506)
    #dbg_value(ptr %s.2, !2465, !DIExpression(), !2463)
  %exitcond = icmp ne i32 %k13.0, 3, !dbg !2507
  br i1 %exitcond, label %for.body16, label %for.inc23.loopexit1, !dbg !2486

for.body16:                                       ; preds = %for.cond14
    #dbg_value(ptr %s.2, !2465, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2463)
  %1 = load i8, ptr %s.2, align 1, !dbg !2509
  %arrayidx19 = getelementptr inbounds [3 x [52 x i8]], ptr %A, i32 %i.0, i32 %k13.0, i32 %j.0, !dbg !2510
  store i8 %1, ptr %arrayidx19, align 1, !dbg !2511
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.2, i32 1, !dbg !2512
    #dbg_value(ptr %incdec.ptr, !2465, !DIExpression(), !2463)
  %inc21 = add nuw nsw i32 %k13.0, 1, !dbg !2513
    #dbg_value(i32 %inc21, !2505, !DIExpression(), !2506)
  br label %for.cond14, !dbg !2514, !llvm.loop !2515

for.inc23.loopexit:                               ; preds = %for.cond5
  br label %for.inc23, !dbg !2517

for.inc23.loopexit1:                              ; preds = %for.cond14
  %s.2.lcssa = phi ptr [ %s.2, %for.cond14 ], !dbg !2463
  br label %for.inc23, !dbg !2517

for.inc23:                                        ; preds = %for.inc23.loopexit1, %for.inc23.loopexit
  %s.3 = phi ptr [ %s.1, %for.inc23.loopexit ], [ %s.2.lcssa, %for.inc23.loopexit1 ], !dbg !2471
    #dbg_value(ptr %s.3, !2465, !DIExpression(), !2463)
  %inc24 = add nuw nsw i32 %j.0, 1, !dbg !2517
    #dbg_value(i32 %inc24, !2479, !DIExpression(), !2480)
  br label %for.cond1, !dbg !2518, !llvm.loop !2519

for.end25:                                        ; preds = %for.cond1
  %s.1.lcssa = phi ptr [ %s.1, %for.cond1 ], !dbg !2471
  %arrayidx26 = getelementptr inbounds [3 x [52 x i8]], ptr %A, i32 %i.0, !dbg !2521
  call fastcc void @VECTOR_V_CLEAR_TAIL(ptr noundef %arrayidx26) #4, !dbg !2522
  %inc28 = add nuw nsw i32 %i.0, 1, !dbg !2523
    #dbg_value(i32 %inc28, !2466, !DIExpression(), !2468)
  br label %for.cond, !dbg !2524, !llvm.loop !2525

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !2527
}

; Function Attrs: nounwind
define internal fastcc void @ExpandMatrixVxM(ptr noundef nonnull %src, ptr noundef nonnull %A) unnamed_addr #0 !dbg !2528 {
entry:
    #dbg_value(ptr %src, !2531, !DIExpression(), !2532)
    #dbg_value(ptr %A, !2533, !DIExpression(), !2532)
    #dbg_value(ptr %src, !2534, !DIExpression(), !2532)
    #dbg_value(i32 0, !2535, !DIExpression(), !2537)
  br label %for.cond, !dbg !2538

for.cond:                                         ; preds = %for.end11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.end11 ], !dbg !2539
  %s.0 = phi ptr [ %src, %entry ], [ %s.1.lcssa, %for.end11 ], !dbg !2540
    #dbg_value(ptr %s.0, !2534, !DIExpression(), !2532)
    #dbg_value(i32 %i.0, !2535, !DIExpression(), !2537)
  %exitcond2 = icmp ne i32 %i.0, 52, !dbg !2541
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end15, !dbg !2543

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2544

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc9
  %s.1 = phi ptr [ %s.2.lcssa, %for.inc9 ], [ %s.0, %for.cond1.preheader ], !dbg !2540
  %j.0 = phi i32 [ %inc10, %for.inc9 ], [ 0, %for.cond1.preheader ], !dbg !2547
    #dbg_value(i32 %j.0, !2548, !DIExpression(), !2549)
    #dbg_value(ptr %s.1, !2534, !DIExpression(), !2532)
  %exitcond1 = icmp ne i32 %j.0, 18, !dbg !2550
  br i1 %exitcond1, label %for.cond4.preheader, label %for.end11, !dbg !2544

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2552

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %s.2 = phi ptr [ %incdec.ptr, %for.body6 ], [ %s.1, %for.cond4.preheader ], !dbg !2532
  %k.0 = phi i32 [ %inc, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2555
    #dbg_value(i32 %k.0, !2556, !DIExpression(), !2557)
    #dbg_value(ptr %s.2, !2534, !DIExpression(), !2532)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !2558
  br i1 %exitcond, label %for.body6, label %for.inc9, !dbg !2552

for.body6:                                        ; preds = %for.cond4
    #dbg_value(ptr %s.2, !2534, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2532)
  %0 = load i8, ptr %s.2, align 1, !dbg !2560
  %arrayidx8 = getelementptr inbounds [3 x [18 x i8]], ptr %A, i32 %i.0, i32 %k.0, i32 %j.0, !dbg !2562
  store i8 %0, ptr %arrayidx8, align 1, !dbg !2563
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.2, i32 1, !dbg !2564
    #dbg_value(ptr %incdec.ptr, !2534, !DIExpression(), !2532)
  %inc = add nuw nsw i32 %k.0, 1, !dbg !2565
    #dbg_value(i32 %inc, !2556, !DIExpression(), !2557)
  br label %for.cond4, !dbg !2566, !llvm.loop !2567

for.inc9:                                         ; preds = %for.cond4
  %s.2.lcssa = phi ptr [ %s.2, %for.cond4 ], !dbg !2532
  %inc10 = add nuw nsw i32 %j.0, 1, !dbg !2569
    #dbg_value(i32 %inc10, !2548, !DIExpression(), !2549)
  br label %for.cond1, !dbg !2570, !llvm.loop !2571

for.end11:                                        ; preds = %for.cond1
  %s.1.lcssa = phi ptr [ %s.1, %for.cond1 ], !dbg !2540
  %arrayidx12 = getelementptr inbounds [3 x [18 x i8]], ptr %A, i32 %i.0, !dbg !2573
  call fastcc void @VECTOR_M_CLEAR_TAIL(ptr noundef %arrayidx12) #4, !dbg !2574
  %inc14 = add nuw nsw i32 %i.0, 1, !dbg !2575
    #dbg_value(i32 %inc14, !2535, !DIExpression(), !2537)
  br label %for.cond, !dbg !2576, !llvm.loop !2577

for.end15:                                        ; preds = %for.cond
  ret void, !dbg !2579
}

; Function Attrs: nounwind
define internal fastcc void @VECTOR_M_CLEAR_TAIL(ptr noundef nonnull %C) unnamed_addr #0 !dbg !2580 {
entry:
    #dbg_value(ptr %C, !2584, !DIExpression(), !2585)
    #dbg_value(i32 0, !2586, !DIExpression(), !2588)
  br label %for.cond, !dbg !2589

for.cond:                                         ; preds = %for.body, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2590
    #dbg_value(i32 %k.0, !2586, !DIExpression(), !2588)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !2591
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2593

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [18 x i8], ptr %C, i32 %k.0, !dbg !2594
  %add.ptr = getelementptr inbounds nuw i8, ptr %arrayidx, i32 18, !dbg !2595
  %call = call ptr @memset(ptr noundef nonnull %add.ptr, i32 noundef 0, i32 noundef 0) #6, !dbg !2596
  %inc = add nuw nsw i32 %k.0, 1, !dbg !2597
    #dbg_value(i32 %inc, !2586, !DIExpression(), !2588)
  br label %for.cond, !dbg !2598, !llvm.loop !2599

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2601
}

; Function Attrs: nounwind
define internal fastcc void @VECTOR_V_CLEAR_TAIL(ptr noundef nonnull %C) unnamed_addr #0 !dbg !2602 {
entry:
    #dbg_value(ptr %C, !2606, !DIExpression(), !2607)
    #dbg_value(i32 0, !2608, !DIExpression(), !2610)
  br label %for.cond, !dbg !2611

for.cond:                                         ; preds = %for.body, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2612
    #dbg_value(i32 %k.0, !2608, !DIExpression(), !2610)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !2613
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2615

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [52 x i8], ptr %C, i32 %k.0, !dbg !2616
  %add.ptr = getelementptr inbounds nuw i8, ptr %arrayidx, i32 52, !dbg !2617
  %call = call ptr @memset(ptr noundef nonnull %add.ptr, i32 noundef 0, i32 noundef 0) #6, !dbg !2618
  %inc = add nuw nsw i32 %k.0, 1, !dbg !2619
    #dbg_value(i32 %inc, !2608, !DIExpression(), !2610)
  br label %for.cond, !dbg !2620, !llvm.loop !2621

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2623
}

; Function Attrs: nounwind
define internal fastcc void @save64(i64 noundef %s, ptr noundef nonnull %dst) unnamed_addr #0 !dbg !2624 {
entry:
    #dbg_value(ptr undef, !2627, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2628)
    #dbg_value(ptr undef, !2627, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2628)
    #dbg_value(ptr undef, !2627, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2628)
    #dbg_value(ptr undef, !2627, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2628)
  %s.addr.sroa.0.0.extract.trunc = trunc i64 %s to i8
    #dbg_value(i8 %s.addr.sroa.0.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2628)
  %s.addr.sroa.2.0.extract.shift = lshr i64 %s, 8
  %s.addr.sroa.2.0.extract.trunc = trunc i64 %s.addr.sroa.2.0.extract.shift to i8
    #dbg_value(i8 %s.addr.sroa.2.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2628)
  %s.addr.sroa.3.0.extract.shift = lshr i64 %s, 16
  %s.addr.sroa.3.0.extract.trunc = trunc i64 %s.addr.sroa.3.0.extract.shift to i8
    #dbg_value(i8 %s.addr.sroa.3.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2628)
  %s.addr.sroa.4.0.extract.shift = lshr i64 %s, 24
  %s.addr.sroa.4.0.extract.trunc = trunc i64 %s.addr.sroa.4.0.extract.shift to i8
    #dbg_value(i8 %s.addr.sroa.4.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2628)
  %s.addr.sroa.5.0.extract.shift = lshr i64 %s, 32
  %s.addr.sroa.5.0.extract.trunc = trunc i64 %s.addr.sroa.5.0.extract.shift to i8
    #dbg_value(i8 %s.addr.sroa.5.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !2628)
  %s.addr.sroa.6.0.extract.shift = lshr i64 %s, 40
  %s.addr.sroa.6.0.extract.trunc = trunc i64 %s.addr.sroa.6.0.extract.shift to i8
    #dbg_value(i8 %s.addr.sroa.6.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !2628)
  %s.addr.sroa.7.0.extract.shift = lshr i64 %s, 48
  %s.addr.sroa.7.0.extract.trunc = trunc i64 %s.addr.sroa.7.0.extract.shift to i8
    #dbg_value(i8 %s.addr.sroa.7.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !2628)
  %s.addr.sroa.8.0.extract.shift = lshr i64 %s, 56
  %s.addr.sroa.8.0.extract.trunc = trunc nuw i64 %s.addr.sroa.8.0.extract.shift to i8
    #dbg_value(i8 %s.addr.sroa.8.0.extract.trunc, !2629, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !2628)
    #dbg_value(ptr %dst, !2630, !DIExpression(), !2628)
    #dbg_value(ptr undef, !2627, !DIExpression(), !2628)
  store i8 %s.addr.sroa.8.0.extract.trunc, ptr %dst, align 1, !dbg !2631
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %dst, i32 1, !dbg !2632
  store i8 %s.addr.sroa.7.0.extract.trunc, ptr %arrayidx3, align 1, !dbg !2633
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %dst, i32 2, !dbg !2634
  store i8 %s.addr.sroa.6.0.extract.trunc, ptr %arrayidx5, align 1, !dbg !2635
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %dst, i32 3, !dbg !2636
  store i8 %s.addr.sroa.5.0.extract.trunc, ptr %arrayidx7, align 1, !dbg !2637
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %dst, i32 4, !dbg !2638
  store i8 %s.addr.sroa.4.0.extract.trunc, ptr %arrayidx9, align 1, !dbg !2639
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %dst, i32 5, !dbg !2640
  store i8 %s.addr.sroa.3.0.extract.trunc, ptr %arrayidx11, align 1, !dbg !2641
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %dst, i32 6, !dbg !2642
  store i8 %s.addr.sroa.2.0.extract.trunc, ptr %arrayidx13, align 1, !dbg !2643
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %dst, i32 7, !dbg !2644
  store i8 %s.addr.sroa.0.0.extract.trunc, ptr %arrayidx15, align 1, !dbg !2645
  ret void, !dbg !2646
}

; Function Attrs: nounwind
define internal fastcc void @RejSamp(i32 noundef range(i32 54, 4135) %length, i32 noundef range(i32 82, 4268) %tau, ptr noundef nonnull %dst) unnamed_addr #0 !dbg !2647 {
entry:
    #dbg_value(i32 %length, !2650, !DIExpression(), !2651)
    #dbg_value(i32 %tau, !2652, !DIExpression(), !2651)
    #dbg_value(ptr %dst, !2653, !DIExpression(), !2651)
  call fastcc void @rejsamp_and_q(i32 noundef %tau, ptr noundef %dst) #4, !dbg !2654
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst, i32 %length, !dbg !2655
  call fastcc void @rejsamp_rejection_with_aux(i32 noundef %length, ptr noundef %add.ptr, ptr noundef %dst) #4, !dbg !2656
  ret void, !dbg !2657
}

; Function Attrs: nounwind
define internal fastcc void @rejsamp_and_q(i32 noundef range(i32 82, 4268) %tau, ptr noundef nonnull %dst) unnamed_addr #0 !dbg !2658 {
entry:
    #dbg_value(i32 %tau, !2661, !DIExpression(), !2662)
    #dbg_value(ptr %dst, !2663, !DIExpression(), !2662)
    #dbg_value(i32 0, !2664, !DIExpression(), !2666)
  br label %for.cond, !dbg !2667

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2668
    #dbg_value(i32 %i.0, !2664, !DIExpression(), !2666)
  %exitcond = icmp ne i32 %i.0, %tau, !dbg !2669
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2671

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !2672
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2674
  %1 = and i8 %0, 127, !dbg !2674
  store i8 %1, ptr %arrayidx, align 1, !dbg !2674
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2675
    #dbg_value(i32 %inc, !2664, !DIExpression(), !2666)
  br label %for.cond, !dbg !2676, !llvm.loop !2677

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2679
}

; Function Attrs: nounwind
define internal fastcc void @rejsamp_rejection_with_aux(i32 noundef range(i32 54, 4135) %length, ptr noundef nonnull %aux, ptr noundef nonnull %dst) unnamed_addr #0 !dbg !2680 {
entry:
    #dbg_value(i32 %length, !2683, !DIExpression(), !2684)
    #dbg_value(ptr %aux, !2685, !DIExpression(), !2684)
    #dbg_value(ptr %dst, !2686, !DIExpression(), !2684)
  br label %while.cond, !dbg !2687

while.cond:                                       ; preds = %while.body, %entry
  %aux.addr.0 = phi ptr [ %aux, %entry ], [ %incdec.ptr, %while.body ]
    #dbg_value(ptr %aux.addr.0, !2685, !DIExpression(), !2684)
  %0 = load i8, ptr %aux.addr.0, align 1, !dbg !2688
  %cmp = icmp eq i8 %0, 127, !dbg !2689
  br i1 %cmp, label %while.body, label %for.cond.preheader, !dbg !2687

for.cond.preheader:                               ; preds = %while.cond
  %aux.addr.0.lcssa = phi ptr [ %aux.addr.0, %while.cond ]
  br label %for.cond, !dbg !2690

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %aux.addr.0, i32 1, !dbg !2692
    #dbg_value(ptr %incdec.ptr, !2685, !DIExpression(), !2684)
  br label %while.cond, !dbg !2687, !llvm.loop !2693

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %dst.addr.0 = phi ptr [ %incdec.ptr15, %for.inc ], [ %dst, %for.cond.preheader ]
  %aux.addr.1 = phi ptr [ %aux.addr.3, %for.inc ], [ %aux.addr.0.lcssa, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2694
    #dbg_value(i32 %i.0, !2695, !DIExpression(), !2696)
    #dbg_value(ptr %aux.addr.1, !2685, !DIExpression(), !2684)
    #dbg_value(ptr %dst.addr.0, !2686, !DIExpression(), !2684)
  %exitcond = icmp ne i32 %i.0, %length, !dbg !2697
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2690

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %dst.addr.0, align 1, !dbg !2699
  %cmp5 = icmp eq i8 %1, 127, !dbg !2702
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !2702

if.then:                                          ; preds = %for.body
    #dbg_value(ptr %aux.addr.1, !2685, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2684)
  %2 = load i8, ptr %aux.addr.1, align 1, !dbg !2703
  store i8 %2, ptr %dst.addr.0, align 1, !dbg !2705
  br label %while.cond8, !dbg !2706

while.cond8:                                      ; preds = %while.cond8, %if.then
  %aux.addr.1.pn = phi ptr [ %aux.addr.1, %if.then ], [ %aux.addr.2, %while.cond8 ]
  %aux.addr.2 = getelementptr inbounds nuw i8, ptr %aux.addr.1.pn, i32 1, !dbg !2707
    #dbg_value(ptr %aux.addr.2, !2685, !DIExpression(), !2684)
  %3 = load i8, ptr %aux.addr.2, align 1, !dbg !2708
  %cmp10 = icmp eq i8 %3, 127, !dbg !2709
  br i1 %cmp10, label %while.cond8, label %for.inc.loopexit, !dbg !2706, !llvm.loop !2710

for.inc.loopexit:                                 ; preds = %while.cond8
  %aux.addr.2.lcssa = phi ptr [ %aux.addr.2, %while.cond8 ], !dbg !2707
  br label %for.inc, !dbg !2712

for.inc:                                          ; preds = %for.inc.loopexit, %for.body
  %aux.addr.3 = phi ptr [ %aux.addr.1, %for.body ], [ %aux.addr.2.lcssa, %for.inc.loopexit ]
    #dbg_value(ptr %aux.addr.3, !2685, !DIExpression(), !2684)
    #dbg_value(ptr %dst.addr.0, !2686, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2684)
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %dst.addr.0, i32 1, !dbg !2712
    #dbg_value(ptr %incdec.ptr15, !2686, !DIExpression(), !2684)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2713
    #dbg_value(i32 %inc, !2695, !DIExpression(), !2696)
  br label %for.cond, !dbg !2714, !llvm.loop !2715

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2717
}

; Function Attrs: nounwind
define dso_local void @QRUOV_Sign(ptr noundef %seed_sk, ptr noundef %seed_pk, ptr noundef %seed_y, ptr noundef %seed_r, ptr noundef %seed_sol, ptr noundef %message, i32 noundef %message_length, ptr noundef %sig) local_unnamed_addr #0 !dbg !2718 {
entry:
  %echelon_perm = alloca [54 x i32], align 4
  %echelon_rank = alloca i32, align 4
  %echelon_index = alloca [54 x i32], align 4
  %oil = alloca [3 x [18 x i8]], align 1
  %oil_u = alloca [54 x i8], align 1
  %b = alloca [54 x i8], align 1
  %b2 = alloca [54 x i8], align 1
  %c = alloca [54 x i8], align 1
  %eqn = alloca [54 x [54 x i8]], align 1
  %R = alloca [54 x [54 x i8]], align 1
  %cacheR = alloca i32, align 4
  %msg = alloca [54 x i8], align 1
  %Sd = alloca [52 x [3 x [18 x i8]]], align 1
  %SdT = alloca [18 x [3 x [52 x i8]]], align 1
  %Pi1 = alloca [52 x [3 x [52 x i8]]], align 1
  %Pi2 = alloca [52 x [3 x [18 x i8]]], align 1
  %y = alloca [3 x [52 x i8]], align 1
  %yT_Pi1 = alloca [3 x [52 x i8]], align 1
  %yT_Pi1_Sd = alloca [3 x [18 x i8]], align 1
  %yT_Pi2 = alloca [3 x [18 x i8]], align 1
  %yT_Fi2 = alloca [3 x [18 x i8]], align 1
  %yT_Fi1_j = alloca [3 x i8], align 1
  %y_j = alloca [3 x i8], align 1
  %yT_Fi1_j_y_j = alloca [3 x i8], align 1
  %mu = alloca [64 x i8], align 1
    #dbg_value(ptr %seed_sk, !2722, !DIExpression(), !2723)
    #dbg_value(ptr %seed_pk, !2724, !DIExpression(), !2723)
    #dbg_value(ptr %seed_y, !2725, !DIExpression(), !2723)
    #dbg_value(ptr %seed_r, !2726, !DIExpression(), !2723)
    #dbg_value(ptr %seed_sol, !2727, !DIExpression(), !2723)
    #dbg_value(ptr %message, !2728, !DIExpression(), !2723)
    #dbg_value(i32 %message_length, !2729, !DIExpression(), !2723)
    #dbg_value(ptr %sig, !2730, !DIExpression(), !2723)
    #dbg_declare(ptr %echelon_perm, !2731, !DIExpression(), !2733)
    #dbg_declare(ptr %echelon_index, !2734, !DIExpression(), !2735)
    #dbg_declare(ptr %oil, !2736, !DIExpression(), !2737)
    #dbg_declare(ptr %oil_u, !2738, !DIExpression(), !2740)
    #dbg_declare(ptr %b, !2741, !DIExpression(), !2742)
    #dbg_declare(ptr %b2, !2743, !DIExpression(), !2744)
    #dbg_declare(ptr %c, !2745, !DIExpression(), !2746)
    #dbg_declare(ptr %eqn, !2747, !DIExpression(), !2750)
    #dbg_declare(ptr %R, !2751, !DIExpression(), !2752)
    #dbg_value(i32 0, !2753, !DIExpression(), !2723)
  store i32 0, ptr %cacheR, align 4, !dbg !2754
    #dbg_declare(ptr %msg, !2755, !DIExpression(), !2756)
    #dbg_declare(ptr %Sd, !2757, !DIExpression(), !2758)
    #dbg_declare(ptr %SdT, !2759, !DIExpression(), !2760)
    #dbg_declare(ptr %Pi1, !2761, !DIExpression(), !2762)
    #dbg_declare(ptr %Pi2, !2763, !DIExpression(), !2764)
    #dbg_declare(ptr %y, !2765, !DIExpression(), !2766)
    #dbg_value(ptr %y, !2767, !DIExpression(), !2723)
    #dbg_declare(ptr %yT_Pi1, !2768, !DIExpression(), !2769)
    #dbg_value(ptr %yT_Pi1, !2770, !DIExpression(), !2723)
    #dbg_declare(ptr %yT_Pi1_Sd, !2771, !DIExpression(), !2772)
    #dbg_declare(ptr %yT_Pi2, !2773, !DIExpression(), !2774)
    #dbg_declare(ptr %yT_Fi2, !2775, !DIExpression(), !2776)
  call fastcc void @Expand_sk(ptr noundef %seed_sk, ptr noundef nonnull %Sd, ptr noundef nonnull %SdT) #4, !dbg !2777
  call fastcc void @Expand_y(ptr noundef %seed_y, ptr noundef nonnull %y) #4, !dbg !2778
  %call = call fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed_pk) #4, !dbg !2779
    #dbg_value(ptr %call, !2780, !DIExpression(), !2723)
    #dbg_value(i32 0, !2781, !DIExpression(), !2783)
  br label %for.cond, !dbg !2784

for.cond:                                         ; preds = %for.end70, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc74, %for.end70 ], !dbg !2785
    #dbg_value(i32 %i.0, !2781, !DIExpression(), !2783)
  %exitcond5 = icmp ne i32 %i.0, 54, !dbg !2786
  br i1 %exitcond5, label %for.body, label %for.end75, !dbg !2788

for.body:                                         ; preds = %for.cond
  %conv = zext nneg i32 %i.0 to i64, !dbg !2789
  call fastcc void @Expand_pk(ptr noundef %call, i64 noundef %conv, ptr noundef nonnull %Pi1, ptr noundef nonnull %Pi2) #4, !dbg !2791
  call void @VECTOR_V_MUL_SYMMETRIC_MATRIX_VxV(ptr noundef nonnull %y, ptr noundef nonnull %Pi1, ptr noundef nonnull %yT_Pi1) #4, !dbg !2792
  call void @VECTOR_V_MUL_MATRIX_VxM(ptr noundef nonnull %yT_Pi1, ptr noundef nonnull %Sd, ptr noundef nonnull %yT_Pi1_Sd) #4, !dbg !2793
  call void @VECTOR_V_MUL_MATRIX_VxM(ptr noundef nonnull %y, ptr noundef nonnull %Pi2, ptr noundef nonnull %yT_Pi2) #4, !dbg !2794
  call void @VECTOR_M_SUB(ptr noundef nonnull %yT_Pi2, ptr noundef nonnull %yT_Pi1_Sd, ptr noundef nonnull %yT_Fi2) #4, !dbg !2795
    #dbg_value(i32 0, !2796, !DIExpression(), !2798)
  br label %for.cond16, !dbg !2799

for.cond16:                                       ; preds = %for.inc31, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc32, %for.inc31 ], !dbg !2800
    #dbg_value(i32 %j.0, !2796, !DIExpression(), !2798)
  %exitcond1 = icmp ne i32 %j.0, 18, !dbg !2801
  br i1 %exitcond1, label %for.cond20.preheader, label %for.cond35.preheader, !dbg !2803

for.cond35.preheader:                             ; preds = %for.cond16
  br label %for.cond35, !dbg !2804

for.cond20.preheader:                             ; preds = %for.cond16
  br label %for.cond20, !dbg !2807

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body23
  %k.0 = phi i32 [ %inc, %for.body23 ], [ 0, %for.cond20.preheader ], !dbg !2810
    #dbg_value(i32 %k.0, !2811, !DIExpression(), !2812)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !2813
  br i1 %exitcond, label %for.body23, label %for.inc31, !dbg !2807

for.body23:                                       ; preds = %for.cond20
  %cmp24 = icmp eq i32 %k.0, 0, !dbg !2815
  %sub26 = sub nuw nsw i32 3, %k.0, !dbg !2815
  %cond = select i1 %cmp24, i32 0, i32 %sub26, !dbg !2815
  %arrayidx27 = getelementptr inbounds [3 x [18 x i8]], ptr %yT_Fi2, i32 0, i32 %cond, i32 %j.0, !dbg !2817
  %0 = load i8, ptr %arrayidx27, align 1, !dbg !2817
    #dbg_value(i8 %0, !2818, !DIExpression(), !2819)
  %call28 = call fastcc zeroext i8 @Fq_add(i8 noundef zeroext %0, i8 noundef zeroext %0) #4, !dbg !2820
  %mul = mul nuw nsw i32 %j.0, 3, !dbg !2821
  %add = add nuw nsw i32 %mul, %k.0, !dbg !2822
  %arrayidx30 = getelementptr inbounds [54 x [54 x i8]], ptr %eqn, i32 0, i32 %i.0, i32 %add, !dbg !2823
  store i8 %call28, ptr %arrayidx30, align 1, !dbg !2824
  %inc = add nuw nsw i32 %k.0, 1, !dbg !2825
    #dbg_value(i32 %inc, !2811, !DIExpression(), !2812)
  br label %for.cond20, !dbg !2826, !llvm.loop !2827

for.inc31:                                        ; preds = %for.cond20
  %inc32 = add nuw nsw i32 %j.0, 1, !dbg !2829
    #dbg_value(i32 %inc32, !2796, !DIExpression(), !2798)
  br label %for.cond16, !dbg !2830, !llvm.loop !2831

for.cond35:                                       ; preds = %for.cond35.preheader, %for.end60
  %c_i.0 = phi i64 [ %add67, %for.end60 ], [ 0, %for.cond35.preheader ], !dbg !2833
  %j34.0 = phi i32 [ %inc69, %for.end60 ], [ 0, %for.cond35.preheader ], !dbg !2834
    #dbg_value(i32 %j34.0, !2835, !DIExpression(), !2836)
    #dbg_value(i64 %c_i.0, !2837, !DIExpression(), !2833)
  %exitcond4 = icmp ne i32 %j34.0, 52, !dbg !2838
  br i1 %exitcond4, label %for.cond40.preheader, label %for.end70, !dbg !2804

for.cond40.preheader:                             ; preds = %for.cond35
  br label %for.cond40, !dbg !2840

for.cond40:                                       ; preds = %for.cond40.preheader, %for.body43
  %k39.0 = phi i32 [ %inc48, %for.body43 ], [ 0, %for.cond40.preheader ], !dbg !2843
    #dbg_value(i32 %k39.0, !2844, !DIExpression(), !2845)
  %exitcond2 = icmp ne i32 %k39.0, 3, !dbg !2846
  br i1 %exitcond2, label %for.body43, label %for.cond51.preheader, !dbg !2840

for.cond51.preheader:                             ; preds = %for.cond40
  br label %for.cond51, !dbg !2848

for.body43:                                       ; preds = %for.cond40
  %arrayidx45 = getelementptr inbounds [52 x i8], ptr %yT_Pi1, i32 %k39.0, i32 %j34.0, !dbg !2850
  %1 = load i8, ptr %arrayidx45, align 1, !dbg !2850
  %arrayidx46 = getelementptr inbounds nuw [3 x i8], ptr %yT_Fi1_j, i32 0, i32 %k39.0, !dbg !2851
  store i8 %1, ptr %arrayidx46, align 1, !dbg !2852
  %inc48 = add nuw nsw i32 %k39.0, 1, !dbg !2853
    #dbg_value(i32 %inc48, !2844, !DIExpression(), !2845)
  br label %for.cond40, !dbg !2854, !llvm.loop !2855

for.cond51:                                       ; preds = %for.cond51.preheader, %for.body54
  %k50.0 = phi i32 [ %inc59, %for.body54 ], [ 0, %for.cond51.preheader ], !dbg !2857
    #dbg_value(i32 %k50.0, !2858, !DIExpression(), !2859)
  %exitcond3 = icmp ne i32 %k50.0, 3, !dbg !2860
  br i1 %exitcond3, label %for.body54, label %for.end60, !dbg !2848

for.body54:                                       ; preds = %for.cond51
  %arrayidx56 = getelementptr inbounds [3 x [52 x i8]], ptr %y, i32 0, i32 %k50.0, i32 %j34.0, !dbg !2862
  %2 = load i8, ptr %arrayidx56, align 1, !dbg !2862
  %arrayidx57 = getelementptr inbounds nuw [3 x i8], ptr %y_j, i32 0, i32 %k50.0, !dbg !2863
  store i8 %2, ptr %arrayidx57, align 1, !dbg !2864
  %inc59 = add nuw nsw i32 %k50.0, 1, !dbg !2865
    #dbg_value(i32 %inc59, !2858, !DIExpression(), !2859)
  br label %for.cond51, !dbg !2866, !llvm.loop !2867

for.end60:                                        ; preds = %for.cond51
    #dbg_declare(ptr %yT_Fi1_j_y_j, !2869, !DIExpression(), !2870)
  call fastcc void @Fql_mul(ptr noundef nonnull %yT_Fi1_j, ptr noundef nonnull %y_j, ptr noundef nonnull %yT_Fi1_j_y_j) #4, !dbg !2871
  %call65 = call fastcc zeroext i8 @Fql2Fq(ptr noundef nonnull %yT_Fi1_j_y_j, i32 noundef 0) #4, !dbg !2872
    #dbg_value(!DIArgList(i64 %c_i.0, i8 %call65), !2837, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !2833)
  %conv66 = zext i8 %call65 to i64, !dbg !2873
    #dbg_value(!DIArgList(i64 %c_i.0, i64 %conv66), !2837, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2833)
  %add67 = add i64 %c_i.0, %conv66, !dbg !2874
    #dbg_value(i64 %add67, !2837, !DIExpression(), !2833)
  %inc69 = add nuw nsw i32 %j34.0, 1, !dbg !2875
    #dbg_value(i32 %inc69, !2835, !DIExpression(), !2836)
  br label %for.cond35, !dbg !2876, !llvm.loop !2877

for.end70:                                        ; preds = %for.cond35
  %c_i.0.lcssa = phi i64 [ %c_i.0, %for.cond35 ], !dbg !2833
  %rem = urem i64 %c_i.0.lcssa, 127, !dbg !2879
  %conv71 = trunc nuw nsw i64 %rem to i8, !dbg !2880
  %arrayidx72 = getelementptr inbounds nuw [54 x i8], ptr %c, i32 0, i32 %i.0, !dbg !2881
  store i8 %conv71, ptr %arrayidx72, align 1, !dbg !2882
  %inc74 = add nuw nsw i32 %i.0, 1, !dbg !2883
    #dbg_value(i32 %inc74, !2781, !DIExpression(), !2783)
  br label %for.cond, !dbg !2884, !llvm.loop !2885

for.end75:                                        ; preds = %for.cond
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call) #4, !dbg !2887
    #dbg_value(ptr %echelon_rank, !2888, !DIExpression(DW_OP_deref), !2723)
  call fastcc void @LU_decompose(ptr noundef nonnull %eqn, ptr noundef nonnull %echelon_perm, ptr noundef nonnull %echelon_rank, ptr noundef nonnull %echelon_index) #4, !dbg !2889
    #dbg_declare(ptr %mu, !2890, !DIExpression(), !2892)
  call fastcc void @Expand_mu(ptr noundef %seed_pk, ptr noundef %message, i32 noundef %message_length, ptr noundef nonnull %mu) #4, !dbg !2893
  %call80 = call fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed_r) #4, !dbg !2894
    #dbg_value(ptr %call80, !2895, !DIExpression(), !2723)
  br label %do.body, !dbg !2896

do.body:                                          ; preds = %do.cond, %for.end75
  call fastcc void @PRG_yield_aes_ctr(ptr noundef %call80, i32 noundef 16, ptr noundef %sig) #4, !dbg !2897
  call fastcc void @Hash(ptr noundef nonnull %mu, ptr noundef %sig, ptr noundef nonnull %msg) #4, !dbg !2899
    #dbg_value(i32 0, !2900, !DIExpression(), !2902)
  br label %for.cond84, !dbg !2903

for.cond84:                                       ; preds = %for.body87, %do.body
  %i83.0 = phi i32 [ 0, %do.body ], [ %inc93, %for.body87 ], !dbg !2904
    #dbg_value(i32 %i83.0, !2900, !DIExpression(), !2902)
  %exitcond6 = icmp ne i32 %i83.0, 54, !dbg !2905
  br i1 %exitcond6, label %for.body87, label %do.cond, !dbg !2907

for.body87:                                       ; preds = %for.cond84
  %arrayidx88 = getelementptr inbounds nuw [54 x i8], ptr %msg, i32 0, i32 %i83.0, !dbg !2908
  %3 = load i8, ptr %arrayidx88, align 1, !dbg !2908
  %arrayidx89 = getelementptr inbounds nuw [54 x i8], ptr %c, i32 0, i32 %i83.0, !dbg !2909
  %4 = load i8, ptr %arrayidx89, align 1, !dbg !2909
  %call90 = call fastcc zeroext i8 @Fq_sub(i8 noundef zeroext %3, i8 noundef zeroext %4) #4, !dbg !2910
  %arrayidx91 = getelementptr inbounds nuw [54 x i8], ptr %b, i32 0, i32 %i83.0, !dbg !2911
  store i8 %call90, ptr %arrayidx91, align 1, !dbg !2912
  %inc93 = add nuw nsw i32 %i83.0, 1, !dbg !2913
    #dbg_value(i32 %inc93, !2900, !DIExpression(), !2902)
  br label %for.cond84, !dbg !2914, !llvm.loop !2915

do.cond:                                          ; preds = %for.cond84
  %5 = load i32, ptr %echelon_rank, align 4, !dbg !2917
    #dbg_value(i32 %5, !2888, !DIExpression(), !2723)
    #dbg_value(ptr %cacheR, !2753, !DIExpression(DW_OP_deref), !2723)
  %call99 = call fastcc i32 @consistent(ptr noundef nonnull %eqn, ptr noundef nonnull %echelon_perm, i32 noundef %5, ptr noundef nonnull %b, ptr noundef nonnull %cacheR, ptr noundef nonnull %R) #4, !dbg !2918
  %tobool.not = icmp eq i32 %call99, 0, !dbg !2919
  br i1 %tobool.not, label %do.body, label %do.end, !dbg !2920, !llvm.loop !2921

do.end:                                           ; preds = %do.cond
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call80) #4, !dbg !2923
  %6 = load i32, ptr %echelon_rank, align 4, !dbg !2924
    #dbg_value(i32 %6, !2888, !DIExpression(), !2723)
  call fastcc void @sample_a_solution(ptr noundef %seed_sol, ptr noundef nonnull %eqn, ptr noundef nonnull %echelon_perm, i32 noundef %6, ptr noundef nonnull %echelon_index, ptr noundef nonnull %b, ptr noundef nonnull %oil_u, ptr noundef nonnull %b2) #4, !dbg !2925
  call fastcc void @pack_0(ptr noundef nonnull %oil_u, ptr noundef nonnull %oil) #4, !dbg !2926
  call fastcc void @SIG_GEN(ptr noundef nonnull %oil, ptr noundef nonnull %Sd, ptr noundef nonnull %y, ptr noundef %sig) #4, !dbg !2927
  call void @OPENSSL_cleanse(ptr noundef nonnull %Sd, i32 noundef 2808) #4, !dbg !2928
  call void @OPENSSL_cleanse(ptr noundef nonnull %SdT, i32 noundef 2808) #4, !dbg !2929
  ret void, !dbg !2930
}

; Function Attrs: nounwind
define internal fastcc void @Expand_y(ptr noundef %seed_y, ptr noundef nonnull %y) unnamed_addr #0 !dbg !2931 {
entry:
  %r3 = alloca [192 x i8], align 1
    #dbg_value(ptr %seed_y, !2934, !DIExpression(), !2935)
    #dbg_value(ptr %y, !2936, !DIExpression(), !2935)
    #dbg_value(i32 156, !2937, !DIExpression(), !2935)
    #dbg_declare(ptr %r3, !2938, !DIExpression(), !2942)
  %call = call fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed_y) #4, !dbg !2943
    #dbg_value(ptr %call, !2944, !DIExpression(), !2935)
  call fastcc void @RejSampPRG_aes_ctr(ptr noundef %call, i64 noundef 0, i32 noundef 156, i32 noundef 192, ptr noundef nonnull %r3) #4, !dbg !2945
  call fastcc void @ExpandVectorV(ptr noundef nonnull %r3, ptr noundef %y) #4, !dbg !2946
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call) #4, !dbg !2947
  ret void, !dbg !2948
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 127) i8 @Fq_add(i8 noundef zeroext %X, i8 noundef zeroext %Y) unnamed_addr #0 !dbg !2949 {
entry:
    #dbg_value(i8 %X, !2952, !DIExpression(), !2953)
    #dbg_value(i8 %Y, !2954, !DIExpression(), !2953)
  %conv = zext i8 %X to i16, !dbg !2955
  %conv1 = zext i8 %Y to i16, !dbg !2956
  %add = add nuw nsw i16 %conv, %conv1, !dbg !2957
  %rem1 = urem i16 %add, 127, !dbg !2958
  %conv2 = trunc nuw nsw i16 %rem1 to i8, !dbg !2959
  ret i8 %conv2, !dbg !2960
}

; Function Attrs: nounwind
define internal fastcc void @Fql_mul(ptr noundef nonnull %X, ptr noundef nonnull %Y, ptr noundef nonnull %Z) unnamed_addr #0 !dbg !2961 {
entry:
  %T = alloca [5 x i32], align 4
    #dbg_value(ptr %X, !2967, !DIExpression(), !2968)
    #dbg_value(ptr %Y, !2969, !DIExpression(), !2968)
    #dbg_value(ptr %Z, !2970, !DIExpression(), !2968)
    #dbg_declare(ptr %T, !2971, !DIExpression(), !2973)
  %call = call ptr @memset(ptr noundef nonnull %T, i32 noundef 0, i32 noundef 20) #6, !dbg !2974
    #dbg_value(i32 0, !2975, !DIExpression(), !2977)
  br label %for.cond, !dbg !2978

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !dbg !2979
    #dbg_value(i32 %i.0, !2975, !DIExpression(), !2977)
  %exitcond1 = icmp ne i32 %i.0, 3, !dbg !2980
  br i1 %exitcond1, label %for.cond1.preheader, label %for.cond12.preheader, !dbg !2982

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2983

for.cond12.preheader:                             ; preds = %for.cond
  br label %for.cond12, !dbg !2986

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !2988
    #dbg_value(i32 %j.0, !2989, !DIExpression(), !2990)
  %exitcond = icmp ne i32 %j.0, 3, !dbg !2991
  br i1 %exitcond, label %for.body3, label %for.inc8, !dbg !2983

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %X, i32 %i.0, !dbg !2993
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2993
  %conv = zext i8 %0 to i32, !dbg !2995
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %Y, i32 %j.0, !dbg !2996
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !2996
  %conv5 = zext i8 %1 to i32, !dbg !2997
  %mul = mul nuw nsw i32 %conv, %conv5, !dbg !2998
  %add = add nuw nsw i32 %i.0, %j.0, !dbg !2999
  %arrayidx6 = getelementptr inbounds nuw [5 x i32], ptr %T, i32 0, i32 %add, !dbg !3000
  %2 = load i32, ptr %arrayidx6, align 4, !dbg !3001
  %add7 = add i32 %2, %mul, !dbg !3001
  store i32 %add7, ptr %arrayidx6, align 4, !dbg !3001
  %inc = add nuw nsw i32 %j.0, 1, !dbg !3002
    #dbg_value(i32 %inc, !2989, !DIExpression(), !2990)
  br label %for.cond1, !dbg !3003, !llvm.loop !3004

for.inc8:                                         ; preds = %for.cond1
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !3006
    #dbg_value(i32 %inc9, !2975, !DIExpression(), !2977)
  br label %for.cond, !dbg !3007, !llvm.loop !3008

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body15
  %i11.0 = phi i32 [ %dec, %for.body15 ], [ 4, %for.cond12.preheader ], !dbg !3010
    #dbg_value(i32 %i11.0, !3011, !DIExpression(), !3012)
  %cmp13 = icmp ugt i32 %i11.0, 2, !dbg !3013
  br i1 %cmp13, label %for.body15, label %for.cond29.preheader, !dbg !2986

for.cond29.preheader:                             ; preds = %for.cond12
  br label %for.cond29, !dbg !3015

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [5 x i32], ptr %T, i32 0, i32 %i11.0, !dbg !3017
  %3 = load i32, ptr %arrayidx16, align 4, !dbg !3017
  %sub = add nsw i32 %i11.0, -3, !dbg !3019
  %arrayidx18 = getelementptr inbounds nuw [5 x i32], ptr %T, i32 0, i32 %sub, !dbg !3020
  %4 = load i32, ptr %arrayidx18, align 4, !dbg !3021
  %add19 = add i32 %4, %3, !dbg !3021
  store i32 %add19, ptr %arrayidx18, align 4, !dbg !3021
  %arrayidx20 = getelementptr inbounds nuw [5 x i32], ptr %T, i32 0, i32 %i11.0, !dbg !3022
  %5 = load i32, ptr %arrayidx20, align 4, !dbg !3022
  %add23 = add nsw i32 %i11.0, -2, !dbg !3023
  %arrayidx24 = getelementptr inbounds nuw [5 x i32], ptr %T, i32 0, i32 %add23, !dbg !3024
  %6 = load i32, ptr %arrayidx24, align 4, !dbg !3025
  %add25 = add i32 %6, %5, !dbg !3025
  store i32 %add25, ptr %arrayidx24, align 4, !dbg !3025
  %dec = add nsw i32 %i11.0, -1, !dbg !3026
    #dbg_value(i32 %dec, !3011, !DIExpression(), !3012)
  br label %for.cond12, !dbg !3027, !llvm.loop !3028

for.cond29:                                       ; preds = %for.cond29.preheader, %for.body32
  %i28.0 = phi i32 [ %inc37, %for.body32 ], [ 0, %for.cond29.preheader ], !dbg !3030
    #dbg_value(i32 %i28.0, !3031, !DIExpression(), !3032)
  %exitcond2 = icmp ne i32 %i28.0, 3, !dbg !3033
  br i1 %exitcond2, label %for.body32, label %for.end38, !dbg !3015

for.body32:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds nuw [5 x i32], ptr %T, i32 0, i32 %i28.0, !dbg !3035
  %7 = load i32, ptr %arrayidx33, align 4, !dbg !3035
  %rem = srem i32 %7, 127, !dbg !3036
  %conv34 = trunc nsw i32 %rem to i8, !dbg !3037
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %Z, i32 %i28.0, !dbg !3038
  store i8 %conv34, ptr %arrayidx35, align 1, !dbg !3039
  %inc37 = add nuw nsw i32 %i28.0, 1, !dbg !3040
    #dbg_value(i32 %inc37, !3031, !DIExpression(), !3032)
  br label %for.cond29, !dbg !3041, !llvm.loop !3042

for.end38:                                        ; preds = %for.cond29
  ret void, !dbg !3044
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @Fql2Fq(ptr noundef %Z, i32 noundef range(i32 0, 3) %i) unnamed_addr #0 !dbg !3045 {
entry:
    #dbg_value(ptr %Z, !3048, !DIExpression(), !3049)
    #dbg_value(i32 %i, !3050, !DIExpression(), !3049)
  %arrayidx = getelementptr inbounds nuw i8, ptr %Z, i32 %i, !dbg !3051
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3051
  ret i8 %0, !dbg !3052
}

; Function Attrs: nounwind
define internal fastcc void @LU_decompose(ptr noundef nonnull %A, ptr noundef nonnull %perm, ptr noundef nonnull %rank, ptr noundef nonnull %index) unnamed_addr #0 !dbg !3053 {
entry:
    #dbg_value(ptr %A, !3057, !DIExpression(), !3058)
    #dbg_value(ptr %perm, !3059, !DIExpression(), !3058)
    #dbg_value(ptr %rank, !3060, !DIExpression(), !3058)
    #dbg_value(ptr %index, !3061, !DIExpression(), !3058)
  call fastcc void @echelon_form_init(ptr noundef %perm, ptr noundef %rank, ptr noundef %index) #4, !dbg !3062
    #dbg_value(i32 -1, !3063, !DIExpression(), !3058)
    #dbg_value(i32 0, !3064, !DIExpression(), !3058)
  br label %for.cond, !dbg !3065

for.cond:                                         ; preds = %for.inc69, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc70, %for.inc69 ], !dbg !3067
  %c.0 = phi i32 [ -1, %entry ], [ %c.1.lcssa, %for.inc69 ], !dbg !3058
    #dbg_value(i32 %c.0, !3063, !DIExpression(), !3058)
    #dbg_value(i32 %i.0, !3064, !DIExpression(), !3058)
  %cmp = icmp ugt i32 %i.0, 53, !dbg !3068
  %inc = add i32 %c.0, 1
    #dbg_value(i32 %inc, !3063, !DIExpression(), !3058)
  %cmp1 = icmp sgt i32 %inc, 53
  %or.cond = or i1 %cmp, %cmp1, !dbg !3070
  br i1 %or.cond, label %return.loopexit1, label %while.cond.preheader, !dbg !3070

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !3071

while.cond:                                       ; preds = %while.cond.preheader, %if.end15
  %j.0 = phi i32 [ %j.1, %if.end15 ], [ %i.0, %while.cond.preheader ], !dbg !3073
  %c.1 = phi i32 [ %c.2, %if.end15 ], [ %inc, %while.cond.preheader ], !dbg !3073
    #dbg_value(i32 %c.1, !3063, !DIExpression(), !3058)
    #dbg_value(i32 %j.0, !3074, !DIExpression(), !3058)
  %arrayidx = getelementptr inbounds i32, ptr %perm, i32 %j.0, !dbg !3075
  %0 = load i32, ptr %arrayidx, align 4, !dbg !3075
  %arrayidx3 = getelementptr inbounds [54 x i8], ptr %A, i32 %0, i32 %c.1, !dbg !3075
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3075
  %cmp4 = icmp eq i8 %1, 0, !dbg !3076
  br i1 %cmp4, label %while.body, label %while.end, !dbg !3071

while.body:                                       ; preds = %while.cond
  %inc6 = add i32 %j.0, 1, !dbg !3077
    #dbg_value(i32 %inc6, !3074, !DIExpression(), !3058)
  %cmp7 = icmp sgt i32 %inc6, 53, !dbg !3079
  br i1 %cmp7, label %if.then9, label %if.end15, !dbg !3079

if.then9:                                         ; preds = %while.body
  %inc10 = add i32 %c.1, 1, !dbg !3081
    #dbg_value(i32 %inc10, !3063, !DIExpression(), !3058)
  %cmp11 = icmp sgt i32 %inc10, 53, !dbg !3083
  br i1 %cmp11, label %return.loopexit, label %if.end15, !dbg !3083

if.end15:                                         ; preds = %if.then9, %while.body
  %j.1 = phi i32 [ %inc6, %while.body ], [ %i.0, %if.then9 ], !dbg !3085
  %c.2 = phi i32 [ %c.1, %while.body ], [ %inc10, %if.then9 ], !dbg !3073
    #dbg_value(i32 %c.2, !3063, !DIExpression(), !3058)
    #dbg_value(i32 %j.1, !3074, !DIExpression(), !3058)
  br label %while.cond, !dbg !3071, !llvm.loop !3086

while.end:                                        ; preds = %while.cond
  %j.0.lcssa = phi i32 [ %j.0, %while.cond ], !dbg !3073
  %c.1.lcssa = phi i32 [ %c.1, %while.cond ], !dbg !3073
  call fastcc void @row_swap(ptr noundef nonnull %perm, i32 noundef %i.0, i32 noundef %j.0.lcssa) #4, !dbg !3088
  %2 = load i32, ptr %rank, align 4, !dbg !3089
  %inc16 = add i32 %2, 1, !dbg !3089
  store i32 %inc16, ptr %rank, align 4, !dbg !3089
  %arrayidx17 = getelementptr inbounds i32, ptr %index, i32 %2, !dbg !3090
  store i32 %c.1.lcssa, ptr %arrayidx17, align 4, !dbg !3091
  %arrayidx18 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3092
  %3 = load i32, ptr %arrayidx18, align 4, !dbg !3092
  %arrayidx20 = getelementptr inbounds [54 x i8], ptr %A, i32 %3, i32 %c.1.lcssa, !dbg !3092
  %4 = load i8, ptr %arrayidx20, align 1, !dbg !3092
    #dbg_value(i8 %4, !3093, !DIExpression(), !3073)
  %call = call fastcc zeroext i8 @Fq_inv(i8 noundef zeroext %4) #4, !dbg !3094
    #dbg_value(i8 %call, !3095, !DIExpression(), !3073)
  %arrayidx21 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3096
  %5 = load i32, ptr %arrayidx21, align 4, !dbg !3096
  %arrayidx23 = getelementptr inbounds [54 x i8], ptr %A, i32 %5, i32 %i.0, !dbg !3096
  store i8 %4, ptr %arrayidx23, align 1, !dbg !3097
    #dbg_value(i32 %c.1.lcssa, !3098, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3058)
  br label %for.cond24, !dbg !3099

for.cond24:                                       ; preds = %for.body27, %while.end
  %k.0.in = phi i32 [ %c.1.lcssa, %while.end ], [ %k.0, %for.body27 ]
  %k.0 = add i32 %k.0.in, 1, !dbg !3101
    #dbg_value(i32 %k.0, !3098, !DIExpression(), !3058)
  %cmp25 = icmp slt i32 %k.0, 54, !dbg !3102
  br i1 %cmp25, label %for.body27, label %for.cond37.preheader, !dbg !3104

for.cond37.preheader:                             ; preds = %for.cond24
  br label %for.cond37, !dbg !3105

for.body27:                                       ; preds = %for.cond24
  %arrayidx28 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3107
  %6 = load i32, ptr %arrayidx28, align 4, !dbg !3107
  %arrayidx30 = getelementptr inbounds [54 x i8], ptr %A, i32 %6, i32 %k.0, !dbg !3107
  %7 = load i8, ptr %arrayidx30, align 1, !dbg !3107
  %call31 = call fastcc zeroext i8 @Fq_mul(i8 noundef zeroext %call, i8 noundef zeroext %7) #4, !dbg !3108
  %arrayidx32 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3109
  %8 = load i32, ptr %arrayidx32, align 4, !dbg !3109
  %arrayidx34 = getelementptr inbounds [54 x i8], ptr %A, i32 %8, i32 %k.0, !dbg !3109
  store i8 %call31, ptr %arrayidx34, align 1, !dbg !3110
    #dbg_value(i32 %k.0, !3098, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3058)
  br label %for.cond24, !dbg !3111, !llvm.loop !3112

for.cond37.loopexit:                              ; preds = %for.cond48
  br label %for.cond37, !dbg !3105, !llvm.loop !3114

for.cond37:                                       ; preds = %for.cond37.preheader, %for.cond37.loopexit
  %j.2.in = phi i32 [ %j.2, %for.cond37.loopexit ], [ %i.0, %for.cond37.preheader ]
  %j.2 = add nuw nsw i32 %j.2.in, 1, !dbg !3116
    #dbg_value(i32 %j.2, !3074, !DIExpression(), !3058)
  %exitcond = icmp ne i32 %j.2.in, 53, !dbg !3117
  br i1 %exitcond, label %for.body40, label %for.inc69, !dbg !3105

for.body40:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds i32, ptr %perm, i32 %j.2, !dbg !3119
  %9 = load i32, ptr %arrayidx41, align 4, !dbg !3119
  %arrayidx43 = getelementptr inbounds [54 x i8], ptr %A, i32 %9, i32 %c.1.lcssa, !dbg !3119
  %10 = load i8, ptr %arrayidx43, align 1, !dbg !3119
    #dbg_value(i8 %10, !3121, !DIExpression(), !3122)
  %arrayidx46 = getelementptr inbounds [54 x i8], ptr %A, i32 %9, i32 %i.0, !dbg !3123
  store i8 %10, ptr %arrayidx46, align 1, !dbg !3124
    #dbg_value(i32 %c.1.lcssa, !3098, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3058)
  br label %for.cond48, !dbg !3125

for.cond48:                                       ; preds = %for.body51, %for.body40
  %k.1.in = phi i32 [ %c.1.lcssa, %for.body40 ], [ %k.1, %for.body51 ]
  %k.1 = add i32 %k.1.in, 1, !dbg !3127
    #dbg_value(i32 %k.1, !3098, !DIExpression(), !3058)
  %cmp49 = icmp slt i32 %k.1, 54, !dbg !3128
  br i1 %cmp49, label %for.body51, label %for.cond37.loopexit, !dbg !3130

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds i32, ptr %perm, i32 %j.2, !dbg !3131
  %11 = load i32, ptr %arrayidx52, align 4, !dbg !3131
  %arrayidx54 = getelementptr inbounds [54 x i8], ptr %A, i32 %11, i32 %k.1, !dbg !3131
  %12 = load i8, ptr %arrayidx54, align 1, !dbg !3131
  %arrayidx55 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3133
  %13 = load i32, ptr %arrayidx55, align 4, !dbg !3133
  %arrayidx57 = getelementptr inbounds [54 x i8], ptr %A, i32 %13, i32 %k.1, !dbg !3133
  %14 = load i8, ptr %arrayidx57, align 1, !dbg !3133
  %call58 = call fastcc zeroext i8 @Fq_mul(i8 noundef zeroext %10, i8 noundef zeroext %14) #4, !dbg !3134
  %call59 = call fastcc zeroext i8 @Fq_sub(i8 noundef zeroext %12, i8 noundef zeroext %call58) #4, !dbg !3135
  %arrayidx60 = getelementptr inbounds i32, ptr %perm, i32 %j.2, !dbg !3136
  %15 = load i32, ptr %arrayidx60, align 4, !dbg !3136
  %arrayidx62 = getelementptr inbounds [54 x i8], ptr %A, i32 %15, i32 %k.1, !dbg !3136
  store i8 %call59, ptr %arrayidx62, align 1, !dbg !3137
    #dbg_value(i32 %k.1, !3098, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3058)
  br label %for.cond48, !dbg !3138, !llvm.loop !3139

for.inc69:                                        ; preds = %for.cond37
  %inc70 = add nuw nsw i32 %i.0, 1, !dbg !3141
    #dbg_value(i32 %inc70, !3064, !DIExpression(), !3058)
  br label %for.cond, !dbg !3142, !llvm.loop !3143

return.loopexit:                                  ; preds = %if.then9
  br label %return, !dbg !3145

return.loopexit1:                                 ; preds = %for.cond
  br label %return, !dbg !3145

return:                                           ; preds = %return.loopexit1, %return.loopexit
  ret void, !dbg !3145
}

; Function Attrs: nounwind
define internal fastcc void @Expand_mu(ptr noundef %seed_pk, ptr noundef %message, i32 noundef %message_length, ptr noundef nonnull %mu) unnamed_addr #0 !dbg !3146 {
entry:
    #dbg_value(ptr %seed_pk, !3149, !DIExpression(), !3150)
    #dbg_value(ptr %message, !3151, !DIExpression(), !3150)
    #dbg_value(i32 %message_length, !3152, !DIExpression(), !3150)
    #dbg_value(ptr %mu, !3153, !DIExpression(), !3150)
  %call = call ptr @EVP_MD_CTX_new() #4, !dbg !3154
    #dbg_value(ptr %call, !3155, !DIExpression(), !3150)
  %call1 = call ptr @EVP_shake256() #4, !dbg !3156
  %call2 = call i32 @EVP_DigestInit_ex(ptr noundef %call, ptr noundef nonnull @shake256_md, ptr noundef null) #4, !dbg !3157
  %call3 = call i32 @EVP_DigestUpdate(ptr noundef %call, ptr noundef %seed_pk, i32 noundef 16) #4, !dbg !3158
  %call4 = call i32 @EVP_DigestUpdate(ptr noundef %call, ptr noundef %message, i32 noundef %message_length) #4, !dbg !3159
  %call5 = call i32 @EVP_DigestFinalXOF(ptr noundef %call, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !3160
  call void @EVP_MD_CTX_free(ptr noundef %call) #4, !dbg !3161
  ret void, !dbg !3162
}

; Function Attrs: nounwind
define internal fastcc void @PRG_yield_aes_ctr(ptr noundef %ctx, i32 noundef %length, ptr noundef %dst) unnamed_addr #0 !dbg !3163 {
entry:
  %out_len = alloca i32, align 4
    #dbg_value(ptr %ctx, !3166, !DIExpression(), !3167)
    #dbg_value(i32 16, !3168, !DIExpression(), !3167)
    #dbg_value(ptr %dst, !3169, !DIExpression(), !3167)
  %call = call ptr @memset(ptr noundef %dst, i32 noundef 0, i32 noundef 16) #6, !dbg !3170
    #dbg_value(ptr %out_len, !3171, !DIExpression(DW_OP_deref), !3167)
  %call1 = call i32 @EVP_EncryptUpdate(ptr noundef %ctx, ptr noundef %dst, ptr noundef nonnull %out_len, ptr noundef %dst, i32 noundef 16) #4, !dbg !3172
  ret void, !dbg !3173
}

; Function Attrs: nounwind
define internal fastcc void @Hash(ptr noundef nonnull %mu, ptr noundef %salt, ptr noundef nonnull %dst) unnamed_addr #0 !dbg !3174 {
entry:
  %tmp = alloca [82 x i8], align 1
    #dbg_value(ptr %mu, !3177, !DIExpression(), !3178)
    #dbg_value(ptr %salt, !3179, !DIExpression(), !3178)
    #dbg_value(ptr %dst, !3180, !DIExpression(), !3178)
    #dbg_declare(ptr %tmp, !3181, !DIExpression(), !3185)
  %call = call ptr @EVP_MD_CTX_new() #4, !dbg !3186
    #dbg_value(ptr %call, !3187, !DIExpression(), !3178)
  %call1 = call ptr @EVP_shake256() #4, !dbg !3188
  %call2 = call i32 @EVP_DigestInit_ex(ptr noundef %call, ptr noundef nonnull @shake256_md, ptr noundef null) #4, !dbg !3189
  %call3 = call i32 @EVP_DigestUpdate(ptr noundef %call, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !3190
  %call4 = call i32 @EVP_DigestUpdate(ptr noundef %call, ptr noundef %salt, i32 noundef 16) #4, !dbg !3191
  %call5 = call i32 @EVP_DigestFinalXOF(ptr noundef %call, ptr noundef nonnull %tmp, i32 noundef 82) #4, !dbg !3192
  call fastcc void @RejSamp(i32 noundef 54, i32 noundef 82, ptr noundef nonnull %tmp) #4, !dbg !3193
  %call8 = call ptr @memcpy(ptr noundef nonnull %dst, ptr noundef nonnull %tmp, i32 noundef 54) #6, !dbg !3194
  call void @EVP_MD_CTX_free(ptr noundef %call) #4, !dbg !3195
  ret void, !dbg !3196
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 -126, 127) i8 @Fq_sub(i8 noundef zeroext %X, i8 noundef zeroext %Y) unnamed_addr #0 !dbg !3197 {
entry:
    #dbg_value(i8 %X, !3198, !DIExpression(), !3199)
    #dbg_value(i8 %Y, !3200, !DIExpression(), !3199)
  %conv = zext i8 %X to i16, !dbg !3201
  %conv1 = zext i8 %Y to i16, !dbg !3202
  %sub = sub nsw i16 %conv, %conv1, !dbg !3203
  %add = add nsw i16 %sub, 127, !dbg !3204
  %rem1 = srem i16 %add, 127, !dbg !3205
  %conv2 = trunc nsw i16 %rem1 to i8, !dbg !3206
  ret i8 %conv2, !dbg !3207
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @consistent(ptr noundef nonnull %A, ptr noundef nonnull %perm, i32 noundef %rank, ptr noundef nonnull %b, ptr noundef nonnull %cacheR, ptr noundef nonnull %R) unnamed_addr #0 !dbg !3208 {
entry:
    #dbg_value(ptr %A, !3211, !DIExpression(), !3212)
    #dbg_value(ptr %perm, !3213, !DIExpression(), !3212)
    #dbg_value(i32 %rank, !3214, !DIExpression(), !3212)
    #dbg_value(ptr %b, !3215, !DIExpression(), !3212)
    #dbg_value(ptr %cacheR, !3216, !DIExpression(), !3212)
    #dbg_value(ptr %R, !3217, !DIExpression(), !3212)
  %cmp = icmp eq i32 %rank, 54, !dbg !3218
  br i1 %cmp, label %return, label %if.end, !dbg !3218

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %cacheR, align 4, !dbg !3220
  %cmp1 = icmp eq i32 %0, 0, !dbg !3222
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3222

if.then2:                                         ; preds = %if.end
  call fastcc void @L_inverse(ptr noundef %A, ptr noundef %perm, i32 noundef %rank, ptr noundef %R) #4, !dbg !3223
  store i32 1, ptr %cacheR, align 4, !dbg !3225
  br label %if.end3, !dbg !3226

if.end3:                                          ; preds = %if.then2, %if.end
    #dbg_value(i32 %rank, !3227, !DIExpression(), !3229)
  %1 = icmp sgt i32 %rank, 0, !dbg !3230
  %2 = select i1 %1, i32 %rank, i32 0, !dbg !3230
  %3 = icmp sgt i32 %rank, 54, !dbg !3230
  %4 = select i1 %3, i32 %rank, i32 54, !dbg !3230
  br label %for.cond, !dbg !3230

for.cond:                                         ; preds = %for.inc22, %if.end3
  %i.0 = phi i32 [ %rank, %if.end3 ], [ %inc23, %for.inc22 ], !dbg !3231
    #dbg_value(i32 %i.0, !3227, !DIExpression(), !3229)
  %exitcond2 = icmp ne i32 %i.0, %4, !dbg !3232
  br i1 %exitcond2, label %for.cond5.preheader, label %return.loopexit, !dbg !3234

for.cond5.preheader:                              ; preds = %for.cond
  br label %for.cond5, !dbg !3235

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %t.0 = phi i64 [ %add, %for.inc ], [ 0, %for.cond5.preheader ], !dbg !3238
  %j.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond5.preheader ], !dbg !3239
    #dbg_value(i32 %j.0, !3240, !DIExpression(), !3241)
    #dbg_value(i64 %t.0, !3242, !DIExpression(), !3238)
  %exitcond = icmp ne i32 %j.0, %2, !dbg !3243
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !3235

for.inc:                                          ; preds = %for.cond5
    #dbg_value(i32 poison, !3245, !DIExpression(), !3238)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i8 poison), !3242, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3238)
  %arrayidx9 = getelementptr inbounds [54 x i8], ptr %R, i32 %i.0, i32 %j.0, !dbg !3246
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !3246
  %conv = zext i8 %5 to i64, !dbg !3248
  %arrayidx = getelementptr inbounds nuw i32, ptr %perm, i32 %j.0, !dbg !3249
  %6 = load i32, ptr %arrayidx, align 4, !dbg !3249
    #dbg_value(i32 %6, !3245, !DIExpression(), !3238)
  %arrayidx10 = getelementptr inbounds i8, ptr %b, i32 %6, !dbg !3250
  %7 = load i8, ptr %arrayidx10, align 1, !dbg !3250
    #dbg_value(!DIArgList(i64 %t.0, i64 %conv, i8 %7), !3242, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3238)
  %conv11 = zext i8 %7 to i64, !dbg !3251
    #dbg_value(!DIArgList(i64 %t.0, i64 %conv, i64 %conv11), !3242, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3238)
  %mul = mul nuw nsw i64 %conv, %conv11, !dbg !3252
    #dbg_value(!DIArgList(i64 %t.0, i64 %mul), !3242, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3238)
  %add = add i64 %t.0, %mul, !dbg !3253
    #dbg_value(i64 %add, !3242, !DIExpression(), !3238)
  %inc = add nuw i32 %j.0, 1, !dbg !3254
    #dbg_value(i32 %inc, !3240, !DIExpression(), !3241)
  br label %for.cond5, !dbg !3255, !llvm.loop !3256

for.end:                                          ; preds = %for.cond5
  %t.0.lcssa = phi i64 [ %t.0, %for.cond5 ], !dbg !3238
  %arrayidx12 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3258
  %8 = load i32, ptr %arrayidx12, align 4, !dbg !3258
    #dbg_value(i32 %8, !3245, !DIExpression(), !3238)
  %arrayidx14 = getelementptr inbounds [54 x i8], ptr %R, i32 %i.0, i32 %i.0, !dbg !3259
  %9 = load i8, ptr %arrayidx14, align 1, !dbg !3259
  %conv15 = zext i8 %9 to i64, !dbg !3260
  %arrayidx16 = getelementptr inbounds i8, ptr %b, i32 %8, !dbg !3261
  %10 = load i8, ptr %arrayidx16, align 1, !dbg !3261
  %conv17 = zext i8 %10 to i64, !dbg !3262
  %mul18 = mul nuw nsw i64 %conv15, %conv17, !dbg !3263
  %add19 = add i64 %t.0.lcssa, %mul18, !dbg !3264
    #dbg_value(i64 %add19, !3242, !DIExpression(), !3238)
  %rem = urem i64 %add19, 127, !dbg !3265
    #dbg_value(i64 %rem, !3242, !DIExpression(), !3238)
  %tobool.not = icmp eq i64 %rem, 0, !dbg !3266
  br i1 %tobool.not, label %for.inc22, label %return.loopexit, !dbg !3266

for.inc22:                                        ; preds = %for.end
  %inc23 = add i32 %i.0, 1, !dbg !3268
    #dbg_value(i32 %inc23, !3227, !DIExpression(), !3229)
  br label %for.cond, !dbg !3269, !llvm.loop !3270

return.loopexit:                                  ; preds = %for.end, %for.cond
  %retval.0.ph = phi i32 [ 1, %for.cond ], [ 0, %for.end ]
  br label %return, !dbg !3272

return:                                           ; preds = %return.loopexit, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %retval.0.ph, %return.loopexit ], !dbg !3212
  ret i32 %retval.0, !dbg !3272
}

; Function Attrs: nounwind
define internal fastcc void @sample_a_solution(ptr noundef %seed_sol, ptr noundef nonnull %A, ptr noundef nonnull %perm, i32 noundef %rank, ptr noundef nonnull %index, ptr noundef nonnull %b, ptr noundef nonnull %x, ptr noundef nonnull %b2) unnamed_addr #0 !dbg !3273 {
entry:
  %random_buff = alloca [54 x i8], align 1
    #dbg_value(ptr %seed_sol, !3276, !DIExpression(), !3277)
    #dbg_value(ptr %A, !3278, !DIExpression(), !3277)
    #dbg_value(ptr %perm, !3279, !DIExpression(), !3277)
    #dbg_value(i32 %rank, !3280, !DIExpression(), !3277)
    #dbg_value(ptr %index, !3281, !DIExpression(), !3277)
    #dbg_value(ptr %b, !3282, !DIExpression(), !3277)
    #dbg_value(ptr %x, !3283, !DIExpression(), !3277)
    #dbg_value(ptr %b2, !3284, !DIExpression(), !3277)
    #dbg_declare(ptr undef, !3285, !DIExpression(), !3286)
    #dbg_declare(ptr %random_buff, !3287, !DIExpression(), !3289)
    #dbg_value(ptr %random_buff, !3290, !DIExpression(), !3277)
  %cmp = icmp slt i32 %rank, 54, !dbg !3291
  br i1 %cmp, label %if.then, label %if.end, !dbg !3291

if.then:                                          ; preds = %entry
  call fastcc void @Expand_sol(ptr noundef %seed_sol, ptr noundef nonnull %random_buff) #4, !dbg !3293
  br label %if.end, !dbg !3293

if.end:                                           ; preds = %if.then, %entry
    #dbg_value(i32 0, !3294, !DIExpression(), !3277)
  %0 = icmp sgt i32 %rank, 0, !dbg !3295
  %1 = select i1 %0, i32 %rank, i32 0, !dbg !3295
  br label %for.cond, !dbg !3295

for.cond:                                         ; preds = %for.end, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc20, %for.end ], !dbg !3297
    #dbg_value(i32 %i.0, !3294, !DIExpression(), !3277)
  %exitcond1 = icmp ne i32 %i.0, %1, !dbg !3298
  br i1 %exitcond1, label %for.cond3.preheader, label %for.cond22.preheader, !dbg !3300

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !3301

for.cond22.preheader:                             ; preds = %for.cond
  br label %for.cond22, !dbg !3304

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %j.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond3.preheader ], !dbg !3306
  %t.0 = phi i64 [ %add, %for.inc ], [ 0, %for.cond3.preheader ], !dbg !3307
    #dbg_value(i64 %t.0, !3308, !DIExpression(), !3307)
    #dbg_value(i32 %j.0, !3309, !DIExpression(), !3277)
  %exitcond = icmp ne i32 %j.0, %i.0, !dbg !3310
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !3301

for.inc:                                          ; preds = %for.cond3
    #dbg_value(!DIArgList(i64 poison, i64 poison, i8 poison), !3308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3307)
  %arrayidx = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3312
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3312
  %arrayidx7 = getelementptr inbounds [54 x i8], ptr %A, i32 %2, i32 %j.0, !dbg !3312
  %3 = load i8, ptr %arrayidx7, align 1, !dbg !3312
  %conv = zext i8 %3 to i64, !dbg !3314
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %b2, i32 %j.0, !dbg !3315
  %4 = load i8, ptr %arrayidx8, align 1, !dbg !3315
    #dbg_value(!DIArgList(i64 %t.0, i64 %conv, i8 %4), !3308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3307)
  %conv9 = zext i8 %4 to i64, !dbg !3316
    #dbg_value(!DIArgList(i64 %t.0, i64 %conv, i64 %conv9), !3308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3307)
  %mul = mul nuw nsw i64 %conv, %conv9, !dbg !3317
    #dbg_value(!DIArgList(i64 %t.0, i64 %mul), !3308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3307)
  %add = add i64 %t.0, %mul, !dbg !3318
    #dbg_value(i64 %add, !3308, !DIExpression(), !3307)
  %inc = add nuw i32 %j.0, 1, !dbg !3319
    #dbg_value(i32 %inc, !3309, !DIExpression(), !3277)
  br label %for.cond3, !dbg !3320, !llvm.loop !3321

for.end:                                          ; preds = %for.cond3
  %t.0.lcssa = phi i64 [ %t.0, %for.cond3 ], !dbg !3307
  %rem = urem i64 %t.0.lcssa, 127, !dbg !3323
  %conv10 = trunc nuw nsw i64 %rem to i8, !dbg !3324
    #dbg_value(i8 %conv10, !3325, !DIExpression(), !3307)
  %arrayidx11 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3326
  %5 = load i32, ptr %arrayidx11, align 4, !dbg !3326
    #dbg_value(i32 %5, !3327, !DIExpression(), !3277)
  %arrayidx12 = getelementptr inbounds i8, ptr %b, i32 %5, !dbg !3328
  %6 = load i8, ptr %arrayidx12, align 1, !dbg !3328
  %call = call fastcc zeroext i8 @Fq_sub(i8 noundef zeroext %6, i8 noundef zeroext %conv10) #4, !dbg !3329
    #dbg_value(i8 %call, !3325, !DIExpression(), !3307)
  %arrayidx13 = getelementptr inbounds i32, ptr %perm, i32 %i.0, !dbg !3330
  %7 = load i32, ptr %arrayidx13, align 4, !dbg !3330
  %arrayidx15 = getelementptr inbounds [54 x i8], ptr %A, i32 %7, i32 %i.0, !dbg !3330
  %8 = load i8, ptr %arrayidx15, align 1, !dbg !3330
  %call16 = call fastcc zeroext i8 @Fq_inv(i8 noundef zeroext %8) #4, !dbg !3331
  %call17 = call fastcc zeroext i8 @Fq_mul(i8 noundef zeroext %call, i8 noundef zeroext %call16) #4, !dbg !3332
  %arrayidx18 = getelementptr inbounds i8, ptr %b2, i32 %i.0, !dbg !3333
  store i8 %call17, ptr %arrayidx18, align 1, !dbg !3334
  %inc20 = add nuw i32 %i.0, 1, !dbg !3335
    #dbg_value(i32 %inc20, !3294, !DIExpression(), !3277)
  br label %for.cond, !dbg !3336, !llvm.loop !3337

for.cond22:                                       ; preds = %for.cond22.preheader, %for.end50
  %i.1 = phi i32 [ %dec56, %for.end50 ], [ 53, %for.cond22.preheader ], !dbg !3277
  %j.1.in = phi i32 [ %j.1, %for.end50 ], [ %rank, %for.cond22.preheader ]
  %random_element.0 = phi ptr [ %random_element.1.lcssa, %for.end50 ], [ %random_buff, %for.cond22.preheader ], !dbg !3339
  %j.1 = add i32 %j.1.in, -1, !dbg !3340
    #dbg_value(ptr %random_element.0, !3290, !DIExpression(), !3277)
    #dbg_value(i32 %j.1, !3309, !DIExpression(), !3277)
    #dbg_value(i32 %i.1, !3294, !DIExpression(), !3277)
  %cmp23 = icmp sgt i32 %j.1, -1, !dbg !3341
  br i1 %cmp23, label %for.body25, label %for.cond60.preheader, !dbg !3304

for.cond60.preheader:                             ; preds = %for.cond22
  %i.1.lcssa = phi i32 [ %i.1, %for.cond22 ], !dbg !3277
  %random_element.0.lcssa = phi ptr [ %random_element.0, %for.cond22 ], !dbg !3339
  br label %for.cond60, !dbg !3343

for.body25:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %index, i32 %j.1, !dbg !3345
  %9 = load i32, ptr %arrayidx26, align 4, !dbg !3345
    #dbg_value(i32 %9, !3327, !DIExpression(), !3277)
  br label %for.cond27, !dbg !3347

for.cond27:                                       ; preds = %for.body30, %for.body25
  %i.2 = phi i32 [ %i.1, %for.body25 ], [ %dec, %for.body30 ], !dbg !3277
  %random_element.1 = phi ptr [ %random_element.0, %for.body25 ], [ %incdec.ptr, %for.body30 ], !dbg !3277
    #dbg_value(ptr %random_element.1, !3290, !DIExpression(), !3277)
    #dbg_value(i32 %i.2, !3294, !DIExpression(), !3277)
  %cmp28 = icmp sgt i32 %i.2, %9, !dbg !3348
  br i1 %cmp28, label %for.body30, label %for.cond36.preheader, !dbg !3351

for.cond36.preheader:                             ; preds = %for.cond27
  %i.2.lcssa = phi i32 [ %i.2, %for.cond27 ], !dbg !3277
  %random_element.1.lcssa = phi ptr [ %random_element.1, %for.cond27 ], !dbg !3277
  br label %for.cond36, !dbg !3352

for.body30:                                       ; preds = %for.cond27
    #dbg_value(ptr %random_element.1, !3290, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3277)
  %10 = load i8, ptr %random_element.1, align 1, !dbg !3354
  %arrayidx31 = getelementptr inbounds i8, ptr %x, i32 %i.2, !dbg !3355
  store i8 %10, ptr %arrayidx31, align 1, !dbg !3356
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %random_element.1, i32 1, !dbg !3357
    #dbg_value(ptr %incdec.ptr, !3290, !DIExpression(), !3277)
  %dec = add nsw i32 %i.2, -1, !dbg !3358
    #dbg_value(i32 %dec, !3294, !DIExpression(), !3277)
  br label %for.cond27, !dbg !3359, !llvm.loop !3360

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc48
  %k.0.in = phi i32 [ %k.0, %for.inc48 ], [ %9, %for.cond36.preheader ]
  %t34.0 = phi i64 [ %add47, %for.inc48 ], [ 0, %for.cond36.preheader ], !dbg !3362
  %k.0 = add i32 %k.0.in, 1, !dbg !3363
    #dbg_value(i64 %t34.0, !3364, !DIExpression(), !3362)
    #dbg_value(i32 %k.0, !3327, !DIExpression(), !3277)
  %cmp37 = icmp slt i32 %k.0, 54, !dbg !3365
  br i1 %cmp37, label %for.inc48, label %for.end50, !dbg !3352

for.inc48:                                        ; preds = %for.cond36
    #dbg_value(!DIArgList(i64 poison, i64 poison, i8 poison), !3364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3362)
  %arrayidx40 = getelementptr inbounds nuw i32, ptr %perm, i32 %j.1, !dbg !3367
  %11 = load i32, ptr %arrayidx40, align 4, !dbg !3367
  %arrayidx42 = getelementptr inbounds [54 x i8], ptr %A, i32 %11, i32 %k.0, !dbg !3367
  %12 = load i8, ptr %arrayidx42, align 1, !dbg !3367
  %conv43 = zext i8 %12 to i64, !dbg !3369
  %arrayidx44 = getelementptr inbounds i8, ptr %x, i32 %k.0, !dbg !3370
  %13 = load i8, ptr %arrayidx44, align 1, !dbg !3370
    #dbg_value(!DIArgList(i64 %t34.0, i64 %conv43, i8 %13), !3364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3362)
  %conv45 = zext i8 %13 to i64, !dbg !3371
    #dbg_value(!DIArgList(i64 %t34.0, i64 %conv43, i64 %conv45), !3364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3362)
  %mul46 = mul nuw nsw i64 %conv43, %conv45, !dbg !3372
    #dbg_value(!DIArgList(i64 %t34.0, i64 %mul46), !3364, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3362)
  %add47 = add i64 %t34.0, %mul46, !dbg !3373
    #dbg_value(i64 %add47, !3364, !DIExpression(), !3362)
    #dbg_value(i32 %k.0, !3327, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3277)
  br label %for.cond36, !dbg !3374, !llvm.loop !3375

for.end50:                                        ; preds = %for.cond36
  %t34.0.lcssa = phi i64 [ %t34.0, %for.cond36 ], !dbg !3362
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %b2, i32 %j.1, !dbg !3377
  %14 = load i8, ptr %arrayidx51, align 1, !dbg !3377
  %rem52 = urem i64 %t34.0.lcssa, 127, !dbg !3378
  %conv53 = trunc nuw nsw i64 %rem52 to i8, !dbg !3379
  %call54 = call fastcc zeroext i8 @Fq_sub(i8 noundef zeroext %14, i8 noundef zeroext %conv53) #4, !dbg !3380
  %arrayidx55 = getelementptr inbounds i8, ptr %x, i32 %i.2.lcssa, !dbg !3381
  store i8 %call54, ptr %arrayidx55, align 1, !dbg !3382
    #dbg_value(i32 %i.2.lcssa, !3294, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3277)
  %dec56 = add i32 %i.2.lcssa, -1, !dbg !3383
    #dbg_value(i32 %dec56, !3294, !DIExpression(), !3277)
    #dbg_value(i32 %j.1, !3309, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3277)
  br label %for.cond22, !dbg !3384, !llvm.loop !3385

for.cond60:                                       ; preds = %for.cond60.preheader, %for.body63
  %i.3 = phi i32 [ %dec67, %for.body63 ], [ %i.1.lcssa, %for.cond60.preheader ], !dbg !3277
  %random_element.2 = phi ptr [ %incdec.ptr64, %for.body63 ], [ %random_element.0.lcssa, %for.cond60.preheader ], !dbg !3277
    #dbg_value(ptr %random_element.2, !3290, !DIExpression(), !3277)
    #dbg_value(i32 %i.3, !3294, !DIExpression(), !3277)
  %cmp61 = icmp sgt i32 %i.3, -1, !dbg !3387
  br i1 %cmp61, label %for.body63, label %for.end68, !dbg !3343

for.body63:                                       ; preds = %for.cond60
    #dbg_value(ptr %random_element.2, !3290, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3277)
  %15 = load i8, ptr %random_element.2, align 1, !dbg !3389
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %x, i32 %i.3, !dbg !3390
  store i8 %15, ptr %arrayidx65, align 1, !dbg !3391
  %incdec.ptr64 = getelementptr inbounds nuw i8, ptr %random_element.2, i32 1, !dbg !3392
    #dbg_value(ptr %incdec.ptr64, !3290, !DIExpression(), !3277)
  %dec67 = add nsw i32 %i.3, -1, !dbg !3393
    #dbg_value(i32 %dec67, !3294, !DIExpression(), !3277)
  br label %for.cond60, !dbg !3394, !llvm.loop !3395

for.end68:                                        ; preds = %for.cond60
  ret void, !dbg !3397
}

; Function Attrs: nounwind
define internal fastcc void @pack_0(ptr noundef nonnull %oil_u, ptr noundef nonnull %oil) unnamed_addr #0 !dbg !3398 {
entry:
    #dbg_value(ptr %oil_u, !3401, !DIExpression(), !3402)
    #dbg_value(ptr %oil, !3403, !DIExpression(), !3402)
    #dbg_value(ptr %oil_u, !3404, !DIExpression(), !3402)
    #dbg_value(i32 0, !3405, !DIExpression(), !3407)
  br label %for.cond, !dbg !3408

for.cond:                                         ; preds = %for.inc5, %entry
  %s.0 = phi ptr [ %oil_u, %entry ], [ %s.1.lcssa, %for.inc5 ], !dbg !3409
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !3410
    #dbg_value(i32 %i.0, !3405, !DIExpression(), !3407)
    #dbg_value(ptr %s.0, !3404, !DIExpression(), !3402)
  %exitcond1 = icmp ne i32 %i.0, 18, !dbg !3411
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end7, !dbg !3413

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !3414

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %s.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %s.0, %for.cond1.preheader ], !dbg !3402
  %k.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !3416
    #dbg_value(i32 %k.0, !3417, !DIExpression(), !3418)
    #dbg_value(ptr %s.1, !3404, !DIExpression(), !3402)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !3419
  br i1 %exitcond, label %for.body3, label %for.inc5, !dbg !3414

for.body3:                                        ; preds = %for.cond1
    #dbg_value(ptr %s.1, !3404, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3402)
  %0 = load i8, ptr %s.1, align 1, !dbg !3421
  %arrayidx4 = getelementptr inbounds [18 x i8], ptr %oil, i32 %k.0, i32 %i.0, !dbg !3422
  store i8 %0, ptr %arrayidx4, align 1, !dbg !3423
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.1, i32 1, !dbg !3424
    #dbg_value(ptr %incdec.ptr, !3404, !DIExpression(), !3402)
  %inc = add nuw nsw i32 %k.0, 1, !dbg !3425
    #dbg_value(i32 %inc, !3417, !DIExpression(), !3418)
  br label %for.cond1, !dbg !3426, !llvm.loop !3427

for.inc5:                                         ; preds = %for.cond1
  %s.1.lcssa = phi ptr [ %s.1, %for.cond1 ], !dbg !3402
  %inc6 = add nuw nsw i32 %i.0, 1, !dbg !3429
    #dbg_value(i32 %inc6, !3405, !DIExpression(), !3407)
  br label %for.cond, !dbg !3430, !llvm.loop !3431

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !3433
}

; Function Attrs: nounwind
define internal fastcc void @SIG_GEN(ptr noundef nonnull %oil, ptr noundef nonnull %Sd, ptr noundef nonnull %vineger, ptr noundef %sig) unnamed_addr #0 !dbg !3434 {
entry:
  %u = alloca [3 x i8], align 1
  %t = alloca [3 x i8], align 1
  %u19 = alloca [3 x i8], align 1
    #dbg_value(ptr %oil, !3443, !DIExpression(), !3444)
    #dbg_value(ptr %Sd, !3445, !DIExpression(), !3444)
    #dbg_value(ptr %vineger, !3446, !DIExpression(), !3444)
    #dbg_value(ptr %sig, !3447, !DIExpression(), !3444)
    #dbg_value(i32 0, !3448, !DIExpression(), !3450)
  br label %for.cond, !dbg !3451

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.end ], !dbg !3452
    #dbg_value(i32 %i.0, !3448, !DIExpression(), !3450)
  %exitcond1 = icmp ne i32 %i.0, 52, !dbg !3453
  br i1 %exitcond1, label %for.cond1.preheader, label %for.cond16.preheader, !dbg !3455

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !3456

for.cond16.preheader:                             ; preds = %for.cond
  br label %for.cond16, !dbg !3459

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !3461
    #dbg_value(i32 %j.0, !3462, !DIExpression(), !3463)
  %exitcond = icmp ne i32 %j.0, 3, !dbg !3464
  br i1 %exitcond, label %for.body3, label %for.end, !dbg !3456

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [52 x i8], ptr %vineger, i32 %j.0, i32 %i.0, !dbg !3466
  %0 = load i8, ptr %arrayidx4, align 1, !dbg !3466
  %arrayidx5 = getelementptr inbounds nuw [3 x i8], ptr %u, i32 0, i32 %j.0, !dbg !3467
  store i8 %0, ptr %arrayidx5, align 1, !dbg !3468
  %inc = add nuw nsw i32 %j.0, 1, !dbg !3469
    #dbg_value(i32 %inc, !3462, !DIExpression(), !3463)
  br label %for.cond1, !dbg !3470, !llvm.loop !3471

for.end:                                          ; preds = %for.cond1
    #dbg_declare(ptr %t, !3473, !DIExpression(), !3474)
  %arrayidx6 = getelementptr inbounds [3 x [18 x i8]], ptr %Sd, i32 %i.0, !dbg !3475
  call void @VECTOR_M_dot_VECTOR_M(ptr noundef nonnull %oil, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %t) #4, !dbg !3476
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 16, !dbg !3477
  %arrayidx10 = getelementptr inbounds [3 x i8], ptr %add.ptr, i32 %i.0, !dbg !3477
  call fastcc void @Fql_sub(ptr noundef nonnull %u, ptr noundef nonnull %t, ptr noundef nonnull %arrayidx10) #4, !dbg !3478
  %inc13 = add nuw nsw i32 %i.0, 1, !dbg !3479
    #dbg_value(i32 %inc13, !3448, !DIExpression(), !3450)
  br label %for.cond, !dbg !3480, !llvm.loop !3481

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc41
  %i15.0 = phi i32 [ %inc42, %for.inc41 ], [ 52, %for.cond16.preheader ], !dbg !3483
    #dbg_value(i32 %i15.0, !3484, !DIExpression(), !3485)
  %exitcond4 = icmp ne i32 %i15.0, 70, !dbg !3486
  br i1 %exitcond4, label %for.cond21.preheader, label %for.end43, !dbg !3459

for.cond21.preheader:                             ; preds = %for.cond16
  br label %for.cond21, !dbg !3488

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body23
  %j20.0 = phi i32 [ %inc28, %for.body23 ], [ 0, %for.cond21.preheader ], !dbg !3491
    #dbg_value(i32 %j20.0, !3492, !DIExpression(), !3493)
  %exitcond2 = icmp ne i32 %j20.0, 3, !dbg !3494
  br i1 %exitcond2, label %for.body23, label %for.cond31.preheader, !dbg !3488

for.cond31.preheader:                             ; preds = %for.cond21
  br label %for.cond31, !dbg !3496

for.body23:                                       ; preds = %for.cond21
  %sub = add nsw i32 %i15.0, -52, !dbg !3498
  %arrayidx25 = getelementptr inbounds [18 x i8], ptr %oil, i32 %j20.0, i32 %sub, !dbg !3499
  %1 = load i8, ptr %arrayidx25, align 1, !dbg !3499
  %arrayidx26 = getelementptr inbounds nuw [3 x i8], ptr %u19, i32 0, i32 %j20.0, !dbg !3500
  store i8 %1, ptr %arrayidx26, align 1, !dbg !3501
  %inc28 = add nuw nsw i32 %j20.0, 1, !dbg !3502
    #dbg_value(i32 %inc28, !3492, !DIExpression(), !3493)
  br label %for.cond21, !dbg !3503, !llvm.loop !3504

for.cond31:                                       ; preds = %for.cond31.preheader, %for.body33
  %j30.0 = phi i32 [ %inc39, %for.body33 ], [ 0, %for.cond31.preheader ], !dbg !3506
    #dbg_value(i32 %j30.0, !3507, !DIExpression(), !3508)
  %exitcond3 = icmp ne i32 %j30.0, 3, !dbg !3509
  br i1 %exitcond3, label %for.body33, label %for.inc41, !dbg !3496

for.body33:                                       ; preds = %for.cond31
  %arrayidx34 = getelementptr inbounds nuw [3 x i8], ptr %u19, i32 0, i32 %j30.0, !dbg !3511
  %2 = load i8, ptr %arrayidx34, align 1, !dbg !3511
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %sig, i32 16, !dbg !3512
  %arrayidx37 = getelementptr inbounds [3 x i8], ptr %add.ptr35, i32 %i15.0, i32 %j30.0, !dbg !3512
  store i8 %2, ptr %arrayidx37, align 1, !dbg !3513
  %inc39 = add nuw nsw i32 %j30.0, 1, !dbg !3514
    #dbg_value(i32 %inc39, !3507, !DIExpression(), !3508)
  br label %for.cond31, !dbg !3515, !llvm.loop !3516

for.inc41:                                        ; preds = %for.cond31
  %inc42 = add nuw nsw i32 %i15.0, 1, !dbg !3518
    #dbg_value(i32 %inc42, !3484, !DIExpression(), !3485)
  br label %for.cond16, !dbg !3519, !llvm.loop !3520

for.end43:                                        ; preds = %for.cond16
  ret void, !dbg !3522
}

; Function Attrs: nounwind
define internal fastcc void @Fql_sub(ptr noundef nonnull %X, ptr noundef nonnull %Y, ptr noundef %Z) unnamed_addr #0 !dbg !3523 {
entry:
    #dbg_value(ptr %X, !3524, !DIExpression(), !3525)
    #dbg_value(ptr %Y, !3526, !DIExpression(), !3525)
    #dbg_value(ptr %Z, !3527, !DIExpression(), !3525)
    #dbg_value(i32 0, !3528, !DIExpression(), !3530)
  br label %for.cond, !dbg !3531

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3532
    #dbg_value(i32 %i.0, !3528, !DIExpression(), !3530)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !3533
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3535

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %X, i32 %i.0, !dbg !3536
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3536
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %Y, i32 %i.0, !dbg !3537
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !3537
  %call = call fastcc zeroext i8 @Fq_sub(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !3538
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %Z, i32 %i.0, !dbg !3539
  store i8 %call, ptr %arrayidx2, align 1, !dbg !3540
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3541
    #dbg_value(i32 %inc, !3528, !DIExpression(), !3530)
  br label %for.cond, !dbg !3542, !llvm.loop !3543

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3545
}

; Function Attrs: nounwind
define internal fastcc void @Expand_sol(ptr noundef %seed_sol, ptr noundef nonnull %dst) unnamed_addr #0 !dbg !3546 {
entry:
  %r4 = alloca [82 x i8], align 1
    #dbg_value(ptr %seed_sol, !3549, !DIExpression(), !3550)
    #dbg_value(ptr %dst, !3551, !DIExpression(), !3550)
    #dbg_value(i32 54, !3552, !DIExpression(), !3550)
    #dbg_declare(ptr %r4, !3553, !DIExpression(), !3554)
  %call = call fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed_sol) #4, !dbg !3555
    #dbg_value(ptr %call, !3556, !DIExpression(), !3550)
  call fastcc void @RejSampPRG_aes_ctr(ptr noundef %call, i64 noundef 0, i32 noundef 54, i32 noundef 82, ptr noundef nonnull %r4) #4, !dbg !3557
  %call2 = call ptr @memcpy(ptr noundef nonnull %dst, ptr noundef nonnull %r4, i32 noundef 54) #6, !dbg !3558
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call) #4, !dbg !3559
  ret void, !dbg !3560
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @Fq_inv(i8 noundef zeroext %X) unnamed_addr #0 !dbg !3561 {
entry:
    #dbg_value(i8 %X, !3564, !DIExpression(), !3565)
  %idxprom = zext i8 %X to i32, !dbg !3566
  %arrayidx = getelementptr inbounds nuw [127 x i8], ptr @Fq_inv_table, i32 0, i32 %idxprom, !dbg !3566
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3566
  ret i8 %0, !dbg !3567
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 127) i8 @Fq_mul(i8 noundef zeroext %X, i8 noundef zeroext %Y) unnamed_addr #0 !dbg !3568 {
entry:
    #dbg_value(i8 %X, !3569, !DIExpression(), !3570)
    #dbg_value(i8 %Y, !3571, !DIExpression(), !3570)
  %conv = zext i8 %X to i16, !dbg !3572
  %conv1 = zext i8 %Y to i16, !dbg !3573
  %mul = mul nuw i16 %conv, %conv1, !dbg !3574
  %rem1 = urem i16 %mul, 127, !dbg !3575
  %conv2 = trunc nuw nsw i16 %rem1 to i8, !dbg !3576
  ret i8 %conv2, !dbg !3577
}

; Function Attrs: nounwind
define internal fastcc void @L_inverse(ptr noundef nonnull %A, ptr noundef nonnull %perm, i32 noundef range(i32 55, 54) %rank, ptr noundef nonnull %R) unnamed_addr #0 !dbg !3578 {
entry:
    #dbg_value(ptr %A, !3581, !DIExpression(), !3582)
    #dbg_value(ptr %perm, !3583, !DIExpression(), !3582)
    #dbg_value(i32 %rank, !3584, !DIExpression(), !3582)
    #dbg_value(ptr %R, !3585, !DIExpression(), !3582)
  call fastcc void @Fq_mxm_identity(ptr noundef %R) #4, !dbg !3586
    #dbg_value(i32 0, !3587, !DIExpression(), !3589)
  %0 = icmp sgt i32 %rank, 0, !dbg !3590
  %1 = select i1 %0, i32 %rank, i32 0, !dbg !3590
  br label %for.cond, !dbg !3590

for.cond:                                         ; preds = %for.inc35, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc35 ], [ 1, %entry ], !dbg !3591
  %i.0 = phi i32 [ 0, %entry ], [ %inc36, %for.inc35 ], !dbg !3591
    #dbg_value(i32 %i.0, !3587, !DIExpression(), !3589)
  %exitcond2 = icmp ne i32 %i.0, %1, !dbg !3592
  br i1 %exitcond2, label %for.body, label %for.end37, !dbg !3594

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %perm, i32 %i.0, !dbg !3595
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3595
  %arrayidx2 = getelementptr inbounds [54 x i8], ptr %A, i32 %2, i32 %i.0, !dbg !3595
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !3595
    #dbg_value(i8 %3, !3597, !DIExpression(), !3598)
  %call = call fastcc zeroext i8 @Fq_inv(i8 noundef zeroext %3) #4, !dbg !3599
    #dbg_value(i8 %call, !3600, !DIExpression(), !3598)
    #dbg_value(i32 0, !3601, !DIExpression(), !3603)
  br label %for.cond3, !dbg !3604

for.cond3:                                        ; preds = %for.body5, %for.body
  %k.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body5 ], !dbg !3605
    #dbg_value(i32 %k.0, !3601, !DIExpression(), !3603)
  %exitcond = icmp eq i32 %k.0, %indvars.iv, !dbg !3606
  br i1 %exitcond, label %for.cond11.preheader, label %for.body5, !dbg !3608

for.cond11.preheader:                             ; preds = %for.cond3
  br label %for.cond11, !dbg !3609

for.body5:                                        ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw [54 x i8], ptr %R, i32 %i.0, i32 %k.0, !dbg !3611
  %4 = load i8, ptr %arrayidx7, align 1, !dbg !3611
  %call8 = call fastcc zeroext i8 @Fq_mul(i8 noundef zeroext %4, i8 noundef zeroext %call) #4, !dbg !3612
  %arrayidx10 = getelementptr inbounds nuw [54 x i8], ptr %R, i32 %i.0, i32 %k.0, !dbg !3613
  store i8 %call8, ptr %arrayidx10, align 1, !dbg !3614
  %inc = add nuw i32 %k.0, 1, !dbg !3615
    #dbg_value(i32 %inc, !3601, !DIExpression(), !3603)
  br label %for.cond3, !dbg !3616, !llvm.loop !3617

for.cond11.loopexit:                              ; preds = %for.cond15
  br label %for.cond11, !dbg !3609, !llvm.loop !3619

for.cond11:                                       ; preds = %for.cond11.preheader, %for.cond11.loopexit
  %j.0.in = phi i32 [ %j.0, %for.cond11.loopexit ], [ %i.0, %for.cond11.preheader ]
  %j.0 = add nsw i32 %j.0.in, 1, !dbg !3621
    #dbg_value(i32 %j.0, !3622, !DIExpression(), !3623)
  %cmp12 = icmp slt i32 %j.0, 54, !dbg !3624
  br i1 %cmp12, label %for.cond15.preheader, label %for.inc35, !dbg !3609

for.cond15.preheader:                             ; preds = %for.cond11
  br label %for.cond15, !dbg !3626

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body17
  %k14.0 = phi i32 [ %inc30, %for.body17 ], [ 0, %for.cond15.preheader ], !dbg !3629
    #dbg_value(i32 %k14.0, !3630, !DIExpression(), !3631)
  %exitcond1 = icmp eq i32 %k14.0, %indvars.iv, !dbg !3632
  br i1 %exitcond1, label %for.cond11.loopexit, label %for.body17, !dbg !3626

for.body17:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds [54 x i8], ptr %R, i32 %j.0, i32 %k14.0, !dbg !3634
  %5 = load i8, ptr %arrayidx19, align 1, !dbg !3634
  %arrayidx20 = getelementptr inbounds i32, ptr %perm, i32 %j.0, !dbg !3636
  %6 = load i32, ptr %arrayidx20, align 4, !dbg !3636
  %arrayidx22 = getelementptr inbounds [54 x i8], ptr %A, i32 %6, i32 %i.0, !dbg !3636
  %7 = load i8, ptr %arrayidx22, align 1, !dbg !3636
  %arrayidx24 = getelementptr inbounds nuw [54 x i8], ptr %R, i32 %i.0, i32 %k14.0, !dbg !3637
  %8 = load i8, ptr %arrayidx24, align 1, !dbg !3637
  %call25 = call fastcc zeroext i8 @Fq_mul(i8 noundef zeroext %7, i8 noundef zeroext %8) #4, !dbg !3638
  %call26 = call fastcc zeroext i8 @Fq_sub(i8 noundef zeroext %5, i8 noundef zeroext %call25) #4, !dbg !3639
  %arrayidx28 = getelementptr inbounds [54 x i8], ptr %R, i32 %j.0, i32 %k14.0, !dbg !3640
  store i8 %call26, ptr %arrayidx28, align 1, !dbg !3641
  %inc30 = add nuw i32 %k14.0, 1, !dbg !3642
    #dbg_value(i32 %inc30, !3630, !DIExpression(), !3631)
  br label %for.cond15, !dbg !3643, !llvm.loop !3644

for.inc35:                                        ; preds = %for.cond11
  %inc36 = add nuw i32 %i.0, 1, !dbg !3646
    #dbg_value(i32 %inc36, !3587, !DIExpression(), !3589)
  %indvars.iv.next = add nuw i32 %indvars.iv, 1, !dbg !3647
  br label %for.cond, !dbg !3647, !llvm.loop !3648

for.end37:                                        ; preds = %for.cond
  ret void, !dbg !3650
}

; Function Attrs: nounwind
define internal fastcc void @Fq_mxm_identity(ptr noundef nonnull %A) unnamed_addr #0 !dbg !3651 {
entry:
    #dbg_value(ptr %A, !3654, !DIExpression(), !3655)
  %call = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 2916) #6, !dbg !3656
    #dbg_value(i32 0, !3657, !DIExpression(), !3659)
  br label %for.cond, !dbg !3660

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3661
    #dbg_value(i32 %i.0, !3657, !DIExpression(), !3659)
  %exitcond = icmp ne i32 %i.0, 54, !dbg !3662
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3664

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw [54 x i8], ptr %A, i32 %i.0, i32 %i.0, !dbg !3665
  store i8 1, ptr %arrayidx1, align 1, !dbg !3666
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3667
    #dbg_value(i32 %inc, !3657, !DIExpression(), !3659)
  br label %for.cond, !dbg !3668, !llvm.loop !3669

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3671
}

; Function Attrs: nounwind
define internal fastcc void @echelon_form_init(ptr noundef nonnull %perm, ptr noundef nonnull %rank, ptr noundef nonnull %index) unnamed_addr #0 !dbg !3672 {
entry:
    #dbg_value(ptr %perm, !3675, !DIExpression(), !3676)
    #dbg_value(ptr %rank, !3677, !DIExpression(), !3676)
    #dbg_value(ptr %index, !3678, !DIExpression(), !3676)
    #dbg_value(i32 0, !3679, !DIExpression(), !3681)
  br label %for.cond, !dbg !3682

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3683
    #dbg_value(i32 %i.0, !3679, !DIExpression(), !3681)
  %exitcond = icmp ne i32 %i.0, 54, !dbg !3684
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3686

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %perm, i32 %i.0, !dbg !3687
  store i32 %i.0, ptr %arrayidx, align 4, !dbg !3688
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3689
    #dbg_value(i32 %inc, !3679, !DIExpression(), !3681)
  br label %for.cond, !dbg !3690, !llvm.loop !3691

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %rank, align 4, !dbg !3693
  %call = call ptr @memset(ptr noundef nonnull %index, i32 noundef -1, i32 noundef 216) #6, !dbg !3694
  ret void, !dbg !3695
}

; Function Attrs: nounwind
define internal fastcc void @row_swap(ptr noundef nonnull %perm, i32 noundef %i, i32 noundef %j) unnamed_addr #0 !dbg !3696 {
entry:
    #dbg_value(ptr %perm, !3699, !DIExpression(), !3700)
    #dbg_value(i32 %i, !3701, !DIExpression(), !3700)
    #dbg_value(i32 %j, !3702, !DIExpression(), !3700)
  %arrayidx = getelementptr inbounds i32, ptr %perm, i32 %i, !dbg !3703
  %0 = load i32, ptr %arrayidx, align 4, !dbg !3703
    #dbg_value(i32 %0, !3704, !DIExpression(), !3700)
  %arrayidx1 = getelementptr inbounds i32, ptr %perm, i32 %j, !dbg !3705
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !3705
  %arrayidx2 = getelementptr inbounds i32, ptr %perm, i32 %i, !dbg !3706
  store i32 %1, ptr %arrayidx2, align 4, !dbg !3707
  %arrayidx3 = getelementptr inbounds i32, ptr %perm, i32 %j, !dbg !3708
  store i32 %0, ptr %arrayidx3, align 4, !dbg !3709
  ret void, !dbg !3710
}

; Function Attrs: nounwind
define internal fastcc void @ExpandVectorV(ptr noundef nonnull %src, ptr noundef nonnull %A) unnamed_addr #0 !dbg !3711 {
entry:
    #dbg_value(ptr %src, !3714, !DIExpression(), !3715)
    #dbg_value(ptr %A, !3716, !DIExpression(), !3715)
    #dbg_value(ptr %src, !3717, !DIExpression(), !3715)
    #dbg_value(i32 0, !3718, !DIExpression(), !3720)
  br label %for.cond, !dbg !3721

for.cond:                                         ; preds = %for.inc5, %entry
  %s.0 = phi ptr [ %src, %entry ], [ %s.1.lcssa, %for.inc5 ], !dbg !3722
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !3723
    #dbg_value(i32 %i.0, !3718, !DIExpression(), !3720)
    #dbg_value(ptr %s.0, !3717, !DIExpression(), !3715)
  %exitcond1 = icmp ne i32 %i.0, 52, !dbg !3724
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end7, !dbg !3726

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !3727

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %s.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %s.0, %for.cond1.preheader ], !dbg !3715
  %k.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !3729
    #dbg_value(i32 %k.0, !3730, !DIExpression(), !3731)
    #dbg_value(ptr %s.1, !3717, !DIExpression(), !3715)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !3732
  br i1 %exitcond, label %for.body3, label %for.inc5, !dbg !3727

for.body3:                                        ; preds = %for.cond1
    #dbg_value(ptr %s.1, !3717, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3715)
  %0 = load i8, ptr %s.1, align 1, !dbg !3734
  %arrayidx4 = getelementptr inbounds [52 x i8], ptr %A, i32 %k.0, i32 %i.0, !dbg !3735
  store i8 %0, ptr %arrayidx4, align 1, !dbg !3736
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.1, i32 1, !dbg !3737
    #dbg_value(ptr %incdec.ptr, !3717, !DIExpression(), !3715)
  %inc = add nuw nsw i32 %k.0, 1, !dbg !3738
    #dbg_value(i32 %inc, !3730, !DIExpression(), !3731)
  br label %for.cond1, !dbg !3739, !llvm.loop !3740

for.inc5:                                         ; preds = %for.cond1
  %s.1.lcssa = phi ptr [ %s.1, %for.cond1 ], !dbg !3715
  %inc6 = add nuw nsw i32 %i.0, 1, !dbg !3742
    #dbg_value(i32 %inc6, !3718, !DIExpression(), !3720)
  br label %for.cond, !dbg !3743, !llvm.loop !3744

for.end7:                                         ; preds = %for.cond
  call fastcc void @VECTOR_V_CLEAR_TAIL(ptr noundef %A) #4, !dbg !3746
  ret void, !dbg !3747
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @QRUOV_Verify(ptr noundef %seed_pk, ptr noundef %P3, ptr noundef %message, i32 noundef %message_length, ptr noundef %sig) local_unnamed_addr #0 !dbg !3748 {
entry:
  %mu = alloca [64 x i8], align 1
  %msg = alloca [54 x i8], align 1
  %Pi1 = alloca [52 x [3 x [52 x i8]]], align 1
  %Pi2 = alloca [52 x [3 x [18 x i8]]], align 1
  %y = alloca [3 x [52 x i8]], align 1
  %oil = alloca [3 x [18 x i8]], align 1
    #dbg_value(ptr %seed_pk, !3753, !DIExpression(), !3754)
    #dbg_value(ptr %P3, !3755, !DIExpression(), !3754)
    #dbg_value(ptr %message, !3756, !DIExpression(), !3754)
    #dbg_value(i32 %message_length, !3757, !DIExpression(), !3754)
    #dbg_value(ptr %sig, !3758, !DIExpression(), !3754)
    #dbg_declare(ptr %mu, !3759, !DIExpression(), !3760)
  call fastcc void @Expand_mu(ptr noundef %seed_pk, ptr noundef %message, i32 noundef %message_length, ptr noundef nonnull %mu) #4, !dbg !3761
    #dbg_declare(ptr %msg, !3762, !DIExpression(), !3763)
  call fastcc void @Hash(ptr noundef nonnull %mu, ptr noundef %sig, ptr noundef nonnull %msg) #4, !dbg !3764
    #dbg_declare(ptr %Pi1, !3765, !DIExpression(), !3766)
    #dbg_declare(ptr %Pi2, !3767, !DIExpression(), !3768)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 16, !dbg !3769
    #dbg_value(ptr %add.ptr, !3770, !DIExpression(), !3754)
    #dbg_value(ptr %add.ptr4, !3773, !DIExpression(), !3754)
    #dbg_declare(ptr %y, !3774, !DIExpression(), !3775)
    #dbg_declare(ptr %oil, !3776, !DIExpression(), !3777)
    #dbg_value(i32 0, !3778, !DIExpression(), !3780)
  br label %for.cond, !dbg !3781

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !dbg !3782
  %y_.0 = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr, %for.inc10 ], !dbg !3754
    #dbg_value(ptr %y_.0, !3770, !DIExpression(), !3754)
    #dbg_value(i32 %i.0, !3778, !DIExpression(), !3780)
  %exitcond1 = icmp ne i32 %i.0, 52, !dbg !3783
  br i1 %exitcond1, label %for.cond5.preheader, label %for.end12, !dbg !3785

for.cond5.preheader:                              ; preds = %for.cond
  br label %for.cond5, !dbg !3786

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !3788
    #dbg_value(i32 %k.0, !3789, !DIExpression(), !3790)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !3791
  br i1 %exitcond, label %for.body7, label %for.inc10, !dbg !3786

for.body7:                                        ; preds = %for.cond5
  %call = call fastcc zeroext i8 @Fql2Fq(ptr noundef nonnull %y_.0, i32 noundef %k.0) #4, !dbg !3793
  %arrayidx9 = getelementptr inbounds [3 x [52 x i8]], ptr %y, i32 0, i32 %k.0, i32 %i.0, !dbg !3794
  store i8 %call, ptr %arrayidx9, align 1, !dbg !3795
  %inc = add nuw nsw i32 %k.0, 1, !dbg !3796
    #dbg_value(i32 %inc, !3789, !DIExpression(), !3790)
  br label %for.cond5, !dbg !3797, !llvm.loop !3798

for.inc10:                                        ; preds = %for.cond5
  %inc11 = add nuw nsw i32 %i.0, 1, !dbg !3800
    #dbg_value(i32 %inc11, !3778, !DIExpression(), !3780)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %y_.0, i32 3, !dbg !3801
    #dbg_value(ptr %incdec.ptr, !3770, !DIExpression(), !3754)
  br label %for.cond, !dbg !3802, !llvm.loop !3803

for.end12:                                        ; preds = %for.cond
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sig, i32 172, !dbg !3805
  call fastcc void @VECTOR_V_CLEAR_TAIL(ptr noundef nonnull %y) #4, !dbg !3806
    #dbg_value(i32 0, !3807, !DIExpression(), !3809)
  br label %for.cond15, !dbg !3810

for.cond15:                                       ; preds = %for.inc29, %for.end12
  %oil_.0 = phi ptr [ %add.ptr4, %for.end12 ], [ %incdec.ptr31, %for.inc29 ], !dbg !3754
  %i14.0 = phi i32 [ 0, %for.end12 ], [ %inc30, %for.inc29 ], !dbg !3811
    #dbg_value(i32 %i14.0, !3807, !DIExpression(), !3809)
    #dbg_value(ptr %oil_.0, !3773, !DIExpression(), !3754)
  %exitcond3 = icmp ne i32 %i14.0, 18, !dbg !3812
  br i1 %exitcond3, label %for.cond19.preheader, label %for.end32, !dbg !3814

for.cond19.preheader:                             ; preds = %for.cond15
  br label %for.cond19, !dbg !3815

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body21
  %k18.0 = phi i32 [ %inc27, %for.body21 ], [ 0, %for.cond19.preheader ], !dbg !3817
    #dbg_value(i32 %k18.0, !3818, !DIExpression(), !3819)
  %exitcond2 = icmp ne i32 %k18.0, 3, !dbg !3820
  br i1 %exitcond2, label %for.body21, label %for.inc29, !dbg !3815

for.body21:                                       ; preds = %for.cond19
  %call23 = call fastcc zeroext i8 @Fql2Fq(ptr noundef nonnull %oil_.0, i32 noundef %k18.0) #4, !dbg !3822
  %arrayidx25 = getelementptr inbounds [3 x [18 x i8]], ptr %oil, i32 0, i32 %k18.0, i32 %i14.0, !dbg !3823
  store i8 %call23, ptr %arrayidx25, align 1, !dbg !3824
  %inc27 = add nuw nsw i32 %k18.0, 1, !dbg !3825
    #dbg_value(i32 %inc27, !3818, !DIExpression(), !3819)
  br label %for.cond19, !dbg !3826, !llvm.loop !3827

for.inc29:                                        ; preds = %for.cond19
  %inc30 = add nuw nsw i32 %i14.0, 1, !dbg !3829
    #dbg_value(i32 %inc30, !3807, !DIExpression(), !3809)
  %incdec.ptr31 = getelementptr inbounds nuw i8, ptr %oil_.0, i32 3, !dbg !3830
    #dbg_value(ptr %incdec.ptr31, !3773, !DIExpression(), !3754)
  br label %for.cond15, !dbg !3831, !llvm.loop !3832

for.end32:                                        ; preds = %for.cond15
  call fastcc void @VECTOR_M_CLEAR_TAIL(ptr noundef nonnull %oil) #4, !dbg !3834
    #dbg_value(i32 1, !3835, !DIExpression(), !3754)
  %call34 = call fastcc ptr @PRG_init_aes_ctr(ptr noundef %seed_pk) #4, !dbg !3836
    #dbg_value(ptr %call34, !3837, !DIExpression(), !3754)
    #dbg_value(i32 0, !3838, !DIExpression(), !3840)
  br label %for.cond36, !dbg !3841

for.cond36:                                       ; preds = %for.inc50, %for.end32
  %verify.0 = phi i32 [ 1, %for.end32 ], [ %and, %for.inc50 ], !dbg !3754
  %i35.0 = phi i32 [ 0, %for.end32 ], [ %inc51, %for.inc50 ], !dbg !3842
    #dbg_value(i32 %i35.0, !3838, !DIExpression(), !3840)
    #dbg_value(i32 %verify.0, !3835, !DIExpression(), !3754)
  %exitcond4 = icmp ne i32 %i35.0, 54, !dbg !3843
  br i1 %exitcond4, label %for.body38, label %for.end52, !dbg !3845

for.body38:                                       ; preds = %for.cond36
  %conv = zext nneg i32 %i35.0 to i64, !dbg !3846
  call fastcc void @Expand_pk(ptr noundef %call34, i64 noundef %conv, ptr noundef nonnull %Pi1, ptr noundef nonnull %Pi2) #4, !dbg !3848
  %arrayidx43 = getelementptr inbounds nuw [18 x [3 x [18 x i8]]], ptr %P3, i32 %i35.0, !dbg !3849
  %arrayidx47 = getelementptr inbounds nuw [54 x i8], ptr %msg, i32 0, i32 %i35.0, !dbg !3850
  %0 = load i8, ptr %arrayidx47, align 1, !dbg !3850
  %call48 = call fastcc zeroext i8 @VERIFY_i(ptr noundef nonnull %Pi1, ptr noundef nonnull %Pi2, ptr noundef %arrayidx43, ptr noundef nonnull %oil, ptr noundef nonnull %y, i8 noundef zeroext %0) #4, !dbg !3851
  %conv49 = zext nneg i8 %call48 to i32, !dbg !3851
  %and = and i32 %verify.0, %conv49, !dbg !3852
    #dbg_value(i32 %and, !3835, !DIExpression(), !3754)
  %tobool.not = icmp eq i32 %and, 0, !dbg !3853
  br i1 %tobool.not, label %for.end52, label %for.inc50, !dbg !3855

for.inc50:                                        ; preds = %for.body38
  %inc51 = add nuw nsw i32 %i35.0, 1, !dbg !3856
    #dbg_value(i32 %inc51, !3838, !DIExpression(), !3840)
  br label %for.cond36, !dbg !3857, !llvm.loop !3858

for.end52:                                        ; preds = %for.body38, %for.cond36
  %verify.1 = phi i32 [ %verify.0, %for.cond36 ], [ 0, %for.body38 ], !dbg !3754
    #dbg_value(i32 %verify.1, !3835, !DIExpression(), !3754)
  call fastcc void @PRG_final_aes_ctr(ptr noundef %call34) #4, !dbg !3860
  ret i32 %verify.1, !dbg !3861
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 2) i8 @VERIFY_i(ptr noundef nonnull %Pi1, ptr noundef nonnull %Pi2, ptr noundef %Pi3, ptr noundef nonnull %oil, ptr noundef nonnull %vineger, i8 noundef zeroext %msg_i) unnamed_addr #0 !dbg !3862 {
entry:
  %tmp_v = alloca [3 x [52 x i8]], align 1
  %tmp_o = alloca [3 x [18 x i8]], align 1
  %t = alloca [3 x i8], align 1
  %u = alloca [3 x i8], align 1
    #dbg_value(ptr %Pi1, !3867, !DIExpression(), !3868)
    #dbg_value(ptr %Pi2, !3869, !DIExpression(), !3868)
    #dbg_value(ptr %Pi3, !3870, !DIExpression(), !3868)
    #dbg_value(ptr %oil, !3871, !DIExpression(), !3868)
    #dbg_value(ptr %vineger, !3872, !DIExpression(), !3868)
    #dbg_value(i8 %msg_i, !3873, !DIExpression(), !3868)
    #dbg_declare(ptr %tmp_v, !3874, !DIExpression(), !3875)
    #dbg_declare(ptr %tmp_o, !3876, !DIExpression(), !3877)
    #dbg_declare(ptr %t, !3878, !DIExpression(), !3879)
    #dbg_declare(ptr %u, !3880, !DIExpression(), !3881)
    #dbg_value(i32 0, !3882, !DIExpression(), !3868)
  br label %for.cond, !dbg !3883

for.cond:                                         ; preds = %for.inc14, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !dbg !3885
    #dbg_value(i32 %j.0, !3882, !DIExpression(), !3868)
  %exitcond1 = icmp ne i32 %j.0, 52, !dbg !3886
  br i1 %exitcond1, label %for.body, label %for.cond17.preheader, !dbg !3888

for.cond17.preheader:                             ; preds = %for.cond
  br label %for.cond17, !dbg !3889

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [3 x [18 x i8]], ptr %Pi2, i32 %j.0, !dbg !3891
  call void @VECTOR_M_dot_VECTOR_M(ptr noundef nonnull %oil, ptr noundef nonnull %arrayidx, ptr noundef nonnull %t) #4, !dbg !3893
  %arrayidx2 = getelementptr inbounds nuw [3 x [52 x i8]], ptr %Pi1, i32 %j.0, !dbg !3894
  call void @VECTOR_V_dot_VECTOR_V(ptr noundef nonnull %vineger, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %u) #4, !dbg !3895
    #dbg_value(i32 0, !3896, !DIExpression(), !3868)
  br label %for.cond5, !dbg !3897

for.cond5:                                        ; preds = %for.body7, %for.body
  %k.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body7 ], !dbg !3899
    #dbg_value(i32 %k.0, !3896, !DIExpression(), !3868)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !3900
  br i1 %exitcond, label %for.body7, label %for.inc14, !dbg !3902

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds nuw [3 x i8], ptr %t, i32 0, i32 %k.0, !dbg !3903
  %0 = load i8, ptr %arrayidx8, align 1, !dbg !3903
  %call = call fastcc zeroext i8 @Fq_add(i8 noundef zeroext %0, i8 noundef zeroext %0) #4, !dbg !3904
  %arrayidx10 = getelementptr inbounds nuw [3 x i8], ptr %u, i32 0, i32 %k.0, !dbg !3905
  %1 = load i8, ptr %arrayidx10, align 1, !dbg !3905
  %call11 = call fastcc zeroext i8 @Fq_add(i8 noundef zeroext %call, i8 noundef zeroext %1) #4, !dbg !3906
  %arrayidx13 = getelementptr inbounds nuw [3 x [52 x i8]], ptr %tmp_v, i32 0, i32 %k.0, i32 %j.0, !dbg !3907
  store i8 %call11, ptr %arrayidx13, align 1, !dbg !3908
  %inc = add nuw nsw i32 %k.0, 1, !dbg !3909
    #dbg_value(i32 %inc, !3896, !DIExpression(), !3868)
  br label %for.cond5, !dbg !3910, !llvm.loop !3911

for.inc14:                                        ; preds = %for.cond5
  %inc15 = add nuw nsw i32 %j.0, 1, !dbg !3913
    #dbg_value(i32 %inc15, !3882, !DIExpression(), !3868)
  br label %for.cond, !dbg !3914, !llvm.loop !3915

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc32
  %j.1 = phi i32 [ %inc33, %for.inc32 ], [ 0, %for.cond17.preheader ], !dbg !3917
    #dbg_value(i32 %j.1, !3882, !DIExpression(), !3868)
  %exitcond3 = icmp ne i32 %j.1, 18, !dbg !3918
  br i1 %exitcond3, label %for.body19, label %for.end34, !dbg !3889

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw [3 x [18 x i8]], ptr %Pi3, i32 %j.1, !dbg !3920
  call void @VECTOR_M_dot_VECTOR_M(ptr noundef nonnull %oil, ptr noundef %arrayidx20, ptr noundef nonnull %t) #4, !dbg !3922
    #dbg_value(i32 0, !3896, !DIExpression(), !3868)
  br label %for.cond23, !dbg !3923

for.cond23:                                       ; preds = %for.body25, %for.body19
  %k.1 = phi i32 [ 0, %for.body19 ], [ %inc30, %for.body25 ], !dbg !3925
    #dbg_value(i32 %k.1, !3896, !DIExpression(), !3868)
  %exitcond2 = icmp ne i32 %k.1, 3, !dbg !3926
  br i1 %exitcond2, label %for.body25, label %for.inc32, !dbg !3928

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds nuw [3 x i8], ptr %t, i32 0, i32 %k.1, !dbg !3929
  %2 = load i8, ptr %arrayidx26, align 1, !dbg !3929
  %arrayidx28 = getelementptr inbounds nuw [3 x [18 x i8]], ptr %tmp_o, i32 0, i32 %k.1, i32 %j.1, !dbg !3930
  store i8 %2, ptr %arrayidx28, align 1, !dbg !3931
  %inc30 = add nuw nsw i32 %k.1, 1, !dbg !3932
    #dbg_value(i32 %inc30, !3896, !DIExpression(), !3868)
  br label %for.cond23, !dbg !3933, !llvm.loop !3934

for.inc32:                                        ; preds = %for.cond23
  %inc33 = add nuw nsw i32 %j.1, 1, !dbg !3936
    #dbg_value(i32 %inc33, !3882, !DIExpression(), !3868)
  br label %for.cond17, !dbg !3937, !llvm.loop !3938

for.end34:                                        ; preds = %for.cond17
  call void @VECTOR_V_dot_VECTOR_V(ptr noundef nonnull %vineger, ptr noundef nonnull %tmp_v, ptr noundef nonnull %t) #4, !dbg !3940
  call void @VECTOR_M_dot_VECTOR_M(ptr noundef nonnull %oil, ptr noundef nonnull %tmp_o, ptr noundef nonnull %u) #4, !dbg !3941
  %3 = load i8, ptr %t, align 1, !dbg !3942
  %4 = load i8, ptr %u, align 1, !dbg !3943
  %call41 = call fastcc zeroext i8 @Fq_add(i8 noundef zeroext %3, i8 noundef zeroext %4) #4, !dbg !3944
  %cmp43 = icmp eq i8 %msg_i, %call41, !dbg !3945
  %conv45 = zext i1 %cmp43 to i8, !dbg !3946
  ret i8 %conv45, !dbg !3947
}

; Function Attrs: nounwind
define dso_local void @store_QRUOV_P3(ptr noundef %P3, ptr noundef %pool, ptr noundef %pool_bits) local_unnamed_addr #0 !dbg !3948 {
entry:
    #dbg_value(ptr %P3, !3952, !DIExpression(), !3953)
    #dbg_value(ptr %pool, !3954, !DIExpression(), !3953)
    #dbg_value(ptr %pool_bits, !3955, !DIExpression(), !3953)
    #dbg_value(i32 0, !3956, !DIExpression(), !3958)
  br label %for.cond, !dbg !3959

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !3960
    #dbg_value(i32 %i.0, !3956, !DIExpression(), !3958)
  %exitcond3 = icmp ne i32 %i.0, 54, !dbg !3961
  br i1 %exitcond3, label %for.cond1.preheader, label %for.end22, !dbg !3963

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !3964

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc17
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ 0, %for.cond1.preheader ], !dbg !3967
    #dbg_value(i32 %j.0, !3968, !DIExpression(), !3969)
  %exitcond2 = icmp ne i32 %j.0, 18, !dbg !3970
  br i1 %exitcond2, label %for.cond4.preheader, label %for.inc20, !dbg !3964

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !3972

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc14
  %k.0 = phi i32 [ %inc15, %for.inc14 ], [ 0, %for.cond4.preheader ], !dbg !3975
    #dbg_value(i32 %k.0, !3976, !DIExpression(), !3977)
  %exitcond1 = icmp ne i32 %k.0, 18, !dbg !3978
  br i1 %exitcond1, label %for.body6, label %for.inc17, !dbg !3972

for.body6:                                        ; preds = %for.cond4
  %cmp7 = icmp ult i32 %k.0, %j.0, !dbg !3980
  br i1 %cmp7, label %for.inc14, label %for.cond8.preheader, !dbg !3980

for.cond8.preheader:                              ; preds = %for.body6
  br label %for.cond8, !dbg !3983

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body10
  %n.0 = phi i32 [ %inc, %for.body10 ], [ 0, %for.cond8.preheader ], !dbg !3986
    #dbg_value(i32 %n.0, !3987, !DIExpression(), !3988)
  %exitcond = icmp ne i32 %n.0, 3, !dbg !3989
  br i1 %exitcond, label %for.body10, label %for.inc14.loopexit, !dbg !3983

for.body10:                                       ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds [18 x [3 x [18 x i8]]], ptr %P3, i32 %i.0, i32 %j.0, i32 %n.0, i32 %k.0, !dbg !3991
  %0 = load i8, ptr %arrayidx13, align 1, !dbg !3991
  %conv = zext i8 %0 to i32, !dbg !3991
  call fastcc void @store_Fq(i32 noundef %conv, ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !3993
  %inc = add nuw nsw i32 %n.0, 1, !dbg !3994
    #dbg_value(i32 %inc, !3987, !DIExpression(), !3988)
  br label %for.cond8, !dbg !3995, !llvm.loop !3996

for.inc14.loopexit:                               ; preds = %for.cond8
  br label %for.inc14, !dbg !3998

for.inc14:                                        ; preds = %for.inc14.loopexit, %for.body6
  %inc15 = add nuw nsw i32 %k.0, 1, !dbg !3998
    #dbg_value(i32 %inc15, !3976, !DIExpression(), !3977)
  br label %for.cond4, !dbg !3999, !llvm.loop !4000

for.inc17:                                        ; preds = %for.cond4
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !4002
    #dbg_value(i32 %inc18, !3968, !DIExpression(), !3969)
  br label %for.cond1, !dbg !4003, !llvm.loop !4004

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw nsw i32 %i.0, 1, !dbg !4006
    #dbg_value(i32 %inc21, !3956, !DIExpression(), !3958)
  br label %for.cond, !dbg !4007, !llvm.loop !4008

for.end22:                                        ; preds = %for.cond
  ret void, !dbg !4010
}

; Function Attrs: nounwind
define internal fastcc void @store_Fq(i32 noundef range(i32 0, 256) %x, ptr noundef %pool, ptr noundef %pool_bits) unnamed_addr #0 !dbg !4011 {
entry:
    #dbg_value(i32 %x, !4014, !DIExpression(), !4015)
    #dbg_value(ptr %pool, !4016, !DIExpression(), !4015)
    #dbg_value(ptr %pool_bits, !4017, !DIExpression(), !4015)
  call fastcc void @store_bits(i32 noundef %x, i32 noundef 7, ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4018
  ret void, !dbg !4019
}

; Function Attrs: nounwind
define internal fastcc void @store_bits(i32 noundef range(i32 0, 256) %x, i32 noundef %num_bits, ptr noundef %pool, ptr noundef %pool_bits) unnamed_addr #0 !dbg !4020 {
entry:
    #dbg_value(i32 %x, !4023, !DIExpression(), !4024)
    #dbg_value(i32 7, !4025, !DIExpression(), !4024)
    #dbg_value(ptr %pool, !4026, !DIExpression(), !4024)
    #dbg_value(ptr %pool_bits, !4027, !DIExpression(), !4024)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4028
  %and = and i32 %0, 7, !dbg !4029
    #dbg_value(i32 %and, !4030, !DIExpression(), !4024)
  %shr = lshr i32 %0, 3, !dbg !4031
    #dbg_value(i32 %shr, !4032, !DIExpression(), !4024)
    #dbg_value(i32 127, !4033, !DIExpression(), !4024)
  %and1 = and i32 %x, 127, !dbg !4034
    #dbg_value(i32 %and1, !4023, !DIExpression(), !4024)
  %shl2 = shl nuw nsw i32 %and1, %and, !dbg !4035
    #dbg_value(i32 %shl2, !4023, !DIExpression(), !4024)
    #dbg_value(i32 %shl2, !4036, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4024)
  %cmp = icmp eq i32 %and, 0, !dbg !4037
  br i1 %cmp, label %if.then, label %if.else, !dbg !4037

if.then:                                          ; preds = %entry
  %conv = trunc nuw i32 %shl2 to i8, !dbg !4039
    #dbg_value(i8 %conv, !4036, !DIExpression(), !4024)
  %arrayidx = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4040
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4042
  br label %if.end, !dbg !4043

if.else:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4044
  %1 = load i8, ptr %arrayidx6, align 1, !dbg !4046
  %2 = trunc i32 %shl2 to i8, !dbg !4046
  %conv8 = or i8 %1, %2, !dbg !4046
  store i8 %conv8, ptr %arrayidx6, align 1, !dbg !4046
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp9 = icmp samesign ugt i32 %and, 1, !dbg !4047
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !4047

if.then11:                                        ; preds = %if.end
  %shr12 = lshr i32 %shl2, 8, !dbg !4049
  %conv13 = trunc nuw nsw i32 %shr12 to i8, !dbg !4051
    #dbg_value(i8 %conv13, !4052, !DIExpression(), !4053)
  %3 = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4054
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !4054
  store i8 %conv13, ptr %arrayidx15, align 1, !dbg !4055
  br label %if.end16, !dbg !4056

if.end16:                                         ; preds = %if.then11, %if.end
  %4 = load i32, ptr %pool_bits, align 4, !dbg !4057
  %add17 = add i32 %4, 7, !dbg !4057
  store i32 %add17, ptr %pool_bits, align 4, !dbg !4057
  ret void, !dbg !4058
}

; Function Attrs: nounwind
define dso_local void @restore_QRUOV_P3(ptr noundef %pool, ptr noundef %pool_bits, ptr noundef %P3) local_unnamed_addr #0 !dbg !4059 {
entry:
    #dbg_value(ptr %pool, !4062, !DIExpression(), !4063)
    #dbg_value(ptr %pool_bits, !4064, !DIExpression(), !4063)
    #dbg_value(ptr %P3, !4065, !DIExpression(), !4063)
    #dbg_value(i32 0, !4066, !DIExpression(), !4068)
  br label %for.cond, !dbg !4069

for.cond:                                         ; preds = %for.inc35, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc36, %for.inc35 ], !dbg !4070
    #dbg_value(i32 %i.0, !4066, !DIExpression(), !4068)
  %exitcond5 = icmp ne i32 %i.0, 54, !dbg !4071
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end37, !dbg !4073

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !4074

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc32
  %j.0 = phi i32 [ %inc33, %for.inc32 ], [ 0, %for.cond1.preheader ], !dbg !4077
    #dbg_value(i32 %j.0, !4078, !DIExpression(), !4079)
  %exitcond4 = icmp ne i32 %j.0, 18, !dbg !4080
  br i1 %exitcond4, label %for.cond4.preheader, label %for.inc35, !dbg !4074

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !4082

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc29
  %k.0 = phi i32 [ %inc30, %for.inc29 ], [ 0, %for.cond4.preheader ], !dbg !4085
    #dbg_value(i32 %k.0, !4086, !DIExpression(), !4087)
  %exitcond3 = icmp ne i32 %k.0, 18, !dbg !4088
  br i1 %exitcond3, label %for.body6, label %for.inc32, !dbg !4082

for.body6:                                        ; preds = %for.cond4
  %cmp7 = icmp ult i32 %k.0, %j.0, !dbg !4090
  br i1 %cmp7, label %for.cond8.preheader, label %for.cond19.preheader, !dbg !4090

for.cond19.preheader:                             ; preds = %for.body6
  br label %for.cond19, !dbg !4093

for.cond8.preheader:                              ; preds = %for.body6
  br label %for.cond8, !dbg !4096

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body10
  %n.0 = phi i32 [ %inc, %for.body10 ], [ 0, %for.cond8.preheader ], !dbg !4099
    #dbg_value(i32 %n.0, !4100, !DIExpression(), !4101)
  %exitcond2 = icmp ne i32 %n.0, 3, !dbg !4102
  br i1 %exitcond2, label %for.body10, label %for.inc29.loopexit, !dbg !4096

for.body10:                                       ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds [18 x [3 x [18 x i8]]], ptr %P3, i32 %i.0, i32 %k.0, i32 %n.0, i32 %j.0, !dbg !4104
  %0 = load i8, ptr %arrayidx13, align 1, !dbg !4104
  %arrayidx17 = getelementptr inbounds [18 x [3 x [18 x i8]]], ptr %P3, i32 %i.0, i32 %j.0, i32 %n.0, i32 %k.0, !dbg !4105
  store i8 %0, ptr %arrayidx17, align 1, !dbg !4106
  %inc = add nuw nsw i32 %n.0, 1, !dbg !4107
    #dbg_value(i32 %inc, !4100, !DIExpression(), !4101)
  br label %for.cond8, !dbg !4108, !llvm.loop !4109

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body21
  %n18.0 = phi i32 [ %inc27, %for.body21 ], [ 0, %for.cond19.preheader ], !dbg !4111
    #dbg_value(i32 %n18.0, !4112, !DIExpression(), !4113)
  %exitcond = icmp ne i32 %n18.0, 3, !dbg !4114
  br i1 %exitcond, label %for.body21, label %for.inc29.loopexit1, !dbg !4093

for.body21:                                       ; preds = %for.cond19
  %call = call fastcc zeroext i8 @restore_Fq(ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4116
  %arrayidx25 = getelementptr inbounds [18 x [3 x [18 x i8]]], ptr %P3, i32 %i.0, i32 %j.0, i32 %n18.0, i32 %k.0, !dbg !4117
  store i8 %call, ptr %arrayidx25, align 1, !dbg !4118
  %inc27 = add nuw nsw i32 %n18.0, 1, !dbg !4119
    #dbg_value(i32 %inc27, !4112, !DIExpression(), !4113)
  br label %for.cond19, !dbg !4120, !llvm.loop !4121

for.inc29.loopexit:                               ; preds = %for.cond8
  br label %for.inc29, !dbg !4123

for.inc29.loopexit1:                              ; preds = %for.cond19
  br label %for.inc29, !dbg !4123

for.inc29:                                        ; preds = %for.inc29.loopexit1, %for.inc29.loopexit
  %inc30 = add nuw nsw i32 %k.0, 1, !dbg !4123
    #dbg_value(i32 %inc30, !4086, !DIExpression(), !4087)
  br label %for.cond4, !dbg !4124, !llvm.loop !4125

for.inc32:                                        ; preds = %for.cond4
  %inc33 = add nuw nsw i32 %j.0, 1, !dbg !4127
    #dbg_value(i32 %inc33, !4078, !DIExpression(), !4079)
  br label %for.cond1, !dbg !4128, !llvm.loop !4129

for.inc35:                                        ; preds = %for.cond1
  %inc36 = add nuw nsw i32 %i.0, 1, !dbg !4131
    #dbg_value(i32 %inc36, !4066, !DIExpression(), !4068)
  br label %for.cond, !dbg !4132, !llvm.loop !4133

for.end37:                                        ; preds = %for.cond
  ret void, !dbg !4135
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, -128) i8 @restore_Fq(ptr noundef %pool, ptr noundef %pool_bits) unnamed_addr #0 !dbg !4136 {
entry:
    #dbg_value(ptr %pool, !4139, !DIExpression(), !4140)
    #dbg_value(ptr %pool_bits, !4141, !DIExpression(), !4140)
  %call = call fastcc i32 @restore_bits(ptr noundef %pool, ptr noundef %pool_bits, i32 noundef 7) #4, !dbg !4142
  %conv = trunc nuw nsw i32 %call to i8, !dbg !4143
  ret i8 %conv, !dbg !4144
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 128) i32 @restore_bits(ptr noundef %pool, ptr noundef %pool_bits, i32 noundef %num_bits) unnamed_addr #0 !dbg !4145 {
entry:
    #dbg_value(ptr %pool, !4148, !DIExpression(), !4149)
    #dbg_value(ptr %pool_bits, !4150, !DIExpression(), !4149)
    #dbg_value(i32 7, !4151, !DIExpression(), !4149)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4152
  %and = and i32 %0, 7, !dbg !4153
    #dbg_value(i32 %and, !4154, !DIExpression(), !4149)
  %shr = lshr i32 %0, 3, !dbg !4155
    #dbg_value(i32 %shr, !4156, !DIExpression(), !4149)
    #dbg_value(!DIArgList(i32 1, i32 7), !4157, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4149)
  %arrayidx = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4158
  %1 = load i8, ptr %arrayidx, align 1, !dbg !4158
  %cmp = icmp samesign ugt i32 %and, 1, !dbg !4159
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4160

cond.true:                                        ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4161
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %2, i32 1, !dbg !4161
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !4161
  %conv4 = zext i8 %3 to i32, !dbg !4162
  %4 = shl nuw nsw i32 %conv4, 8, !dbg !4163
  br label %cond.end, !dbg !4160

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %entry ], !dbg !4160
  %conv = zext i8 %1 to i32, !dbg !4164
    #dbg_value(i32 127, !4157, !DIExpression(), !4149)
  %or = or disjoint i32 %cond, %conv, !dbg !4165
    #dbg_value(i32 %or, !4166, !DIExpression(), !4149)
  %shr6 = lshr i32 %or, %and, !dbg !4167
    #dbg_value(i32 %shr6, !4166, !DIExpression(), !4149)
  %and7 = and i32 %shr6, 127, !dbg !4168
    #dbg_value(i32 %and7, !4166, !DIExpression(), !4149)
  %5 = load i32, ptr %pool_bits, align 4, !dbg !4169
  %add8 = add i32 %5, 7, !dbg !4169
  store i32 %add8, ptr %pool_bits, align 4, !dbg !4169
  ret i32 %and7, !dbg !4170
}

; Function Attrs: nounwind
define dso_local i32 @crypto_sign_keypair(ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !74 {
entry:
  %seed_sk = alloca [16 x i8], align 1
  %seed_pk = alloca [16 x i8], align 1
  %sk_pool_bits = alloca i32, align 4
  %pk_pool_bits = alloca i32, align 4
    #dbg_value(ptr %pk, !4171, !DIExpression(), !4172)
    #dbg_value(ptr %sk, !4173, !DIExpression(), !4172)
    #dbg_declare(ptr %seed_sk, !4174, !DIExpression(), !4177)
  %call = call i32 @randombytes(ptr noundef nonnull %seed_sk, i64 noundef 16) #4, !dbg !4178
    #dbg_declare(ptr %seed_pk, !4179, !DIExpression(), !4180)
  %call2 = call i32 @randombytes(ptr noundef nonnull %seed_pk, i64 noundef 16) #4, !dbg !4181
  call void @QRUOV_KeyGen(ptr noundef nonnull %seed_sk, ptr noundef nonnull %seed_pk, ptr noundef nonnull @crypto_sign_keypair.P3) #4, !dbg !4182
    #dbg_value(i32 0, !4183, !DIExpression(), !4172)
  store i32 0, ptr %sk_pool_bits, align 4, !dbg !4184
    #dbg_value(ptr %sk_pool_bits, !4183, !DIExpression(DW_OP_deref), !4172)
  call fastcc void @store_QRUOV_SEED(ptr noundef nonnull %seed_sk, ptr noundef %sk, ptr noundef nonnull %sk_pool_bits) #4, !dbg !4185
  call fastcc void @store_QRUOV_SEED(ptr noundef nonnull %seed_pk, ptr noundef %sk, ptr noundef nonnull %sk_pool_bits) #4, !dbg !4186
    #dbg_value(i32 0, !4187, !DIExpression(), !4172)
  store i32 0, ptr %pk_pool_bits, align 4, !dbg !4188
    #dbg_value(ptr %pk_pool_bits, !4187, !DIExpression(DW_OP_deref), !4172)
  call fastcc void @store_QRUOV_SEED(ptr noundef nonnull %seed_pk, ptr noundef %pk, ptr noundef nonnull %pk_pool_bits) #4, !dbg !4189
  call void @store_QRUOV_P3(ptr noundef nonnull @crypto_sign_keypair.P3, ptr noundef %pk, ptr noundef nonnull %pk_pool_bits) #4, !dbg !4190
  ret i32 0, !dbg !4191
}

; Function Attrs: nounwind
define internal fastcc void @store_QRUOV_SEED(ptr noundef nonnull %seed, ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4192 {
entry:
    #dbg_value(ptr %seed, !4195, !DIExpression(), !4196)
    #dbg_value(ptr %pool, !4197, !DIExpression(), !4196)
    #dbg_value(ptr %pool_bits, !4198, !DIExpression(), !4196)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4199
  %shr = lshr i32 %0, 3, !dbg !4200
    #dbg_value(i32 %shr, !4201, !DIExpression(), !4196)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4202
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %seed, i32 noundef 16) #6, !dbg !4203
  %1 = load i32, ptr %pool_bits, align 4, !dbg !4204
  %add = add i32 %1, 128, !dbg !4204
  store i32 %add, ptr %pool_bits, align 4, !dbg !4204
  ret void, !dbg !4205
}

; Function Attrs: nounwind
define dso_local i32 @crypto_sign(ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i64 noundef %mlen, ptr noundef %sk) local_unnamed_addr #0 !dbg !4206 {
entry:
  %sk_pool_bits = alloca i32, align 4
  %seed_sk = alloca [16 x i8], align 1
  %seed_pk = alloca [16 x i8], align 1
  %seed_y = alloca [16 x i8], align 1
  %seed_r = alloca [16 x i8], align 1
  %seed_sol = alloca [16 x i8], align 1
  %sig = alloca [226 x i8], align 1
  %sig_pool_bits = alloca i32, align 4
    #dbg_value(ptr %sm, !4207, !DIExpression(), !4208)
    #dbg_value(ptr %smlen, !4209, !DIExpression(), !4208)
    #dbg_value(ptr %m, !4210, !DIExpression(), !4208)
    #dbg_value(i64 %mlen, !4211, !DIExpression(), !4208)
    #dbg_value(ptr %sk, !4212, !DIExpression(), !4208)
    #dbg_value(i32 0, !4213, !DIExpression(), !4208)
  store i32 0, ptr %sk_pool_bits, align 4, !dbg !4214
    #dbg_declare(ptr %seed_sk, !4215, !DIExpression(), !4216)
    #dbg_value(ptr %sk_pool_bits, !4213, !DIExpression(DW_OP_deref), !4208)
  call fastcc void @restore_QRUOV_SEED(ptr noundef %sk, ptr noundef nonnull %sk_pool_bits, ptr noundef nonnull %seed_sk) #4, !dbg !4217
    #dbg_declare(ptr %seed_pk, !4218, !DIExpression(), !4219)
  call fastcc void @restore_QRUOV_SEED(ptr noundef %sk, ptr noundef nonnull %sk_pool_bits, ptr noundef nonnull %seed_pk) #4, !dbg !4220
    #dbg_declare(ptr %seed_y, !4221, !DIExpression(), !4222)
  %call = call i32 @randombytes(ptr noundef nonnull %seed_y, i64 noundef 16) #4, !dbg !4223
    #dbg_declare(ptr %seed_r, !4224, !DIExpression(), !4225)
  %call4 = call i32 @randombytes(ptr noundef nonnull %seed_r, i64 noundef 16) #4, !dbg !4226
    #dbg_declare(ptr %seed_sol, !4227, !DIExpression(), !4228)
  %call6 = call i32 @randombytes(ptr noundef nonnull %seed_sol, i64 noundef 16) #4, !dbg !4229
    #dbg_declare(ptr %sig, !4230, !DIExpression(), !4235)
  %conv = trunc i64 %mlen to i32, !dbg !4236
  call void @QRUOV_Sign(ptr noundef nonnull %seed_sk, ptr noundef nonnull %seed_pk, ptr noundef nonnull %seed_y, ptr noundef nonnull %seed_r, ptr noundef nonnull %seed_sol, ptr noundef %m, i32 noundef %conv, ptr noundef nonnull %sig) #4, !dbg !4237
    #dbg_value(i32 0, !4238, !DIExpression(), !4208)
  store i32 0, ptr %sig_pool_bits, align 4, !dbg !4239
    #dbg_value(ptr %sig_pool_bits, !4238, !DIExpression(DW_OP_deref), !4208)
  call fastcc void @store_QRUOV_SIGNATURE(ptr noundef nonnull %sig, ptr noundef %sm, ptr noundef nonnull %sig_pool_bits) #4, !dbg !4240
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 200, !dbg !4241
  %conv14 = trunc i64 %mlen to i32, !dbg !4242
  %call15 = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %conv14) #6, !dbg !4243
  %add = add i64 %mlen, 200, !dbg !4244
  store i64 %add, ptr %smlen, align 8, !dbg !4245
  ret i32 0, !dbg !4246
}

; Function Attrs: nounwind
define internal fastcc void @restore_QRUOV_SEED(ptr noundef %pool, ptr noundef nonnull %pool_bits, ptr noundef nonnull %seed) unnamed_addr #0 !dbg !4247 {
entry:
    #dbg_value(ptr %pool, !4250, !DIExpression(), !4251)
    #dbg_value(ptr %pool_bits, !4252, !DIExpression(), !4251)
    #dbg_value(ptr %seed, !4253, !DIExpression(), !4251)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4254
  %shr = lshr i32 %0, 3, !dbg !4255
    #dbg_value(i32 %shr, !4256, !DIExpression(), !4251)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4257
  %call = call ptr @memcpy(ptr noundef nonnull %seed, ptr noundef %add.ptr, i32 noundef 16) #6, !dbg !4258
  %1 = load i32, ptr %pool_bits, align 4, !dbg !4259
  %add = add i32 %1, 128, !dbg !4259
  store i32 %add, ptr %pool_bits, align 4, !dbg !4259
  ret void, !dbg !4260
}

; Function Attrs: nounwind
define internal fastcc void @store_QRUOV_SIGNATURE(ptr noundef nonnull %sig, ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4261 {
entry:
    #dbg_value(ptr %sig, !4262, !DIExpression(), !4263)
    #dbg_value(ptr %pool, !4264, !DIExpression(), !4263)
    #dbg_value(ptr %pool_bits, !4265, !DIExpression(), !4263)
  call fastcc void @store_QRUOV_SALT(ptr noundef %sig, ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4266
    #dbg_value(i32 0, !4267, !DIExpression(), !4269)
  br label %for.cond, !dbg !4270

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4271
    #dbg_value(i32 %i.0, !4267, !DIExpression(), !4269)
  %exitcond = icmp ne i32 %i.0, 70, !dbg !4272
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4274

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 16, !dbg !4275
  %arrayidx = getelementptr inbounds nuw [3 x i8], ptr %add.ptr, i32 %i.0, !dbg !4275
  call fastcc void @store_Fql(ptr noundef nonnull %arrayidx, ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4276
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4277
    #dbg_value(i32 %inc, !4267, !DIExpression(), !4269)
  br label %for.cond, !dbg !4278, !llvm.loop !4279

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4281
}

; Function Attrs: nounwind
define internal fastcc void @store_QRUOV_SALT(ptr noundef nonnull %salt, ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4282 {
entry:
    #dbg_value(ptr %salt, !4283, !DIExpression(), !4284)
    #dbg_value(ptr %pool, !4285, !DIExpression(), !4284)
    #dbg_value(ptr %pool_bits, !4286, !DIExpression(), !4284)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4287
  %shr = lshr i32 %0, 3, !dbg !4288
    #dbg_value(i32 %shr, !4289, !DIExpression(), !4284)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4290
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %salt, i32 noundef 16) #6, !dbg !4291
  %1 = load i32, ptr %pool_bits, align 4, !dbg !4292
  %add = add i32 %1, 128, !dbg !4292
  store i32 %add, ptr %pool_bits, align 4, !dbg !4292
  ret void, !dbg !4293
}

; Function Attrs: nounwind
define internal fastcc void @store_Fql(ptr noundef nonnull %X, ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4294 {
entry:
    #dbg_value(ptr %X, !4297, !DIExpression(), !4298)
    #dbg_value(ptr %pool, !4299, !DIExpression(), !4298)
    #dbg_value(ptr %pool_bits, !4300, !DIExpression(), !4298)
  call fastcc void @store_Fq_vector(ptr noundef %X, i32 noundef 3, ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4301
  ret void, !dbg !4302
}

; Function Attrs: nounwind
define internal fastcc void @store_Fq_vector(ptr noundef nonnull %X, i32 noundef %n, ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4303 {
entry:
    #dbg_value(ptr %X, !4306, !DIExpression(), !4307)
    #dbg_value(i32 3, !4308, !DIExpression(), !4307)
    #dbg_value(ptr %pool, !4309, !DIExpression(), !4307)
    #dbg_value(ptr %pool_bits, !4310, !DIExpression(), !4307)
    #dbg_value(i32 0, !4311, !DIExpression(), !4313)
  br label %for.cond, !dbg !4314

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4315
    #dbg_value(i32 %i.0, !4311, !DIExpression(), !4313)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !4316
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4318

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %X, i32 %i.0, !dbg !4319
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4319
  %conv = zext i8 %0 to i32, !dbg !4319
  call fastcc void @store_Fq.19(i32 noundef %conv, ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4320
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4321
    #dbg_value(i32 %inc, !4311, !DIExpression(), !4313)
  br label %for.cond, !dbg !4322, !llvm.loop !4323

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4325
}

; Function Attrs: nounwind
define internal fastcc void @store_Fq.19(i32 noundef range(i32 0, 256) %x, ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4326 {
entry:
    #dbg_value(i32 %x, !4327, !DIExpression(), !4328)
    #dbg_value(ptr %pool, !4329, !DIExpression(), !4328)
    #dbg_value(ptr %pool_bits, !4330, !DIExpression(), !4328)
  call fastcc void @store_bits.20(i32 noundef %x, i32 noundef 7, ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4331
  ret void, !dbg !4332
}

; Function Attrs: nounwind
define internal fastcc void @store_bits.20(i32 noundef range(i32 0, 256) %x, i32 noundef %num_bits, ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4333 {
entry:
    #dbg_value(i32 %x, !4334, !DIExpression(), !4335)
    #dbg_value(i32 7, !4336, !DIExpression(), !4335)
    #dbg_value(ptr %pool, !4337, !DIExpression(), !4335)
    #dbg_value(ptr %pool_bits, !4338, !DIExpression(), !4335)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4339
  %and = and i32 %0, 7, !dbg !4340
    #dbg_value(i32 %and, !4341, !DIExpression(), !4335)
  %shr = lshr i32 %0, 3, !dbg !4342
    #dbg_value(i32 %shr, !4343, !DIExpression(), !4335)
    #dbg_value(i32 127, !4344, !DIExpression(), !4335)
  %and1 = and i32 %x, 127, !dbg !4345
    #dbg_value(i32 %and1, !4334, !DIExpression(), !4335)
  %shl2 = shl nuw nsw i32 %and1, %and, !dbg !4346
    #dbg_value(i32 %shl2, !4334, !DIExpression(), !4335)
    #dbg_value(i32 %shl2, !4347, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4335)
  %cmp = icmp eq i32 %and, 0, !dbg !4348
  br i1 %cmp, label %if.then, label %if.else, !dbg !4348

if.then:                                          ; preds = %entry
  %conv = trunc nuw i32 %shl2 to i8, !dbg !4350
    #dbg_value(i8 %conv, !4347, !DIExpression(), !4335)
  %arrayidx = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4351
  store i8 %conv, ptr %arrayidx, align 1, !dbg !4353
  br label %if.end, !dbg !4354

if.else:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4355
  %1 = load i8, ptr %arrayidx6, align 1, !dbg !4357
  %2 = trunc i32 %shl2 to i8, !dbg !4357
  %conv8 = or i8 %1, %2, !dbg !4357
  store i8 %conv8, ptr %arrayidx6, align 1, !dbg !4357
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp9 = icmp samesign ugt i32 %and, 1, !dbg !4358
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !4358

if.then11:                                        ; preds = %if.end
  %shr12 = lshr i32 %shl2, 8, !dbg !4360
  %conv13 = trunc nuw nsw i32 %shr12 to i8, !dbg !4362
    #dbg_value(i8 %conv13, !4363, !DIExpression(), !4364)
  %3 = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4365
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !4365
  store i8 %conv13, ptr %arrayidx15, align 1, !dbg !4366
  br label %if.end16, !dbg !4367

if.end16:                                         ; preds = %if.then11, %if.end
  %4 = load i32, ptr %pool_bits, align 4, !dbg !4368
  %add17 = add i32 %4, 7, !dbg !4368
  store i32 %add17, ptr %pool_bits, align 4, !dbg !4368
  ret void, !dbg !4369
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @crypto_sign_open(ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i64 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !93 {
entry:
  %pk_pool_bits = alloca i32, align 4
  %seed_pk = alloca [16 x i8], align 1
  %sig_pool_bits = alloca i32, align 4
  %sig = alloca [226 x i8], align 1
    #dbg_value(ptr %m, !4370, !DIExpression(), !4371)
    #dbg_value(ptr %mlen, !4372, !DIExpression(), !4371)
    #dbg_value(ptr %sm, !4373, !DIExpression(), !4371)
    #dbg_value(i64 %smlen, !4374, !DIExpression(), !4371)
    #dbg_value(ptr %pk, !4375, !DIExpression(), !4371)
    #dbg_value(i32 0, !4376, !DIExpression(), !4371)
  store i32 0, ptr %pk_pool_bits, align 4, !dbg !4377
    #dbg_declare(ptr %seed_pk, !4378, !DIExpression(), !4379)
    #dbg_value(ptr %pk_pool_bits, !4376, !DIExpression(DW_OP_deref), !4371)
  call fastcc void @restore_QRUOV_SEED(ptr noundef %pk, ptr noundef nonnull %pk_pool_bits, ptr noundef nonnull %seed_pk) #4, !dbg !4380
  call void @restore_QRUOV_P3(ptr noundef %pk, ptr noundef nonnull %pk_pool_bits, ptr noundef nonnull @crypto_sign_open.P3) #4, !dbg !4381
    #dbg_value(i32 0, !4382, !DIExpression(), !4371)
  store i32 0, ptr %sig_pool_bits, align 4, !dbg !4383
    #dbg_declare(ptr %sig, !4384, !DIExpression(), !4385)
    #dbg_value(ptr %sig_pool_bits, !4382, !DIExpression(DW_OP_deref), !4371)
  call fastcc void @restore_QRUOV_SIGNATURE(ptr noundef %sm, ptr noundef nonnull %sig_pool_bits, ptr noundef nonnull %sig) #4, !dbg !4386
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 200, !dbg !4387
  %0 = trunc i64 %smlen to i32, !dbg !4389
  %conv = add i32 %0, -200, !dbg !4389
  %call = call i32 @QRUOV_Verify(ptr noundef nonnull %seed_pk, ptr noundef nonnull @crypto_sign_open.P3, ptr noundef nonnull %add.ptr, i32 noundef %conv, ptr noundef nonnull %sig) #4, !dbg !4390
  %tobool.not = icmp eq i32 %call, 0, !dbg !4390
  br i1 %tobool.not, label %return, label %if.then, !dbg !4390

if.then:                                          ; preds = %entry
  %sub4 = add i64 %smlen, -200, !dbg !4391
  store i64 %sub4, ptr %mlen, align 8, !dbg !4393
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sm, i32 200, !dbg !4394
  %conv6 = trunc i64 %sub4 to i32, !dbg !4395
  %call7 = call ptr @memcpy(ptr noundef %m, ptr noundef nonnull %add.ptr5, i32 noundef %conv6) #6, !dbg !4396
  br label %return, !dbg !4397

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], !dbg !4371
  ret i32 %retval.0, !dbg !4398
}

; Function Attrs: nounwind
define internal fastcc void @restore_QRUOV_SIGNATURE(ptr noundef %pool, ptr noundef nonnull %pool_bits, ptr noundef nonnull %sig) unnamed_addr #0 !dbg !4399 {
entry:
    #dbg_value(ptr %pool, !4400, !DIExpression(), !4401)
    #dbg_value(ptr %pool_bits, !4402, !DIExpression(), !4401)
    #dbg_value(ptr %sig, !4403, !DIExpression(), !4401)
  call fastcc void @restore_QRUOV_SALT(ptr noundef %pool, ptr noundef %pool_bits, ptr noundef %sig) #4, !dbg !4404
    #dbg_value(i32 0, !4405, !DIExpression(), !4407)
  br label %for.cond, !dbg !4408

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4409
    #dbg_value(i32 %i.0, !4405, !DIExpression(), !4407)
  %exitcond = icmp ne i32 %i.0, 70, !dbg !4410
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4412

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 16, !dbg !4413
  %arrayidx = getelementptr inbounds nuw [3 x i8], ptr %add.ptr, i32 %i.0, !dbg !4413
  call fastcc void @restore_Fql(ptr noundef %pool, ptr noundef %pool_bits, ptr noundef nonnull %arrayidx) #4, !dbg !4414
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4415
    #dbg_value(i32 %inc, !4405, !DIExpression(), !4407)
  br label %for.cond, !dbg !4416, !llvm.loop !4417

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4419
}

; Function Attrs: nounwind
define internal fastcc void @restore_QRUOV_SALT(ptr noundef %pool, ptr noundef nonnull %pool_bits, ptr noundef nonnull %salt) unnamed_addr #0 !dbg !4420 {
entry:
    #dbg_value(ptr %pool, !4421, !DIExpression(), !4422)
    #dbg_value(ptr %pool_bits, !4423, !DIExpression(), !4422)
    #dbg_value(ptr %salt, !4424, !DIExpression(), !4422)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4425
  %shr = lshr i32 %0, 3, !dbg !4426
    #dbg_value(i32 %shr, !4427, !DIExpression(), !4422)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4428
  %call = call ptr @memcpy(ptr noundef nonnull %salt, ptr noundef %add.ptr, i32 noundef 16) #6, !dbg !4429
  %1 = load i32, ptr %pool_bits, align 4, !dbg !4430
  %add = add i32 %1, 128, !dbg !4430
  store i32 %add, ptr %pool_bits, align 4, !dbg !4430
  ret void, !dbg !4431
}

; Function Attrs: nounwind
define internal fastcc void @restore_Fql(ptr noundef %pool, ptr noundef nonnull %pool_bits, ptr noundef nonnull %Z) unnamed_addr #0 !dbg !4432 {
entry:
    #dbg_value(ptr %pool, !4435, !DIExpression(), !4436)
    #dbg_value(ptr %pool_bits, !4437, !DIExpression(), !4436)
    #dbg_value(ptr %Z, !4438, !DIExpression(), !4436)
  call fastcc void @restore_Fq_vector(ptr noundef %pool, ptr noundef %pool_bits, ptr noundef %Z, i32 noundef 3) #4, !dbg !4439
  ret void, !dbg !4440
}

; Function Attrs: nounwind
define internal fastcc void @restore_Fq_vector(ptr noundef %pool, ptr noundef nonnull %pool_bits, ptr noundef nonnull %Z, i32 noundef %n) unnamed_addr #0 !dbg !4441 {
entry:
    #dbg_value(ptr %pool, !4444, !DIExpression(), !4445)
    #dbg_value(ptr %pool_bits, !4446, !DIExpression(), !4445)
    #dbg_value(ptr %Z, !4447, !DIExpression(), !4445)
    #dbg_value(i32 3, !4448, !DIExpression(), !4445)
    #dbg_value(i32 0, !4449, !DIExpression(), !4451)
  br label %for.cond, !dbg !4452

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4453
    #dbg_value(i32 %i.0, !4449, !DIExpression(), !4451)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !4454
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4456

for.body:                                         ; preds = %for.cond
  %call = call fastcc zeroext i8 @restore_Fq.23(ptr noundef %pool, ptr noundef %pool_bits) #4, !dbg !4457
  %arrayidx = getelementptr inbounds nuw i8, ptr %Z, i32 %i.0, !dbg !4458
  store i8 %call, ptr %arrayidx, align 1, !dbg !4459
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4460
    #dbg_value(i32 %inc, !4449, !DIExpression(), !4451)
  br label %for.cond, !dbg !4461, !llvm.loop !4462

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4464
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, -128) i8 @restore_Fq.23(ptr noundef %pool, ptr noundef nonnull %pool_bits) unnamed_addr #0 !dbg !4465 {
entry:
    #dbg_value(ptr %pool, !4466, !DIExpression(), !4467)
    #dbg_value(ptr %pool_bits, !4468, !DIExpression(), !4467)
  %call = call fastcc i32 @restore_bits.24(ptr noundef %pool, ptr noundef %pool_bits, i32 noundef 7) #4, !dbg !4469
  %conv = trunc nuw nsw i32 %call to i8, !dbg !4470
  ret i8 %conv, !dbg !4471
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 128) i32 @restore_bits.24(ptr noundef %pool, ptr noundef nonnull %pool_bits, i32 noundef %num_bits) unnamed_addr #0 !dbg !4472 {
entry:
    #dbg_value(ptr %pool, !4473, !DIExpression(), !4474)
    #dbg_value(ptr %pool_bits, !4475, !DIExpression(), !4474)
    #dbg_value(i32 7, !4476, !DIExpression(), !4474)
  %0 = load i32, ptr %pool_bits, align 4, !dbg !4477
  %and = and i32 %0, 7, !dbg !4478
    #dbg_value(i32 %and, !4479, !DIExpression(), !4474)
  %shr = lshr i32 %0, 3, !dbg !4480
    #dbg_value(i32 %shr, !4481, !DIExpression(), !4474)
    #dbg_value(!DIArgList(i32 1, i32 7), !4482, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4474)
  %arrayidx = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4483
  %1 = load i8, ptr %arrayidx, align 1, !dbg !4483
  %cmp = icmp samesign ugt i32 %and, 1, !dbg !4484
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4485

cond.true:                                        ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %pool, i32 %shr, !dbg !4486
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %2, i32 1, !dbg !4486
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !4486
  %conv4 = zext i8 %3 to i32, !dbg !4487
  %4 = shl nuw nsw i32 %conv4, 8, !dbg !4488
  br label %cond.end, !dbg !4485

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %entry ], !dbg !4485
  %conv = zext i8 %1 to i32, !dbg !4489
    #dbg_value(i32 127, !4482, !DIExpression(), !4474)
  %or = or disjoint i32 %cond, %conv, !dbg !4490
    #dbg_value(i32 %or, !4491, !DIExpression(), !4474)
  %shr6 = lshr i32 %or, %and, !dbg !4492
    #dbg_value(i32 %shr6, !4491, !DIExpression(), !4474)
  %and7 = and i32 %shr6, 127, !dbg !4493
    #dbg_value(i32 %and7, !4491, !DIExpression(), !4474)
  %5 = load i32, ptr %pool_bits, align 4, !dbg !4494
  %add8 = add i32 %5, 7, !dbg !4494
  store i32 %add8, ptr %pool_bits, align 4, !dbg !4494
  ret i32 %and7, !dbg !4495
}

; Function Attrs: nounwind
define dso_local void @VECTOR_M_ADD(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !4496 {
entry:
    #dbg_value(ptr %A, !4499, !DIExpression(), !4500)
    #dbg_value(ptr %B, !4501, !DIExpression(), !4500)
    #dbg_value(ptr %C, !4502, !DIExpression(), !4500)
    #dbg_value(i32 0, !4503, !DIExpression(), !4505)
  br label %for.cond, !dbg !4506

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4507
    #dbg_value(i32 %i.0, !4503, !DIExpression(), !4505)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !4508
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4510

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [18 x i8], ptr %A, i32 %i.0, !dbg !4511
  %arrayidx1 = getelementptr inbounds nuw [18 x i8], ptr %B, i32 %i.0, !dbg !4512
  %arrayidx3 = getelementptr inbounds nuw [18 x i8], ptr %C, i32 %i.0, !dbg !4513
  call fastcc void @vector_M_add(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx3) #4, !dbg !4514
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4515
    #dbg_value(i32 %inc, !4503, !DIExpression(), !4505)
  br label %for.cond, !dbg !4516, !llvm.loop !4517

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4519
}

; Function Attrs: nounwind
define internal fastcc void @vector_M_add(ptr noundef %A, ptr noundef %B, ptr noundef %C) unnamed_addr #0 !dbg !4520 {
entry:
    #dbg_value(ptr %A, !4521, !DIExpression(), !4522)
    #dbg_value(ptr %B, !4523, !DIExpression(), !4522)
    #dbg_value(ptr %C, !4524, !DIExpression(), !4522)
    #dbg_value(ptr %A, !4525, !DIExpression(), !4522)
    #dbg_value(ptr %B, !4526, !DIExpression(), !4522)
    #dbg_value(ptr %C, !4527, !DIExpression(), !4522)
    #dbg_value(i32 0, !4528, !DIExpression(), !4530)
  br label %for.cond, !dbg !4531

for.cond:                                         ; preds = %for.body, %entry
  %a.0 = phi ptr [ %A, %entry ], [ %incdec.ptr, %for.body ], !dbg !4522
  %b.0 = phi ptr [ %B, %entry ], [ %incdec.ptr1, %for.body ], !dbg !4522
  %c.0 = phi ptr [ %C, %entry ], [ %incdec.ptr2, %for.body ], !dbg !4522
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4532
    #dbg_value(i32 %j.0, !4528, !DIExpression(), !4530)
    #dbg_value(ptr %c.0, !4527, !DIExpression(), !4522)
    #dbg_value(ptr %b.0, !4526, !DIExpression(), !4522)
    #dbg_value(ptr %a.0, !4525, !DIExpression(), !4522)
  %exitcond = icmp ne i32 %j.0, 18, !dbg !4533
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4535

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %a.0, !4525, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4522)
  %0 = load i8, ptr %a.0, align 1, !dbg !4536
    #dbg_value(ptr %b.0, !4526, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4522)
  %1 = load i8, ptr %b.0, align 1, !dbg !4537
  %call = call fastcc zeroext i8 @Fq_vec_add(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !4538
    #dbg_value(ptr %c.0, !4527, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4522)
  store i8 %call, ptr %c.0, align 1, !dbg !4539
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %c.0, i32 1, !dbg !4540
    #dbg_value(ptr %incdec.ptr2, !4527, !DIExpression(), !4522)
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %b.0, i32 1, !dbg !4541
    #dbg_value(ptr %incdec.ptr1, !4526, !DIExpression(), !4522)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %a.0, i32 1, !dbg !4542
    #dbg_value(ptr %incdec.ptr, !4525, !DIExpression(), !4522)
  %inc = add nuw nsw i32 %j.0, 1, !dbg !4543
    #dbg_value(i32 %inc, !4528, !DIExpression(), !4530)
  br label %for.cond, !dbg !4544, !llvm.loop !4545

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4547
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 127) i8 @Fq_vec_add(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !4548 {
entry:
    #dbg_value(i8 %a, !4551, !DIExpression(), !4552)
    #dbg_value(i8 %b, !4553, !DIExpression(), !4552)
  %call = call fastcc zeroext i8 @Fq_add.25(i8 noundef zeroext %a, i8 noundef zeroext %b) #4, !dbg !4554
  ret i8 %call, !dbg !4555
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 127) i8 @Fq_add.25(i8 noundef zeroext %X, i8 noundef zeroext %Y) unnamed_addr #0 !dbg !4556 {
entry:
    #dbg_value(i8 %X, !4557, !DIExpression(), !4558)
    #dbg_value(i8 %Y, !4559, !DIExpression(), !4558)
  %conv = zext i8 %X to i16, !dbg !4560
  %conv1 = zext i8 %Y to i16, !dbg !4561
  %add = add nuw nsw i16 %conv, %conv1, !dbg !4562
  %rem1 = urem i16 %add, 127, !dbg !4563
  %conv2 = trunc nuw nsw i16 %rem1 to i8, !dbg !4564
  ret i8 %conv2, !dbg !4565
}

; Function Attrs: nounwind
define dso_local void @VECTOR_M_SUB(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !4566 {
entry:
    #dbg_value(ptr %A, !4567, !DIExpression(), !4568)
    #dbg_value(ptr %B, !4569, !DIExpression(), !4568)
    #dbg_value(ptr %C, !4570, !DIExpression(), !4568)
    #dbg_value(i32 0, !4571, !DIExpression(), !4573)
  br label %for.cond, !dbg !4574

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4575
    #dbg_value(i32 %i.0, !4571, !DIExpression(), !4573)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !4576
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4578

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [18 x i8], ptr %A, i32 %i.0, !dbg !4579
  %arrayidx1 = getelementptr inbounds nuw [18 x i8], ptr %B, i32 %i.0, !dbg !4580
  %arrayidx3 = getelementptr inbounds nuw [18 x i8], ptr %C, i32 %i.0, !dbg !4581
  call fastcc void @vector_M_sub(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx3) #4, !dbg !4582
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4583
    #dbg_value(i32 %inc, !4571, !DIExpression(), !4573)
  br label %for.cond, !dbg !4584, !llvm.loop !4585

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4587
}

; Function Attrs: nounwind
define internal fastcc void @vector_M_sub(ptr noundef %A, ptr noundef %B, ptr noundef %C) unnamed_addr #0 !dbg !4588 {
entry:
    #dbg_value(ptr %A, !4589, !DIExpression(), !4590)
    #dbg_value(ptr %B, !4591, !DIExpression(), !4590)
    #dbg_value(ptr %C, !4592, !DIExpression(), !4590)
    #dbg_value(ptr %A, !4593, !DIExpression(), !4590)
    #dbg_value(ptr %B, !4594, !DIExpression(), !4590)
    #dbg_value(ptr %C, !4595, !DIExpression(), !4590)
    #dbg_value(i32 0, !4596, !DIExpression(), !4598)
  br label %for.cond, !dbg !4599

for.cond:                                         ; preds = %for.body, %entry
  %a.0 = phi ptr [ %A, %entry ], [ %incdec.ptr, %for.body ], !dbg !4590
  %b.0 = phi ptr [ %B, %entry ], [ %incdec.ptr1, %for.body ], !dbg !4590
  %c.0 = phi ptr [ %C, %entry ], [ %incdec.ptr2, %for.body ], !dbg !4590
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4600
    #dbg_value(i32 %j.0, !4596, !DIExpression(), !4598)
    #dbg_value(ptr %c.0, !4595, !DIExpression(), !4590)
    #dbg_value(ptr %b.0, !4594, !DIExpression(), !4590)
    #dbg_value(ptr %a.0, !4593, !DIExpression(), !4590)
  %exitcond = icmp ne i32 %j.0, 18, !dbg !4601
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4603

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %a.0, !4593, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4590)
  %0 = load i8, ptr %a.0, align 1, !dbg !4604
    #dbg_value(ptr %b.0, !4594, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4590)
  %1 = load i8, ptr %b.0, align 1, !dbg !4605
  %call = call fastcc zeroext i8 @Fq_vec_sub(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !4606
    #dbg_value(ptr %c.0, !4595, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4590)
  store i8 %call, ptr %c.0, align 1, !dbg !4607
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %c.0, i32 1, !dbg !4608
    #dbg_value(ptr %incdec.ptr2, !4595, !DIExpression(), !4590)
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %b.0, i32 1, !dbg !4609
    #dbg_value(ptr %incdec.ptr1, !4594, !DIExpression(), !4590)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %a.0, i32 1, !dbg !4610
    #dbg_value(ptr %incdec.ptr, !4593, !DIExpression(), !4590)
  %inc = add nuw nsw i32 %j.0, 1, !dbg !4611
    #dbg_value(i32 %inc, !4596, !DIExpression(), !4598)
  br label %for.cond, !dbg !4612, !llvm.loop !4613

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4615
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 -126, 127) i8 @Fq_vec_sub(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !4616 {
entry:
    #dbg_value(i8 %a, !4617, !DIExpression(), !4618)
    #dbg_value(i8 %b, !4619, !DIExpression(), !4618)
  %call = call fastcc zeroext i8 @Fq_sub.28(i8 noundef zeroext %a, i8 noundef zeroext %b) #4, !dbg !4620
  ret i8 %call, !dbg !4621
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 -126, 127) i8 @Fq_sub.28(i8 noundef zeroext %X, i8 noundef zeroext %Y) unnamed_addr #0 !dbg !4622 {
entry:
    #dbg_value(i8 %X, !4623, !DIExpression(), !4624)
    #dbg_value(i8 %Y, !4625, !DIExpression(), !4624)
  %conv = zext i8 %X to i16, !dbg !4626
  %conv1 = zext i8 %Y to i16, !dbg !4627
  %sub = sub nsw i16 %conv, %conv1, !dbg !4628
  %add = add nsw i16 %sub, 127, !dbg !4629
  %rem1 = srem i16 %add, 127, !dbg !4630
  %conv2 = trunc nsw i16 %rem1 to i8, !dbg !4631
  ret i8 %conv2, !dbg !4632
}

; Function Attrs: nounwind
define dso_local void @VECTOR_V_SUB(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !4633 {
entry:
    #dbg_value(ptr %A, !4636, !DIExpression(), !4637)
    #dbg_value(ptr %B, !4638, !DIExpression(), !4637)
    #dbg_value(ptr %C, !4639, !DIExpression(), !4637)
    #dbg_value(i32 0, !4640, !DIExpression(), !4642)
  br label %for.cond, !dbg !4643

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4644
    #dbg_value(i32 %i.0, !4640, !DIExpression(), !4642)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !4645
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4647

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [52 x i8], ptr %A, i32 %i.0, !dbg !4648
  %arrayidx1 = getelementptr inbounds nuw [52 x i8], ptr %B, i32 %i.0, !dbg !4649
  %arrayidx3 = getelementptr inbounds nuw [52 x i8], ptr %C, i32 %i.0, !dbg !4650
  call fastcc void @vector_V_sub(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx3) #4, !dbg !4651
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4652
    #dbg_value(i32 %inc, !4640, !DIExpression(), !4642)
  br label %for.cond, !dbg !4653, !llvm.loop !4654

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4656
}

; Function Attrs: nounwind
define internal fastcc void @vector_V_sub(ptr noundef %A, ptr noundef %B, ptr noundef %C) unnamed_addr #0 !dbg !4657 {
entry:
    #dbg_value(ptr %A, !4658, !DIExpression(), !4659)
    #dbg_value(ptr %B, !4660, !DIExpression(), !4659)
    #dbg_value(ptr %C, !4661, !DIExpression(), !4659)
    #dbg_value(ptr %A, !4662, !DIExpression(), !4659)
    #dbg_value(ptr %B, !4663, !DIExpression(), !4659)
    #dbg_value(ptr %C, !4664, !DIExpression(), !4659)
    #dbg_value(i32 0, !4665, !DIExpression(), !4667)
  br label %for.cond, !dbg !4668

for.cond:                                         ; preds = %for.body, %entry
  %a.0 = phi ptr [ %A, %entry ], [ %incdec.ptr, %for.body ], !dbg !4659
  %b.0 = phi ptr [ %B, %entry ], [ %incdec.ptr1, %for.body ], !dbg !4659
  %c.0 = phi ptr [ %C, %entry ], [ %incdec.ptr2, %for.body ], !dbg !4659
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4669
    #dbg_value(i32 %j.0, !4665, !DIExpression(), !4667)
    #dbg_value(ptr %c.0, !4664, !DIExpression(), !4659)
    #dbg_value(ptr %b.0, !4663, !DIExpression(), !4659)
    #dbg_value(ptr %a.0, !4662, !DIExpression(), !4659)
  %exitcond = icmp ne i32 %j.0, 52, !dbg !4670
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4672

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %a.0, !4662, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4659)
  %0 = load i8, ptr %a.0, align 1, !dbg !4673
    #dbg_value(ptr %b.0, !4663, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4659)
  %1 = load i8, ptr %b.0, align 1, !dbg !4674
  %call = call fastcc zeroext i8 @Fq_vec_sub(i8 noundef zeroext %0, i8 noundef zeroext %1) #4, !dbg !4675
    #dbg_value(ptr %c.0, !4664, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4659)
  store i8 %call, ptr %c.0, align 1, !dbg !4676
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %c.0, i32 1, !dbg !4677
    #dbg_value(ptr %incdec.ptr2, !4664, !DIExpression(), !4659)
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %b.0, i32 1, !dbg !4678
    #dbg_value(ptr %incdec.ptr1, !4663, !DIExpression(), !4659)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %a.0, i32 1, !dbg !4679
    #dbg_value(ptr %incdec.ptr, !4662, !DIExpression(), !4659)
  %inc = add nuw nsw i32 %j.0, 1, !dbg !4680
    #dbg_value(i32 %inc, !4665, !DIExpression(), !4667)
  br label %for.cond, !dbg !4681, !llvm.loop !4682

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4684
}

; Function Attrs: nounwind
define dso_local void @VECTOR_V_dot_VECTOR_V(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !4685 {
entry:
  %T = alloca [5 x i64], align 8
    #dbg_value(ptr %A, !4688, !DIExpression(), !4689)
    #dbg_value(ptr %B, !4690, !DIExpression(), !4689)
    #dbg_value(ptr %C, !4691, !DIExpression(), !4689)
    #dbg_declare(ptr %T, !4692, !DIExpression(), !4693)
  %call = call ptr @memset(ptr noundef nonnull %T, i32 noundef 0, i32 noundef 40) #6, !dbg !4694
    #dbg_value(i32 0, !4695, !DIExpression(), !4697)
  br label %for.cond, !dbg !4698

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !dbg !4699
    #dbg_value(i32 %i.0, !4695, !DIExpression(), !4697)
  %exitcond1 = icmp ne i32 %i.0, 3, !dbg !4700
  br i1 %exitcond1, label %for.cond1.preheader, label %for.cond14.preheader, !dbg !4702

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !4703

for.cond14.preheader:                             ; preds = %for.cond
  br label %for.cond14, !dbg !4705

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !4707
    #dbg_value(i32 %j.0, !4708, !DIExpression(), !4709)
  %exitcond = icmp ne i32 %j.0, 3, !dbg !4710
  br i1 %exitcond, label %for.body3, label %for.inc10, !dbg !4703

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [52 x i8], ptr %A, i32 %i.0, !dbg !4712
  %arrayidx5 = getelementptr inbounds nuw [52 x i8], ptr %B, i32 %j.0, !dbg !4713
  %call7 = call fastcc i64 @vector_V_dot_vector_V(ptr noundef %arrayidx, ptr noundef %arrayidx5) #4, !dbg !4714
  %add = add nuw nsw i32 %i.0, %j.0, !dbg !4715
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %T, i32 0, i32 %add, !dbg !4716
  %0 = load i64, ptr %arrayidx8, align 8, !dbg !4717
  %add9 = add i64 %0, %call7, !dbg !4717
  store i64 %add9, ptr %arrayidx8, align 8, !dbg !4717
  %inc = add nuw nsw i32 %j.0, 1, !dbg !4718
    #dbg_value(i32 %inc, !4708, !DIExpression(), !4709)
  br label %for.cond1, !dbg !4719, !llvm.loop !4720

for.inc10:                                        ; preds = %for.cond1
  %inc11 = add nuw nsw i32 %i.0, 1, !dbg !4722
    #dbg_value(i32 %inc11, !4695, !DIExpression(), !4697)
  br label %for.cond, !dbg !4723, !llvm.loop !4724

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %i13.0 = phi i32 [ %dec, %for.body16 ], [ 4, %for.cond14.preheader ], !dbg !4726
    #dbg_value(i32 %i13.0, !4727, !DIExpression(), !4728)
  %cmp15 = icmp ugt i32 %i13.0, 2, !dbg !4729
  br i1 %cmp15, label %for.body16, label %for.cond29.preheader, !dbg !4705

for.cond29.preheader:                             ; preds = %for.cond14
  br label %for.cond29, !dbg !4731

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %i13.0, !dbg !4733
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !4733
  %sub = add nsw i32 %i13.0, -3, !dbg !4735
  %arrayidx18 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %sub, !dbg !4736
  %2 = load i64, ptr %arrayidx18, align 8, !dbg !4737
  %add19 = add i64 %2, %1, !dbg !4737
  store i64 %add19, ptr %arrayidx18, align 8, !dbg !4737
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %i13.0, !dbg !4738
  %3 = load i64, ptr %arrayidx20, align 8, !dbg !4738
  %add23 = add nsw i32 %i13.0, -2, !dbg !4739
  %arrayidx24 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %add23, !dbg !4740
  %4 = load i64, ptr %arrayidx24, align 8, !dbg !4741
  %add25 = add i64 %4, %3, !dbg !4741
  store i64 %add25, ptr %arrayidx24, align 8, !dbg !4741
  %dec = add nsw i32 %i13.0, -1, !dbg !4742
    #dbg_value(i32 %dec, !4727, !DIExpression(), !4728)
  br label %for.cond14, !dbg !4743, !llvm.loop !4744

for.cond29:                                       ; preds = %for.cond29.preheader, %for.body31
  %i28.0 = phi i32 [ %inc35, %for.body31 ], [ 0, %for.cond29.preheader ], !dbg !4746
    #dbg_value(i32 %i28.0, !4747, !DIExpression(), !4748)
  %exitcond2 = icmp ne i32 %i28.0, 3, !dbg !4749
  br i1 %exitcond2, label %for.body31, label %for.end36, !dbg !4731

for.body31:                                       ; preds = %for.cond29
  %arrayidx32 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %i28.0, !dbg !4751
  %5 = load i64, ptr %arrayidx32, align 8, !dbg !4751
  %rem = urem i64 %5, 127, !dbg !4752
  %conv = trunc nuw nsw i64 %rem to i8, !dbg !4753
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %C, i32 %i28.0, !dbg !4754
  store i8 %conv, ptr %arrayidx33, align 1, !dbg !4755
  %inc35 = add nuw nsw i32 %i28.0, 1, !dbg !4756
    #dbg_value(i32 %inc35, !4747, !DIExpression(), !4748)
  br label %for.cond29, !dbg !4757, !llvm.loop !4758

for.end36:                                        ; preds = %for.cond29
  ret void, !dbg !4760
}

; Function Attrs: nounwind
define internal fastcc i64 @vector_V_dot_vector_V(ptr noundef %A, ptr noundef %B) unnamed_addr #0 !dbg !4761 {
entry:
    #dbg_value(ptr %A, !4764, !DIExpression(), !4765)
    #dbg_value(ptr %B, !4766, !DIExpression(), !4765)
    #dbg_value(ptr %A, !4767, !DIExpression(), !4765)
    #dbg_value(ptr %B, !4768, !DIExpression(), !4765)
    #dbg_value(i64 0, !4769, !DIExpression(), !4765)
    #dbg_value(i32 0, !4770, !DIExpression(), !4772)
  br label %for.cond, !dbg !4773

for.cond:                                         ; preds = %for.body, %entry
  %b.0 = phi ptr [ %B, %entry ], [ %incdec.ptr1, %for.body ], !dbg !4765
  %a.0 = phi ptr [ %A, %entry ], [ %incdec.ptr, %for.body ], !dbg !4765
  %c.0 = phi i64 [ 0, %entry ], [ %call, %for.body ], !dbg !4765
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4774
    #dbg_value(i32 %j.0, !4770, !DIExpression(), !4772)
    #dbg_value(i64 %c.0, !4769, !DIExpression(), !4765)
    #dbg_value(ptr %a.0, !4767, !DIExpression(), !4765)
    #dbg_value(ptr %b.0, !4768, !DIExpression(), !4765)
  %exitcond = icmp ne i32 %j.0, 52, !dbg !4775
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4777

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %a.0, !4767, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4765)
  %0 = load i8, ptr %a.0, align 1, !dbg !4778
    #dbg_value(ptr %b.0, !4768, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4765)
  %1 = load i8, ptr %b.0, align 1, !dbg !4779
  %call = call fastcc i64 @Fq_vec_dot_accumulate(i8 noundef zeroext %0, i8 noundef zeroext %1, i64 noundef %c.0) #4, !dbg !4780
    #dbg_value(i64 %call, !4769, !DIExpression(), !4765)
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %b.0, i32 1, !dbg !4781
    #dbg_value(ptr %incdec.ptr1, !4768, !DIExpression(), !4765)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %a.0, i32 1, !dbg !4782
    #dbg_value(ptr %incdec.ptr, !4767, !DIExpression(), !4765)
  %inc = add nuw nsw i32 %j.0, 1, !dbg !4783
    #dbg_value(i32 %inc, !4770, !DIExpression(), !4772)
  br label %for.cond, !dbg !4784, !llvm.loop !4785

for.end:                                          ; preds = %for.cond
  %c.0.lcssa = phi i64 [ %c.0, %for.cond ], !dbg !4765
  %call2 = call fastcc i64 @Fq_vec_dot_accumulate_final(i64 noundef %c.0.lcssa) #4, !dbg !4787
    #dbg_value(i64 %call2, !4788, !DIExpression(), !4765)
  ret i64 %call2, !dbg !4789
}

; Function Attrs: nounwind
define internal fastcc i64 @Fq_vec_dot_accumulate(i8 noundef zeroext %a, i8 noundef zeroext %b, i64 noundef %c) unnamed_addr #0 !dbg !4790 {
entry:
    #dbg_value(i8 %a, !4793, !DIExpression(), !4794)
    #dbg_value(i8 %b, !4795, !DIExpression(), !4794)
    #dbg_value(i64 %c, !4796, !DIExpression(), !4794)
  %conv = zext i8 %a to i64, !dbg !4797
  %conv1 = zext i8 %b to i64, !dbg !4798
  %mul = mul nuw nsw i64 %conv, %conv1, !dbg !4799
  %add = add i64 %c, %mul, !dbg !4800
  ret i64 %add, !dbg !4801
}

; Function Attrs: nounwind
define internal fastcc i64 @Fq_vec_dot_accumulate_final(i64 noundef %c) unnamed_addr #0 !dbg !4802 {
entry:
    #dbg_value(i64 %c, !4803, !DIExpression(), !4804)
  ret i64 %c, !dbg !4805
}

; Function Attrs: nounwind
define dso_local void @VECTOR_M_dot_VECTOR_M(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !4806 {
entry:
  %T = alloca [5 x i64], align 8
    #dbg_value(ptr %A, !4809, !DIExpression(), !4810)
    #dbg_value(ptr %B, !4811, !DIExpression(), !4810)
    #dbg_value(ptr %C, !4812, !DIExpression(), !4810)
    #dbg_declare(ptr %T, !4813, !DIExpression(), !4814)
  %call = call ptr @memset(ptr noundef nonnull %T, i32 noundef 0, i32 noundef 40) #6, !dbg !4815
    #dbg_value(i32 0, !4816, !DIExpression(), !4818)
  br label %for.cond, !dbg !4819

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !dbg !4820
    #dbg_value(i32 %i.0, !4816, !DIExpression(), !4818)
  %exitcond1 = icmp ne i32 %i.0, 3, !dbg !4821
  br i1 %exitcond1, label %for.cond1.preheader, label %for.cond14.preheader, !dbg !4823

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !4824

for.cond14.preheader:                             ; preds = %for.cond
  br label %for.cond14, !dbg !4826

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !4828
    #dbg_value(i32 %j.0, !4829, !DIExpression(), !4830)
  %exitcond = icmp ne i32 %j.0, 3, !dbg !4831
  br i1 %exitcond, label %for.body3, label %for.inc10, !dbg !4824

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [18 x i8], ptr %A, i32 %i.0, !dbg !4833
  %arrayidx5 = getelementptr inbounds nuw [18 x i8], ptr %B, i32 %j.0, !dbg !4834
  %call7 = call fastcc i64 @vector_M_dot_vector_M(ptr noundef %arrayidx, ptr noundef %arrayidx5) #4, !dbg !4835
  %add = add nuw nsw i32 %i.0, %j.0, !dbg !4836
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %T, i32 0, i32 %add, !dbg !4837
  %0 = load i64, ptr %arrayidx8, align 8, !dbg !4838
  %add9 = add i64 %0, %call7, !dbg !4838
  store i64 %add9, ptr %arrayidx8, align 8, !dbg !4838
  %inc = add nuw nsw i32 %j.0, 1, !dbg !4839
    #dbg_value(i32 %inc, !4829, !DIExpression(), !4830)
  br label %for.cond1, !dbg !4840, !llvm.loop !4841

for.inc10:                                        ; preds = %for.cond1
  %inc11 = add nuw nsw i32 %i.0, 1, !dbg !4843
    #dbg_value(i32 %inc11, !4816, !DIExpression(), !4818)
  br label %for.cond, !dbg !4844, !llvm.loop !4845

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %i13.0 = phi i32 [ %dec, %for.body16 ], [ 4, %for.cond14.preheader ], !dbg !4847
    #dbg_value(i32 %i13.0, !4848, !DIExpression(), !4849)
  %cmp15 = icmp ugt i32 %i13.0, 2, !dbg !4850
  br i1 %cmp15, label %for.body16, label %for.cond29.preheader, !dbg !4826

for.cond29.preheader:                             ; preds = %for.cond14
  br label %for.cond29, !dbg !4852

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %i13.0, !dbg !4854
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !4854
  %sub = add nsw i32 %i13.0, -3, !dbg !4856
  %arrayidx18 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %sub, !dbg !4857
  %2 = load i64, ptr %arrayidx18, align 8, !dbg !4858
  %add19 = add i64 %2, %1, !dbg !4858
  store i64 %add19, ptr %arrayidx18, align 8, !dbg !4858
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %i13.0, !dbg !4859
  %3 = load i64, ptr %arrayidx20, align 8, !dbg !4859
  %add23 = add nsw i32 %i13.0, -2, !dbg !4860
  %arrayidx24 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %add23, !dbg !4861
  %4 = load i64, ptr %arrayidx24, align 8, !dbg !4862
  %add25 = add i64 %4, %3, !dbg !4862
  store i64 %add25, ptr %arrayidx24, align 8, !dbg !4862
  %dec = add nsw i32 %i13.0, -1, !dbg !4863
    #dbg_value(i32 %dec, !4848, !DIExpression(), !4849)
  br label %for.cond14, !dbg !4864, !llvm.loop !4865

for.cond29:                                       ; preds = %for.cond29.preheader, %for.body31
  %i28.0 = phi i32 [ %inc35, %for.body31 ], [ 0, %for.cond29.preheader ], !dbg !4867
    #dbg_value(i32 %i28.0, !4868, !DIExpression(), !4869)
  %exitcond2 = icmp ne i32 %i28.0, 3, !dbg !4870
  br i1 %exitcond2, label %for.body31, label %for.end36, !dbg !4852

for.body31:                                       ; preds = %for.cond29
  %arrayidx32 = getelementptr inbounds nuw [5 x i64], ptr %T, i32 0, i32 %i28.0, !dbg !4872
  %5 = load i64, ptr %arrayidx32, align 8, !dbg !4872
  %rem = urem i64 %5, 127, !dbg !4873
  %conv = trunc nuw nsw i64 %rem to i8, !dbg !4874
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %C, i32 %i28.0, !dbg !4875
  store i8 %conv, ptr %arrayidx33, align 1, !dbg !4876
  %inc35 = add nuw nsw i32 %i28.0, 1, !dbg !4877
    #dbg_value(i32 %inc35, !4868, !DIExpression(), !4869)
  br label %for.cond29, !dbg !4878, !llvm.loop !4879

for.end36:                                        ; preds = %for.cond29
  ret void, !dbg !4881
}

; Function Attrs: nounwind
define internal fastcc i64 @vector_M_dot_vector_M(ptr noundef %A, ptr noundef %B) unnamed_addr #0 !dbg !4882 {
entry:
    #dbg_value(ptr %A, !4883, !DIExpression(), !4884)
    #dbg_value(ptr %B, !4885, !DIExpression(), !4884)
    #dbg_value(ptr %A, !4886, !DIExpression(), !4884)
    #dbg_value(ptr %B, !4887, !DIExpression(), !4884)
    #dbg_value(i64 0, !4888, !DIExpression(), !4884)
    #dbg_value(i32 0, !4889, !DIExpression(), !4891)
  br label %for.cond, !dbg !4892

for.cond:                                         ; preds = %for.body, %entry
  %b.0 = phi ptr [ %B, %entry ], [ %incdec.ptr1, %for.body ], !dbg !4884
  %a.0 = phi ptr [ %A, %entry ], [ %incdec.ptr, %for.body ], !dbg !4884
  %c.0 = phi i64 [ 0, %entry ], [ %call, %for.body ], !dbg !4884
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4893
    #dbg_value(i32 %j.0, !4889, !DIExpression(), !4891)
    #dbg_value(i64 %c.0, !4888, !DIExpression(), !4884)
    #dbg_value(ptr %a.0, !4886, !DIExpression(), !4884)
    #dbg_value(ptr %b.0, !4887, !DIExpression(), !4884)
  %exitcond = icmp ne i32 %j.0, 18, !dbg !4894
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4896

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %a.0, !4886, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4884)
  %0 = load i8, ptr %a.0, align 1, !dbg !4897
    #dbg_value(ptr %b.0, !4887, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4884)
  %1 = load i8, ptr %b.0, align 1, !dbg !4898
  %call = call fastcc i64 @Fq_vec_dot_accumulate(i8 noundef zeroext %0, i8 noundef zeroext %1, i64 noundef %c.0) #4, !dbg !4899
    #dbg_value(i64 %call, !4888, !DIExpression(), !4884)
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %b.0, i32 1, !dbg !4900
    #dbg_value(ptr %incdec.ptr1, !4887, !DIExpression(), !4884)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %a.0, i32 1, !dbg !4901
    #dbg_value(ptr %incdec.ptr, !4886, !DIExpression(), !4884)
  %inc = add nuw nsw i32 %j.0, 1, !dbg !4902
    #dbg_value(i32 %inc, !4889, !DIExpression(), !4891)
  br label %for.cond, !dbg !4903, !llvm.loop !4904

for.end:                                          ; preds = %for.cond
  %c.0.lcssa = phi i64 [ %c.0, %for.cond ], !dbg !4884
  %call2 = call fastcc i64 @Fq_vec_dot_accumulate_final(i64 noundef %c.0.lcssa) #4, !dbg !4906
    #dbg_value(i64 %call2, !4907, !DIExpression(), !4884)
  ret i64 %call2, !dbg !4908
}

; Function Attrs: nounwind
define dso_local void @VECTOR_V_MUL_SYMMETRIC_MATRIX_VxV(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !4909 {
entry:
  %tmp = alloca [3 x i8], align 1
    #dbg_value(ptr %A, !4912, !DIExpression(), !4913)
    #dbg_value(ptr %B, !4914, !DIExpression(), !4913)
    #dbg_value(ptr %C, !4915, !DIExpression(), !4913)
    #dbg_declare(ptr %tmp, !4916, !DIExpression(), !4917)
    #dbg_value(i32 0, !4918, !DIExpression(), !4920)
  br label %for.cond, !dbg !4921

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !dbg !4922
    #dbg_value(i32 %i.0, !4918, !DIExpression(), !4920)
  %exitcond1 = icmp ne i32 %i.0, 52, !dbg !4923
  br i1 %exitcond1, label %for.body, label %for.end10, !dbg !4925

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [3 x [52 x i8]], ptr %B, i32 %i.0, !dbg !4926
  call void @VECTOR_V_dot_VECTOR_V(ptr noundef %A, ptr noundef %arrayidx, ptr noundef nonnull %tmp) #4, !dbg !4928
    #dbg_value(i32 0, !4929, !DIExpression(), !4931)
  br label %for.cond2, !dbg !4932

for.cond2:                                        ; preds = %for.body4, %for.body
  %k.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body4 ], !dbg !4933
    #dbg_value(i32 %k.0, !4929, !DIExpression(), !4931)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !4934
  br i1 %exitcond, label %for.body4, label %for.inc8, !dbg !4936

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [3 x i8], ptr %tmp, i32 0, i32 %k.0, !dbg !4937
  %0 = load i8, ptr %arrayidx5, align 1, !dbg !4937
  %arrayidx7 = getelementptr inbounds nuw [52 x i8], ptr %C, i32 %k.0, i32 %i.0, !dbg !4938
  store i8 %0, ptr %arrayidx7, align 1, !dbg !4939
  %inc = add nuw nsw i32 %k.0, 1, !dbg !4940
    #dbg_value(i32 %inc, !4929, !DIExpression(), !4931)
  br label %for.cond2, !dbg !4941, !llvm.loop !4942

for.inc8:                                         ; preds = %for.cond2
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !4944
    #dbg_value(i32 %inc9, !4918, !DIExpression(), !4920)
  br label %for.cond, !dbg !4945, !llvm.loop !4946

for.end10:                                        ; preds = %for.cond
  call fastcc void @VECTOR_V_CLEAR_TAIL.35(ptr noundef %C) #4, !dbg !4948
  ret void, !dbg !4949
}

; Function Attrs: nounwind
define internal fastcc void @VECTOR_V_CLEAR_TAIL.35(ptr noundef %C) unnamed_addr #0 !dbg !4950 {
entry:
    #dbg_value(ptr %C, !4951, !DIExpression(), !4952)
    #dbg_value(i32 0, !4953, !DIExpression(), !4955)
  br label %for.cond, !dbg !4956

for.cond:                                         ; preds = %for.body, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4957
    #dbg_value(i32 %k.0, !4953, !DIExpression(), !4955)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !4958
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4960

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [52 x i8], ptr %C, i32 %k.0, !dbg !4961
  %add.ptr = getelementptr inbounds nuw i8, ptr %arrayidx, i32 52, !dbg !4962
  %call = call ptr @memset(ptr noundef nonnull %add.ptr, i32 noundef 0, i32 noundef 0) #6, !dbg !4963
  %inc = add nuw nsw i32 %k.0, 1, !dbg !4964
    #dbg_value(i32 %inc, !4953, !DIExpression(), !4955)
  br label %for.cond, !dbg !4965, !llvm.loop !4966

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4968
}

; Function Attrs: nounwind
define dso_local void @MATRIX_TRANSPOSE_VxM(ptr noundef %A, ptr noundef %C) local_unnamed_addr #0 !dbg !4969 {
entry:
    #dbg_value(ptr %A, !4972, !DIExpression(), !4973)
    #dbg_value(ptr %C, !4974, !DIExpression(), !4973)
    #dbg_value(i32 0, !4975, !DIExpression(), !4977)
  br label %for.cond, !dbg !4978

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !4979
    #dbg_value(i32 %i.0, !4975, !DIExpression(), !4977)
  %exitcond2 = icmp ne i32 %i.0, 52, !dbg !4980
  br i1 %exitcond2, label %for.cond1.preheader, label %for.cond19.preheader, !dbg !4982

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !4983

for.cond19.preheader:                             ; preds = %for.cond
  br label %for.cond19, !dbg !4986

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc12
  %k.0 = phi i32 [ %inc13, %for.inc12 ], [ 0, %for.cond1.preheader ], !dbg !4988
    #dbg_value(i32 %k.0, !4989, !DIExpression(), !4990)
  %exitcond1 = icmp ne i32 %k.0, 3, !dbg !4991
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc15, !dbg !4983

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !4993

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %j.0 = phi i32 [ %inc, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !4996
    #dbg_value(i32 %j.0, !4997, !DIExpression(), !4998)
  %exitcond = icmp ne i32 %j.0, 18, !dbg !4999
  br i1 %exitcond, label %for.body6, label %for.inc12, !dbg !4993

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds [3 x [18 x i8]], ptr %A, i32 %i.0, i32 %k.0, i32 %j.0, !dbg !5001
  %0 = load i8, ptr %arrayidx8, align 1, !dbg !5001
  %arrayidx11 = getelementptr inbounds [3 x [52 x i8]], ptr %C, i32 %j.0, i32 %k.0, i32 %i.0, !dbg !5003
  store i8 %0, ptr %arrayidx11, align 1, !dbg !5004
  %inc = add nuw nsw i32 %j.0, 1, !dbg !5005
    #dbg_value(i32 %inc, !4997, !DIExpression(), !4998)
  br label %for.cond4, !dbg !5006, !llvm.loop !5007

for.inc12:                                        ; preds = %for.cond4
  %inc13 = add nuw nsw i32 %k.0, 1, !dbg !5009
    #dbg_value(i32 %inc13, !4989, !DIExpression(), !4990)
  br label %for.cond1, !dbg !5010, !llvm.loop !5011

for.inc15:                                        ; preds = %for.cond1
  %inc16 = add nuw nsw i32 %i.0, 1, !dbg !5013
    #dbg_value(i32 %inc16, !4975, !DIExpression(), !4977)
  br label %for.cond, !dbg !5014, !llvm.loop !5015

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body21
  %j18.0 = phi i32 [ %inc24, %for.body21 ], [ 0, %for.cond19.preheader ], !dbg !5017
    #dbg_value(i32 %j18.0, !5018, !DIExpression(), !5019)
  %exitcond3 = icmp ne i32 %j18.0, 18, !dbg !5020
  br i1 %exitcond3, label %for.body21, label %for.end25, !dbg !4986

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds nuw [3 x [52 x i8]], ptr %C, i32 %j18.0, !dbg !5022
  call fastcc void @VECTOR_V_CLEAR_TAIL.35(ptr noundef %arrayidx22) #4, !dbg !5023
  %inc24 = add nuw nsw i32 %j18.0, 1, !dbg !5024
    #dbg_value(i32 %inc24, !5018, !DIExpression(), !5019)
  br label %for.cond19, !dbg !5025, !llvm.loop !5026

for.end25:                                        ; preds = %for.cond19
  ret void, !dbg !5028
}

; Function Attrs: nounwind
define dso_local void @VECTOR_V_MUL_MATRIX_VxM(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !5029 {
entry:
  %BT = alloca [18 x [3 x [52 x i8]]], align 1
  %tmp = alloca [3 x i8], align 1
    #dbg_value(ptr %A, !5032, !DIExpression(), !5033)
    #dbg_value(ptr %B, !5034, !DIExpression(), !5033)
    #dbg_value(ptr %C, !5035, !DIExpression(), !5033)
    #dbg_declare(ptr %BT, !5036, !DIExpression(), !5037)
  call void @MATRIX_TRANSPOSE_VxM(ptr noundef %B, ptr noundef nonnull %BT) #4, !dbg !5038
    #dbg_declare(ptr %tmp, !5039, !DIExpression(), !5040)
    #dbg_value(i32 0, !5041, !DIExpression(), !5043)
  br label %for.cond, !dbg !5044

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !dbg !5045
    #dbg_value(i32 %i.0, !5041, !DIExpression(), !5043)
  %exitcond1 = icmp ne i32 %i.0, 18, !dbg !5046
  br i1 %exitcond1, label %for.body, label %for.end11, !dbg !5048

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [18 x [3 x [52 x i8]]], ptr %BT, i32 0, i32 %i.0, !dbg !5049
  call void @VECTOR_V_dot_VECTOR_V(ptr noundef %A, ptr noundef nonnull %arrayidx, ptr noundef nonnull %tmp) #4, !dbg !5051
    #dbg_value(i32 0, !5052, !DIExpression(), !5054)
  br label %for.cond3, !dbg !5055

for.cond3:                                        ; preds = %for.body5, %for.body
  %k.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body5 ], !dbg !5056
    #dbg_value(i32 %k.0, !5052, !DIExpression(), !5054)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !5057
  br i1 %exitcond, label %for.body5, label %for.inc9, !dbg !5059

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds nuw [3 x i8], ptr %tmp, i32 0, i32 %k.0, !dbg !5060
  %0 = load i8, ptr %arrayidx6, align 1, !dbg !5060
  %arrayidx8 = getelementptr inbounds nuw [18 x i8], ptr %C, i32 %k.0, i32 %i.0, !dbg !5061
  store i8 %0, ptr %arrayidx8, align 1, !dbg !5062
  %inc = add nuw nsw i32 %k.0, 1, !dbg !5063
    #dbg_value(i32 %inc, !5052, !DIExpression(), !5054)
  br label %for.cond3, !dbg !5064, !llvm.loop !5065

for.inc9:                                         ; preds = %for.cond3
  %inc10 = add nuw nsw i32 %i.0, 1, !dbg !5067
    #dbg_value(i32 %inc10, !5041, !DIExpression(), !5043)
  br label %for.cond, !dbg !5068, !llvm.loop !5069

for.end11:                                        ; preds = %for.cond
  call fastcc void @VECTOR_M_CLEAR_TAIL.40(ptr noundef %C) #4, !dbg !5071
  ret void, !dbg !5072
}

; Function Attrs: nounwind
define internal fastcc void @VECTOR_M_CLEAR_TAIL.40(ptr noundef %C) unnamed_addr #0 !dbg !5073 {
entry:
    #dbg_value(ptr %C, !5074, !DIExpression(), !5075)
    #dbg_value(i32 0, !5076, !DIExpression(), !5078)
  br label %for.cond, !dbg !5079

for.cond:                                         ; preds = %for.body, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5080
    #dbg_value(i32 %k.0, !5076, !DIExpression(), !5078)
  %exitcond = icmp ne i32 %k.0, 3, !dbg !5081
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5083

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [18 x i8], ptr %C, i32 %k.0, !dbg !5084
  %add.ptr = getelementptr inbounds nuw i8, ptr %arrayidx, i32 18, !dbg !5085
  %call = call ptr @memset(ptr noundef nonnull %add.ptr, i32 noundef 0, i32 noundef 0) #6, !dbg !5086
  %inc = add nuw nsw i32 %k.0, 1, !dbg !5087
    #dbg_value(i32 %inc, !5076, !DIExpression(), !5078)
  br label %for.cond, !dbg !5088, !llvm.loop !5089

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5091
}

; Function Attrs: nounwind
define dso_local void @MATRIX_MxV_MUL_SYMMETRIC_MATRIX_VxV(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !5092 {
entry:
    #dbg_value(ptr %A, !5095, !DIExpression(), !5096)
    #dbg_value(ptr %B, !5097, !DIExpression(), !5096)
    #dbg_value(ptr %C, !5098, !DIExpression(), !5096)
    #dbg_value(i32 0, !5099, !DIExpression(), !5101)
  br label %for.cond, !dbg !5102

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5103
    #dbg_value(i32 %i.0, !5099, !DIExpression(), !5101)
  %exitcond = icmp ne i32 %i.0, 18, !dbg !5104
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5106

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [3 x [52 x i8]], ptr %A, i32 %i.0, !dbg !5107
  %arrayidx1 = getelementptr inbounds nuw [3 x [52 x i8]], ptr %C, i32 %i.0, !dbg !5109
  call void @VECTOR_V_MUL_SYMMETRIC_MATRIX_VxV(ptr noundef %arrayidx, ptr noundef %B, ptr noundef %arrayidx1) #4, !dbg !5110
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5111
    #dbg_value(i32 %inc, !5099, !DIExpression(), !5101)
  br label %for.cond, !dbg !5112, !llvm.loop !5113

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5115
}

; Function Attrs: nounwind
define dso_local void @MATRIX_MUL_MxV_VxM(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !5116 {
entry:
    #dbg_value(ptr %A, !5119, !DIExpression(), !5120)
    #dbg_value(ptr %B, !5121, !DIExpression(), !5120)
    #dbg_value(ptr %C, !5122, !DIExpression(), !5120)
    #dbg_value(i32 0, !5123, !DIExpression(), !5125)
  br label %for.cond, !dbg !5126

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5127
    #dbg_value(i32 %i.0, !5123, !DIExpression(), !5125)
  %exitcond = icmp ne i32 %i.0, 18, !dbg !5128
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5130

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [3 x [52 x i8]], ptr %A, i32 %i.0, !dbg !5131
  %arrayidx1 = getelementptr inbounds nuw [3 x [18 x i8]], ptr %C, i32 %i.0, !dbg !5133
  call void @VECTOR_V_MUL_MATRIX_VxM(ptr noundef %arrayidx, ptr noundef %B, ptr noundef %arrayidx1) #4, !dbg !5134
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5135
    #dbg_value(i32 %inc, !5123, !DIExpression(), !5125)
  br label %for.cond, !dbg !5136, !llvm.loop !5137

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5139
}

; Function Attrs: nounwind
define dso_local void @MATRIX_ADD_MxM(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !5140 {
entry:
    #dbg_value(ptr %A, !5143, !DIExpression(), !5144)
    #dbg_value(ptr %B, !5145, !DIExpression(), !5144)
    #dbg_value(ptr %C, !5146, !DIExpression(), !5144)
    #dbg_value(i32 0, !5147, !DIExpression(), !5149)
  br label %for.cond, !dbg !5150

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5151
    #dbg_value(i32 %i.0, !5147, !DIExpression(), !5149)
  %exitcond = icmp ne i32 %i.0, 18, !dbg !5152
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5154

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [3 x [18 x i8]], ptr %A, i32 %i.0, !dbg !5155
  %arrayidx1 = getelementptr inbounds nuw [3 x [18 x i8]], ptr %B, i32 %i.0, !dbg !5157
  %arrayidx3 = getelementptr inbounds nuw [3 x [18 x i8]], ptr %C, i32 %i.0, !dbg !5158
  call void @VECTOR_M_ADD(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx3) #4, !dbg !5159
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5160
    #dbg_value(i32 %inc, !5147, !DIExpression(), !5149)
  br label %for.cond, !dbg !5161, !llvm.loop !5162

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5164
}

; Function Attrs: nounwind
define dso_local void @MATRIX_MUL_ADD_MxV_VxM(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !5165 {
entry:
  %T = alloca [18 x [3 x [18 x i8]]], align 1
    #dbg_value(ptr %A, !5166, !DIExpression(), !5167)
    #dbg_value(ptr %B, !5168, !DIExpression(), !5167)
    #dbg_value(ptr %C, !5169, !DIExpression(), !5167)
    #dbg_declare(ptr %T, !5170, !DIExpression(), !5171)
  call void @MATRIX_MUL_MxV_VxM(ptr noundef %A, ptr noundef %B, ptr noundef nonnull %T) #4, !dbg !5172
  call void @MATRIX_ADD_MxM(ptr noundef %C, ptr noundef nonnull %T, ptr noundef %C) #4, !dbg !5173
  ret void, !dbg !5174
}

; Function Attrs: nounwind
define dso_local void @MATRIX_SUB_MxV(ptr noundef %A, ptr noundef %B, ptr noundef %C) local_unnamed_addr #0 !dbg !5175 {
entry:
    #dbg_value(ptr %A, !5176, !DIExpression(), !5177)
    #dbg_value(ptr %B, !5178, !DIExpression(), !5177)
    #dbg_value(ptr %C, !5179, !DIExpression(), !5177)
    #dbg_value(i32 0, !5180, !DIExpression(), !5182)
  br label %for.cond, !dbg !5183

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !5184
    #dbg_value(i32 %i.0, !5180, !DIExpression(), !5182)
  %exitcond = icmp ne i32 %i.0, 18, !dbg !5185
  br i1 %exitcond, label %for.body, label %for.end, !dbg !5187

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [3 x [52 x i8]], ptr %A, i32 %i.0, !dbg !5188
  %arrayidx1 = getelementptr inbounds nuw [3 x [52 x i8]], ptr %B, i32 %i.0, !dbg !5190
  %arrayidx3 = getelementptr inbounds nuw [3 x [52 x i8]], ptr %C, i32 %i.0, !dbg !5191
  call void @VECTOR_V_SUB(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx3) #4, !dbg !5192
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5193
    #dbg_value(i32 %inc, !5180, !DIExpression(), !5182)
  br label %for.cond, !dbg !5194, !llvm.loop !5195

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5197
}

; Function Attrs: nounwind
define dso_local i32 @seedexpander_init(ptr noundef %ctx, ptr noundef %seed, ptr noundef %diversifier, i32 noundef %maxlen) local_unnamed_addr #0 !dbg !5198 {
entry:
    #dbg_value(ptr %ctx, !5210, !DIExpression(), !5211)
    #dbg_value(ptr %seed, !5212, !DIExpression(), !5211)
    #dbg_value(ptr %diversifier, !5213, !DIExpression(), !5211)
    #dbg_value(i32 %maxlen, !5214, !DIExpression(), !5211)
  %length_remaining = getelementptr inbounds nuw i8, ptr %ctx, i32 20, !dbg !5215
  store i32 %maxlen, ptr %length_remaining, align 4, !dbg !5216
  %key = getelementptr inbounds nuw i8, ptr %ctx, i32 24, !dbg !5217
  %call = call ptr @memcpy(ptr noundef nonnull %key, ptr noundef %seed, i32 noundef 32) #6, !dbg !5218
  %ctr = getelementptr inbounds nuw i8, ptr %ctx, i32 56, !dbg !5219
  %call3 = call ptr @memcpy(ptr noundef nonnull %ctr, ptr noundef %diversifier, i32 noundef 8) #6, !dbg !5220
  %conv4 = trunc i32 %maxlen to i8, !dbg !5221
  %arrayidx = getelementptr inbounds nuw i8, ptr %ctx, i32 67, !dbg !5222
  store i8 %conv4, ptr %arrayidx, align 1, !dbg !5223
  %shr = lshr i32 %maxlen, 8, !dbg !5224
    #dbg_value(i32 %shr, !5214, !DIExpression(), !5211)
  %conv7 = trunc i32 %shr to i8, !dbg !5225
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %ctx, i32 66, !dbg !5226
  store i8 %conv7, ptr %arrayidx9, align 2, !dbg !5227
  %shr10 = lshr i32 %maxlen, 16, !dbg !5228
    #dbg_value(i32 %shr10, !5214, !DIExpression(), !5211)
  %rem11.lhs.trunc = trunc i32 %shr10 to i8, !dbg !5229
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %ctx, i32 65, !dbg !5230
  store i8 %rem11.lhs.trunc, ptr %arrayidx14, align 1, !dbg !5231
  %shr15 = lshr i32 %maxlen, 24, !dbg !5232
    #dbg_value(i32 %shr15, !5214, !DIExpression(), !5211)
  %conv17 = trunc nuw i32 %shr15 to i8, !dbg !5233
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %ctx, i32 64, !dbg !5234
  store i8 %conv17, ptr %arrayidx19, align 4, !dbg !5235
  %add.ptr = getelementptr inbounds nuw i8, ptr %ctx, i32 68, !dbg !5236
  %call22 = call ptr @memset(ptr noundef nonnull %add.ptr, i32 noundef 0, i32 noundef 4) #6, !dbg !5237
  %buffer_pos = getelementptr inbounds nuw i8, ptr %ctx, i32 16, !dbg !5238
  store i32 16, ptr %buffer_pos, align 4, !dbg !5239
  %call24 = call ptr @memset(ptr noundef %ctx, i32 noundef 0, i32 noundef 16) #6, !dbg !5240
  ret i32 0, !dbg !5241
}

; Function Attrs: nounwind
define dso_local range(i32 -3, 1) i32 @seedexpander(ptr noundef %ctx, ptr noundef %x, i32 noundef %xlen) local_unnamed_addr #0 !dbg !5242 {
entry:
    #dbg_value(ptr %ctx, !5245, !DIExpression(), !5246)
    #dbg_value(ptr %x, !5247, !DIExpression(), !5246)
    #dbg_value(i32 %xlen, !5248, !DIExpression(), !5246)
  %cmp = icmp eq ptr %x, null, !dbg !5249
  br i1 %cmp, label %return, label %if.end, !dbg !5249

if.end:                                           ; preds = %entry
  %length_remaining = getelementptr inbounds nuw i8, ptr %ctx, i32 20, !dbg !5251
  %0 = load i32, ptr %length_remaining, align 4, !dbg !5251
  %cmp1.not = icmp ult i32 %xlen, %0, !dbg !5253
  br i1 %cmp1.not, label %if.end3, label %return, !dbg !5253

if.end3:                                          ; preds = %if.end
  %length_remaining4 = getelementptr inbounds nuw i8, ptr %ctx, i32 20, !dbg !5254
  %1 = load i32, ptr %length_remaining4, align 4, !dbg !5255
  %sub = sub i32 %1, %xlen, !dbg !5255
  store i32 %sub, ptr %length_remaining4, align 4, !dbg !5255
    #dbg_value(i32 0, !5256, !DIExpression(), !5246)
  br label %while.cond, !dbg !5257

while.cond:                                       ; preds = %for.end, %if.end3
  %xlen.addr.0 = phi i32 [ %xlen, %if.end3 ], [ %sub23, %for.end ]
  %offset.0 = phi i32 [ 0, %if.end3 ], [ %add26, %for.end ], !dbg !5246
    #dbg_value(i32 %offset.0, !5256, !DIExpression(), !5246)
    #dbg_value(i32 %xlen.addr.0, !5248, !DIExpression(), !5246)
  %cmp5.not = icmp eq i32 %xlen.addr.0, 0, !dbg !5258
  br i1 %cmp5.not, label %return.loopexit, label %while.body, !dbg !5257

while.body:                                       ; preds = %while.cond
  %buffer_pos = getelementptr inbounds nuw i8, ptr %ctx, i32 16, !dbg !5259
  %2 = load i32, ptr %buffer_pos, align 4, !dbg !5259
  %sub6 = sub i32 16, %2, !dbg !5262
  %cmp7.not = icmp ugt i32 %xlen.addr.0, %sub6, !dbg !5263
  br i1 %cmp7.not, label %if.end12, label %if.then8, !dbg !5263

if.then8:                                         ; preds = %while.body
  %xlen.addr.0.lcssa3 = phi i32 [ %xlen.addr.0, %while.body ]
  %offset.0.lcssa2 = phi i32 [ %offset.0, %while.body ], !dbg !5246
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i32 %offset.0.lcssa2, !dbg !5264
  %buffer_pos9 = getelementptr inbounds nuw i8, ptr %ctx, i32 16, !dbg !5266
  %3 = load i32, ptr %buffer_pos9, align 4, !dbg !5266
  %add.ptr10 = getelementptr inbounds i8, ptr %ctx, i32 %3, !dbg !5267
  %call = call ptr @memcpy(ptr noundef nonnull %add.ptr, ptr noundef %add.ptr10, i32 noundef %xlen.addr.0.lcssa3) #6, !dbg !5268
  %buffer_pos11 = getelementptr inbounds nuw i8, ptr %ctx, i32 16, !dbg !5269
  %4 = load i32, ptr %buffer_pos11, align 4, !dbg !5270
  %add = add i32 %4, %xlen.addr.0.lcssa3, !dbg !5270
  store i32 %add, ptr %buffer_pos11, align 4, !dbg !5270
  br label %return, !dbg !5271

if.end12:                                         ; preds = %while.body
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %x, i32 %offset.0, !dbg !5272
  %buffer_pos16 = getelementptr inbounds nuw i8, ptr %ctx, i32 16, !dbg !5273
  %5 = load i32, ptr %buffer_pos16, align 4, !dbg !5273
  %add.ptr17 = getelementptr inbounds i8, ptr %ctx, i32 %5, !dbg !5274
  %sub19 = sub i32 16, %5, !dbg !5275
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr13, ptr noundef %add.ptr17, i32 noundef %sub19) #6, !dbg !5276
  %buffer_pos21 = getelementptr inbounds nuw i8, ptr %ctx, i32 16, !dbg !5277
  %6 = load i32, ptr %buffer_pos21, align 4, !dbg !5277
  %sub22.neg = add i32 %6, -16, !dbg !5278
  %sub23 = add i32 %sub22.neg, %xlen.addr.0, !dbg !5279
    #dbg_value(i32 %sub23, !5248, !DIExpression(), !5246)
  %reass.sub = sub i32 %offset.0, %6, !dbg !5280
  %add26 = add i32 %reass.sub, 16, !dbg !5280
    #dbg_value(i32 %add26, !5256, !DIExpression(), !5246)
  %key = getelementptr inbounds nuw i8, ptr %ctx, i32 24, !dbg !5281
  %ctr = getelementptr inbounds nuw i8, ptr %ctx, i32 56, !dbg !5282
  call void @AES256_ECB(ptr noundef nonnull %key, ptr noundef nonnull %ctr, ptr noundef %ctx) #4, !dbg !5283
  %buffer_pos31 = getelementptr inbounds nuw i8, ptr %ctx, i32 16, !dbg !5284
  store i32 0, ptr %buffer_pos31, align 4, !dbg !5285
    #dbg_value(i32 15, !5286, !DIExpression(), !5288)
  br label %for.cond, !dbg !5289

for.cond:                                         ; preds = %if.then36, %if.end12
  %i.0 = phi i32 [ 15, %if.end12 ], [ %dec, %if.then36 ], !dbg !5290
    #dbg_value(i32 %i.0, !5286, !DIExpression(), !5288)
  %cmp32 = icmp ugt i32 %i.0, 11, !dbg !5291
  br i1 %cmp32, label %for.body, label %for.end.loopexit, !dbg !5293

for.body:                                         ; preds = %for.cond
  %ctr33 = getelementptr inbounds nuw i8, ptr %ctx, i32 56, !dbg !5294
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr %ctr33, i32 0, i32 %i.0, !dbg !5297
  %7 = load i8, ptr %arrayidx, align 1, !dbg !5297
  %cmp34 = icmp eq i8 %7, -1, !dbg !5298
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !5298

if.then36:                                        ; preds = %for.body
  %ctr37 = getelementptr inbounds nuw i8, ptr %ctx, i32 56, !dbg !5299
  %arrayidx38 = getelementptr inbounds nuw [16 x i8], ptr %ctr37, i32 0, i32 %i.0, !dbg !5300
  store i8 0, ptr %arrayidx38, align 1, !dbg !5301
  %dec = add nsw i32 %i.0, -1, !dbg !5302
    #dbg_value(i32 %dec, !5286, !DIExpression(), !5288)
  br label %for.cond, !dbg !5303, !llvm.loop !5304

if.else:                                          ; preds = %for.body
  %i.0.lcssa1 = phi i32 [ %i.0, %for.body ], !dbg !5290
  %ctr39 = getelementptr inbounds nuw i8, ptr %ctx, i32 56, !dbg !5306
  %arrayidx40 = getelementptr inbounds nuw [16 x i8], ptr %ctr39, i32 0, i32 %i.0.lcssa1, !dbg !5308
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !5309
  %inc = add i8 %8, 1, !dbg !5309
  store i8 %inc, ptr %arrayidx40, align 1, !dbg !5309
  br label %for.end, !dbg !5310

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !5257

for.end:                                          ; preds = %for.end.loopexit, %if.else
  br label %while.cond, !dbg !5257, !llvm.loop !5311

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !5313

return:                                           ; preds = %return.loopexit, %if.end, %entry, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ -2, %entry ], [ -3, %if.end ], [ 0, %return.loopexit ], !dbg !5246
  ret i32 %retval.0, !dbg !5313
}

; Function Attrs: nounwind
define dso_local void @AES256_ECB(ptr noundef %key, ptr noundef %ctr, ptr noundef %buffer) local_unnamed_addr #0 !dbg !5314 {
entry:
  %len = alloca i32, align 4
    #dbg_value(ptr %key, !5317, !DIExpression(), !5318)
    #dbg_value(ptr %ctr, !5319, !DIExpression(), !5318)
    #dbg_value(ptr %buffer, !5320, !DIExpression(), !5318)
  %call = call ptr @EVP_CIPHER_CTX_new() #4, !dbg !5321
    #dbg_value(ptr %call, !5323, !DIExpression(), !5318)
  %tobool.not = icmp eq ptr %call, null, !dbg !5324
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !5325

if.then:                                          ; preds = %entry
  call void @handleErrors() #4, !dbg !5326
  br label %if.end, !dbg !5326

if.end:                                           ; preds = %if.then, %entry
  %call1 = call ptr @EVP_aes_256_ecb() #4, !dbg !5327
  %call2 = call i32 @EVP_EncryptInit_ex(ptr noundef %call, ptr noundef nonnull @aes_256_ecb, ptr noundef null, ptr noundef %key, ptr noundef null) #4, !dbg !5329
  %cmp.not.not = icmp eq i32 %call2, 0, !dbg !5330
  br i1 %cmp.not.not, label %if.then3, label %if.end4, !dbg !5330

if.then3:                                         ; preds = %if.end
  call void @handleErrors() #4, !dbg !5331
  br label %if.end4, !dbg !5331

if.end4:                                          ; preds = %if.then3, %if.end
    #dbg_value(ptr %len, !5332, !DIExpression(DW_OP_deref), !5318)
  %call5 = call i32 @EVP_EncryptUpdate(ptr noundef %call, ptr noundef %buffer, ptr noundef nonnull %len, ptr noundef %ctr, i32 noundef 16) #4, !dbg !5333
  %cmp6.not.not = icmp eq i32 %call5, 0, !dbg !5335
  br i1 %cmp6.not.not, label %if.then7, label %if.end8, !dbg !5335

if.then7:                                         ; preds = %if.end4
  call void @handleErrors() #4, !dbg !5336
  br label %if.end8, !dbg !5336

if.end8:                                          ; preds = %if.then7, %if.end4
    #dbg_value(i32 poison, !5332, !DIExpression(), !5318)
    #dbg_value(i32 poison, !5337, !DIExpression(), !5318)
  call void @EVP_CIPHER_CTX_free(ptr noundef %call) #4, !dbg !5338
  ret void, !dbg !5339
}

; Function Attrs: nounwind
define dso_local void @handleErrors() local_unnamed_addr #0 !dbg !5340 {
entry:
  %0 = load ptr, ptr @_impure_ptr, align 4, !dbg !5343
  %_stderr = getelementptr inbounds nuw i8, ptr %0, i32 12, !dbg !5343
  %1 = load ptr, ptr %_stderr, align 4, !dbg !5343
  call void @ERR_print_errors_fp(ptr noundef %1) #4, !dbg !5344
  call void @abort() #6, !dbg !5345
  ret void, !dbg !5346
}

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local void @randombytes_init(ptr noundef %entropy_input, ptr noundef %personalization_string, i32 noundef %security_strength) local_unnamed_addr #0 !dbg !5347 {
entry:
  %seed_material = alloca [48 x i8], align 1
    #dbg_value(ptr %entropy_input, !5350, !DIExpression(), !5351)
    #dbg_value(ptr %personalization_string, !5352, !DIExpression(), !5351)
    #dbg_value(i32 %security_strength, !5353, !DIExpression(), !5351)
    #dbg_declare(ptr %seed_material, !5354, !DIExpression(), !5355)
  %call = call ptr @memcpy(ptr noundef nonnull %seed_material, ptr noundef %entropy_input, i32 noundef 48) #6, !dbg !5356
  %tobool.not = icmp eq ptr %personalization_string, null, !dbg !5357
  br i1 %tobool.not, label %if.end, label %for.cond.preheader, !dbg !5357

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !5359

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !5361
    #dbg_value(i32 %i.0, !5362, !DIExpression(), !5363)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !5364
  br i1 %exitcond, label %for.body, label %if.end.loopexit, !dbg !5359

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %personalization_string, i32 %i.0, !dbg !5366
  %0 = load i8, ptr %arrayidx, align 1, !dbg !5366
  %arrayidx1 = getelementptr inbounds nuw [48 x i8], ptr %seed_material, i32 0, i32 %i.0, !dbg !5367
  %1 = load i8, ptr %arrayidx1, align 1, !dbg !5368
  %xor1 = xor i8 %1, %0, !dbg !5368
  store i8 %xor1, ptr %arrayidx1, align 1, !dbg !5368
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5369
    #dbg_value(i32 %inc, !5362, !DIExpression(), !5363)
  br label %for.cond, !dbg !5370, !llvm.loop !5371

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !5373

if.end:                                           ; preds = %if.end.loopexit, %entry
  %call4 = call ptr @memset(ptr noundef nonnull @DRBG_ctx, i32 noundef 0, i32 noundef 32) #6, !dbg !5373
  %call5 = call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 noundef 0, i32 noundef 16) #6, !dbg !5374
  call void @AES256_CTR_DRBG_Update(ptr noundef nonnull %seed_material, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !5375
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !5376
  ret void, !dbg !5377
}

; Function Attrs: nounwind
define dso_local void @AES256_CTR_DRBG_Update(ptr noundef %provided_data, ptr noundef %Key, ptr noundef %V) local_unnamed_addr #0 !dbg !5378 {
entry:
  %temp = alloca [48 x i8], align 1
    #dbg_value(ptr %provided_data, !5379, !DIExpression(), !5380)
    #dbg_value(ptr %Key, !5381, !DIExpression(), !5380)
    #dbg_value(ptr %V, !5382, !DIExpression(), !5380)
    #dbg_declare(ptr %temp, !5383, !DIExpression(), !5384)
    #dbg_value(i32 0, !5385, !DIExpression(), !5387)
  br label %for.cond, !dbg !5388

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.end ], !dbg !5389
    #dbg_value(i32 %i.0, !5385, !DIExpression(), !5387)
  %exitcond = icmp ne i32 %i.0, 3, !dbg !5390
  br i1 %exitcond, label %for.cond1.preheader, label %for.end10, !dbg !5392

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !5393

for.cond1:                                        ; preds = %for.cond1.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond1.preheader ], !dbg !5396
    #dbg_value(i32 %j.0, !5397, !DIExpression(), !5398)
  %cmp2 = icmp sgt i32 %j.0, -1, !dbg !5399
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !dbg !5393

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !5401
  %0 = load i8, ptr %arrayidx, align 1, !dbg !5401
  %cmp4 = icmp eq i8 %0, -1, !dbg !5404
  br i1 %cmp4, label %if.then, label %if.else, !dbg !5404

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0, !dbg !5405
  store i8 0, ptr %arrayidx6, align 1, !dbg !5406
  %dec = add nsw i32 %j.0, -1, !dbg !5407
    #dbg_value(i32 %dec, !5397, !DIExpression(), !5398)
  br label %for.cond1, !dbg !5408, !llvm.loop !5409

if.else:                                          ; preds = %for.body3
  %j.0.lcssa2 = phi i32 [ %j.0, %for.body3 ], !dbg !5396
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %V, i32 %j.0.lcssa2, !dbg !5411
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !5413
  %inc = add i8 %1, 1, !dbg !5413
  store i8 %inc, ptr %arrayidx7, align 1, !dbg !5413
  br label %for.end, !dbg !5414

for.end.loopexit:                                 ; preds = %for.cond1
  br label %for.end, !dbg !5415

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %mul = shl i32 %i.0, 4, !dbg !5415
  %add.ptr = getelementptr inbounds i8, ptr %temp, i32 %mul, !dbg !5416
  call void @AES256_ECB(ptr noundef %Key, ptr noundef %V, ptr noundef nonnull %add.ptr) #4, !dbg !5417
  %inc9 = add nuw nsw i32 %i.0, 1, !dbg !5418
    #dbg_value(i32 %inc9, !5385, !DIExpression(), !5387)
  br label %for.cond, !dbg !5419, !llvm.loop !5420

for.end10:                                        ; preds = %for.cond
  %cmp11.not = icmp eq ptr %provided_data, null, !dbg !5422
  br i1 %cmp11.not, label %if.end27, label %for.cond15.preheader, !dbg !5422

for.cond15.preheader:                             ; preds = %for.end10
  br label %for.cond15, !dbg !5424

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %i14.0 = phi i32 [ %inc25, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !5426
    #dbg_value(i32 %i14.0, !5427, !DIExpression(), !5428)
  %exitcond3 = icmp ne i32 %i14.0, 48, !dbg !5429
  br i1 %exitcond3, label %for.body18, label %if.end27.loopexit, !dbg !5424

for.body18:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %provided_data, i32 %i14.0, !dbg !5431
  %2 = load i8, ptr %arrayidx19, align 1, !dbg !5431
  %arrayidx21 = getelementptr inbounds nuw [48 x i8], ptr %temp, i32 0, i32 %i14.0, !dbg !5432
  %3 = load i8, ptr %arrayidx21, align 1, !dbg !5433
  %xor1 = xor i8 %3, %2, !dbg !5433
  store i8 %xor1, ptr %arrayidx21, align 1, !dbg !5433
  %inc25 = add nuw nsw i32 %i14.0, 1, !dbg !5434
    #dbg_value(i32 %inc25, !5427, !DIExpression(), !5428)
  br label %for.cond15, !dbg !5435, !llvm.loop !5436

if.end27.loopexit:                                ; preds = %for.cond15
  br label %if.end27, !dbg !5438

if.end27:                                         ; preds = %if.end27.loopexit, %for.end10
  %call = call ptr @memcpy(ptr noundef %Key, ptr noundef nonnull %temp, i32 noundef 32) #6, !dbg !5438
  %add.ptr30 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !5439
  %call31 = call ptr @memcpy(ptr noundef %V, ptr noundef nonnull %add.ptr30, i32 noundef 16) #6, !dbg !5440
  ret void, !dbg !5441
}

; Function Attrs: nounwind
define dso_local i32 @randombytes(ptr noundef %x, i64 noundef %xlen) local_unnamed_addr #0 !dbg !5442 {
entry:
  %block = alloca [16 x i8], align 1
    #dbg_value(ptr %x, !5445, !DIExpression(), !5446)
    #dbg_value(i64 %xlen, !5447, !DIExpression(), !5446)
    #dbg_declare(ptr %block, !5448, !DIExpression(), !5449)
    #dbg_value(i32 0, !5450, !DIExpression(), !5446)
  br label %while.cond, !dbg !5451

while.cond:                                       ; preds = %if.end15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end15 ], !dbg !5446
  %xlen.addr.0 = phi i64 [ %xlen, %entry ], [ %xlen.addr.1, %if.end15 ]
    #dbg_value(i64 %xlen.addr.0, !5447, !DIExpression(), !5446)
    #dbg_value(i32 %i.0, !5450, !DIExpression(), !5446)
  %cmp.not = icmp eq i64 %xlen.addr.0, 0, !dbg !5452
  br i1 %cmp.not, label %while.end, label %for.cond.preheader, !dbg !5451

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !5453

for.cond:                                         ; preds = %for.cond.preheader, %if.then
  %j.0 = phi i32 [ %dec, %if.then ], [ 15, %for.cond.preheader ], !dbg !5456
    #dbg_value(i32 %j.0, !5457, !DIExpression(), !5458)
  %cmp1 = icmp sgt i32 %j.0, -1, !dbg !5459
  br i1 %cmp1, label %for.body, label %for.end.loopexit, !dbg !5453

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !5461
  %0 = load i8, ptr %arrayidx, align 1, !dbg !5461
  %cmp2 = icmp eq i8 %0, -1, !dbg !5464
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5464

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0, !dbg !5465
  store i8 0, ptr %arrayidx4, align 1, !dbg !5466
  %dec = add nsw i32 %j.0, -1, !dbg !5467
    #dbg_value(i32 %dec, !5457, !DIExpression(), !5458)
  br label %for.cond, !dbg !5468, !llvm.loop !5469

if.else:                                          ; preds = %for.body
  %j.0.lcssa1 = phi i32 [ %j.0, %for.body ], !dbg !5456
  %arrayidx5 = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), i32 0, i32 %j.0.lcssa1, !dbg !5471
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !5473
  %inc = add i8 %1, 1, !dbg !5473
  store i8 %inc, ptr %arrayidx5, align 1, !dbg !5473
  br label %for.end, !dbg !5474

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !5475

for.end:                                          ; preds = %for.end.loopexit, %if.else
  call void @AES256_ECB(ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32), ptr noundef nonnull %block) #4, !dbg !5475
  %cmp6 = icmp ugt i64 %xlen.addr.0, 15, !dbg !5476
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !5476

if.then8:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds i8, ptr %x, i32 %i.0, !dbg !5478
  %call = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef nonnull %block, i32 noundef 16) #6, !dbg !5480
  %add = add i32 %i.0, 16, !dbg !5481
    #dbg_value(i32 %add, !5450, !DIExpression(), !5446)
  %sub = add i64 %xlen.addr.0, -16, !dbg !5482
    #dbg_value(i64 %sub, !5447, !DIExpression(), !5446)
  br label %if.end15, !dbg !5483

if.else10:                                        ; preds = %for.end
  %add.ptr11 = getelementptr inbounds i8, ptr %x, i32 %i.0, !dbg !5484
  %conv13 = trunc nuw nsw i64 %xlen.addr.0 to i32, !dbg !5486
  %call14 = call ptr @memcpy(ptr noundef %add.ptr11, ptr noundef nonnull %block, i32 noundef %conv13) #6, !dbg !5487
    #dbg_value(i64 0, !5447, !DIExpression(), !5446)
  br label %if.end15

if.end15:                                         ; preds = %if.else10, %if.then8
  %i.1 = phi i32 [ %add, %if.then8 ], [ %i.0, %if.else10 ], !dbg !5446
  %xlen.addr.1 = phi i64 [ %sub, %if.then8 ], [ 0, %if.else10 ], !dbg !5488
    #dbg_value(i64 %xlen.addr.1, !5447, !DIExpression(), !5446)
    #dbg_value(i32 %i.1, !5450, !DIExpression(), !5446)
  br label %while.cond, !dbg !5451, !llvm.loop !5489

while.end:                                        ; preds = %while.cond
  call void @AES256_CTR_DRBG_Update(ptr noundef null, ptr noundef nonnull @DRBG_ctx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 32)) #4, !dbg !5491
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !5492
  %inc16 = add i32 %2, 1, !dbg !5492
  store i32 %inc16, ptr getelementptr inbounds nuw (i8, ptr @DRBG_ctx, i32 48), align 4, !dbg !5492
  ret i32 0, !dbg !5493
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #1 = { allocsize(0,1) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #3 = { allocsize(0) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind allocsize(0,1) "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind allocsize(0) "no-builtins" }

!llvm.dbg.cu = !{!142, !144, !2, !61, !145, !79, !147, !114, !125}
!llvm.ident = !{!152, !152, !152, !152, !152, !152, !152, !152, !152}
!llvm.module.flags = !{!153, !154, !155, !156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aes_128_ctr", scope: !2, file: !6, line: 59, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../qruov_port/<stdin>", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 52, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../qruov_port/evp_shim.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "AES_MODE_CTR", value: 0)
!10 = !DIEnumerator(name: "AES_MODE_ECB", value: 1)
!11 = !{!12, !19, !21, !7, !23, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 43, baseType: !18)
!17 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 214, baseType: !7)
!20 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 60, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 105, baseType: !25)
!25 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!0, !27, !37, !39, !41, !45, !47, !53, !55}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "aes_192_ctr", scope: !2, file: !6, line: 60, type: !29, isLocal: true, isDefinition: true)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "../qruov_port/include/openssl/evp.h", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !6, line: 54, size: 64, elements: !33)
!33 = !{!34, !36}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !32, file: !6, line: 55, baseType: !35, size: 32)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !32, file: !6, line: 56, baseType: !35, size: 32, offset: 32)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "aes_256_ctr", scope: !2, file: !6, line: 61, type: !29, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "aes_256_ecb", scope: !2, file: !6, line: 62, type: !29, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "shake128_md", scope: !2, file: !6, line: 234, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !31, line: 23, baseType: !7)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "shake256_md", scope: !2, file: !6, line: 235, type: !43, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "keccakf_piln", scope: !2, file: !6, line: 200, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 768, elements: !51)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!51 = !{!52}
!52 = !DISubrange(count: 24)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "keccakf_rotc", scope: !2, file: !6, line: 196, type: !49, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "keccakf_rndc", scope: !2, file: !6, line: 186, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1536, elements: !51)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "Rcon", scope: !61, file: !67, line: 392, type: !68, isLocal: true, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !62, globals: !66, splitDebugInlining: false, nameTableKind: None)
!62 = !{!63, !23, !64, !18}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 48, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 79, baseType: !7)
!66 = !{!59}
!67 = !DIFile(filename: "../qruov_port/aes_c.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 80, elements: !70)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!70 = !{!71}
!71 = !DISubrange(count: 10)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "P3", scope: !74, file: !75, line: 19, type: !99, isLocal: true, isDefinition: true)
!74 = distinct !DISubprogram(name: "crypto_sign_keypair", scope: !75, file: !75, line: 15, type: !76, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !98)
!75 = !DIFile(filename: "../../../src/ref/sign.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!76 = !DISubroutineType(types: !77)
!77 = !{!35, !78, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !80, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !81, globals: !90, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "../../../src/ref/<stdin>", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!81 = !{!82, !83, !35, !19, !87}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fql", file: !85, line: 30, baseType: !86)
!85 = !DIFile(filename: "../qruov_port/ref/Fql.h", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 24, elements: !88)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fq", file: !85, line: 15, baseType: !14)
!88 = !{!89}
!89 = !DISubrange(count: 3)
!90 = !{!72, !91}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "P3", scope: !93, file: !75, line: 68, type: !99, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "crypto_sign_open", scope: !75, file: !75, line: 62, type: !94, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !98)
!94 = !DISubroutineType(types: !95)
!95 = !{!35, !78, !96, !97, !25, !97}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!98 = !{}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "QRUOV_P3", file: !100, line: 38, baseType: !101)
!100 = !DIFile(filename: "../qruov_port/ref/matrix.h", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 419904, align: 8, elements: !110)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_MxM", file: !100, line: 31, baseType: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 7776, align: 8, elements: !108)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "VECTOR_M", file: !100, line: 26, baseType: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 432, align: 8, elements: !88)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_M", file: !100, line: 23, baseType: !107, align: 8)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 144, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 18)
!110 = !{!111}
!111 = !DISubrange(count: 54)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "Fq_inv_table", scope: !114, file: !119, line: 18, type: !120, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C11, file: !115, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !116, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../qruov_port/ref/<stdin>", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!116 = !{!112, !117}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "Fql_zero", scope: !114, file: !119, line: 6, type: !84, isLocal: false, isDefinition: true)
!119 = !DIFile(filename: "../qruov_port/ref/Fql.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1016, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 127)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "DRBG_ctx", scope: !125, file: !128, line: 15, type: !129, isLocal: false, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C11, file: !80, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !126, globals: !127, splitDebugInlining: false, nameTableKind: None)
!126 = !{!63}
!127 = !{!123}
!128 = !DIFile(filename: "../../../src/ref/rng.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "AES256_CTR_DRBG_struct", file: !130, line: 31, baseType: !131)
!130 = !DIFile(filename: "../../../src/ref/rng.h", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 27, size: 416, elements: !132)
!132 = !{!133, !137, !141}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !131, file: !130, line: 28, baseType: !134, size: 256)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !131, file: !130, line: 29, baseType: !138, size: 128, offset: 256)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reseed_counter", scope: !131, file: !130, line: 30, baseType: !35, size: 32, offset: 384)
!142 = distinct !DICompileUnit(language: DW_LANG_C11, file: !143, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!143 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!144 = distinct !DICompileUnit(language: DW_LANG_C11, file: !143, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!145 = distinct !DICompileUnit(language: DW_LANG_C11, file: !115, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !146, splitDebugInlining: false, nameTableKind: None)
!146 = !{!23, !87, !82, !83, !63, !35, !19}
!147 = distinct !DICompileUnit(language: DW_LANG_C11, file: !115, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !148, splitDebugInlining: false, nameTableKind: None)
!148 = !{!87, !149, !35, !23}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fq_vec", file: !151, line: 6, baseType: !87)
!151 = !DIFile(filename: "../qruov_port/ref/matrix.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!152 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)"}
!153 = !{i32 2, !"Debug Info Version", i32 3}
!154 = !{i32 1, !"wchar_size", i32 4}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 1, !"Code Model", i32 1}
!157 = distinct !DISubprogram(name: "main", scope: !158, file: !158, line: 63, type: !159, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142)
!158 = !DIFile(filename: "../example.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!159 = !DISubroutineType(types: !160)
!160 = !{!35}
!161 = !DILocation(line: 64, column: 12, scope: !157)
!162 = !DILocation(line: 64, column: 5, scope: !157)
!163 = distinct !DISubprogram(name: "example_qruov", scope: !158, file: !158, line: 16, type: !159, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !142, retainedNodes: !98)
!164 = !DILocalVariable(name: "mlen", scope: !163, file: !158, line: 18, type: !25)
!165 = !DILocation(line: 0, scope: !163)
!166 = !DILocalVariable(name: "smlen", scope: !163, file: !158, line: 19, type: !25)
!167 = !DILocation(line: 19, column: 24, scope: !163)
!168 = !DILocalVariable(name: "m2len", scope: !163, file: !158, line: 20, type: !25)
!169 = !DILocation(line: 20, column: 24, scope: !163)
!170 = !DILocation(line: 22, column: 25, scope: !163)
!171 = !DILocalVariable(name: "pk", scope: !163, file: !158, line: 22, type: !78)
!172 = !DILocation(line: 23, column: 25, scope: !163)
!173 = !DILocalVariable(name: "sk", scope: !163, file: !158, line: 23, type: !78)
!174 = !DILocation(line: 25, column: 25, scope: !163)
!175 = !DILocalVariable(name: "sm", scope: !163, file: !158, line: 25, type: !78)
!176 = !DILocation(line: 26, column: 25, scope: !163)
!177 = !DILocalVariable(name: "m2", scope: !163, file: !158, line: 26, type: !78)
!178 = !DILocalVariable(name: "m", scope: !163, file: !158, line: 28, type: !134)
!179 = !DILocation(line: 28, column: 19, scope: !163)
!180 = !DILocalVariable(name: "entropy_input", scope: !163, file: !158, line: 31, type: !181)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 48)
!184 = !DILocation(line: 31, column: 19, scope: !163)
!185 = !DILocalVariable(name: "i", scope: !186, file: !158, line: 32, type: !35)
!186 = distinct !DILexicalBlock(scope: !163, file: !158, line: 32, column: 5)
!187 = !DILocation(line: 0, scope: !186)
!188 = !DILocation(line: 32, column: 10, scope: !186)
!189 = !DILocation(line: 32, scope: !186)
!190 = !DILocation(line: 32, column: 23, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !158, line: 32, column: 5)
!192 = !DILocation(line: 32, column: 5, scope: !186)
!193 = !DILocation(line: 33, column: 28, scope: !191)
!194 = !DILocation(line: 33, column: 9, scope: !191)
!195 = !DILocation(line: 33, column: 26, scope: !191)
!196 = !DILocation(line: 32, column: 30, scope: !191)
!197 = !DILocation(line: 32, column: 5, scope: !191)
!198 = distinct !{!198, !192, !199, !200}
!199 = !DILocation(line: 33, column: 28, scope: !186)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 34, column: 5, scope: !163)
!202 = !DILocation(line: 36, column: 15, scope: !163)
!203 = !DILocalVariable(name: "res", scope: !163, file: !158, line: 36, type: !35)
!204 = !DILocation(line: 42, column: 11, scope: !163)
!205 = !DILocation(line: 48, column: 44, scope: !163)
!206 = !DILocation(line: 48, column: 11, scope: !163)
!207 = !DILocation(line: 49, column: 13, scope: !208)
!208 = distinct !DILexicalBlock(scope: !163, file: !158, line: 49, column: 9)
!209 = !DILocation(line: 49, column: 18, scope: !208)
!210 = !DILocation(line: 49, column: 38, scope: !208)
!211 = !DILocation(line: 49, column: 35, scope: !208)
!212 = !DILabel(scope: !163, name: "err", file: !158, line: 54)
!213 = !DILocation(line: 54, column: 1, scope: !163)
!214 = !DILocation(line: 55, column: 5, scope: !163)
!215 = !DILocation(line: 56, column: 5, scope: !163)
!216 = !DILocation(line: 57, column: 5, scope: !163)
!217 = !DILocation(line: 58, column: 5, scope: !163)
!218 = !DILocation(line: 59, column: 5, scope: !163)
!219 = !DILocation(line: 60, column: 5, scope: !163)
!220 = distinct !DISubprogram(name: "qruov_memset", scope: !221, file: !221, line: 3, type: !222, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !144, retainedNodes: !98)
!221 = !DIFile(filename: "../mem.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!222 = !DISubroutineType(types: !223)
!223 = !{null, !63, !14, !64}
!224 = !DILocalVariable(name: "dst", arg: 1, scope: !220, file: !221, line: 3, type: !63)
!225 = !DILocation(line: 0, scope: !220)
!226 = !DILocalVariable(name: "val", arg: 2, scope: !220, file: !221, line: 3, type: !14)
!227 = !DILocalVariable(name: "len", arg: 3, scope: !220, file: !221, line: 3, type: !64)
!228 = !DILocalVariable(name: "d", scope: !220, file: !221, line: 5, type: !82)
!229 = !DILocalVariable(name: "i", scope: !230, file: !221, line: 7, type: !64)
!230 = distinct !DILexicalBlock(scope: !220, file: !221, line: 7, column: 5)
!231 = !DILocation(line: 0, scope: !230)
!232 = !DILocation(line: 7, column: 10, scope: !230)
!233 = !DILocation(line: 7, scope: !230)
!234 = !DILocation(line: 7, column: 28, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !221, line: 7, column: 5)
!236 = !DILocation(line: 7, column: 5, scope: !230)
!237 = !DILocation(line: 8, column: 9, scope: !235)
!238 = !DILocation(line: 8, column: 14, scope: !235)
!239 = !DILocation(line: 7, column: 36, scope: !235)
!240 = !DILocation(line: 7, column: 5, scope: !235)
!241 = distinct !{!241, !236, !242, !200}
!242 = !DILocation(line: 8, column: 16, scope: !230)
!243 = !DILocation(line: 9, column: 1, scope: !220)
!244 = distinct !DISubprogram(name: "qruov_memcpy", scope: !221, file: !221, line: 11, type: !245, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !144, retainedNodes: !98)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !63, !247, !64}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DILocalVariable(name: "dst", arg: 1, scope: !244, file: !221, line: 11, type: !63)
!250 = !DILocation(line: 0, scope: !244)
!251 = !DILocalVariable(name: "src", arg: 2, scope: !244, file: !221, line: 11, type: !247)
!252 = !DILocalVariable(name: "len", arg: 3, scope: !244, file: !221, line: 11, type: !64)
!253 = !DILocalVariable(name: "d", scope: !244, file: !221, line: 13, type: !82)
!254 = !DILocalVariable(name: "s", scope: !244, file: !221, line: 14, type: !21)
!255 = !DILocalVariable(name: "i", scope: !256, file: !221, line: 16, type: !64)
!256 = distinct !DILexicalBlock(scope: !244, file: !221, line: 16, column: 5)
!257 = !DILocation(line: 0, scope: !256)
!258 = !DILocation(line: 16, column: 10, scope: !256)
!259 = !DILocation(line: 16, scope: !256)
!260 = !DILocation(line: 16, column: 28, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !221, line: 16, column: 5)
!262 = !DILocation(line: 16, column: 5, scope: !256)
!263 = !DILocation(line: 17, column: 16, scope: !261)
!264 = !DILocation(line: 17, column: 9, scope: !261)
!265 = !DILocation(line: 17, column: 14, scope: !261)
!266 = !DILocation(line: 16, column: 36, scope: !261)
!267 = !DILocation(line: 16, column: 5, scope: !261)
!268 = distinct !{!268, !262, !269, !200}
!269 = !DILocation(line: 17, column: 19, scope: !256)
!270 = !DILocation(line: 18, column: 1, scope: !244)
!271 = distinct !DISubprogram(name: "OPENSSL_cleanse", scope: !6, file: !6, line: 41, type: !272, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !63, !19}
!274 = !DILocalVariable(name: "ptr", arg: 1, scope: !271, file: !6, line: 41, type: !63)
!275 = !DILocation(line: 0, scope: !271)
!276 = !DILocalVariable(name: "len", arg: 2, scope: !271, file: !6, line: 41, type: !19)
!277 = !DILocalVariable(name: "p", scope: !271, file: !6, line: 42, type: !12)
!278 = !DILocation(line: 43, column: 3, scope: !271)
!279 = !DILocation(line: 43, column: 13, scope: !271)
!280 = !DILocation(line: 43, column: 19, scope: !271)
!281 = !DILocation(line: 43, column: 22, scope: !271)
!282 = distinct !{!282, !278, !283, !200}
!283 = !DILocation(line: 43, column: 24, scope: !271)
!284 = !DILocation(line: 44, column: 1, scope: !271)
!285 = distinct !DISubprogram(name: "ERR_print_errors_fp", scope: !6, file: !6, line: 46, type: !286, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !290, line: 66, baseType: !291)
!290 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/stdio.h", directory: "")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !292, line: 270, baseType: !293)
!292 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/reent.h", directory: "")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !292, line: 153, size: 832, elements: !294)
!294 = !{!295, !296, !297, !298, !300, !301, !306, !307, !308, !423, !429, !435, !439, !440, !441, !442, !444, !446, !447, !448, !450, !451, !455, !456}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !293, file: !292, line: 154, baseType: !78, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !293, file: !292, line: 155, baseType: !35, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !293, file: !292, line: 156, baseType: !35, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !293, file: !292, line: 157, baseType: !299, size: 16, offset: 96)
!299 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !293, file: !292, line: 158, baseType: !299, size: 16, offset: 112)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !293, file: !292, line: 159, baseType: !302, size: 64, offset: 128)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !292, line: 116, size: 64, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !302, file: !292, line: 117, baseType: !78, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !302, file: !292, line: 118, baseType: !35, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !293, file: !292, line: 160, baseType: !35, size: 32, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !293, file: !292, line: 167, baseType: !63, size: 32, offset: 224)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !293, file: !292, line: 169, baseType: !309, size: 32, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32)
!310 = !DISubroutineType(types: !311)
!311 = !{!35, !312, !63, !354, !35}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 32)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !292, line: 568, size: 2304, elements: !314)
!314 = !{!315, !316, !318, !319, !320, !321, !326, !329, !333, !348, !349, !350, !352, !353, !355, !418}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !313, file: !292, line: 570, baseType: !35, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !313, file: !292, line: 575, baseType: !317, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !313, file: !292, line: 575, baseType: !317, size: 32, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !313, file: !292, line: 575, baseType: !317, size: 32, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !313, file: !292, line: 577, baseType: !35, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !313, file: !292, line: 578, baseType: !322, size: 200, offset: 160)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 200, elements: !324)
!323 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!324 = !{!325}
!325 = !DISubrange(count: 25)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !313, file: !292, line: 583, baseType: !327, size: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 32)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !292, line: 46, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !313, file: !292, line: 589, baseType: !330, size: 32, offset: 416)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !312}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !313, file: !292, line: 592, baseType: !334, size: 32, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !292, line: 53, size: 192, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !335, file: !292, line: 55, baseType: !334, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !335, file: !292, line: 56, baseType: !35, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !335, file: !292, line: 56, baseType: !35, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !335, file: !292, line: 56, baseType: !35, size: 32, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !335, file: !292, line: 56, baseType: !35, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !335, file: !292, line: 57, baseType: !343, size: 32, offset: 160)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 32, elements: !346)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !292, line: 23, baseType: !345)
!345 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!346 = !{!347}
!347 = !DISubrange(count: 1)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !313, file: !292, line: 593, baseType: !35, size: 32, offset: 480)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !313, file: !292, line: 594, baseType: !334, size: 32, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !313, file: !292, line: 595, baseType: !351, size: 32, offset: 544)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !313, file: !292, line: 598, baseType: !35, size: 32, offset: 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !313, file: !292, line: 599, baseType: !354, size: 32, offset: 608)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !313, file: !292, line: 642, baseType: !356, size: 1600, offset: 640)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !292, line: 601, size: 1600, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !356, file: !292, line: 634, baseType: !359, size: 1600)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !292, line: 603, size: 1600, elements: !360)
!360 = !{!361, !362, !366, !378, !379, !380, !388, !403, !404, !405, !409, !411, !412, !413, !414, !415, !416, !417}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !359, file: !292, line: 608, baseType: !354, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !359, file: !292, line: 609, baseType: !363, size: 208, offset: 32)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 208, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 26)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !359, file: !292, line: 610, baseType: !367, size: 288, offset: 256)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !292, line: 61, size: 288, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !367, file: !292, line: 63, baseType: !35, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !367, file: !292, line: 64, baseType: !35, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !367, file: !292, line: 65, baseType: !35, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !367, file: !292, line: 66, baseType: !35, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !367, file: !292, line: 67, baseType: !35, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !367, file: !292, line: 68, baseType: !35, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !367, file: !292, line: 69, baseType: !35, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !367, file: !292, line: 70, baseType: !35, size: 32, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !367, file: !292, line: 71, baseType: !35, size: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !359, file: !292, line: 611, baseType: !35, size: 32, offset: 544)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !359, file: !292, line: 612, baseType: !25, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !359, file: !292, line: 613, baseType: !381, size: 112, offset: 640)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !292, line: 306, size: 112, elements: !382)
!382 = !{!383, !386, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !381, file: !292, line: 307, baseType: !384, size: 48)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 48, elements: !88)
!385 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !381, file: !292, line: 308, baseType: !384, size: 48, offset: 48)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !381, file: !292, line: 309, baseType: !385, size: 16, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !359, file: !292, line: 614, baseType: !389, size: 64, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !390, line: 170, baseType: !391)
!390 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_types.h", directory: "")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 162, size: 64, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !391, file: !390, line: 164, baseType: !35, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !391, file: !390, line: 169, baseType: !395, size: 32, offset: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !390, line: 165, size: 32, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !395, file: !390, line: 167, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !20, line: 359, baseType: !35)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !395, file: !390, line: 168, baseType: !400, size: 32)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 4)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !359, file: !292, line: 615, baseType: !389, size: 64, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !359, file: !292, line: 616, baseType: !389, size: 64, offset: 896)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !359, file: !292, line: 617, baseType: !406, size: 64, offset: 960)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 8)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !359, file: !292, line: 618, baseType: !410, size: 192, offset: 1024)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !51)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !359, file: !292, line: 619, baseType: !35, size: 32, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !359, file: !292, line: 620, baseType: !389, size: 64, offset: 1248)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !359, file: !292, line: 621, baseType: !389, size: 64, offset: 1312)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !359, file: !292, line: 622, baseType: !389, size: 64, offset: 1376)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !359, file: !292, line: 623, baseType: !389, size: 64, offset: 1440)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !359, file: !292, line: 624, baseType: !389, size: 64, offset: 1504)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !359, file: !292, line: 625, baseType: !35, size: 32, offset: 1568)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !313, file: !292, line: 650, baseType: !419, size: 32, offset: 2240)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !35}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !293, file: !292, line: 171, baseType: !424, size: 32, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 32)
!425 = !DISubroutineType(types: !426)
!426 = !{!35, !312, !63, !427, !35}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !293, file: !292, line: 174, baseType: !430, size: 32, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 32)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !312, !63, !433, !35}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !390, line: 116, baseType: !434)
!434 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !293, file: !292, line: 175, baseType: !436, size: 32, offset: 352)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 32)
!437 = !DISubroutineType(types: !438)
!438 = !{!35, !312, !63}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !293, file: !292, line: 178, baseType: !302, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !293, file: !292, line: 179, baseType: !78, size: 32, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !293, file: !292, line: 180, baseType: !35, size: 32, offset: 480)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !293, file: !292, line: 183, baseType: !443, size: 24, offset: 512)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !88)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !293, file: !292, line: 184, baseType: !445, size: 8, offset: 536)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !346)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !293, file: !292, line: 187, baseType: !302, size: 64, offset: 544)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !293, file: !292, line: 190, baseType: !35, size: 32, offset: 608)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !293, file: !292, line: 191, baseType: !449, size: 32, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !390, line: 46, baseType: !434)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !293, file: !292, line: 194, baseType: !312, size: 32, offset: 672)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !293, file: !292, line: 198, baseType: !452, size: 32, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !292, line: 36, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !454, line: 12, baseType: !35)
!454 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/lock.h", directory: "")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !293, file: !292, line: 200, baseType: !389, size: 64, offset: 736)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !293, file: !292, line: 201, baseType: !35, size: 32, offset: 800)
!457 = !DILocalVariable(name: "fp", arg: 1, scope: !285, file: !6, line: 46, type: !288)
!458 = !DILocation(line: 0, scope: !285)
!459 = !DILocation(line: 46, column: 48, scope: !285)
!460 = distinct !DISubprogram(name: "EVP_aes_128_ctr", scope: !6, file: !6, line: 64, type: !461, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!461 = !DISubroutineType(types: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!464 = !DILocation(line: 64, column: 43, scope: !460)
!465 = distinct !DISubprogram(name: "EVP_aes_192_ctr", scope: !6, file: !6, line: 65, type: !461, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!466 = !DILocation(line: 65, column: 43, scope: !465)
!467 = distinct !DISubprogram(name: "EVP_aes_256_ctr", scope: !6, file: !6, line: 66, type: !461, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!468 = !DILocation(line: 66, column: 43, scope: !467)
!469 = distinct !DISubprogram(name: "EVP_aes_256_ecb", scope: !6, file: !6, line: 67, type: !461, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!470 = !DILocation(line: 67, column: 43, scope: !469)
!471 = distinct !DISubprogram(name: "EVP_CIPHER_CTX_new", scope: !6, file: !6, line: 112, type: !472, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!472 = !DISubroutineType(types: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !31, line: 22, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !6, line: 69, size: 352, elements: !477)
!477 = !{!478, !479, !481, !483, !484}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !476, file: !6, line: 70, baseType: !463, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rk", scope: !476, file: !6, line: 71, baseType: !480, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !476, file: !6, line: 72, baseType: !482, size: 128, offset: 64)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !139)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ks", scope: !476, file: !6, line: 73, baseType: !482, size: 128, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !476, file: !6, line: 74, baseType: !7, size: 32, offset: 320)
!485 = !DILocation(line: 113, column: 10, scope: !471)
!486 = !DILocation(line: 113, column: 3, scope: !471)
!487 = distinct !DISubprogram(name: "EVP_CIPHER_CTX_free", scope: !6, file: !6, line: 116, type: !488, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !474}
!490 = !DILocalVariable(name: "ctx", arg: 1, scope: !487, file: !6, line: 116, type: !474)
!491 = !DILocation(line: 0, scope: !487)
!492 = !DILocation(line: 117, column: 8, scope: !493)
!493 = distinct !DILexicalBlock(scope: !487, file: !6, line: 117, column: 7)
!494 = !DILocation(line: 117, column: 7, scope: !493)
!495 = !DILocation(line: 118, column: 3, scope: !487)
!496 = !DILocation(line: 119, column: 3, scope: !487)
!497 = !DILocation(line: 120, column: 3, scope: !487)
!498 = !DILocation(line: 121, column: 1, scope: !487)
!499 = distinct !DISubprogram(name: "aes_release", scope: !6, file: !6, line: 82, type: !488, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!500 = !DILocalVariable(name: "ctx", arg: 1, scope: !499, file: !6, line: 82, type: !474)
!501 = !DILocation(line: 0, scope: !499)
!502 = !DILocation(line: 83, column: 12, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !6, line: 83, column: 7)
!504 = !DILocation(line: 83, column: 7, scope: !503)
!505 = !DILocation(line: 84, column: 26, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !6, line: 83, column: 16)
!507 = !DILocation(line: 84, column: 48, scope: !506)
!508 = !DILocation(line: 84, column: 30, scope: !506)
!509 = !DILocation(line: 84, column: 56, scope: !506)
!510 = !DILocation(line: 84, column: 5, scope: !506)
!511 = !DILocation(line: 85, column: 15, scope: !506)
!512 = !DILocation(line: 85, column: 5, scope: !506)
!513 = !DILocation(line: 86, column: 10, scope: !506)
!514 = !DILocation(line: 86, column: 13, scope: !506)
!515 = !DILocation(line: 87, column: 3, scope: !506)
!516 = !DILocation(line: 88, column: 1, scope: !499)
!517 = distinct !DISubprogram(name: "aes_rk_words", scope: !6, file: !6, line: 77, type: !518, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!518 = !DISubroutineType(types: !519)
!519 = !{!19, !463}
!520 = !DILocalVariable(name: "c", arg: 1, scope: !517, file: !6, line: 77, type: !463)
!521 = !DILocation(line: 0, scope: !517)
!522 = !DILocation(line: 78, column: 13, scope: !517)
!523 = !DILocation(line: 78, column: 21, scope: !517)
!524 = !DILocation(line: 78, column: 10, scope: !517)
!525 = !DILocation(line: 79, column: 13, scope: !517)
!526 = !DILocation(line: 79, column: 21, scope: !517)
!527 = !DILocation(line: 79, column: 10, scope: !517)
!528 = !DILocation(line: 78, column: 3, scope: !517)
!529 = distinct !DISubprogram(name: "EVP_CIPHER_CTX_copy", scope: !6, file: !6, line: 123, type: !530, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!530 = !DISubroutineType(types: !531)
!531 = !{!35, !474, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!534 = !DILocalVariable(name: "out", arg: 1, scope: !529, file: !6, line: 123, type: !474)
!535 = !DILocation(line: 0, scope: !529)
!536 = !DILocalVariable(name: "in", arg: 2, scope: !529, file: !6, line: 123, type: !532)
!537 = !DILocation(line: 124, column: 3, scope: !529)
!538 = !DILocation(line: 125, column: 3, scope: !529)
!539 = !DILocation(line: 126, column: 11, scope: !540)
!540 = distinct !DILexicalBlock(scope: !529, file: !6, line: 126, column: 7)
!541 = !DILocation(line: 126, column: 7, scope: !540)
!542 = !DILocation(line: 127, column: 37, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !6, line: 126, column: 15)
!544 = !DILocation(line: 127, column: 20, scope: !543)
!545 = !DILocation(line: 127, column: 45, scope: !543)
!546 = !DILocalVariable(name: "bytes", scope: !543, file: !6, line: 127, type: !19)
!547 = !DILocation(line: 0, scope: !543)
!548 = !DILocation(line: 128, column: 15, scope: !543)
!549 = !DILocation(line: 128, column: 10, scope: !543)
!550 = !DILocation(line: 128, column: 13, scope: !543)
!551 = !DILocation(line: 129, column: 10, scope: !552)
!552 = distinct !DILexicalBlock(scope: !543, file: !6, line: 129, column: 9)
!553 = !DILocation(line: 129, column: 9, scope: !552)
!554 = !DILocation(line: 130, column: 17, scope: !543)
!555 = !DILocation(line: 130, column: 25, scope: !543)
!556 = !DILocation(line: 130, column: 5, scope: !543)
!557 = !DILocation(line: 131, column: 3, scope: !543)
!558 = !DILocation(line: 133, column: 1, scope: !529)
!559 = distinct !DISubprogram(name: "EVP_EncryptInit_ex", scope: !6, file: !6, line: 135, type: !560, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!560 = !DISubroutineType(types: !561)
!561 = !{!35, !474, !463, !562, !97, !97}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !31, line: 20, baseType: null)
!564 = !DILocalVariable(name: "ctx", arg: 1, scope: !559, file: !6, line: 135, type: !474)
!565 = !DILocation(line: 0, scope: !559)
!566 = !DILocalVariable(name: "type", arg: 2, scope: !559, file: !6, line: 135, type: !463)
!567 = !DILocalVariable(name: "impl", arg: 3, scope: !559, file: !6, line: 136, type: !562)
!568 = !DILocalVariable(name: "key", arg: 4, scope: !559, file: !6, line: 136, type: !97)
!569 = !DILocalVariable(name: "iv", arg: 5, scope: !559, file: !6, line: 137, type: !97)
!570 = !DILocation(line: 139, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !559, file: !6, line: 139, column: 7)
!572 = !DILocation(line: 140, column: 5, scope: !573)
!573 = distinct !DILexicalBlock(scope: !571, file: !6, line: 139, column: 13)
!574 = !DILocation(line: 141, column: 17, scope: !573)
!575 = !DILocation(line: 142, column: 3, scope: !573)
!576 = !DILocation(line: 143, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !559, file: !6, line: 143, column: 7)
!578 = !DILocation(line: 143, column: 8, scope: !577)
!579 = !DILocation(line: 143, column: 7, scope: !577)
!580 = !DILocation(line: 144, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !559, file: !6, line: 144, column: 7)
!582 = !DILocation(line: 145, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !581, file: !6, line: 144, column: 12)
!584 = !DILocation(line: 146, column: 5, scope: !583)
!585 = !DILocation(line: 147, column: 10, scope: !583)
!586 = !DILocation(line: 147, column: 14, scope: !583)
!587 = !DILocation(line: 148, column: 3, scope: !583)
!588 = !DILocation(line: 149, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !559, file: !6, line: 149, column: 7)
!590 = !DILocation(line: 150, column: 17, scope: !591)
!591 = distinct !DILexicalBlock(scope: !589, file: !6, line: 149, column: 11)
!592 = !DILocation(line: 150, column: 5, scope: !591)
!593 = !DILocation(line: 151, column: 10, scope: !591)
!594 = !DILocation(line: 151, column: 14, scope: !591)
!595 = !DILocation(line: 152, column: 3, scope: !591)
!596 = !DILocation(line: 154, column: 1, scope: !559)
!597 = distinct !DISubprogram(name: "aes_keyexp", scope: !6, file: !6, line: 90, type: !598, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !474, !97}
!600 = !DILocalVariable(name: "ctx", arg: 1, scope: !597, file: !6, line: 90, type: !474)
!601 = !DILocation(line: 0, scope: !597)
!602 = !DILocalVariable(name: "key", arg: 2, scope: !597, file: !6, line: 90, type: !97)
!603 = !DILocation(line: 91, column: 16, scope: !597)
!604 = !DILocation(line: 91, column: 24, scope: !597)
!605 = !DILocation(line: 91, column: 3, scope: !597)
!606 = !DILocalVariable(name: "a", scope: !607, file: !6, line: 92, type: !609)
!607 = distinct !DILexicalBlock(scope: !608, file: !6, line: 92, column: 12)
!608 = distinct !DILexicalBlock(scope: !597, file: !6, line: 91, column: 33)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !6, line: 19, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 19, size: 32, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !610, file: !6, line: 19, baseType: !480, size: 32)
!613 = !DILocation(line: 92, column: 24, scope: !607)
!614 = !DILocation(line: 92, column: 27, scope: !607)
!615 = !DILocation(line: 92, column: 67, scope: !607)
!616 = !DILocation(line: 92, column: 60, scope: !607)
!617 = !DILocation(line: 92, column: 63, scope: !607)
!618 = !DILocation(line: 92, column: 75, scope: !607)
!619 = !DILocalVariable(name: "a", scope: !620, file: !6, line: 93, type: !621)
!620 = distinct !DILexicalBlock(scope: !608, file: !6, line: 93, column: 12)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !6, line: 20, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 20, size: 32, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !622, file: !6, line: 20, baseType: !480, size: 32)
!625 = !DILocation(line: 93, column: 24, scope: !620)
!626 = !DILocation(line: 93, column: 27, scope: !620)
!627 = !DILocation(line: 93, column: 67, scope: !620)
!628 = !DILocation(line: 93, column: 60, scope: !620)
!629 = !DILocation(line: 93, column: 63, scope: !620)
!630 = !DILocation(line: 93, column: 75, scope: !620)
!631 = !DILocalVariable(name: "a", scope: !632, file: !6, line: 94, type: !633)
!632 = distinct !DILexicalBlock(scope: !608, file: !6, line: 94, column: 12)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !6, line: 21, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 21, size: 32, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !634, file: !6, line: 21, baseType: !480, size: 32)
!637 = !DILocation(line: 94, column: 24, scope: !632)
!638 = !DILocation(line: 94, column: 27, scope: !632)
!639 = !DILocation(line: 94, column: 67, scope: !632)
!640 = !DILocation(line: 94, column: 60, scope: !632)
!641 = !DILocation(line: 94, column: 63, scope: !632)
!642 = !DILocation(line: 94, column: 75, scope: !632)
!643 = !DILocation(line: 96, column: 1, scope: !597)
!644 = distinct !DISubprogram(name: "EVP_EncryptUpdate", scope: !6, file: !6, line: 156, type: !645, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!645 = !DISubroutineType(types: !646)
!646 = !{!35, !474, !78, !647, !97, !35}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!648 = !DILocalVariable(name: "ctx", arg: 1, scope: !644, file: !6, line: 156, type: !474)
!649 = !DILocation(line: 0, scope: !644)
!650 = !DILocalVariable(name: "out", arg: 2, scope: !644, file: !6, line: 156, type: !78)
!651 = !DILocalVariable(name: "outl", arg: 3, scope: !644, file: !6, line: 156, type: !647)
!652 = !DILocalVariable(name: "in", arg: 4, scope: !644, file: !6, line: 157, type: !97)
!653 = !DILocalVariable(name: "inl", arg: 5, scope: !644, file: !6, line: 157, type: !35)
!654 = !DILocation(line: 158, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !644, file: !6, line: 158, column: 7)
!656 = !DILocation(line: 158, column: 8, scope: !655)
!657 = !DILocation(line: 158, column: 16, scope: !655)
!658 = !DILocation(line: 160, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !644, file: !6, line: 160, column: 7)
!660 = !DILocation(line: 160, column: 20, scope: !659)
!661 = !DILocation(line: 160, column: 25, scope: !659)
!662 = !DILocation(line: 167, column: 3, scope: !663)
!663 = distinct !DILexicalBlock(scope: !644, file: !6, line: 167, column: 3)
!664 = !DILocation(line: 161, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !6, line: 161, column: 9)
!666 = distinct !DILexicalBlock(scope: !659, file: !6, line: 160, column: 42)
!667 = !DILocation(line: 162, column: 50, scope: !666)
!668 = !DILocation(line: 162, column: 5, scope: !666)
!669 = !DILocation(line: 163, column: 11, scope: !666)
!670 = !DILocation(line: 164, column: 5, scope: !666)
!671 = !DILocation(line: 167, scope: !663)
!672 = !DILocalVariable(name: "i", scope: !663, file: !6, line: 167, type: !35)
!673 = !DILocation(line: 0, scope: !663)
!674 = !DILocation(line: 167, column: 21, scope: !675)
!675 = distinct !DILexicalBlock(scope: !663, file: !6, line: 167, column: 3)
!676 = !DILocation(line: 168, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !6, line: 168, column: 9)
!678 = distinct !DILexicalBlock(scope: !675, file: !6, line: 167, column: 33)
!679 = !DILocation(line: 168, column: 18, scope: !677)
!680 = !DILocation(line: 169, column: 36, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !6, line: 168, column: 24)
!682 = !DILocation(line: 169, column: 45, scope: !681)
!683 = !DILocation(line: 169, column: 7, scope: !681)
!684 = !DILocation(line: 170, column: 23, scope: !681)
!685 = !DILocation(line: 170, column: 7, scope: !681)
!686 = !DILocation(line: 171, column: 5, scope: !681)
!687 = !DILocation(line: 172, column: 14, scope: !678)
!688 = !DILocation(line: 172, column: 27, scope: !678)
!689 = !DILocation(line: 172, column: 35, scope: !678)
!690 = !DILocation(line: 172, column: 22, scope: !678)
!691 = !DILocation(line: 172, column: 20, scope: !678)
!692 = !DILocation(line: 172, column: 5, scope: !678)
!693 = !DILocation(line: 172, column: 12, scope: !678)
!694 = !DILocation(line: 173, column: 22, scope: !678)
!695 = !DILocation(line: 173, column: 26, scope: !678)
!696 = !DILocation(line: 173, column: 31, scope: !678)
!697 = !DILocation(line: 173, column: 10, scope: !678)
!698 = !DILocation(line: 173, column: 14, scope: !678)
!699 = !DILocation(line: 167, column: 29, scope: !675)
!700 = !DILocation(line: 167, column: 3, scope: !675)
!701 = distinct !{!701, !662, !702, !200}
!702 = !DILocation(line: 174, column: 3, scope: !663)
!703 = !DILocation(line: 175, column: 9, scope: !644)
!704 = !DILocation(line: 176, column: 3, scope: !644)
!705 = !DILocation(line: 177, column: 1, scope: !644)
!706 = distinct !DISubprogram(name: "aes_encrypt_blocks", scope: !6, file: !6, line: 98, type: !707, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !532, !82, !21, !19}
!709 = !DILocalVariable(name: "ctx", arg: 1, scope: !706, file: !6, line: 98, type: !532)
!710 = !DILocation(line: 0, scope: !706)
!711 = !DILocalVariable(name: "out", arg: 2, scope: !706, file: !6, line: 98, type: !82)
!712 = !DILocalVariable(name: "in", arg: 3, scope: !706, file: !6, line: 99, type: !21)
!713 = !DILocalVariable(name: "nblocks", arg: 4, scope: !706, file: !6, line: 99, type: !19)
!714 = !DILocation(line: 100, column: 16, scope: !706)
!715 = !DILocation(line: 100, column: 24, scope: !706)
!716 = !DILocation(line: 100, column: 3, scope: !706)
!717 = !DILocalVariable(name: "a", scope: !718, file: !6, line: 101, type: !609)
!718 = distinct !DILexicalBlock(scope: !719, file: !6, line: 101, column: 12)
!719 = distinct !DILexicalBlock(scope: !706, file: !6, line: 100, column: 33)
!720 = !DILocation(line: 101, column: 24, scope: !718)
!721 = !DILocation(line: 101, column: 34, scope: !718)
!722 = !DILocation(line: 101, column: 28, scope: !718)
!723 = !DILocation(line: 101, column: 39, scope: !718)
!724 = !DILocation(line: 101, column: 73, scope: !718)
!725 = !DILocalVariable(name: "a", scope: !726, file: !6, line: 102, type: !621)
!726 = distinct !DILexicalBlock(scope: !719, file: !6, line: 102, column: 12)
!727 = !DILocation(line: 102, column: 24, scope: !726)
!728 = !DILocation(line: 102, column: 34, scope: !726)
!729 = !DILocation(line: 102, column: 28, scope: !726)
!730 = !DILocation(line: 102, column: 39, scope: !726)
!731 = !DILocation(line: 102, column: 73, scope: !726)
!732 = !DILocalVariable(name: "a", scope: !733, file: !6, line: 103, type: !633)
!733 = distinct !DILexicalBlock(scope: !719, file: !6, line: 103, column: 12)
!734 = !DILocation(line: 103, column: 24, scope: !733)
!735 = !DILocation(line: 103, column: 34, scope: !733)
!736 = !DILocation(line: 103, column: 28, scope: !733)
!737 = !DILocation(line: 103, column: 39, scope: !733)
!738 = !DILocation(line: 103, column: 73, scope: !733)
!739 = !DILocation(line: 105, column: 1, scope: !706)
!740 = distinct !DISubprogram(name: "ctr128_inc", scope: !6, file: !6, line: 107, type: !741, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !82}
!743 = !DILocalVariable(name: "ctr", arg: 1, scope: !740, file: !6, line: 107, type: !82)
!744 = !DILocation(line: 0, scope: !740)
!745 = !DILocalVariable(name: "i", scope: !746, file: !6, line: 108, type: !35)
!746 = distinct !DILexicalBlock(scope: !740, file: !6, line: 108, column: 3)
!747 = !DILocation(line: 0, scope: !746)
!748 = !DILocation(line: 108, column: 8, scope: !746)
!749 = !DILocation(line: 108, scope: !746)
!750 = !DILocation(line: 108, column: 22, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !6, line: 108, column: 3)
!752 = !DILocation(line: 108, column: 3, scope: !746)
!753 = !DILocation(line: 109, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !6, line: 109, column: 9)
!755 = !DILocation(line: 109, column: 9, scope: !754)
!756 = !DILocation(line: 109, column: 18, scope: !754)
!757 = !DILocation(line: 108, column: 29, scope: !751)
!758 = !DILocation(line: 108, column: 3, scope: !751)
!759 = distinct !{!759, !752, !760, !200}
!760 = !DILocation(line: 109, column: 24, scope: !746)
!761 = !DILocation(line: 110, column: 1, scope: !740)
!762 = distinct !DISubprogram(name: "EVP_shake128", scope: !6, file: !6, line: 237, type: !763, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!763 = !DISubroutineType(types: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!766 = !DILocation(line: 237, column: 36, scope: !762)
!767 = distinct !DISubprogram(name: "EVP_shake256", scope: !6, file: !6, line: 238, type: !763, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!768 = !DILocation(line: 238, column: 36, scope: !767)
!769 = distinct !DISubprogram(name: "EVP_MD_CTX_new", scope: !6, file: !6, line: 254, type: !770, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!770 = !DISubroutineType(types: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !31, line: 24, baseType: !23)
!774 = !DILocation(line: 254, column: 43, scope: !769)
!775 = !DILocation(line: 254, column: 36, scope: !769)
!776 = distinct !DISubprogram(name: "EVP_MD_CTX_free", scope: !6, file: !6, line: 256, type: !777, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !772}
!779 = !DILocalVariable(name: "ctx", arg: 1, scope: !776, file: !6, line: 256, type: !772)
!780 = !DILocation(line: 0, scope: !776)
!781 = !DILocation(line: 257, column: 8, scope: !782)
!782 = distinct !DILexicalBlock(scope: !776, file: !6, line: 257, column: 7)
!783 = !DILocation(line: 257, column: 7, scope: !782)
!784 = !DILocation(line: 258, column: 3, scope: !776)
!785 = !DILocation(line: 259, column: 3, scope: !776)
!786 = !DILocation(line: 260, column: 1, scope: !776)
!787 = distinct !DISubprogram(name: "EVP_MD_CTX_copy_ex", scope: !6, file: !6, line: 262, type: !788, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!788 = !DISubroutineType(types: !789)
!789 = !{!35, !772, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!792 = !DILocalVariable(name: "out", arg: 1, scope: !787, file: !6, line: 262, type: !772)
!793 = !DILocation(line: 0, scope: !787)
!794 = !DILocalVariable(name: "in", arg: 2, scope: !787, file: !6, line: 262, type: !790)
!795 = !DILocation(line: 263, column: 3, scope: !787)
!796 = !DILocation(line: 264, column: 3, scope: !787)
!797 = distinct !DISubprogram(name: "EVP_MD_CTX_copy", scope: !6, file: !6, line: 267, type: !788, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!798 = !DILocalVariable(name: "out", arg: 1, scope: !797, file: !6, line: 267, type: !772)
!799 = !DILocation(line: 0, scope: !797)
!800 = !DILocalVariable(name: "in", arg: 2, scope: !797, file: !6, line: 267, type: !790)
!801 = !DILocation(line: 268, column: 10, scope: !797)
!802 = !DILocation(line: 268, column: 3, scope: !797)
!803 = distinct !DISubprogram(name: "EVP_DigestInit_ex", scope: !6, file: !6, line: 271, type: !804, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!804 = !DISubroutineType(types: !805)
!805 = !{!35, !772, !765, !562}
!806 = !DILocalVariable(name: "ctx", arg: 1, scope: !803, file: !6, line: 271, type: !772)
!807 = !DILocation(line: 0, scope: !803)
!808 = !DILocalVariable(name: "type", arg: 2, scope: !803, file: !6, line: 271, type: !765)
!809 = !DILocalVariable(name: "impl", arg: 3, scope: !803, file: !6, line: 271, type: !562)
!810 = !DILocation(line: 273, column: 3, scope: !803)
!811 = !DILocation(line: 274, column: 18, scope: !803)
!812 = !DILocation(line: 274, column: 3, scope: !803)
!813 = !DILocation(line: 274, column: 16, scope: !803)
!814 = !DILocation(line: 275, column: 3, scope: !803)
!815 = distinct !DISubprogram(name: "EVP_DigestUpdate", scope: !6, file: !6, line: 278, type: !816, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!816 = !DISubroutineType(types: !817)
!817 = !{!35, !772, !247, !19}
!818 = !DILocalVariable(name: "ctx", arg: 1, scope: !815, file: !6, line: 278, type: !772)
!819 = !DILocation(line: 0, scope: !815)
!820 = !DILocalVariable(name: "d", arg: 2, scope: !815, file: !6, line: 278, type: !247)
!821 = !DILocalVariable(name: "cnt", arg: 3, scope: !815, file: !6, line: 278, type: !19)
!822 = !DILocalVariable(name: "in", scope: !815, file: !6, line: 279, type: !21)
!823 = !DILocation(line: 280, column: 37, scope: !815)
!824 = !DILocation(line: 280, column: 23, scope: !815)
!825 = !DILocalVariable(name: "rate", scope: !815, file: !6, line: 280, type: !7)
!826 = !DILocalVariable(name: "pos", scope: !815, file: !6, line: 281, type: !7)
!827 = !DILocation(line: 282, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !815, file: !6, line: 282, column: 7)
!829 = !DILocation(line: 281, column: 36, scope: !815)
!830 = !DILocation(line: 281, column: 22, scope: !815)
!831 = !DILocalVariable(name: "i", scope: !832, file: !6, line: 283, type: !19)
!832 = distinct !DILexicalBlock(scope: !815, file: !6, line: 283, column: 3)
!833 = !DILocation(line: 0, scope: !832)
!834 = !DILocation(line: 283, column: 8, scope: !832)
!835 = !DILocation(line: 283, scope: !832)
!836 = !DILocation(line: 283, column: 24, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !6, line: 283, column: 3)
!838 = !DILocation(line: 283, column: 3, scope: !832)
!839 = !DILocation(line: 284, column: 29, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !6, line: 283, column: 36)
!841 = !DILocation(line: 284, column: 33, scope: !840)
!842 = !DILocation(line: 284, column: 5, scope: !840)
!843 = !DILocation(line: 285, column: 13, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !6, line: 285, column: 9)
!845 = !DILocation(line: 286, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !844, file: !6, line: 285, column: 22)
!847 = !DILocation(line: 288, column: 5, scope: !846)
!848 = !DILocation(line: 0, scope: !840)
!849 = !DILocation(line: 283, column: 32, scope: !837)
!850 = !DILocation(line: 283, column: 3, scope: !837)
!851 = distinct !{!851, !838, !852, !200}
!852 = !DILocation(line: 289, column: 3, scope: !832)
!853 = !DILocation(line: 290, column: 17, scope: !815)
!854 = !DILocation(line: 290, column: 3, scope: !815)
!855 = !DILocation(line: 290, column: 15, scope: !815)
!856 = !DILocation(line: 291, column: 3, scope: !815)
!857 = !DILocation(line: 292, column: 1, scope: !815)
!858 = distinct !DISubprogram(name: "keccak_xor_byte", scope: !6, file: !6, line: 246, type: !859, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !480, !7, !14}
!861 = !DILocalVariable(name: "st", arg: 1, scope: !858, file: !6, line: 246, type: !480)
!862 = !DILocation(line: 0, scope: !858)
!863 = !DILocalVariable(name: "i", arg: 2, scope: !858, file: !6, line: 246, type: !7)
!864 = !DILocalVariable(name: "b", arg: 3, scope: !858, file: !6, line: 246, type: !14)
!865 = !DILocation(line: 247, column: 17, scope: !858)
!866 = !DILocation(line: 247, column: 35, scope: !858)
!867 = !DILocation(line: 247, column: 29, scope: !858)
!868 = !DILocation(line: 247, column: 8, scope: !858)
!869 = !DILocation(line: 247, column: 3, scope: !858)
!870 = !DILocation(line: 247, column: 14, scope: !858)
!871 = !DILocation(line: 248, column: 1, scope: !858)
!872 = distinct !DISubprogram(name: "KeccakF1600", scope: !6, file: !6, line: 204, type: !873, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !480}
!875 = !DILocalVariable(name: "st", arg: 1, scope: !872, file: !6, line: 204, type: !480)
!876 = !DILocation(line: 0, scope: !872)
!877 = !DILocalVariable(name: "bc", scope: !872, file: !6, line: 205, type: !878)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 5)
!881 = !DILocation(line: 205, column: 15, scope: !872)
!882 = !DILocalVariable(name: "r", scope: !883, file: !6, line: 206, type: !35)
!883 = distinct !DILexicalBlock(scope: !872, file: !6, line: 206, column: 3)
!884 = !DILocation(line: 0, scope: !883)
!885 = !DILocation(line: 206, column: 8, scope: !883)
!886 = !DILocation(line: 206, scope: !883)
!887 = !DILocation(line: 206, column: 21, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !6, line: 206, column: 3)
!889 = !DILocation(line: 206, column: 3, scope: !883)
!890 = !DILocation(line: 208, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !6, line: 208, column: 5)
!892 = distinct !DILexicalBlock(scope: !888, file: !6, line: 206, column: 43)
!893 = !DILocation(line: 208, scope: !891)
!894 = !DILocalVariable(name: "i", scope: !891, file: !6, line: 208, type: !35)
!895 = !DILocation(line: 0, scope: !891)
!896 = !DILocation(line: 208, column: 23, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !6, line: 208, column: 5)
!898 = !DILocation(line: 210, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !892, file: !6, line: 210, column: 5)
!900 = !DILocation(line: 209, column: 15, scope: !897)
!901 = !DILocation(line: 209, column: 23, scope: !897)
!902 = !DILocation(line: 209, column: 21, scope: !897)
!903 = !DILocation(line: 209, column: 35, scope: !897)
!904 = !DILocation(line: 209, column: 33, scope: !897)
!905 = !DILocation(line: 209, column: 48, scope: !897)
!906 = !DILocation(line: 209, column: 46, scope: !897)
!907 = !DILocation(line: 209, column: 61, scope: !897)
!908 = !DILocation(line: 209, column: 59, scope: !897)
!909 = !DILocation(line: 209, column: 7, scope: !897)
!910 = !DILocation(line: 209, column: 13, scope: !897)
!911 = !DILocation(line: 208, column: 29, scope: !897)
!912 = !DILocation(line: 208, column: 5, scope: !897)
!913 = distinct !{!913, !890, !914, !200}
!914 = !DILocation(line: 209, column: 70, scope: !891)
!915 = !DILocation(line: 210, scope: !899)
!916 = !DILocalVariable(name: "i", scope: !899, file: !6, line: 210, type: !35)
!917 = !DILocation(line: 0, scope: !899)
!918 = !DILocation(line: 210, column: 23, scope: !919)
!919 = distinct !DILexicalBlock(scope: !899, file: !6, line: 210, column: 5)
!920 = !DILocation(line: 211, column: 17, scope: !921)
!921 = distinct !DILexicalBlock(scope: !919, file: !6, line: 210, column: 33)
!922 = !DILocation(line: 211, column: 22, scope: !921)
!923 = !DILocation(line: 211, column: 11, scope: !921)
!924 = !DILocation(line: 211, column: 29, scope: !921)
!925 = !DILocation(line: 211, column: 27, scope: !921)
!926 = !DILocalVariable(name: "t", scope: !872, file: !6, line: 205, type: !23)
!927 = !DILocalVariable(name: "j", scope: !928, file: !6, line: 212, type: !35)
!928 = distinct !DILexicalBlock(scope: !921, file: !6, line: 212, column: 7)
!929 = !DILocation(line: 0, scope: !928)
!930 = !DILocation(line: 212, column: 12, scope: !928)
!931 = !DILocation(line: 212, scope: !928)
!932 = !DILocation(line: 212, column: 25, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !6, line: 212, column: 7)
!934 = !DILocation(line: 212, column: 7, scope: !928)
!935 = !DILocation(line: 212, column: 39, scope: !933)
!936 = !DILocation(line: 212, column: 49, scope: !933)
!937 = !DILocation(line: 212, column: 33, scope: !933)
!938 = !DILocation(line: 212, column: 7, scope: !933)
!939 = distinct !{!939, !934, !940, !200}
!940 = !DILocation(line: 212, column: 52, scope: !928)
!941 = !DILocation(line: 210, column: 29, scope: !919)
!942 = !DILocation(line: 210, column: 5, scope: !919)
!943 = distinct !{!943, !898, !944, !200}
!944 = !DILocation(line: 213, column: 5, scope: !899)
!945 = !DILocation(line: 215, column: 9, scope: !892)
!946 = !DILocalVariable(name: "i", scope: !947, file: !6, line: 216, type: !35)
!947 = distinct !DILexicalBlock(scope: !892, file: !6, line: 216, column: 5)
!948 = !DILocation(line: 0, scope: !947)
!949 = !DILocation(line: 216, column: 10, scope: !947)
!950 = !DILocation(line: 216, scope: !947)
!951 = !DILocation(line: 216, column: 23, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !6, line: 216, column: 5)
!953 = !DILocation(line: 216, column: 5, scope: !947)
!954 = !DILocation(line: 223, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !892, file: !6, line: 223, column: 5)
!956 = !DILocation(line: 0, scope: !892)
!957 = !DILocation(line: 217, column: 15, scope: !958)
!958 = distinct !DILexicalBlock(scope: !952, file: !6, line: 216, column: 34)
!959 = !DILocalVariable(name: "j", scope: !958, file: !6, line: 217, type: !35)
!960 = !DILocation(line: 0, scope: !958)
!961 = !DILocation(line: 218, column: 15, scope: !958)
!962 = !DILocation(line: 218, column: 13, scope: !958)
!963 = !DILocation(line: 219, column: 15, scope: !958)
!964 = !DILocation(line: 219, column: 7, scope: !958)
!965 = !DILocation(line: 219, column: 13, scope: !958)
!966 = !DILocation(line: 216, column: 30, scope: !952)
!967 = !DILocation(line: 216, column: 5, scope: !952)
!968 = distinct !{!968, !953, !969, !200}
!969 = !DILocation(line: 221, column: 5, scope: !947)
!970 = !DILocation(line: 223, scope: !955)
!971 = !DILocalVariable(name: "j", scope: !955, file: !6, line: 223, type: !35)
!972 = !DILocation(line: 0, scope: !955)
!973 = !DILocation(line: 223, column: 23, scope: !974)
!974 = distinct !DILexicalBlock(scope: !955, file: !6, line: 223, column: 5)
!975 = !DILocation(line: 224, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !6, line: 224, column: 7)
!977 = distinct !DILexicalBlock(scope: !974, file: !6, line: 223, column: 37)
!978 = !DILocation(line: 224, scope: !976)
!979 = !DILocalVariable(name: "i", scope: !976, file: !6, line: 224, type: !35)
!980 = !DILocation(line: 0, scope: !976)
!981 = !DILocation(line: 224, column: 25, scope: !982)
!982 = distinct !DILexicalBlock(scope: !976, file: !6, line: 224, column: 7)
!983 = !DILocation(line: 225, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !977, file: !6, line: 225, column: 7)
!985 = !DILocation(line: 224, column: 43, scope: !982)
!986 = !DILocation(line: 224, column: 35, scope: !982)
!987 = !DILocation(line: 224, column: 41, scope: !982)
!988 = !DILocation(line: 224, column: 31, scope: !982)
!989 = !DILocation(line: 224, column: 7, scope: !982)
!990 = distinct !{!990, !975, !991, !200}
!991 = !DILocation(line: 224, column: 51, scope: !976)
!992 = !DILocation(line: 225, scope: !984)
!993 = !DILocalVariable(name: "i", scope: !984, file: !6, line: 225, type: !35)
!994 = !DILocation(line: 0, scope: !984)
!995 = !DILocation(line: 225, column: 25, scope: !996)
!996 = distinct !DILexicalBlock(scope: !984, file: !6, line: 225, column: 7)
!997 = !DILocation(line: 226, column: 30, scope: !996)
!998 = !DILocation(line: 226, column: 35, scope: !996)
!999 = !DILocation(line: 226, column: 24, scope: !996)
!1000 = !DILocation(line: 226, column: 23, scope: !996)
!1001 = !DILocation(line: 226, column: 49, scope: !996)
!1002 = !DILocation(line: 226, column: 54, scope: !996)
!1003 = !DILocation(line: 226, column: 43, scope: !996)
!1004 = !DILocation(line: 226, column: 41, scope: !996)
!1005 = !DILocation(line: 226, column: 9, scope: !996)
!1006 = !DILocation(line: 226, column: 19, scope: !996)
!1007 = !DILocation(line: 225, column: 31, scope: !996)
!1008 = !DILocation(line: 225, column: 7, scope: !996)
!1009 = distinct !{!1009, !983, !1010, !200}
!1010 = !DILocation(line: 226, column: 57, scope: !984)
!1011 = !DILocation(line: 223, column: 31, scope: !974)
!1012 = !DILocation(line: 223, column: 5, scope: !974)
!1013 = distinct !{!1013, !954, !1014, !200}
!1014 = !DILocation(line: 227, column: 5, scope: !955)
!1015 = !DILocation(line: 229, column: 14, scope: !892)
!1016 = !DILocation(line: 229, column: 11, scope: !892)
!1017 = !DILocation(line: 206, column: 39, scope: !888)
!1018 = !DILocation(line: 206, column: 3, scope: !888)
!1019 = distinct !{!1019, !889, !1020, !200}
!1020 = !DILocation(line: 230, column: 3, scope: !883)
!1021 = !DILocation(line: 231, column: 1, scope: !872)
!1022 = distinct !DISubprogram(name: "EVP_DigestFinalXOF", scope: !6, file: !6, line: 294, type: !1023, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!35, !772, !78, !19}
!1025 = !DILocalVariable(name: "ctx", arg: 1, scope: !1022, file: !6, line: 294, type: !772)
!1026 = !DILocation(line: 0, scope: !1022)
!1027 = !DILocalVariable(name: "md", arg: 2, scope: !1022, file: !6, line: 294, type: !78)
!1028 = !DILocalVariable(name: "len", arg: 3, scope: !1022, file: !6, line: 294, type: !19)
!1029 = !DILocation(line: 295, column: 37, scope: !1022)
!1030 = !DILocation(line: 295, column: 23, scope: !1022)
!1031 = !DILocalVariable(name: "rate", scope: !1022, file: !6, line: 295, type: !7)
!1032 = !DILocation(line: 296, column: 36, scope: !1022)
!1033 = !DILocation(line: 296, column: 22, scope: !1022)
!1034 = !DILocalVariable(name: "pos", scope: !1022, file: !6, line: 296, type: !7)
!1035 = !DILocation(line: 297, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1022, file: !6, line: 297, column: 7)
!1037 = !DILocation(line: 297, column: 7, scope: !1036)
!1038 = !DILocation(line: 298, column: 5, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !6, line: 297, column: 27)
!1040 = !DILocation(line: 299, column: 31, scope: !1039)
!1041 = !DILocation(line: 299, column: 5, scope: !1039)
!1042 = !DILocation(line: 300, column: 5, scope: !1039)
!1043 = !DILocation(line: 302, column: 5, scope: !1039)
!1044 = !DILocation(line: 302, column: 23, scope: !1039)
!1045 = !DILocation(line: 303, column: 3, scope: !1039)
!1046 = !DILocalVariable(name: "i", scope: !1047, file: !6, line: 304, type: !19)
!1047 = distinct !DILexicalBlock(scope: !1022, file: !6, line: 304, column: 3)
!1048 = !DILocation(line: 0, scope: !1047)
!1049 = !DILocation(line: 304, column: 8, scope: !1047)
!1050 = !DILocation(line: 304, scope: !1047)
!1051 = !DILocation(line: 304, column: 24, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !6, line: 304, column: 3)
!1053 = !DILocation(line: 304, column: 3, scope: !1047)
!1054 = !DILocation(line: 305, column: 13, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !6, line: 305, column: 9)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !6, line: 304, column: 36)
!1057 = !DILocation(line: 306, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !6, line: 305, column: 22)
!1059 = !DILocation(line: 308, column: 5, scope: !1058)
!1060 = !DILocation(line: 309, column: 13, scope: !1056)
!1061 = !DILocation(line: 309, column: 5, scope: !1056)
!1062 = !DILocation(line: 309, column: 11, scope: !1056)
!1063 = !DILocation(line: 309, column: 37, scope: !1056)
!1064 = !DILocation(line: 304, column: 32, scope: !1052)
!1065 = !DILocation(line: 304, column: 3, scope: !1052)
!1066 = distinct !{!1066, !1053, !1067, !200}
!1067 = !DILocation(line: 310, column: 3, scope: !1047)
!1068 = !DILocation(line: 311, column: 17, scope: !1022)
!1069 = !DILocation(line: 311, column: 3, scope: !1022)
!1070 = !DILocation(line: 311, column: 15, scope: !1022)
!1071 = !DILocation(line: 312, column: 3, scope: !1022)
!1072 = distinct !DISubprogram(name: "keccak_get_byte", scope: !6, file: !6, line: 250, type: !1073, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !98)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!14, !1075, !7}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!1076 = !DILocalVariable(name: "st", arg: 1, scope: !1072, file: !6, line: 250, type: !1075)
!1077 = !DILocation(line: 0, scope: !1072)
!1078 = !DILocalVariable(name: "i", arg: 2, scope: !1072, file: !6, line: 250, type: !7)
!1079 = !DILocation(line: 251, column: 25, scope: !1072)
!1080 = !DILocation(line: 251, column: 20, scope: !1072)
!1081 = !DILocation(line: 251, column: 37, scope: !1072)
!1082 = !DILocation(line: 251, column: 31, scope: !1072)
!1083 = !DILocation(line: 251, column: 10, scope: !1072)
!1084 = !DILocation(line: 251, column: 3, scope: !1072)
!1085 = distinct !DISubprogram(name: "aes128_ecb_keyexp", scope: !67, file: !67, line: 639, type: !1086, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !1088, !97}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes128ctx", file: !67, line: 50, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 48, size: 32, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !1090, file: !67, line: 49, baseType: !480, size: 32)
!1093 = !DILocalVariable(name: "r", arg: 1, scope: !1085, file: !67, line: 639, type: !1088)
!1094 = !DILocation(line: 0, scope: !1085)
!1095 = !DILocalVariable(name: "key", arg: 2, scope: !1085, file: !67, line: 639, type: !97)
!1096 = !DILocalVariable(name: "skey", scope: !1085, file: !67, line: 640, type: !1097)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1408, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 22)
!1100 = !DILocation(line: 640, column: 14, scope: !1085)
!1101 = !DILocation(line: 642, column: 17, scope: !1085)
!1102 = !DILocation(line: 642, column: 15, scope: !1085)
!1103 = !DILocation(line: 643, column: 19, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1085, file: !67, line: 643, column: 9)
!1105 = !DILocation(line: 644, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1104, file: !67, line: 643, column: 28)
!1107 = !DILocation(line: 645, column: 5, scope: !1106)
!1108 = !DILocation(line: 647, column: 5, scope: !1085)
!1109 = !DILocation(line: 648, column: 32, scope: !1085)
!1110 = !DILocation(line: 648, column: 5, scope: !1085)
!1111 = !DILocation(line: 649, column: 1, scope: !1085)
!1112 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !67, file: !67, line: 407, type: !1113, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !480, !97, !7}
!1115 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !1112, file: !67, line: 407, type: !480)
!1116 = !DILocation(line: 0, scope: !1112)
!1117 = !DILocalVariable(name: "key", arg: 2, scope: !1112, file: !67, line: 407, type: !97)
!1118 = !DILocalVariable(name: "key_len", arg: 3, scope: !1112, file: !67, line: 407, type: !7)
!1119 = !DILocalVariable(name: "skey", scope: !1112, file: !67, line: 410, type: !1120)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1920, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 60)
!1123 = !DILocation(line: 410, column: 14, scope: !1112)
!1124 = !DILocation(line: 414, column: 26, scope: !1112)
!1125 = !DILocalVariable(name: "nrounds", scope: !1112, file: !67, line: 411, type: !7)
!1126 = !DILocation(line: 413, column: 19, scope: !1112)
!1127 = !DILocalVariable(name: "nk", scope: !1112, file: !67, line: 408, type: !7)
!1128 = !DILocalVariable(name: "nkf", scope: !1112, file: !67, line: 408, type: !7)
!1129 = !DILocation(line: 415, column: 37, scope: !1112)
!1130 = !DILocation(line: 415, column: 5, scope: !1112)
!1131 = !DILocation(line: 416, column: 25, scope: !1112)
!1132 = !DILocation(line: 416, column: 31, scope: !1112)
!1133 = !DILocation(line: 416, column: 11, scope: !1112)
!1134 = !DILocalVariable(name: "tmp", scope: !1112, file: !67, line: 409, type: !64)
!1135 = !DILocalVariable(name: "i", scope: !1112, file: !67, line: 408, type: !7)
!1136 = !DILocalVariable(name: "j", scope: !1112, file: !67, line: 408, type: !7)
!1137 = !DILocalVariable(name: "k", scope: !1112, file: !67, line: 408, type: !7)
!1138 = !DILocation(line: 417, column: 10, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1112, file: !67, line: 417, column: 5)
!1140 = !DILocation(line: 417, scope: !1139)
!1141 = !DILocation(line: 0, scope: !1139)
!1142 = !DILocation(line: 417, column: 34, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !67, line: 417, column: 5)
!1144 = !DILocation(line: 417, column: 5, scope: !1139)
!1145 = !DILocation(line: 432, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1112, file: !67, line: 432, column: 5)
!1147 = !DILocation(line: 418, column: 15, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !67, line: 418, column: 13)
!1149 = distinct !DILexicalBlock(scope: !1143, file: !67, line: 417, column: 47)
!1150 = !DILocation(line: 419, column: 31, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !67, line: 418, column: 21)
!1152 = !DILocation(line: 420, column: 19, scope: !1151)
!1153 = !DILocation(line: 420, column: 35, scope: !1151)
!1154 = !DILocation(line: 420, column: 33, scope: !1151)
!1155 = !DILocation(line: 421, column: 9, scope: !1151)
!1156 = !DILocation(line: 421, column: 23, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !67, line: 421, column: 20)
!1158 = !DILocation(line: 421, column: 27, scope: !1157)
!1159 = !DILocation(line: 422, column: 19, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !67, line: 421, column: 38)
!1161 = !DILocation(line: 423, column: 9, scope: !1160)
!1162 = !DILocation(line: 0, scope: !1148)
!1163 = !DILocation(line: 424, column: 23, scope: !1149)
!1164 = !DILocation(line: 424, column: 16, scope: !1149)
!1165 = !DILocation(line: 424, column: 13, scope: !1149)
!1166 = !DILocation(line: 425, column: 9, scope: !1149)
!1167 = !DILocation(line: 425, column: 17, scope: !1149)
!1168 = !DILocation(line: 426, column: 13, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1149, file: !67, line: 426, column: 13)
!1170 = !DILocation(line: 426, column: 18, scope: !1169)
!1171 = !DILocation(line: 417, column: 43, scope: !1143)
!1172 = !DILocation(line: 417, column: 5, scope: !1143)
!1173 = distinct !{!1173, !1144, !1174, !200}
!1174 = !DILocation(line: 430, column: 5, scope: !1139)
!1175 = !DILocation(line: 432, scope: !1146)
!1176 = !DILocation(line: 432, column: 26, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1146, file: !67, line: 432, column: 5)
!1178 = !DILocalVariable(name: "q", scope: !1179, file: !67, line: 433, type: !1180)
!1179 = distinct !DILexicalBlock(scope: !1177, file: !67, line: 432, column: 49)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !407)
!1181 = !DILocation(line: 433, column: 18, scope: !1179)
!1182 = !DILocation(line: 435, column: 43, scope: !1179)
!1183 = !DILocation(line: 435, column: 54, scope: !1179)
!1184 = !DILocation(line: 435, column: 9, scope: !1179)
!1185 = !DILocation(line: 436, column: 16, scope: !1179)
!1186 = !DILocation(line: 436, column: 9, scope: !1179)
!1187 = !DILocation(line: 436, column: 14, scope: !1179)
!1188 = !DILocation(line: 437, column: 9, scope: !1179)
!1189 = !DILocation(line: 437, column: 14, scope: !1179)
!1190 = !DILocation(line: 438, column: 9, scope: !1179)
!1191 = !DILocation(line: 438, column: 14, scope: !1179)
!1192 = !DILocation(line: 439, column: 16, scope: !1179)
!1193 = !DILocation(line: 439, column: 9, scope: !1179)
!1194 = !DILocation(line: 439, column: 14, scope: !1179)
!1195 = !DILocation(line: 440, column: 9, scope: !1179)
!1196 = !DILocation(line: 440, column: 14, scope: !1179)
!1197 = !DILocation(line: 441, column: 9, scope: !1179)
!1198 = !DILocation(line: 441, column: 14, scope: !1179)
!1199 = !DILocation(line: 442, column: 9, scope: !1179)
!1200 = !DILocation(line: 444, column: 14, scope: !1179)
!1201 = !DILocation(line: 444, column: 19, scope: !1179)
!1202 = !DILocation(line: 445, column: 16, scope: !1179)
!1203 = !DILocation(line: 445, column: 21, scope: !1179)
!1204 = !DILocation(line: 445, column: 13, scope: !1179)
!1205 = !DILocation(line: 446, column: 16, scope: !1179)
!1206 = !DILocation(line: 446, column: 21, scope: !1179)
!1207 = !DILocation(line: 446, column: 13, scope: !1179)
!1208 = !DILocation(line: 447, column: 16, scope: !1179)
!1209 = !DILocation(line: 447, column: 21, scope: !1179)
!1210 = !DILocation(line: 447, column: 13, scope: !1179)
!1211 = !DILocation(line: 443, column: 9, scope: !1179)
!1212 = !DILocation(line: 443, column: 26, scope: !1179)
!1213 = !DILocation(line: 449, column: 14, scope: !1179)
!1214 = !DILocation(line: 449, column: 19, scope: !1179)
!1215 = !DILocation(line: 450, column: 16, scope: !1179)
!1216 = !DILocation(line: 450, column: 21, scope: !1179)
!1217 = !DILocation(line: 450, column: 13, scope: !1179)
!1218 = !DILocation(line: 451, column: 16, scope: !1179)
!1219 = !DILocation(line: 451, column: 21, scope: !1179)
!1220 = !DILocation(line: 451, column: 13, scope: !1179)
!1221 = !DILocation(line: 452, column: 16, scope: !1179)
!1222 = !DILocation(line: 452, column: 21, scope: !1179)
!1223 = !DILocation(line: 452, column: 13, scope: !1179)
!1224 = !DILocation(line: 448, column: 21, scope: !1179)
!1225 = !DILocation(line: 448, column: 9, scope: !1179)
!1226 = !DILocation(line: 448, column: 26, scope: !1179)
!1227 = !DILocation(line: 432, column: 35, scope: !1177)
!1228 = !DILocation(line: 432, column: 43, scope: !1177)
!1229 = !DILocation(line: 432, column: 5, scope: !1177)
!1230 = distinct !{!1230, !1145, !1231, !200}
!1231 = !DILocation(line: 453, column: 5, scope: !1146)
!1232 = !DILocation(line: 454, column: 1, scope: !1112)
!1233 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !67, file: !67, line: 456, type: !1234, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !480, !1075, !7}
!1236 = !DILocalVariable(name: "skey", arg: 1, scope: !1233, file: !67, line: 456, type: !480)
!1237 = !DILocation(line: 0, scope: !1233)
!1238 = !DILocalVariable(name: "comp_skey", arg: 2, scope: !1233, file: !67, line: 456, type: !1075)
!1239 = !DILocalVariable(name: "nrounds", arg: 3, scope: !1233, file: !67, line: 456, type: !7)
!1240 = !DILocation(line: 459, column: 23, scope: !1233)
!1241 = !DILocalVariable(name: "n", scope: !1233, file: !67, line: 457, type: !7)
!1242 = !DILocalVariable(name: "u", scope: !1233, file: !67, line: 457, type: !7)
!1243 = !DILocalVariable(name: "v", scope: !1233, file: !67, line: 457, type: !7)
!1244 = !DILocation(line: 460, column: 10, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1233, file: !67, line: 460, column: 5)
!1246 = !DILocation(line: 460, scope: !1245)
!1247 = !DILocation(line: 460, column: 26, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !67, line: 460, column: 5)
!1249 = !DILocation(line: 460, column: 5, scope: !1245)
!1250 = !DILocation(line: 463, column: 29, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !67, line: 460, column: 45)
!1252 = !DILocalVariable(name: "x3", scope: !1251, file: !67, line: 461, type: !23)
!1253 = !DILocation(line: 0, scope: !1251)
!1254 = !DILocalVariable(name: "x2", scope: !1251, file: !67, line: 461, type: !23)
!1255 = !DILocalVariable(name: "x1", scope: !1251, file: !67, line: 461, type: !23)
!1256 = !DILocalVariable(name: "x0", scope: !1251, file: !67, line: 461, type: !23)
!1257 = !DILocation(line: 464, column: 12, scope: !1251)
!1258 = !DILocation(line: 468, column: 12, scope: !1251)
!1259 = !DILocation(line: 469, column: 12, scope: !1251)
!1260 = !DILocation(line: 470, column: 12, scope: !1251)
!1261 = !DILocation(line: 471, column: 33, scope: !1251)
!1262 = !DILocation(line: 471, column: 9, scope: !1251)
!1263 = !DILocation(line: 471, column: 21, scope: !1251)
!1264 = !DILocation(line: 472, column: 33, scope: !1251)
!1265 = !DILocation(line: 472, column: 16, scope: !1251)
!1266 = !DILocation(line: 472, column: 9, scope: !1251)
!1267 = !DILocation(line: 472, column: 21, scope: !1251)
!1268 = !DILocation(line: 473, column: 33, scope: !1251)
!1269 = !DILocation(line: 473, column: 16, scope: !1251)
!1270 = !DILocation(line: 473, column: 9, scope: !1251)
!1271 = !DILocation(line: 473, column: 21, scope: !1251)
!1272 = !DILocation(line: 474, column: 33, scope: !1251)
!1273 = !DILocation(line: 474, column: 16, scope: !1251)
!1274 = !DILocation(line: 474, column: 9, scope: !1251)
!1275 = !DILocation(line: 474, column: 21, scope: !1251)
!1276 = !DILocation(line: 460, column: 33, scope: !1248)
!1277 = !DILocation(line: 460, column: 39, scope: !1248)
!1278 = !DILocation(line: 460, column: 5, scope: !1248)
!1279 = distinct !{!1279, !1249, !1280, !200}
!1280 = !DILocation(line: 475, column: 5, scope: !1245)
!1281 = !DILocation(line: 476, column: 1, scope: !1233)
!1282 = distinct !DISubprogram(name: "br_range_dec32le", scope: !67, file: !67, line: 108, type: !1283, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1285, !19, !97}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!1286 = !DILocalVariable(name: "v", arg: 1, scope: !1282, file: !67, line: 108, type: !1285)
!1287 = !DILocation(line: 0, scope: !1282)
!1288 = !DILocalVariable(name: "num", arg: 2, scope: !1282, file: !67, line: 108, type: !19)
!1289 = !DILocalVariable(name: "src", arg: 3, scope: !1282, file: !67, line: 108, type: !97)
!1290 = !DILocation(line: 109, column: 5, scope: !1282)
!1291 = !DILocation(line: 109, column: 18, scope: !1282)
!1292 = !DILocation(line: 109, column: 15, scope: !1282)
!1293 = !DILocation(line: 110, column: 17, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1282, file: !67, line: 109, column: 23)
!1295 = !DILocation(line: 110, column: 12, scope: !1294)
!1296 = !DILocation(line: 110, column: 15, scope: !1294)
!1297 = !DILocation(line: 111, column: 13, scope: !1294)
!1298 = distinct !{!1298, !1290, !1299, !200}
!1299 = !DILocation(line: 112, column: 5, scope: !1282)
!1300 = !DILocation(line: 113, column: 1, scope: !1282)
!1301 = distinct !DISubprogram(name: "sub_word", scope: !67, file: !67, line: 396, type: !1302, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!64, !64}
!1304 = !DILocalVariable(name: "x", arg: 1, scope: !1301, file: !67, line: 396, type: !64)
!1305 = !DILocation(line: 0, scope: !1301)
!1306 = !DILocalVariable(name: "q", scope: !1301, file: !67, line: 397, type: !1180)
!1307 = !DILocation(line: 397, column: 14, scope: !1301)
!1308 = !DILocation(line: 399, column: 5, scope: !1301)
!1309 = !DILocation(line: 400, column: 12, scope: !1301)
!1310 = !DILocation(line: 400, column: 10, scope: !1301)
!1311 = !DILocation(line: 401, column: 5, scope: !1301)
!1312 = !DILocation(line: 402, column: 5, scope: !1301)
!1313 = !DILocation(line: 403, column: 5, scope: !1301)
!1314 = !DILocation(line: 404, column: 22, scope: !1301)
!1315 = !DILocation(line: 404, column: 12, scope: !1301)
!1316 = !DILocation(line: 404, column: 5, scope: !1301)
!1317 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !67, file: !67, line: 343, type: !1318, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !480, !480, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!1322 = !DILocalVariable(name: "q0", arg: 1, scope: !1317, file: !67, line: 343, type: !480)
!1323 = !DILocation(line: 0, scope: !1317)
!1324 = !DILocalVariable(name: "q1", arg: 2, scope: !1317, file: !67, line: 343, type: !480)
!1325 = !DILocalVariable(name: "w", arg: 3, scope: !1317, file: !67, line: 343, type: !1320)
!1326 = !DILocation(line: 346, column: 10, scope: !1317)
!1327 = !DILocalVariable(name: "x0", scope: !1317, file: !67, line: 344, type: !23)
!1328 = !DILocation(line: 347, column: 10, scope: !1317)
!1329 = !DILocalVariable(name: "x1", scope: !1317, file: !67, line: 344, type: !23)
!1330 = !DILocation(line: 348, column: 10, scope: !1317)
!1331 = !DILocalVariable(name: "x2", scope: !1317, file: !67, line: 344, type: !23)
!1332 = !DILocation(line: 349, column: 10, scope: !1317)
!1333 = !DILocalVariable(name: "x3", scope: !1317, file: !67, line: 344, type: !23)
!1334 = !DILocation(line: 350, column: 15, scope: !1317)
!1335 = !DILocation(line: 350, column: 8, scope: !1317)
!1336 = !DILocation(line: 351, column: 15, scope: !1317)
!1337 = !DILocation(line: 351, column: 8, scope: !1317)
!1338 = !DILocation(line: 352, column: 15, scope: !1317)
!1339 = !DILocation(line: 352, column: 8, scope: !1317)
!1340 = !DILocation(line: 353, column: 15, scope: !1317)
!1341 = !DILocation(line: 353, column: 8, scope: !1317)
!1342 = !DILocation(line: 354, column: 8, scope: !1317)
!1343 = !DILocation(line: 355, column: 8, scope: !1317)
!1344 = !DILocation(line: 356, column: 8, scope: !1317)
!1345 = !DILocation(line: 357, column: 8, scope: !1317)
!1346 = !DILocation(line: 358, column: 15, scope: !1317)
!1347 = !DILocation(line: 358, column: 8, scope: !1317)
!1348 = !DILocation(line: 359, column: 15, scope: !1317)
!1349 = !DILocation(line: 359, column: 8, scope: !1317)
!1350 = !DILocation(line: 362, column: 8, scope: !1317)
!1351 = !DILocation(line: 363, column: 8, scope: !1317)
!1352 = !DILocation(line: 366, column: 20, scope: !1317)
!1353 = !DILocation(line: 366, column: 14, scope: !1317)
!1354 = !DILocation(line: 366, column: 9, scope: !1317)
!1355 = !DILocation(line: 367, column: 20, scope: !1317)
!1356 = !DILocation(line: 367, column: 14, scope: !1317)
!1357 = !DILocation(line: 367, column: 9, scope: !1317)
!1358 = !DILocation(line: 368, column: 1, scope: !1317)
!1359 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !67, file: !67, line: 313, type: !873, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1360 = !DILocalVariable(name: "q", arg: 1, scope: !1359, file: !67, line: 313, type: !480)
!1361 = !DILocation(line: 0, scope: !1359)
!1362 = !DILocation(line: 326, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 326, column: 5)
!1364 = !DILocalVariable(name: "a", scope: !1363, file: !67, line: 326, type: !23)
!1365 = !DILocation(line: 0, scope: !1363)
!1366 = !DILocalVariable(name: "b", scope: !1363, file: !67, line: 326, type: !23)
!1367 = !DILocation(line: 327, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 327, column: 5)
!1369 = !DILocalVariable(name: "a", scope: !1368, file: !67, line: 327, type: !23)
!1370 = !DILocation(line: 0, scope: !1368)
!1371 = !DILocalVariable(name: "b", scope: !1368, file: !67, line: 327, type: !23)
!1372 = !DILocation(line: 328, column: 5, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 328, column: 5)
!1374 = !DILocalVariable(name: "a", scope: !1373, file: !67, line: 328, type: !23)
!1375 = !DILocation(line: 0, scope: !1373)
!1376 = !DILocalVariable(name: "b", scope: !1373, file: !67, line: 328, type: !23)
!1377 = !DILocation(line: 329, column: 5, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 329, column: 5)
!1379 = !DILocalVariable(name: "a", scope: !1378, file: !67, line: 329, type: !23)
!1380 = !DILocation(line: 0, scope: !1378)
!1381 = !DILocalVariable(name: "b", scope: !1378, file: !67, line: 329, type: !23)
!1382 = !DILocation(line: 331, column: 5, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 331, column: 5)
!1384 = !DILocalVariable(name: "a", scope: !1383, file: !67, line: 331, type: !23)
!1385 = !DILocation(line: 0, scope: !1383)
!1386 = !DILocalVariable(name: "b", scope: !1383, file: !67, line: 331, type: !23)
!1387 = !DILocation(line: 332, column: 5, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 332, column: 5)
!1389 = !DILocalVariable(name: "a", scope: !1388, file: !67, line: 332, type: !23)
!1390 = !DILocation(line: 0, scope: !1388)
!1391 = !DILocalVariable(name: "b", scope: !1388, file: !67, line: 332, type: !23)
!1392 = !DILocation(line: 333, column: 5, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 333, column: 5)
!1394 = !DILocalVariable(name: "a", scope: !1393, file: !67, line: 333, type: !23)
!1395 = !DILocation(line: 0, scope: !1393)
!1396 = !DILocalVariable(name: "b", scope: !1393, file: !67, line: 333, type: !23)
!1397 = !DILocation(line: 334, column: 5, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 334, column: 5)
!1399 = !DILocalVariable(name: "a", scope: !1398, file: !67, line: 334, type: !23)
!1400 = !DILocation(line: 0, scope: !1398)
!1401 = !DILocalVariable(name: "b", scope: !1398, file: !67, line: 334, type: !23)
!1402 = !DILocation(line: 336, column: 5, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 336, column: 5)
!1404 = !DILocalVariable(name: "a", scope: !1403, file: !67, line: 336, type: !23)
!1405 = !DILocation(line: 0, scope: !1403)
!1406 = !DILocalVariable(name: "b", scope: !1403, file: !67, line: 336, type: !23)
!1407 = !DILocation(line: 337, column: 5, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 337, column: 5)
!1409 = !DILocalVariable(name: "a", scope: !1408, file: !67, line: 337, type: !23)
!1410 = !DILocation(line: 0, scope: !1408)
!1411 = !DILocalVariable(name: "b", scope: !1408, file: !67, line: 337, type: !23)
!1412 = !DILocation(line: 338, column: 5, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 338, column: 5)
!1414 = !DILocalVariable(name: "a", scope: !1413, file: !67, line: 338, type: !23)
!1415 = !DILocation(line: 0, scope: !1413)
!1416 = !DILocalVariable(name: "b", scope: !1413, file: !67, line: 338, type: !23)
!1417 = !DILocation(line: 339, column: 5, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1359, file: !67, line: 339, column: 5)
!1419 = !DILocalVariable(name: "a", scope: !1418, file: !67, line: 339, type: !23)
!1420 = !DILocation(line: 0, scope: !1418)
!1421 = !DILocalVariable(name: "b", scope: !1418, file: !67, line: 339, type: !23)
!1422 = !DILocation(line: 340, column: 1, scope: !1359)
!1423 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !67, file: !67, line: 139, type: !873, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1424 = !DILocalVariable(name: "q", arg: 1, scope: !1423, file: !67, line: 139, type: !480)
!1425 = !DILocation(line: 0, scope: !1423)
!1426 = !DILocation(line: 165, column: 10, scope: !1423)
!1427 = !DILocalVariable(name: "x0", scope: !1423, file: !67, line: 150, type: !23)
!1428 = !DILocation(line: 166, column: 10, scope: !1423)
!1429 = !DILocalVariable(name: "x1", scope: !1423, file: !67, line: 150, type: !23)
!1430 = !DILocation(line: 167, column: 10, scope: !1423)
!1431 = !DILocalVariable(name: "x2", scope: !1423, file: !67, line: 150, type: !23)
!1432 = !DILocation(line: 168, column: 10, scope: !1423)
!1433 = !DILocalVariable(name: "x3", scope: !1423, file: !67, line: 150, type: !23)
!1434 = !DILocation(line: 169, column: 10, scope: !1423)
!1435 = !DILocalVariable(name: "x4", scope: !1423, file: !67, line: 150, type: !23)
!1436 = !DILocation(line: 170, column: 10, scope: !1423)
!1437 = !DILocalVariable(name: "x5", scope: !1423, file: !67, line: 150, type: !23)
!1438 = !DILocation(line: 171, column: 10, scope: !1423)
!1439 = !DILocalVariable(name: "x6", scope: !1423, file: !67, line: 150, type: !23)
!1440 = !DILocation(line: 172, column: 10, scope: !1423)
!1441 = !DILocalVariable(name: "x7", scope: !1423, file: !67, line: 150, type: !23)
!1442 = !DILocation(line: 177, column: 14, scope: !1423)
!1443 = !DILocalVariable(name: "y14", scope: !1423, file: !67, line: 152, type: !23)
!1444 = !DILocation(line: 178, column: 14, scope: !1423)
!1445 = !DILocalVariable(name: "y13", scope: !1423, file: !67, line: 152, type: !23)
!1446 = !DILocation(line: 179, column: 13, scope: !1423)
!1447 = !DILocalVariable(name: "y9", scope: !1423, file: !67, line: 151, type: !23)
!1448 = !DILocation(line: 180, column: 13, scope: !1423)
!1449 = !DILocalVariable(name: "y8", scope: !1423, file: !67, line: 151, type: !23)
!1450 = !DILocation(line: 181, column: 13, scope: !1423)
!1451 = !DILocalVariable(name: "t0", scope: !1423, file: !67, line: 156, type: !23)
!1452 = !DILocation(line: 182, column: 13, scope: !1423)
!1453 = !DILocalVariable(name: "y1", scope: !1423, file: !67, line: 151, type: !23)
!1454 = !DILocation(line: 183, column: 13, scope: !1423)
!1455 = !DILocalVariable(name: "y4", scope: !1423, file: !67, line: 151, type: !23)
!1456 = !DILocation(line: 184, column: 15, scope: !1423)
!1457 = !DILocalVariable(name: "y12", scope: !1423, file: !67, line: 152, type: !23)
!1458 = !DILocation(line: 185, column: 13, scope: !1423)
!1459 = !DILocalVariable(name: "y2", scope: !1423, file: !67, line: 151, type: !23)
!1460 = !DILocation(line: 186, column: 13, scope: !1423)
!1461 = !DILocalVariable(name: "y5", scope: !1423, file: !67, line: 151, type: !23)
!1462 = !DILocation(line: 187, column: 13, scope: !1423)
!1463 = !DILocalVariable(name: "y3", scope: !1423, file: !67, line: 151, type: !23)
!1464 = !DILocation(line: 188, column: 13, scope: !1423)
!1465 = !DILocalVariable(name: "t1", scope: !1423, file: !67, line: 156, type: !23)
!1466 = !DILocation(line: 189, column: 14, scope: !1423)
!1467 = !DILocalVariable(name: "y15", scope: !1423, file: !67, line: 152, type: !23)
!1468 = !DILocation(line: 190, column: 14, scope: !1423)
!1469 = !DILocalVariable(name: "y20", scope: !1423, file: !67, line: 153, type: !23)
!1470 = !DILocation(line: 191, column: 14, scope: !1423)
!1471 = !DILocalVariable(name: "y6", scope: !1423, file: !67, line: 151, type: !23)
!1472 = !DILocation(line: 192, column: 15, scope: !1423)
!1473 = !DILocalVariable(name: "y10", scope: !1423, file: !67, line: 152, type: !23)
!1474 = !DILocation(line: 193, column: 15, scope: !1423)
!1475 = !DILocalVariable(name: "y11", scope: !1423, file: !67, line: 152, type: !23)
!1476 = !DILocation(line: 194, column: 13, scope: !1423)
!1477 = !DILocalVariable(name: "y7", scope: !1423, file: !67, line: 151, type: !23)
!1478 = !DILocation(line: 195, column: 15, scope: !1423)
!1479 = !DILocalVariable(name: "y17", scope: !1423, file: !67, line: 152, type: !23)
!1480 = !DILocalVariable(name: "y19", scope: !1423, file: !67, line: 152, type: !23)
!1481 = !DILocation(line: 197, column: 14, scope: !1423)
!1482 = !DILocalVariable(name: "y16", scope: !1423, file: !67, line: 152, type: !23)
!1483 = !DILocalVariable(name: "y21", scope: !1423, file: !67, line: 153, type: !23)
!1484 = !DILocalVariable(name: "y18", scope: !1423, file: !67, line: 152, type: !23)
!1485 = !DILocation(line: 204, column: 14, scope: !1423)
!1486 = !DILocalVariable(name: "t2", scope: !1423, file: !67, line: 156, type: !23)
!1487 = !DILocation(line: 205, column: 13, scope: !1423)
!1488 = !DILocalVariable(name: "t3", scope: !1423, file: !67, line: 156, type: !23)
!1489 = !DILocation(line: 206, column: 13, scope: !1423)
!1490 = !DILocalVariable(name: "t4", scope: !1423, file: !67, line: 156, type: !23)
!1491 = !DILocation(line: 207, column: 13, scope: !1423)
!1492 = !DILocalVariable(name: "t5", scope: !1423, file: !67, line: 156, type: !23)
!1493 = !DILocalVariable(name: "t6", scope: !1423, file: !67, line: 156, type: !23)
!1494 = !DILocation(line: 209, column: 14, scope: !1423)
!1495 = !DILocalVariable(name: "t7", scope: !1423, file: !67, line: 156, type: !23)
!1496 = !DILocation(line: 210, column: 13, scope: !1423)
!1497 = !DILocalVariable(name: "t8", scope: !1423, file: !67, line: 156, type: !23)
!1498 = !DILocalVariable(name: "t9", scope: !1423, file: !67, line: 156, type: !23)
!1499 = !DILocation(line: 212, column: 14, scope: !1423)
!1500 = !DILocalVariable(name: "t10", scope: !1423, file: !67, line: 157, type: !23)
!1501 = !DILocalVariable(name: "t11", scope: !1423, file: !67, line: 157, type: !23)
!1502 = !DILocation(line: 214, column: 14, scope: !1423)
!1503 = !DILocalVariable(name: "t12", scope: !1423, file: !67, line: 157, type: !23)
!1504 = !DILocation(line: 215, column: 15, scope: !1423)
!1505 = !DILocalVariable(name: "t13", scope: !1423, file: !67, line: 157, type: !23)
!1506 = !DILocation(line: 216, column: 15, scope: !1423)
!1507 = !DILocalVariable(name: "t14", scope: !1423, file: !67, line: 157, type: !23)
!1508 = !DILocation(line: 217, column: 14, scope: !1423)
!1509 = !DILocalVariable(name: "t15", scope: !1423, file: !67, line: 157, type: !23)
!1510 = !DILocation(line: 218, column: 15, scope: !1423)
!1511 = !DILocalVariable(name: "t16", scope: !1423, file: !67, line: 157, type: !23)
!1512 = !DILocation(line: 219, column: 14, scope: !1423)
!1513 = !DILocalVariable(name: "t17", scope: !1423, file: !67, line: 157, type: !23)
!1514 = !DILocalVariable(name: "t18", scope: !1423, file: !67, line: 157, type: !23)
!1515 = !DILocalVariable(name: "t19", scope: !1423, file: !67, line: 157, type: !23)
!1516 = !DILocalVariable(name: "t20", scope: !1423, file: !67, line: 158, type: !23)
!1517 = !DILocation(line: 223, column: 15, scope: !1423)
!1518 = !DILocalVariable(name: "t21", scope: !1423, file: !67, line: 158, type: !23)
!1519 = !DILocation(line: 224, column: 15, scope: !1423)
!1520 = !DILocalVariable(name: "t22", scope: !1423, file: !67, line: 158, type: !23)
!1521 = !DILocation(line: 225, column: 15, scope: !1423)
!1522 = !DILocalVariable(name: "t23", scope: !1423, file: !67, line: 158, type: !23)
!1523 = !DILocation(line: 226, column: 15, scope: !1423)
!1524 = !DILocalVariable(name: "t24", scope: !1423, file: !67, line: 158, type: !23)
!1525 = !DILocation(line: 228, column: 15, scope: !1423)
!1526 = !DILocalVariable(name: "t25", scope: !1423, file: !67, line: 158, type: !23)
!1527 = !DILocation(line: 229, column: 15, scope: !1423)
!1528 = !DILocalVariable(name: "t26", scope: !1423, file: !67, line: 158, type: !23)
!1529 = !DILocation(line: 230, column: 15, scope: !1423)
!1530 = !DILocalVariable(name: "t27", scope: !1423, file: !67, line: 158, type: !23)
!1531 = !DILocation(line: 231, column: 15, scope: !1423)
!1532 = !DILocalVariable(name: "t28", scope: !1423, file: !67, line: 158, type: !23)
!1533 = !DILocation(line: 232, column: 15, scope: !1423)
!1534 = !DILocalVariable(name: "t29", scope: !1423, file: !67, line: 158, type: !23)
!1535 = !DILocation(line: 233, column: 15, scope: !1423)
!1536 = !DILocalVariable(name: "t30", scope: !1423, file: !67, line: 159, type: !23)
!1537 = !DILocation(line: 234, column: 15, scope: !1423)
!1538 = !DILocalVariable(name: "t31", scope: !1423, file: !67, line: 159, type: !23)
!1539 = !DILocation(line: 235, column: 15, scope: !1423)
!1540 = !DILocalVariable(name: "t32", scope: !1423, file: !67, line: 159, type: !23)
!1541 = !DILocation(line: 236, column: 15, scope: !1423)
!1542 = !DILocalVariable(name: "t33", scope: !1423, file: !67, line: 159, type: !23)
!1543 = !DILocation(line: 237, column: 15, scope: !1423)
!1544 = !DILocalVariable(name: "t34", scope: !1423, file: !67, line: 159, type: !23)
!1545 = !DILocation(line: 238, column: 15, scope: !1423)
!1546 = !DILocalVariable(name: "t35", scope: !1423, file: !67, line: 159, type: !23)
!1547 = !DILocation(line: 239, column: 15, scope: !1423)
!1548 = !DILocalVariable(name: "t36", scope: !1423, file: !67, line: 159, type: !23)
!1549 = !DILocation(line: 240, column: 15, scope: !1423)
!1550 = !DILocalVariable(name: "t37", scope: !1423, file: !67, line: 159, type: !23)
!1551 = !DILocation(line: 241, column: 15, scope: !1423)
!1552 = !DILocalVariable(name: "t38", scope: !1423, file: !67, line: 159, type: !23)
!1553 = !DILocation(line: 242, column: 15, scope: !1423)
!1554 = !DILocalVariable(name: "t39", scope: !1423, file: !67, line: 159, type: !23)
!1555 = !DILocation(line: 243, column: 15, scope: !1423)
!1556 = !DILocalVariable(name: "t40", scope: !1423, file: !67, line: 160, type: !23)
!1557 = !DILocation(line: 245, column: 15, scope: !1423)
!1558 = !DILocalVariable(name: "t41", scope: !1423, file: !67, line: 160, type: !23)
!1559 = !DILocation(line: 246, column: 15, scope: !1423)
!1560 = !DILocalVariable(name: "t42", scope: !1423, file: !67, line: 160, type: !23)
!1561 = !DILocation(line: 247, column: 15, scope: !1423)
!1562 = !DILocalVariable(name: "t43", scope: !1423, file: !67, line: 160, type: !23)
!1563 = !DILocation(line: 248, column: 15, scope: !1423)
!1564 = !DILocalVariable(name: "t44", scope: !1423, file: !67, line: 160, type: !23)
!1565 = !DILocation(line: 249, column: 15, scope: !1423)
!1566 = !DILocalVariable(name: "t45", scope: !1423, file: !67, line: 160, type: !23)
!1567 = !DILocation(line: 250, column: 14, scope: !1423)
!1568 = !DILocalVariable(name: "z0", scope: !1423, file: !67, line: 154, type: !23)
!1569 = !DILocation(line: 251, column: 14, scope: !1423)
!1570 = !DILocalVariable(name: "z1", scope: !1423, file: !67, line: 154, type: !23)
!1571 = !DILocation(line: 252, column: 14, scope: !1423)
!1572 = !DILocalVariable(name: "z2", scope: !1423, file: !67, line: 154, type: !23)
!1573 = !DILocation(line: 253, column: 14, scope: !1423)
!1574 = !DILocalVariable(name: "z3", scope: !1423, file: !67, line: 154, type: !23)
!1575 = !DILocation(line: 254, column: 14, scope: !1423)
!1576 = !DILocalVariable(name: "z4", scope: !1423, file: !67, line: 154, type: !23)
!1577 = !DILocation(line: 255, column: 14, scope: !1423)
!1578 = !DILocalVariable(name: "z5", scope: !1423, file: !67, line: 154, type: !23)
!1579 = !DILocation(line: 256, column: 14, scope: !1423)
!1580 = !DILocalVariable(name: "z6", scope: !1423, file: !67, line: 154, type: !23)
!1581 = !DILocation(line: 257, column: 14, scope: !1423)
!1582 = !DILocalVariable(name: "z7", scope: !1423, file: !67, line: 154, type: !23)
!1583 = !DILocation(line: 258, column: 14, scope: !1423)
!1584 = !DILocalVariable(name: "z8", scope: !1423, file: !67, line: 154, type: !23)
!1585 = !DILocation(line: 259, column: 14, scope: !1423)
!1586 = !DILocalVariable(name: "z9", scope: !1423, file: !67, line: 154, type: !23)
!1587 = !DILocation(line: 260, column: 15, scope: !1423)
!1588 = !DILocalVariable(name: "z10", scope: !1423, file: !67, line: 155, type: !23)
!1589 = !DILocation(line: 261, column: 15, scope: !1423)
!1590 = !DILocalVariable(name: "z11", scope: !1423, file: !67, line: 155, type: !23)
!1591 = !DILocation(line: 262, column: 15, scope: !1423)
!1592 = !DILocalVariable(name: "z12", scope: !1423, file: !67, line: 155, type: !23)
!1593 = !DILocation(line: 263, column: 15, scope: !1423)
!1594 = !DILocalVariable(name: "z13", scope: !1423, file: !67, line: 155, type: !23)
!1595 = !DILocation(line: 264, column: 15, scope: !1423)
!1596 = !DILocalVariable(name: "z14", scope: !1423, file: !67, line: 155, type: !23)
!1597 = !DILocation(line: 265, column: 15, scope: !1423)
!1598 = !DILocalVariable(name: "z15", scope: !1423, file: !67, line: 155, type: !23)
!1599 = !DILocation(line: 266, column: 15, scope: !1423)
!1600 = !DILocalVariable(name: "z16", scope: !1423, file: !67, line: 155, type: !23)
!1601 = !DILocation(line: 267, column: 15, scope: !1423)
!1602 = !DILocalVariable(name: "z17", scope: !1423, file: !67, line: 155, type: !23)
!1603 = !DILocation(line: 272, column: 15, scope: !1423)
!1604 = !DILocalVariable(name: "t46", scope: !1423, file: !67, line: 160, type: !23)
!1605 = !DILocation(line: 273, column: 15, scope: !1423)
!1606 = !DILocalVariable(name: "t47", scope: !1423, file: !67, line: 160, type: !23)
!1607 = !DILocation(line: 274, column: 14, scope: !1423)
!1608 = !DILocalVariable(name: "t48", scope: !1423, file: !67, line: 160, type: !23)
!1609 = !DILocation(line: 275, column: 14, scope: !1423)
!1610 = !DILocalVariable(name: "t49", scope: !1423, file: !67, line: 160, type: !23)
!1611 = !DILocation(line: 276, column: 14, scope: !1423)
!1612 = !DILocalVariable(name: "t50", scope: !1423, file: !67, line: 161, type: !23)
!1613 = !DILocation(line: 277, column: 14, scope: !1423)
!1614 = !DILocalVariable(name: "t51", scope: !1423, file: !67, line: 161, type: !23)
!1615 = !DILocation(line: 278, column: 14, scope: !1423)
!1616 = !DILocalVariable(name: "t52", scope: !1423, file: !67, line: 161, type: !23)
!1617 = !DILocation(line: 279, column: 14, scope: !1423)
!1618 = !DILocalVariable(name: "t53", scope: !1423, file: !67, line: 161, type: !23)
!1619 = !DILocation(line: 280, column: 14, scope: !1423)
!1620 = !DILocalVariable(name: "t54", scope: !1423, file: !67, line: 161, type: !23)
!1621 = !DILocation(line: 281, column: 15, scope: !1423)
!1622 = !DILocalVariable(name: "t55", scope: !1423, file: !67, line: 161, type: !23)
!1623 = !DILocation(line: 282, column: 15, scope: !1423)
!1624 = !DILocalVariable(name: "t56", scope: !1423, file: !67, line: 161, type: !23)
!1625 = !DILocation(line: 283, column: 15, scope: !1423)
!1626 = !DILocalVariable(name: "t57", scope: !1423, file: !67, line: 161, type: !23)
!1627 = !DILocation(line: 284, column: 14, scope: !1423)
!1628 = !DILocalVariable(name: "t58", scope: !1423, file: !67, line: 161, type: !23)
!1629 = !DILocation(line: 285, column: 14, scope: !1423)
!1630 = !DILocalVariable(name: "t59", scope: !1423, file: !67, line: 161, type: !23)
!1631 = !DILocation(line: 286, column: 15, scope: !1423)
!1632 = !DILocalVariable(name: "t60", scope: !1423, file: !67, line: 162, type: !23)
!1633 = !DILocation(line: 287, column: 15, scope: !1423)
!1634 = !DILocalVariable(name: "t61", scope: !1423, file: !67, line: 162, type: !23)
!1635 = !DILocation(line: 288, column: 15, scope: !1423)
!1636 = !DILocalVariable(name: "t62", scope: !1423, file: !67, line: 162, type: !23)
!1637 = !DILocation(line: 289, column: 15, scope: !1423)
!1638 = !DILocalVariable(name: "t63", scope: !1423, file: !67, line: 162, type: !23)
!1639 = !DILocation(line: 290, column: 14, scope: !1423)
!1640 = !DILocalVariable(name: "t64", scope: !1423, file: !67, line: 162, type: !23)
!1641 = !DILocation(line: 291, column: 15, scope: !1423)
!1642 = !DILocalVariable(name: "t65", scope: !1423, file: !67, line: 162, type: !23)
!1643 = !DILocation(line: 292, column: 14, scope: !1423)
!1644 = !DILocalVariable(name: "t66", scope: !1423, file: !67, line: 162, type: !23)
!1645 = !DILocation(line: 293, column: 14, scope: !1423)
!1646 = !DILocalVariable(name: "s0", scope: !1423, file: !67, line: 163, type: !23)
!1647 = !DILocation(line: 294, column: 14, scope: !1423)
!1648 = !DILocalVariable(name: "s6", scope: !1423, file: !67, line: 163, type: !23)
!1649 = !DILocation(line: 295, column: 14, scope: !1423)
!1650 = !DILocalVariable(name: "s7", scope: !1423, file: !67, line: 163, type: !23)
!1651 = !DILocalVariable(name: "t67", scope: !1423, file: !67, line: 162, type: !23)
!1652 = !DILocation(line: 297, column: 14, scope: !1423)
!1653 = !DILocalVariable(name: "s3", scope: !1423, file: !67, line: 163, type: !23)
!1654 = !DILocation(line: 298, column: 14, scope: !1423)
!1655 = !DILocalVariable(name: "s4", scope: !1423, file: !67, line: 163, type: !23)
!1656 = !DILocation(line: 299, column: 14, scope: !1423)
!1657 = !DILocalVariable(name: "s5", scope: !1423, file: !67, line: 163, type: !23)
!1658 = !DILocation(line: 300, column: 14, scope: !1423)
!1659 = !DILocalVariable(name: "s1", scope: !1423, file: !67, line: 163, type: !23)
!1660 = !DILocation(line: 301, column: 14, scope: !1423)
!1661 = !DILocalVariable(name: "s2", scope: !1423, file: !67, line: 163, type: !23)
!1662 = !DILocation(line: 303, column: 5, scope: !1423)
!1663 = !DILocation(line: 303, column: 10, scope: !1423)
!1664 = !DILocation(line: 304, column: 5, scope: !1423)
!1665 = !DILocation(line: 304, column: 10, scope: !1423)
!1666 = !DILocation(line: 305, column: 5, scope: !1423)
!1667 = !DILocation(line: 305, column: 10, scope: !1423)
!1668 = !DILocation(line: 306, column: 5, scope: !1423)
!1669 = !DILocation(line: 306, column: 10, scope: !1423)
!1670 = !DILocation(line: 307, column: 5, scope: !1423)
!1671 = !DILocation(line: 307, column: 10, scope: !1423)
!1672 = !DILocation(line: 308, column: 5, scope: !1423)
!1673 = !DILocation(line: 308, column: 10, scope: !1423)
!1674 = !DILocation(line: 309, column: 5, scope: !1423)
!1675 = !DILocation(line: 309, column: 10, scope: !1423)
!1676 = !DILocation(line: 310, column: 10, scope: !1423)
!1677 = !DILocation(line: 311, column: 1, scope: !1423)
!1678 = distinct !DISubprogram(name: "br_dec32le", scope: !67, file: !67, line: 100, type: !1679, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!64, !97}
!1681 = !DILocalVariable(name: "src", arg: 1, scope: !1678, file: !67, line: 100, type: !97)
!1682 = !DILocation(line: 0, scope: !1678)
!1683 = !DILocation(line: 101, column: 22, scope: !1678)
!1684 = !DILocation(line: 101, column: 12, scope: !1678)
!1685 = !DILocation(line: 102, column: 25, scope: !1678)
!1686 = !DILocation(line: 102, column: 15, scope: !1678)
!1687 = !DILocation(line: 102, column: 32, scope: !1678)
!1688 = !DILocation(line: 102, column: 12, scope: !1678)
!1689 = !DILocation(line: 103, column: 25, scope: !1678)
!1690 = !DILocation(line: 103, column: 15, scope: !1678)
!1691 = !DILocation(line: 103, column: 32, scope: !1678)
!1692 = !DILocation(line: 103, column: 12, scope: !1678)
!1693 = !DILocation(line: 104, column: 25, scope: !1678)
!1694 = !DILocation(line: 104, column: 15, scope: !1678)
!1695 = !DILocation(line: 104, column: 32, scope: !1678)
!1696 = !DILocation(line: 104, column: 12, scope: !1678)
!1697 = !DILocation(line: 101, column: 5, scope: !1678)
!1698 = distinct !DISubprogram(name: "aes128_ctr_keyexp", scope: !67, file: !67, line: 651, type: !1086, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1699 = !DILocalVariable(name: "r", arg: 1, scope: !1698, file: !67, line: 651, type: !1088)
!1700 = !DILocation(line: 0, scope: !1698)
!1701 = !DILocalVariable(name: "key", arg: 2, scope: !1698, file: !67, line: 651, type: !97)
!1702 = !DILocation(line: 652, column: 5, scope: !1698)
!1703 = !DILocation(line: 653, column: 1, scope: !1698)
!1704 = distinct !DISubprogram(name: "aes192_ecb_keyexp", scope: !67, file: !67, line: 656, type: !1705, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !1707, !97}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes192ctx", file: !67, line: 55, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 53, size: 32, elements: !1710)
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !1709, file: !67, line: 54, baseType: !480, size: 32)
!1712 = !DILocalVariable(name: "r", arg: 1, scope: !1704, file: !67, line: 656, type: !1707)
!1713 = !DILocation(line: 0, scope: !1704)
!1714 = !DILocalVariable(name: "key", arg: 2, scope: !1704, file: !67, line: 656, type: !97)
!1715 = !DILocalVariable(name: "skey", scope: !1704, file: !67, line: 657, type: !1716)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1664, elements: !364)
!1717 = !DILocation(line: 657, column: 14, scope: !1704)
!1718 = !DILocation(line: 658, column: 17, scope: !1704)
!1719 = !DILocation(line: 658, column: 15, scope: !1704)
!1720 = !DILocation(line: 659, column: 19, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1704, file: !67, line: 659, column: 9)
!1722 = !DILocation(line: 660, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1721, file: !67, line: 659, column: 28)
!1724 = !DILocation(line: 661, column: 5, scope: !1723)
!1725 = !DILocation(line: 663, column: 5, scope: !1704)
!1726 = !DILocation(line: 664, column: 32, scope: !1704)
!1727 = !DILocation(line: 664, column: 5, scope: !1704)
!1728 = !DILocation(line: 665, column: 1, scope: !1704)
!1729 = distinct !DISubprogram(name: "aes192_ctr_keyexp", scope: !67, file: !67, line: 668, type: !1705, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1730 = !DILocalVariable(name: "r", arg: 1, scope: !1729, file: !67, line: 668, type: !1707)
!1731 = !DILocation(line: 0, scope: !1729)
!1732 = !DILocalVariable(name: "key", arg: 2, scope: !1729, file: !67, line: 668, type: !97)
!1733 = !DILocation(line: 669, column: 5, scope: !1729)
!1734 = !DILocation(line: 670, column: 1, scope: !1729)
!1735 = distinct !DISubprogram(name: "aes256_ecb_keyexp", scope: !67, file: !67, line: 673, type: !1736, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1738, !97}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256ctx", file: !67, line: 60, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 58, size: 32, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sk_exp", scope: !1740, file: !67, line: 59, baseType: !480, size: 32)
!1743 = !DILocalVariable(name: "r", arg: 1, scope: !1735, file: !67, line: 673, type: !1738)
!1744 = !DILocation(line: 0, scope: !1735)
!1745 = !DILocalVariable(name: "key", arg: 2, scope: !1735, file: !67, line: 673, type: !97)
!1746 = !DILocalVariable(name: "skey", scope: !1735, file: !67, line: 674, type: !1747)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1920, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 30)
!1750 = !DILocation(line: 674, column: 14, scope: !1735)
!1751 = !DILocation(line: 675, column: 17, scope: !1735)
!1752 = !DILocation(line: 675, column: 15, scope: !1735)
!1753 = !DILocation(line: 676, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1735, file: !67, line: 676, column: 9)
!1755 = !DILocation(line: 677, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1754, file: !67, line: 676, column: 28)
!1757 = !DILocation(line: 678, column: 5, scope: !1756)
!1758 = !DILocation(line: 680, column: 5, scope: !1735)
!1759 = !DILocation(line: 681, column: 32, scope: !1735)
!1760 = !DILocation(line: 681, column: 5, scope: !1735)
!1761 = !DILocation(line: 682, column: 1, scope: !1735)
!1762 = distinct !DISubprogram(name: "aes256_ctr_keyexp", scope: !67, file: !67, line: 685, type: !1736, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1763 = !DILocalVariable(name: "r", arg: 1, scope: !1762, file: !67, line: 685, type: !1738)
!1764 = !DILocation(line: 0, scope: !1762)
!1765 = !DILocalVariable(name: "key", arg: 2, scope: !1762, file: !67, line: 685, type: !97)
!1766 = !DILocation(line: 686, column: 5, scope: !1762)
!1767 = !DILocation(line: 687, column: 1, scope: !1762)
!1768 = distinct !DISubprogram(name: "aes128_ecb", scope: !67, file: !67, line: 690, type: !1769, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !78, !97, !19, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1089)
!1773 = !DILocalVariable(name: "out", arg: 1, scope: !1768, file: !67, line: 690, type: !78)
!1774 = !DILocation(line: 0, scope: !1768)
!1775 = !DILocalVariable(name: "in", arg: 2, scope: !1768, file: !67, line: 690, type: !97)
!1776 = !DILocalVariable(name: "nblocks", arg: 3, scope: !1768, file: !67, line: 690, type: !19)
!1777 = !DILocalVariable(name: "ctx", arg: 4, scope: !1768, file: !67, line: 690, type: !1771)
!1778 = !DILocation(line: 691, column: 36, scope: !1768)
!1779 = !DILocation(line: 691, column: 5, scope: !1768)
!1780 = !DILocation(line: 692, column: 1, scope: !1768)
!1781 = distinct !DISubprogram(name: "aes_ecb", scope: !67, file: !67, line: 591, type: !1782, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !78, !97, !19, !1075, !7}
!1784 = !DILocalVariable(name: "out", arg: 1, scope: !1781, file: !67, line: 591, type: !78)
!1785 = !DILocation(line: 0, scope: !1781)
!1786 = !DILocalVariable(name: "in", arg: 2, scope: !1781, file: !67, line: 591, type: !97)
!1787 = !DILocalVariable(name: "nblocks", arg: 3, scope: !1781, file: !67, line: 591, type: !19)
!1788 = !DILocalVariable(name: "rkeys", arg: 4, scope: !1781, file: !67, line: 591, type: !1075)
!1789 = !DILocalVariable(name: "nrounds", arg: 5, scope: !1781, file: !67, line: 591, type: !7)
!1790 = !DILocalVariable(name: "blocks", scope: !1781, file: !67, line: 592, type: !1791)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 512, elements: !139)
!1792 = !DILocation(line: 592, column: 14, scope: !1781)
!1793 = !DILocalVariable(name: "t", scope: !1781, file: !67, line: 593, type: !1794)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1795)
!1795 = !{!1796}
!1796 = !DISubrange(count: 64)
!1797 = !DILocation(line: 593, column: 19, scope: !1781)
!1798 = !DILocation(line: 595, column: 5, scope: !1781)
!1799 = !DILocation(line: 595, column: 20, scope: !1781)
!1800 = !DILocation(line: 596, column: 9, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1781, file: !67, line: 595, column: 26)
!1802 = !DILocation(line: 597, column: 9, scope: !1801)
!1803 = !DILocation(line: 598, column: 17, scope: !1801)
!1804 = !DILocation(line: 599, column: 12, scope: !1801)
!1805 = !DILocation(line: 600, column: 13, scope: !1801)
!1806 = distinct !{!1806, !1798, !1807, !200}
!1807 = !DILocation(line: 601, column: 5, scope: !1781)
!1808 = !DILocation(line: 603, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1781, file: !67, line: 603, column: 9)
!1810 = !DILocation(line: 604, column: 42, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1809, file: !67, line: 603, column: 18)
!1812 = !DILocation(line: 604, column: 9, scope: !1811)
!1813 = !DILocation(line: 605, column: 9, scope: !1811)
!1814 = !DILocation(line: 606, column: 32, scope: !1811)
!1815 = !DILocation(line: 606, column: 9, scope: !1811)
!1816 = !DILocation(line: 607, column: 5, scope: !1811)
!1817 = !DILocation(line: 608, column: 1, scope: !1781)
!1818 = distinct !DISubprogram(name: "aes_ecb4x", scope: !67, file: !67, line: 549, type: !1819, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !78, !1320, !1075, !7}
!1821 = !DILocalVariable(name: "out", arg: 1, scope: !1818, file: !67, line: 549, type: !78)
!1822 = !DILocation(line: 0, scope: !1818)
!1823 = !DILocalVariable(name: "ivw", arg: 2, scope: !1818, file: !67, line: 549, type: !1320)
!1824 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !1818, file: !67, line: 549, type: !1075)
!1825 = !DILocalVariable(name: "nrounds", arg: 4, scope: !1818, file: !67, line: 549, type: !7)
!1826 = !DILocalVariable(name: "w", scope: !1818, file: !67, line: 550, type: !1791)
!1827 = !DILocation(line: 550, column: 14, scope: !1818)
!1828 = !DILocalVariable(name: "q", scope: !1818, file: !67, line: 551, type: !1180)
!1829 = !DILocation(line: 551, column: 14, scope: !1818)
!1830 = !DILocation(line: 554, column: 5, scope: !1818)
!1831 = !DILocalVariable(name: "i", scope: !1818, file: !67, line: 552, type: !7)
!1832 = !DILocation(line: 555, column: 10, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1818, file: !67, line: 555, column: 5)
!1834 = !DILocation(line: 555, scope: !1833)
!1835 = !DILocation(line: 555, column: 19, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1833, file: !67, line: 555, column: 5)
!1837 = !DILocation(line: 555, column: 5, scope: !1833)
!1838 = !DILocation(line: 556, column: 36, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !67, line: 555, column: 29)
!1840 = !DILocation(line: 556, column: 47, scope: !1839)
!1841 = !DILocation(line: 556, column: 43, scope: !1839)
!1842 = !DILocation(line: 556, column: 55, scope: !1839)
!1843 = !DILocation(line: 556, column: 9, scope: !1839)
!1844 = !DILocation(line: 555, column: 25, scope: !1836)
!1845 = !DILocation(line: 555, column: 5, scope: !1836)
!1846 = distinct !{!1846, !1837, !1847, !200}
!1847 = !DILocation(line: 557, column: 5, scope: !1833)
!1848 = !DILocation(line: 558, column: 5, scope: !1818)
!1849 = !DILocation(line: 561, column: 5, scope: !1818)
!1850 = !DILocation(line: 562, column: 10, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1818, file: !67, line: 562, column: 5)
!1852 = !DILocation(line: 562, scope: !1851)
!1853 = !DILocation(line: 562, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !67, line: 562, column: 5)
!1855 = !DILocation(line: 562, column: 5, scope: !1851)
!1856 = !DILocation(line: 563, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !67, line: 562, column: 35)
!1858 = !DILocation(line: 564, column: 9, scope: !1857)
!1859 = !DILocation(line: 565, column: 9, scope: !1857)
!1860 = !DILocation(line: 566, column: 33, scope: !1857)
!1861 = !DILocation(line: 566, column: 9, scope: !1857)
!1862 = !DILocation(line: 562, column: 31, scope: !1854)
!1863 = !DILocation(line: 562, column: 5, scope: !1854)
!1864 = distinct !{!1864, !1855, !1865, !200}
!1865 = !DILocation(line: 567, column: 5, scope: !1851)
!1866 = !DILocation(line: 568, column: 5, scope: !1818)
!1867 = !DILocation(line: 569, column: 5, scope: !1818)
!1868 = !DILocation(line: 570, column: 29, scope: !1818)
!1869 = !DILocation(line: 570, column: 5, scope: !1818)
!1870 = !DILocation(line: 572, column: 5, scope: !1818)
!1871 = !DILocation(line: 573, column: 10, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1818, file: !67, line: 573, column: 5)
!1873 = !DILocation(line: 573, scope: !1872)
!1874 = !DILocation(line: 573, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !67, line: 573, column: 5)
!1876 = !DILocation(line: 573, column: 5, scope: !1872)
!1877 = !DILocation(line: 574, column: 38, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !67, line: 573, column: 30)
!1879 = !DILocation(line: 574, column: 50, scope: !1878)
!1880 = !DILocation(line: 574, column: 60, scope: !1878)
!1881 = !DILocation(line: 574, column: 56, scope: !1878)
!1882 = !DILocation(line: 574, column: 9, scope: !1878)
!1883 = !DILocation(line: 573, column: 26, scope: !1875)
!1884 = !DILocation(line: 573, column: 5, scope: !1875)
!1885 = distinct !{!1885, !1876, !1886, !200}
!1886 = !DILocation(line: 575, column: 5, scope: !1872)
!1887 = !DILocation(line: 576, column: 5, scope: !1818)
!1888 = !DILocation(line: 577, column: 1, scope: !1818)
!1889 = distinct !DISubprogram(name: "add_round_key", scope: !67, file: !67, line: 479, type: !1890, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !480, !1075}
!1892 = !DILocalVariable(name: "q", arg: 1, scope: !1889, file: !67, line: 479, type: !480)
!1893 = !DILocation(line: 0, scope: !1889)
!1894 = !DILocalVariable(name: "sk", arg: 2, scope: !1889, file: !67, line: 479, type: !1075)
!1895 = !DILocation(line: 480, column: 13, scope: !1889)
!1896 = !DILocation(line: 480, column: 10, scope: !1889)
!1897 = !DILocation(line: 481, column: 13, scope: !1889)
!1898 = !DILocation(line: 481, column: 5, scope: !1889)
!1899 = !DILocation(line: 481, column: 10, scope: !1889)
!1900 = !DILocation(line: 482, column: 13, scope: !1889)
!1901 = !DILocation(line: 482, column: 5, scope: !1889)
!1902 = !DILocation(line: 482, column: 10, scope: !1889)
!1903 = !DILocation(line: 483, column: 13, scope: !1889)
!1904 = !DILocation(line: 483, column: 5, scope: !1889)
!1905 = !DILocation(line: 483, column: 10, scope: !1889)
!1906 = !DILocation(line: 484, column: 13, scope: !1889)
!1907 = !DILocation(line: 484, column: 5, scope: !1889)
!1908 = !DILocation(line: 484, column: 10, scope: !1889)
!1909 = !DILocation(line: 485, column: 13, scope: !1889)
!1910 = !DILocation(line: 485, column: 5, scope: !1889)
!1911 = !DILocation(line: 485, column: 10, scope: !1889)
!1912 = !DILocation(line: 486, column: 13, scope: !1889)
!1913 = !DILocation(line: 486, column: 5, scope: !1889)
!1914 = !DILocation(line: 486, column: 10, scope: !1889)
!1915 = !DILocation(line: 487, column: 13, scope: !1889)
!1916 = !DILocation(line: 487, column: 5, scope: !1889)
!1917 = !DILocation(line: 487, column: 10, scope: !1889)
!1918 = !DILocation(line: 488, column: 1, scope: !1889)
!1919 = distinct !DISubprogram(name: "shift_rows", scope: !67, file: !67, line: 490, type: !873, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1920 = !DILocalVariable(name: "q", arg: 1, scope: !1919, file: !67, line: 490, type: !480)
!1921 = !DILocation(line: 0, scope: !1919)
!1922 = !DILocalVariable(name: "i", scope: !1919, file: !67, line: 491, type: !35)
!1923 = !DILocation(line: 493, column: 10, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1919, file: !67, line: 493, column: 5)
!1925 = !DILocation(line: 493, scope: !1924)
!1926 = !DILocation(line: 493, column: 19, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1924, file: !67, line: 493, column: 5)
!1928 = !DILocation(line: 493, column: 5, scope: !1924)
!1929 = !DILocation(line: 496, column: 13, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !67, line: 493, column: 30)
!1931 = !DILocalVariable(name: "x", scope: !1930, file: !67, line: 494, type: !23)
!1932 = !DILocation(line: 0, scope: !1930)
!1933 = !DILocation(line: 497, column: 19, scope: !1930)
!1934 = !DILocation(line: 498, column: 54, scope: !1930)
!1935 = !DILocation(line: 498, column: 16, scope: !1930)
!1936 = !DILocation(line: 499, column: 54, scope: !1930)
!1937 = !DILocation(line: 499, column: 16, scope: !1930)
!1938 = !DILocation(line: 500, column: 54, scope: !1930)
!1939 = !DILocation(line: 500, column: 16, scope: !1930)
!1940 = !DILocation(line: 501, column: 54, scope: !1930)
!1941 = !DILocation(line: 501, column: 16, scope: !1930)
!1942 = !DILocation(line: 502, column: 54, scope: !1930)
!1943 = !DILocation(line: 502, column: 16, scope: !1930)
!1944 = !DILocation(line: 503, column: 54, scope: !1930)
!1945 = !DILocation(line: 503, column: 16, scope: !1930)
!1946 = !DILocation(line: 497, column: 9, scope: !1930)
!1947 = !DILocation(line: 497, column: 14, scope: !1930)
!1948 = !DILocation(line: 493, column: 26, scope: !1927)
!1949 = !DILocation(line: 493, column: 5, scope: !1927)
!1950 = distinct !{!1950, !1928, !1951, !200}
!1951 = !DILocation(line: 504, column: 5, scope: !1924)
!1952 = !DILocation(line: 505, column: 1, scope: !1919)
!1953 = distinct !DISubprogram(name: "mix_columns", scope: !67, file: !67, line: 511, type: !873, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!1954 = !DILocalVariable(name: "q", arg: 1, scope: !1953, file: !67, line: 511, type: !480)
!1955 = !DILocation(line: 0, scope: !1953)
!1956 = !DILocation(line: 515, column: 10, scope: !1953)
!1957 = !DILocalVariable(name: "q0", scope: !1953, file: !67, line: 512, type: !23)
!1958 = !DILocation(line: 516, column: 10, scope: !1953)
!1959 = !DILocalVariable(name: "q1", scope: !1953, file: !67, line: 512, type: !23)
!1960 = !DILocation(line: 517, column: 10, scope: !1953)
!1961 = !DILocalVariable(name: "q2", scope: !1953, file: !67, line: 512, type: !23)
!1962 = !DILocation(line: 518, column: 10, scope: !1953)
!1963 = !DILocalVariable(name: "q3", scope: !1953, file: !67, line: 512, type: !23)
!1964 = !DILocation(line: 519, column: 10, scope: !1953)
!1965 = !DILocalVariable(name: "q4", scope: !1953, file: !67, line: 512, type: !23)
!1966 = !DILocation(line: 520, column: 10, scope: !1953)
!1967 = !DILocalVariable(name: "q5", scope: !1953, file: !67, line: 512, type: !23)
!1968 = !DILocation(line: 521, column: 10, scope: !1953)
!1969 = !DILocalVariable(name: "q6", scope: !1953, file: !67, line: 512, type: !23)
!1970 = !DILocation(line: 522, column: 10, scope: !1953)
!1971 = !DILocalVariable(name: "q7", scope: !1953, file: !67, line: 512, type: !23)
!1972 = !DILocation(line: 523, column: 21, scope: !1953)
!1973 = !DILocalVariable(name: "r0", scope: !1953, file: !67, line: 513, type: !23)
!1974 = !DILocation(line: 524, column: 21, scope: !1953)
!1975 = !DILocalVariable(name: "r1", scope: !1953, file: !67, line: 513, type: !23)
!1976 = !DILocation(line: 525, column: 21, scope: !1953)
!1977 = !DILocalVariable(name: "r2", scope: !1953, file: !67, line: 513, type: !23)
!1978 = !DILocation(line: 526, column: 21, scope: !1953)
!1979 = !DILocalVariable(name: "r3", scope: !1953, file: !67, line: 513, type: !23)
!1980 = !DILocation(line: 527, column: 21, scope: !1953)
!1981 = !DILocalVariable(name: "r4", scope: !1953, file: !67, line: 513, type: !23)
!1982 = !DILocation(line: 528, column: 21, scope: !1953)
!1983 = !DILocalVariable(name: "r5", scope: !1953, file: !67, line: 513, type: !23)
!1984 = !DILocation(line: 529, column: 21, scope: !1953)
!1985 = !DILocalVariable(name: "r6", scope: !1953, file: !67, line: 513, type: !23)
!1986 = !DILocation(line: 530, column: 21, scope: !1953)
!1987 = !DILocalVariable(name: "r7", scope: !1953, file: !67, line: 513, type: !23)
!1988 = !DILocation(line: 532, column: 37, scope: !1953)
!1989 = !DILocation(line: 532, column: 27, scope: !1953)
!1990 = !DILocation(line: 532, column: 25, scope: !1953)
!1991 = !DILocation(line: 532, column: 10, scope: !1953)
!1992 = !DILocation(line: 533, column: 47, scope: !1953)
!1993 = !DILocation(line: 533, column: 37, scope: !1953)
!1994 = !DILocation(line: 533, column: 35, scope: !1953)
!1995 = !DILocation(line: 533, column: 5, scope: !1953)
!1996 = !DILocation(line: 533, column: 10, scope: !1953)
!1997 = !DILocation(line: 534, column: 37, scope: !1953)
!1998 = !DILocation(line: 534, column: 27, scope: !1953)
!1999 = !DILocation(line: 534, column: 25, scope: !1953)
!2000 = !DILocation(line: 534, column: 5, scope: !1953)
!2001 = !DILocation(line: 534, column: 10, scope: !1953)
!2002 = !DILocation(line: 535, column: 47, scope: !1953)
!2003 = !DILocation(line: 535, column: 37, scope: !1953)
!2004 = !DILocation(line: 535, column: 35, scope: !1953)
!2005 = !DILocation(line: 535, column: 5, scope: !1953)
!2006 = !DILocation(line: 535, column: 10, scope: !1953)
!2007 = !DILocation(line: 536, column: 47, scope: !1953)
!2008 = !DILocation(line: 536, column: 37, scope: !1953)
!2009 = !DILocation(line: 536, column: 35, scope: !1953)
!2010 = !DILocation(line: 536, column: 5, scope: !1953)
!2011 = !DILocation(line: 536, column: 10, scope: !1953)
!2012 = !DILocation(line: 537, column: 37, scope: !1953)
!2013 = !DILocation(line: 537, column: 27, scope: !1953)
!2014 = !DILocation(line: 537, column: 25, scope: !1953)
!2015 = !DILocation(line: 537, column: 5, scope: !1953)
!2016 = !DILocation(line: 537, column: 10, scope: !1953)
!2017 = !DILocation(line: 538, column: 37, scope: !1953)
!2018 = !DILocation(line: 538, column: 27, scope: !1953)
!2019 = !DILocation(line: 538, column: 25, scope: !1953)
!2020 = !DILocation(line: 538, column: 5, scope: !1953)
!2021 = !DILocation(line: 538, column: 10, scope: !1953)
!2022 = !DILocation(line: 539, column: 37, scope: !1953)
!2023 = !DILocation(line: 539, column: 27, scope: !1953)
!2024 = !DILocation(line: 539, column: 25, scope: !1953)
!2025 = !DILocation(line: 539, column: 5, scope: !1953)
!2026 = !DILocation(line: 539, column: 10, scope: !1953)
!2027 = !DILocation(line: 540, column: 1, scope: !1953)
!2028 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !67, file: !67, line: 371, type: !2029, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !1285, !23, !23}
!2031 = !DILocalVariable(name: "w", arg: 1, scope: !2028, file: !67, line: 371, type: !1285)
!2032 = !DILocation(line: 0, scope: !2028)
!2033 = !DILocalVariable(name: "q0", arg: 2, scope: !2028, file: !67, line: 371, type: !23)
!2034 = !DILocalVariable(name: "q1", arg: 3, scope: !2028, file: !67, line: 371, type: !23)
!2035 = !DILocation(line: 374, column: 13, scope: !2028)
!2036 = !DILocalVariable(name: "x0", scope: !2028, file: !67, line: 372, type: !23)
!2037 = !DILocation(line: 375, column: 13, scope: !2028)
!2038 = !DILocalVariable(name: "x1", scope: !2028, file: !67, line: 372, type: !23)
!2039 = !DILocation(line: 376, column: 14, scope: !2028)
!2040 = !DILocation(line: 376, column: 20, scope: !2028)
!2041 = !DILocalVariable(name: "x2", scope: !2028, file: !67, line: 372, type: !23)
!2042 = !DILocation(line: 377, column: 14, scope: !2028)
!2043 = !DILocation(line: 377, column: 20, scope: !2028)
!2044 = !DILocalVariable(name: "x3", scope: !2028, file: !67, line: 372, type: !23)
!2045 = !DILocation(line: 378, column: 15, scope: !2028)
!2046 = !DILocation(line: 378, column: 8, scope: !2028)
!2047 = !DILocation(line: 379, column: 15, scope: !2028)
!2048 = !DILocation(line: 379, column: 8, scope: !2028)
!2049 = !DILocation(line: 380, column: 8, scope: !2028)
!2050 = !DILocation(line: 381, column: 8, scope: !2028)
!2051 = !DILocation(line: 382, column: 8, scope: !2028)
!2052 = !DILocation(line: 383, column: 8, scope: !2028)
!2053 = !DILocation(line: 386, column: 41, scope: !2028)
!2054 = !DILocation(line: 386, column: 25, scope: !2028)
!2055 = !DILocation(line: 386, column: 10, scope: !2028)
!2056 = !DILocation(line: 387, column: 41, scope: !2028)
!2057 = !DILocation(line: 387, column: 25, scope: !2028)
!2058 = !DILocation(line: 387, column: 5, scope: !2028)
!2059 = !DILocation(line: 387, column: 10, scope: !2028)
!2060 = !DILocation(line: 388, column: 41, scope: !2028)
!2061 = !DILocation(line: 388, column: 25, scope: !2028)
!2062 = !DILocation(line: 388, column: 5, scope: !2028)
!2063 = !DILocation(line: 388, column: 10, scope: !2028)
!2064 = !DILocation(line: 389, column: 41, scope: !2028)
!2065 = !DILocation(line: 389, column: 25, scope: !2028)
!2066 = !DILocation(line: 389, column: 5, scope: !2028)
!2067 = !DILocation(line: 389, column: 10, scope: !2028)
!2068 = !DILocation(line: 390, column: 1, scope: !2028)
!2069 = distinct !DISubprogram(name: "br_range_enc32le", scope: !67, file: !67, line: 131, type: !2070, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !78, !1320, !19}
!2072 = !DILocalVariable(name: "dst", arg: 1, scope: !2069, file: !67, line: 131, type: !78)
!2073 = !DILocation(line: 0, scope: !2069)
!2074 = !DILocalVariable(name: "v", arg: 2, scope: !2069, file: !67, line: 131, type: !1320)
!2075 = !DILocalVariable(name: "num", arg: 3, scope: !2069, file: !67, line: 131, type: !19)
!2076 = !DILocation(line: 132, column: 5, scope: !2069)
!2077 = !DILocation(line: 132, column: 18, scope: !2069)
!2078 = !DILocation(line: 132, column: 15, scope: !2069)
!2079 = !DILocation(line: 133, column: 28, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2069, file: !67, line: 132, column: 23)
!2081 = !DILocation(line: 133, column: 25, scope: !2080)
!2082 = !DILocation(line: 133, column: 9, scope: !2080)
!2083 = !DILocation(line: 134, column: 13, scope: !2080)
!2084 = distinct !{!2084, !2076, !2085, !200}
!2085 = !DILocation(line: 135, column: 5, scope: !2069)
!2086 = !DILocation(line: 136, column: 1, scope: !2069)
!2087 = distinct !DISubprogram(name: "br_enc32le", scope: !67, file: !67, line: 123, type: !2088, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !78, !64}
!2090 = !DILocalVariable(name: "dst", arg: 1, scope: !2087, file: !67, line: 123, type: !78)
!2091 = !DILocation(line: 0, scope: !2087)
!2092 = !DILocalVariable(name: "x", arg: 2, scope: !2087, file: !67, line: 123, type: !64)
!2093 = !DILocation(line: 124, column: 14, scope: !2087)
!2094 = !DILocation(line: 124, column: 12, scope: !2087)
!2095 = !DILocation(line: 125, column: 32, scope: !2087)
!2096 = !DILocation(line: 125, column: 14, scope: !2087)
!2097 = !DILocation(line: 125, column: 5, scope: !2087)
!2098 = !DILocation(line: 125, column: 12, scope: !2087)
!2099 = !DILocation(line: 126, column: 32, scope: !2087)
!2100 = !DILocation(line: 126, column: 14, scope: !2087)
!2101 = !DILocation(line: 126, column: 5, scope: !2087)
!2102 = !DILocation(line: 126, column: 12, scope: !2087)
!2103 = !DILocation(line: 127, column: 32, scope: !2087)
!2104 = !DILocation(line: 127, column: 14, scope: !2087)
!2105 = !DILocation(line: 127, column: 5, scope: !2087)
!2106 = !DILocation(line: 127, column: 12, scope: !2087)
!2107 = !DILocation(line: 128, column: 1, scope: !2087)
!2108 = distinct !DISubprogram(name: "rotr32", scope: !67, file: !67, line: 507, type: !2109, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!23, !23}
!2111 = !DILocalVariable(name: "x", arg: 1, scope: !2108, file: !67, line: 507, type: !23)
!2112 = !DILocation(line: 0, scope: !2108)
!2113 = !DILocation(line: 508, column: 22, scope: !2108)
!2114 = !DILocation(line: 508, column: 5, scope: !2108)
!2115 = distinct !DISubprogram(name: "aes128_ctr", scope: !67, file: !67, line: 694, type: !2116, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !78, !19, !97, !1771}
!2118 = !DILocalVariable(name: "out", arg: 1, scope: !2115, file: !67, line: 694, type: !78)
!2119 = !DILocation(line: 0, scope: !2115)
!2120 = !DILocalVariable(name: "outlen", arg: 2, scope: !2115, file: !67, line: 694, type: !19)
!2121 = !DILocalVariable(name: "iv", arg: 3, scope: !2115, file: !67, line: 694, type: !97)
!2122 = !DILocalVariable(name: "ctx", arg: 4, scope: !2115, file: !67, line: 694, type: !1771)
!2123 = !DILocation(line: 695, column: 35, scope: !2115)
!2124 = !DILocation(line: 695, column: 5, scope: !2115)
!2125 = !DILocation(line: 696, column: 1, scope: !2115)
!2126 = distinct !DISubprogram(name: "aes_ctr", scope: !67, file: !67, line: 611, type: !2127, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !78, !19, !97, !1075, !7}
!2129 = !DILocalVariable(name: "out", arg: 1, scope: !2126, file: !67, line: 611, type: !78)
!2130 = !DILocation(line: 0, scope: !2126)
!2131 = !DILocalVariable(name: "outlen", arg: 2, scope: !2126, file: !67, line: 611, type: !19)
!2132 = !DILocalVariable(name: "iv", arg: 3, scope: !2126, file: !67, line: 611, type: !97)
!2133 = !DILocalVariable(name: "rkeys", arg: 4, scope: !2126, file: !67, line: 611, type: !1075)
!2134 = !DILocalVariable(name: "nrounds", arg: 5, scope: !2126, file: !67, line: 611, type: !7)
!2135 = !DILocalVariable(name: "ivw", scope: !2126, file: !67, line: 612, type: !1791)
!2136 = !DILocation(line: 612, column: 14, scope: !2126)
!2137 = !DILocalVariable(name: "cc", scope: !2126, file: !67, line: 614, type: !64)
!2138 = !DILocation(line: 616, column: 5, scope: !2126)
!2139 = !DILocation(line: 617, column: 16, scope: !2126)
!2140 = !DILocation(line: 617, column: 5, scope: !2126)
!2141 = !DILocation(line: 618, column: 16, scope: !2126)
!2142 = !DILocation(line: 618, column: 5, scope: !2126)
!2143 = !DILocation(line: 619, column: 16, scope: !2126)
!2144 = !DILocation(line: 619, column: 5, scope: !2126)
!2145 = !DILocation(line: 620, column: 15, scope: !2126)
!2146 = !DILocation(line: 620, column: 5, scope: !2126)
!2147 = !DILocation(line: 620, column: 13, scope: !2126)
!2148 = !DILocation(line: 621, column: 15, scope: !2126)
!2149 = !DILocation(line: 621, column: 5, scope: !2126)
!2150 = !DILocation(line: 621, column: 13, scope: !2126)
!2151 = !DILocation(line: 622, column: 15, scope: !2126)
!2152 = !DILocation(line: 622, column: 5, scope: !2126)
!2153 = !DILocation(line: 622, column: 13, scope: !2126)
!2154 = !DILocation(line: 623, column: 15, scope: !2126)
!2155 = !DILocation(line: 623, column: 5, scope: !2126)
!2156 = !DILocation(line: 623, column: 13, scope: !2126)
!2157 = !DILocation(line: 625, column: 5, scope: !2126)
!2158 = !DILocation(line: 625, column: 19, scope: !2126)
!2159 = !DILocation(line: 626, column: 9, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2126, file: !67, line: 625, column: 25)
!2161 = !DILocation(line: 627, column: 13, scope: !2160)
!2162 = !DILocation(line: 628, column: 16, scope: !2160)
!2163 = distinct !{!2163, !2157, !2164, !200}
!2164 = !DILocation(line: 629, column: 5, scope: !2126)
!2165 = !DILocation(line: 630, column: 16, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2126, file: !67, line: 630, column: 9)
!2167 = !DILocalVariable(name: "tmp", scope: !2168, file: !67, line: 631, type: !1794)
!2168 = distinct !DILexicalBlock(scope: !2166, file: !67, line: 630, column: 21)
!2169 = !DILocation(line: 631, column: 23, scope: !2168)
!2170 = !DILocation(line: 632, column: 9, scope: !2168)
!2171 = !DILocalVariable(name: "i", scope: !2126, file: !67, line: 613, type: !19)
!2172 = !DILocation(line: 633, column: 14, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2168, file: !67, line: 633, column: 9)
!2174 = !DILocation(line: 633, scope: !2173)
!2175 = !DILocation(line: 633, column: 23, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !67, line: 633, column: 9)
!2177 = !DILocation(line: 633, column: 9, scope: !2173)
!2178 = !DILocation(line: 634, column: 22, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !67, line: 633, column: 38)
!2180 = !DILocation(line: 634, column: 13, scope: !2179)
!2181 = !DILocation(line: 634, column: 20, scope: !2179)
!2182 = !DILocation(line: 633, column: 34, scope: !2176)
!2183 = !DILocation(line: 633, column: 9, scope: !2176)
!2184 = distinct !{!2184, !2177, !2185, !200}
!2185 = !DILocation(line: 635, column: 9, scope: !2173)
!2186 = !DILocation(line: 637, column: 1, scope: !2126)
!2187 = distinct !DISubprogram(name: "br_swap32", scope: !67, file: !67, line: 116, type: !1302, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2188 = !DILocalVariable(name: "x", arg: 1, scope: !2187, file: !67, line: 116, type: !64)
!2189 = !DILocation(line: 0, scope: !2187)
!2190 = !DILocation(line: 119, column: 22, scope: !2187)
!2191 = !DILocation(line: 119, column: 5, scope: !2187)
!2192 = distinct !DISubprogram(name: "aes_ctr4x", scope: !67, file: !67, line: 580, type: !2193, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !78, !1285, !1075, !7}
!2195 = !DILocalVariable(name: "out", arg: 1, scope: !2192, file: !67, line: 580, type: !78)
!2196 = !DILocation(line: 0, scope: !2192)
!2197 = !DILocalVariable(name: "ivw", arg: 2, scope: !2192, file: !67, line: 580, type: !1285)
!2198 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !2192, file: !67, line: 580, type: !1075)
!2199 = !DILocalVariable(name: "nrounds", arg: 4, scope: !2192, file: !67, line: 580, type: !7)
!2200 = !DILocation(line: 581, column: 5, scope: !2192)
!2201 = !DILocation(line: 584, column: 17, scope: !2192)
!2202 = !DILocation(line: 584, column: 5, scope: !2192)
!2203 = !DILocation(line: 585, column: 17, scope: !2192)
!2204 = !DILocation(line: 585, column: 5, scope: !2192)
!2205 = !DILocation(line: 586, column: 17, scope: !2192)
!2206 = !DILocation(line: 586, column: 5, scope: !2192)
!2207 = !DILocation(line: 587, column: 17, scope: !2192)
!2208 = !DILocation(line: 587, column: 5, scope: !2192)
!2209 = !DILocation(line: 588, column: 1, scope: !2192)
!2210 = distinct !DISubprogram(name: "inc4_be", scope: !67, file: !67, line: 543, type: !2211, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !1285}
!2213 = !DILocalVariable(name: "x", arg: 1, scope: !2210, file: !67, line: 543, type: !1285)
!2214 = !DILocation(line: 0, scope: !2210)
!2215 = !DILocation(line: 544, column: 28, scope: !2210)
!2216 = !DILocation(line: 544, column: 18, scope: !2210)
!2217 = !DILocation(line: 544, column: 32, scope: !2210)
!2218 = !DILocalVariable(name: "t", scope: !2210, file: !67, line: 544, type: !64)
!2219 = !DILocation(line: 545, column: 10, scope: !2210)
!2220 = !DILocation(line: 545, column: 8, scope: !2210)
!2221 = !DILocation(line: 546, column: 1, scope: !2210)
!2222 = distinct !DISubprogram(name: "aes192_ecb", scope: !67, file: !67, line: 698, type: !2223, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !78, !97, !19, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!2227 = !DILocalVariable(name: "out", arg: 1, scope: !2222, file: !67, line: 698, type: !78)
!2228 = !DILocation(line: 0, scope: !2222)
!2229 = !DILocalVariable(name: "in", arg: 2, scope: !2222, file: !67, line: 698, type: !97)
!2230 = !DILocalVariable(name: "nblocks", arg: 3, scope: !2222, file: !67, line: 698, type: !19)
!2231 = !DILocalVariable(name: "ctx", arg: 4, scope: !2222, file: !67, line: 698, type: !2225)
!2232 = !DILocation(line: 699, column: 36, scope: !2222)
!2233 = !DILocation(line: 699, column: 5, scope: !2222)
!2234 = !DILocation(line: 700, column: 1, scope: !2222)
!2235 = distinct !DISubprogram(name: "aes192_ctr", scope: !67, file: !67, line: 702, type: !2236, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !78, !19, !97, !2225}
!2238 = !DILocalVariable(name: "out", arg: 1, scope: !2235, file: !67, line: 702, type: !78)
!2239 = !DILocation(line: 0, scope: !2235)
!2240 = !DILocalVariable(name: "outlen", arg: 2, scope: !2235, file: !67, line: 702, type: !19)
!2241 = !DILocalVariable(name: "iv", arg: 3, scope: !2235, file: !67, line: 702, type: !97)
!2242 = !DILocalVariable(name: "ctx", arg: 4, scope: !2235, file: !67, line: 702, type: !2225)
!2243 = !DILocation(line: 703, column: 35, scope: !2235)
!2244 = !DILocation(line: 703, column: 5, scope: !2235)
!2245 = !DILocation(line: 704, column: 1, scope: !2235)
!2246 = distinct !DISubprogram(name: "aes256_ecb", scope: !67, file: !67, line: 706, type: !2247, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !78, !97, !19, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!2251 = !DILocalVariable(name: "out", arg: 1, scope: !2246, file: !67, line: 706, type: !78)
!2252 = !DILocation(line: 0, scope: !2246)
!2253 = !DILocalVariable(name: "in", arg: 2, scope: !2246, file: !67, line: 706, type: !97)
!2254 = !DILocalVariable(name: "nblocks", arg: 3, scope: !2246, file: !67, line: 706, type: !19)
!2255 = !DILocalVariable(name: "ctx", arg: 4, scope: !2246, file: !67, line: 706, type: !2249)
!2256 = !DILocation(line: 707, column: 36, scope: !2246)
!2257 = !DILocation(line: 707, column: 5, scope: !2246)
!2258 = !DILocation(line: 708, column: 1, scope: !2246)
!2259 = distinct !DISubprogram(name: "aes256_ctr", scope: !67, file: !67, line: 710, type: !2260, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !78, !19, !97, !2249}
!2262 = !DILocalVariable(name: "out", arg: 1, scope: !2259, file: !67, line: 710, type: !78)
!2263 = !DILocation(line: 0, scope: !2259)
!2264 = !DILocalVariable(name: "outlen", arg: 2, scope: !2259, file: !67, line: 710, type: !19)
!2265 = !DILocalVariable(name: "iv", arg: 3, scope: !2259, file: !67, line: 710, type: !97)
!2266 = !DILocalVariable(name: "ctx", arg: 4, scope: !2259, file: !67, line: 710, type: !2249)
!2267 = !DILocation(line: 711, column: 35, scope: !2259)
!2268 = !DILocation(line: 711, column: 5, scope: !2259)
!2269 = !DILocation(line: 712, column: 1, scope: !2259)
!2270 = distinct !DISubprogram(name: "aes128_ctx_release", scope: !67, file: !67, line: 714, type: !2271, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !1088}
!2273 = !DILocalVariable(name: "r", arg: 1, scope: !2270, file: !67, line: 714, type: !1088)
!2274 = !DILocation(line: 0, scope: !2270)
!2275 = !DILocation(line: 715, column: 13, scope: !2270)
!2276 = !DILocation(line: 715, column: 5, scope: !2270)
!2277 = !DILocation(line: 716, column: 1, scope: !2270)
!2278 = distinct !DISubprogram(name: "aes192_ctx_release", scope: !67, file: !67, line: 718, type: !2279, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !1707}
!2281 = !DILocalVariable(name: "r", arg: 1, scope: !2278, file: !67, line: 718, type: !1707)
!2282 = !DILocation(line: 0, scope: !2278)
!2283 = !DILocation(line: 719, column: 13, scope: !2278)
!2284 = !DILocation(line: 719, column: 5, scope: !2278)
!2285 = !DILocation(line: 720, column: 1, scope: !2278)
!2286 = distinct !DISubprogram(name: "aes256_ctx_release", scope: !67, file: !67, line: 722, type: !2287, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !98)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !1738}
!2289 = !DILocalVariable(name: "r", arg: 1, scope: !2286, file: !67, line: 722, type: !1738)
!2290 = !DILocation(line: 0, scope: !2286)
!2291 = !DILocation(line: 723, column: 13, scope: !2286)
!2292 = !DILocation(line: 723, column: 5, scope: !2286)
!2293 = !DILocation(line: 724, column: 1, scope: !2286)
!2294 = distinct !DISubprogram(name: "QRUOV_KeyGen", scope: !2295, file: !2295, line: 544, type: !2296, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2295 = !DIFile(filename: "../qruov_port/ref/qruov.c", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !21, !21, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!2299 = !DILocalVariable(name: "seed_sk", arg: 1, scope: !2294, file: !2295, line: 545, type: !21)
!2300 = !DILocation(line: 0, scope: !2294)
!2301 = !DILocalVariable(name: "seed_pk", arg: 2, scope: !2294, file: !2295, line: 546, type: !21)
!2302 = !DILocalVariable(name: "P3", arg: 3, scope: !2294, file: !2295, line: 547, type: !2298)
!2303 = !DILocalVariable(name: "Sd", scope: !2294, file: !2295, line: 549, type: !2304)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_VxM", file: !100, line: 30, baseType: !2305)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 22464, align: 8, elements: !2306)
!2306 = !{!2307}
!2307 = !DISubrange(count: 52)
!2308 = !DILocation(line: 549, column: 14, scope: !2294)
!2309 = !DILocalVariable(name: "SdT", scope: !2294, file: !2295, line: 550, type: !2310)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_MxV", file: !100, line: 29, baseType: !2311)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2312, size: 22464, align: 8, elements: !108)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "VECTOR_V", file: !100, line: 25, baseType: !2313)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2314, size: 1248, align: 8, elements: !88)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_V", file: !100, line: 22, baseType: !2315, align: 8)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 416, elements: !2306)
!2316 = !DILocation(line: 550, column: 14, scope: !2294)
!2317 = !DILocalVariable(name: "Pi1", scope: !2294, file: !2295, line: 551, type: !2318)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_VxV", file: !100, line: 28, baseType: !2319)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2312, size: 64896, align: 8, elements: !2306)
!2320 = !DILocation(line: 551, column: 14, scope: !2294)
!2321 = !DILocalVariable(name: "Pi2", scope: !2294, file: !2295, line: 552, type: !2304)
!2322 = !DILocation(line: 552, column: 14, scope: !2294)
!2323 = !DILocalVariable(name: "Pi2T", scope: !2294, file: !2295, line: 553, type: !2310)
!2324 = !DILocation(line: 553, column: 14, scope: !2294)
!2325 = !DILocalVariable(name: "TMP", scope: !2294, file: !2295, line: 554, type: !2310)
!2326 = !DILocation(line: 554, column: 14, scope: !2294)
!2327 = !DILocation(line: 556, column: 3, scope: !2294)
!2328 = !DILocation(line: 558, column: 25, scope: !2294)
!2329 = !DILocalVariable(name: "ctx", scope: !2294, file: !2295, line: 558, type: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !31, line: 22, baseType: !2332)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !31, line: 22, flags: DIFlagFwdDecl)
!2333 = !DILocalVariable(name: "i", scope: !2334, file: !2295, line: 559, type: !35)
!2334 = distinct !DILexicalBlock(scope: !2294, file: !2295, line: 559, column: 3)
!2335 = !DILocation(line: 0, scope: !2334)
!2336 = !DILocation(line: 559, column: 7, scope: !2334)
!2337 = !DILocation(line: 559, scope: !2334)
!2338 = !DILocation(line: 559, column: 20, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2334, file: !2295, line: 559, column: 3)
!2340 = !DILocation(line: 559, column: 3, scope: !2334)
!2341 = !DILocation(line: 560, column: 20, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !2295, line: 559, column: 35)
!2343 = !DILocation(line: 560, column: 5, scope: !2342)
!2344 = !DILocation(line: 561, column: 5, scope: !2342)
!2345 = !DILocation(line: 563, column: 5, scope: !2342)
!2346 = !DILocation(line: 564, column: 5, scope: !2342)
!2347 = !DILocation(line: 565, column: 31, scope: !2342)
!2348 = !DILocation(line: 565, column: 5, scope: !2342)
!2349 = !DILocation(line: 566, column: 36, scope: !2342)
!2350 = !DILocation(line: 566, column: 5, scope: !2342)
!2351 = !DILocation(line: 559, column: 32, scope: !2339)
!2352 = !DILocation(line: 559, column: 3, scope: !2339)
!2353 = distinct !{!2353, !2340, !2354, !200}
!2354 = !DILocation(line: 567, column: 3, scope: !2334)
!2355 = !DILocation(line: 568, column: 3, scope: !2294)
!2356 = !DILocation(line: 570, column: 3, scope: !2294)
!2357 = !DILocation(line: 571, column: 3, scope: !2294)
!2358 = !DILocation(line: 572, column: 3, scope: !2294)
!2359 = !DILocation(line: 574, column: 3, scope: !2294)
!2360 = distinct !DISubprogram(name: "Expand_sk", scope: !2295, file: !2295, line: 309, type: !2361, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !21, !2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 32)
!2365 = !DILocalVariable(name: "seed_sk", arg: 1, scope: !2360, file: !2295, line: 310, type: !21)
!2366 = !DILocation(line: 0, scope: !2360)
!2367 = !DILocalVariable(name: "Sd", arg: 2, scope: !2360, file: !2295, line: 311, type: !2363)
!2368 = !DILocalVariable(name: "SdT", arg: 3, scope: !2360, file: !2295, line: 312, type: !2364)
!2369 = !DILocalVariable(name: "n2", scope: !2360, file: !2295, line: 314, type: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2371 = !DILocalVariable(name: "r2", scope: !2360, file: !2295, line: 315, type: !2372)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 23328, elements: !2373)
!2373 = !{!2374}
!2374 = !DISubrange(count: 2916)
!2375 = !DILocation(line: 315, column: 13, scope: !2360)
!2376 = !DILocation(line: 316, column: 25, scope: !2360)
!2377 = !DILocalVariable(name: "ctx", scope: !2360, file: !2295, line: 316, type: !2330)
!2378 = !DILocation(line: 317, column: 3, scope: !2360)
!2379 = !DILocation(line: 318, column: 3, scope: !2360)
!2380 = !DILocation(line: 319, column: 3, scope: !2360)
!2381 = !DILocation(line: 321, column: 3, scope: !2360)
!2382 = !DILocation(line: 322, column: 3, scope: !2360)
!2383 = !DILocation(line: 323, column: 1, scope: !2360)
!2384 = distinct !DISubprogram(name: "PRG_init_aes_ctr", scope: !2295, file: !2295, line: 152, type: !2385, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!2330, !21}
!2387 = !DILocalVariable(name: "seed", arg: 1, scope: !2384, file: !2295, line: 152, type: !21)
!2388 = !DILocation(line: 0, scope: !2384)
!2389 = !DILocation(line: 153, column: 26, scope: !2384)
!2390 = !DILocalVariable(name: "ctx", scope: !2384, file: !2295, line: 153, type: !2330)
!2391 = !DILocation(line: 154, column: 27, scope: !2384)
!2392 = !DILocation(line: 154, column: 3, scope: !2384)
!2393 = !DILocation(line: 155, column: 3, scope: !2384)
!2394 = distinct !DISubprogram(name: "Expand_pk", scope: !2295, file: !2295, line: 325, type: !2395, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2330, !58, !2364, !2363}
!2397 = !DILocalVariable(name: "ctx0", arg: 1, scope: !2394, file: !2295, line: 326, type: !2330)
!2398 = !DILocation(line: 0, scope: !2394)
!2399 = !DILocalVariable(name: "index", arg: 2, scope: !2394, file: !2295, line: 327, type: !58)
!2400 = !DILocalVariable(name: "Pi1", arg: 3, scope: !2394, file: !2295, line: 328, type: !2364)
!2401 = !DILocalVariable(name: "Pi2", arg: 4, scope: !2394, file: !2295, line: 329, type: !2363)
!2402 = !DILocalVariable(name: "n1", scope: !2394, file: !2295, line: 331, type: !2370)
!2403 = !DILocalVariable(name: "n2", scope: !2394, file: !2295, line: 332, type: !2370)
!2404 = !DILocalVariable(name: "r1", scope: !2394, file: !2295, line: 333, type: !2405)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 34136, elements: !2406)
!2406 = !{!2407}
!2407 = !DISubrange(count: 4267)
!2408 = !DILocation(line: 333, column: 11, scope: !2394)
!2409 = !DILocalVariable(name: "r2", scope: !2394, file: !2295, line: 334, type: !2372)
!2410 = !DILocation(line: 334, column: 11, scope: !2394)
!2411 = !DILocation(line: 336, column: 26, scope: !2394)
!2412 = !DILocalVariable(name: "ctx1", scope: !2394, file: !2295, line: 336, type: !2330)
!2413 = !DILocation(line: 337, column: 21, scope: !2394)
!2414 = !DILocation(line: 337, column: 3, scope: !2394)
!2415 = !DILocation(line: 338, column: 3, scope: !2394)
!2416 = !DILocation(line: 339, column: 3, scope: !2394)
!2417 = !DILocation(line: 341, column: 26, scope: !2394)
!2418 = !DILocalVariable(name: "ctx2", scope: !2394, file: !2295, line: 341, type: !2330)
!2419 = !DILocation(line: 342, column: 21, scope: !2394)
!2420 = !DILocation(line: 342, column: 27, scope: !2394)
!2421 = !DILocation(line: 342, column: 3, scope: !2394)
!2422 = !DILocation(line: 343, column: 3, scope: !2394)
!2423 = !DILocation(line: 344, column: 3, scope: !2394)
!2424 = !DILocation(line: 345, column: 1, scope: !2394)
!2425 = distinct !DISubprogram(name: "PRG_final_aes_ctr", scope: !2295, file: !2295, line: 162, type: !2426, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2330}
!2428 = !DILocalVariable(name: "ctx", arg: 1, scope: !2425, file: !2295, line: 162, type: !2330)
!2429 = !DILocation(line: 0, scope: !2425)
!2430 = !DILocation(line: 162, column: 54, scope: !2425)
!2431 = !DILocation(line: 162, column: 81, scope: !2425)
!2432 = distinct !DISubprogram(name: "PRG_copy_aes_ctr", scope: !2295, file: !2295, line: 163, type: !2433, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!2330, !2330}
!2435 = !DILocalVariable(name: "src", arg: 1, scope: !2432, file: !2295, line: 163, type: !2330)
!2436 = !DILocation(line: 0, scope: !2432)
!2437 = !DILocation(line: 164, column: 26, scope: !2432)
!2438 = !DILocalVariable(name: "dst", scope: !2432, file: !2295, line: 164, type: !2330)
!2439 = !DILocation(line: 165, column: 3, scope: !2432)
!2440 = !DILocation(line: 166, column: 3, scope: !2432)
!2441 = distinct !DISubprogram(name: "RejSampPRG_aes_ctr", scope: !2295, file: !2295, line: 195, type: !2442, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2330, !58, !50, !50, !82}
!2444 = !DILocalVariable(name: "ctx", arg: 1, scope: !2441, file: !2295, line: 196, type: !2330)
!2445 = !DILocation(line: 0, scope: !2441)
!2446 = !DILocalVariable(name: "index", arg: 2, scope: !2441, file: !2295, line: 197, type: !58)
!2447 = !DILocalVariable(name: "length", arg: 3, scope: !2441, file: !2295, line: 198, type: !50)
!2448 = !DILocalVariable(name: "tau", arg: 4, scope: !2441, file: !2295, line: 199, type: !50)
!2449 = !DILocalVariable(name: "dst", arg: 5, scope: !2441, file: !2295, line: 200, type: !82)
!2450 = !DILocalVariable(name: "iv", scope: !2441, file: !2295, line: 203, type: !482)
!2451 = !DILocation(line: 203, column: 11, scope: !2441)
!2452 = !DILocation(line: 204, column: 3, scope: !2441)
!2453 = !DILocation(line: 205, column: 3, scope: !2441)
!2454 = !DILocation(line: 206, column: 3, scope: !2441)
!2455 = !DILocalVariable(name: "out_len", scope: !2441, file: !2295, line: 202, type: !35)
!2456 = !DILocation(line: 207, column: 3, scope: !2441)
!2457 = !DILocation(line: 208, column: 3, scope: !2441)
!2458 = !DILocation(line: 209, column: 1, scope: !2441)
!2459 = distinct !DISubprogram(name: "ExpandSymmetricMatrixVxV", scope: !2295, file: !2295, line: 288, type: !2460, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !82, !2364}
!2462 = !DILocalVariable(name: "src", arg: 1, scope: !2459, file: !2295, line: 289, type: !82)
!2463 = !DILocation(line: 0, scope: !2459)
!2464 = !DILocalVariable(name: "A", arg: 2, scope: !2459, file: !2295, line: 290, type: !2364)
!2465 = !DILocalVariable(name: "s", scope: !2459, file: !2295, line: 292, type: !82)
!2466 = !DILocalVariable(name: "i", scope: !2467, file: !2295, line: 293, type: !35)
!2467 = distinct !DILexicalBlock(scope: !2459, file: !2295, line: 293, column: 3)
!2468 = !DILocation(line: 0, scope: !2467)
!2469 = !DILocation(line: 293, column: 7, scope: !2467)
!2470 = !DILocation(line: 293, scope: !2467)
!2471 = !DILocation(line: 292, column: 13, scope: !2459)
!2472 = !DILocation(line: 293, column: 17, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2467, file: !2295, line: 293, column: 3)
!2474 = !DILocation(line: 293, column: 3, scope: !2467)
!2475 = !DILocation(line: 294, column: 5, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !2295, line: 294, column: 5)
!2477 = distinct !DILexicalBlock(scope: !2473, file: !2295, line: 293, column: 31)
!2478 = !DILocation(line: 294, scope: !2476)
!2479 = !DILocalVariable(name: "j", scope: !2476, file: !2295, line: 294, type: !35)
!2480 = !DILocation(line: 0, scope: !2476)
!2481 = !DILocation(line: 294, column: 19, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !2295, line: 294, column: 5)
!2483 = !DILocation(line: 295, column: 11, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !2295, line: 295, column: 10)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !2295, line: 294, column: 33)
!2486 = !DILocation(line: 298, column: 9, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !2295, line: 298, column: 9)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !2295, line: 297, column: 12)
!2489 = !DILocation(line: 296, column: 9, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !2295, line: 296, column: 9)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !2295, line: 295, column: 14)
!2492 = !DILocation(line: 296, scope: !2490)
!2493 = !DILocalVariable(name: "k", scope: !2490, file: !2295, line: 296, type: !35)
!2494 = !DILocation(line: 0, scope: !2490)
!2495 = !DILocation(line: 296, column: 22, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2490, file: !2295, line: 296, column: 9)
!2497 = !DILocation(line: 296, column: 49, scope: !2496)
!2498 = !DILocation(line: 296, column: 36, scope: !2496)
!2499 = !DILocation(line: 296, column: 47, scope: !2496)
!2500 = !DILocation(line: 296, column: 32, scope: !2496)
!2501 = !DILocation(line: 296, column: 9, scope: !2496)
!2502 = distinct !{!2502, !2489, !2503, !200}
!2503 = !DILocation(line: 296, column: 58, scope: !2490)
!2504 = !DILocation(line: 298, scope: !2487)
!2505 = !DILocalVariable(name: "k", scope: !2487, file: !2295, line: 298, type: !35)
!2506 = !DILocation(line: 0, scope: !2487)
!2507 = !DILocation(line: 298, column: 22, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2487, file: !2295, line: 298, column: 9)
!2509 = !DILocation(line: 298, column: 49, scope: !2508)
!2510 = !DILocation(line: 298, column: 36, scope: !2508)
!2511 = !DILocation(line: 298, column: 47, scope: !2508)
!2512 = !DILocation(line: 298, column: 51, scope: !2508)
!2513 = !DILocation(line: 298, column: 32, scope: !2508)
!2514 = !DILocation(line: 298, column: 9, scope: !2508)
!2515 = distinct !{!2515, !2486, !2516, !200}
!2516 = !DILocation(line: 298, column: 51, scope: !2487)
!2517 = !DILocation(line: 294, column: 30, scope: !2482)
!2518 = !DILocation(line: 294, column: 5, scope: !2482)
!2519 = distinct !{!2519, !2475, !2520, !200}
!2520 = !DILocation(line: 300, column: 5, scope: !2476)
!2521 = !DILocation(line: 301, column: 25, scope: !2477)
!2522 = !DILocation(line: 301, column: 5, scope: !2477)
!2523 = !DILocation(line: 293, column: 28, scope: !2473)
!2524 = !DILocation(line: 293, column: 3, scope: !2473)
!2525 = distinct !{!2525, !2474, !2526, !200}
!2526 = !DILocation(line: 302, column: 3, scope: !2467)
!2527 = !DILocation(line: 303, column: 1, scope: !2459)
!2528 = distinct !DISubprogram(name: "ExpandMatrixVxM", scope: !2295, file: !2295, line: 273, type: !2529, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !82, !2363}
!2531 = !DILocalVariable(name: "src", arg: 1, scope: !2528, file: !2295, line: 274, type: !82)
!2532 = !DILocation(line: 0, scope: !2528)
!2533 = !DILocalVariable(name: "A", arg: 2, scope: !2528, file: !2295, line: 275, type: !2363)
!2534 = !DILocalVariable(name: "s", scope: !2528, file: !2295, line: 277, type: !82)
!2535 = !DILocalVariable(name: "i", scope: !2536, file: !2295, line: 278, type: !35)
!2536 = distinct !DILexicalBlock(scope: !2528, file: !2295, line: 278, column: 3)
!2537 = !DILocation(line: 0, scope: !2536)
!2538 = !DILocation(line: 278, column: 7, scope: !2536)
!2539 = !DILocation(line: 278, scope: !2536)
!2540 = !DILocation(line: 277, column: 13, scope: !2528)
!2541 = !DILocation(line: 278, column: 16, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2536, file: !2295, line: 278, column: 3)
!2543 = !DILocation(line: 278, column: 3, scope: !2536)
!2544 = !DILocation(line: 279, column: 5, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !2295, line: 279, column: 5)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !2295, line: 278, column: 29)
!2547 = !DILocation(line: 279, scope: !2545)
!2548 = !DILocalVariable(name: "j", scope: !2545, file: !2295, line: 279, type: !35)
!2549 = !DILocation(line: 0, scope: !2545)
!2550 = !DILocation(line: 279, column: 18, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2545, file: !2295, line: 279, column: 5)
!2552 = !DILocation(line: 280, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !2295, line: 280, column: 7)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !2295, line: 279, column: 31)
!2555 = !DILocation(line: 280, scope: !2553)
!2556 = !DILocalVariable(name: "k", scope: !2553, file: !2295, line: 280, type: !35)
!2557 = !DILocation(line: 0, scope: !2553)
!2558 = !DILocation(line: 280, column: 20, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2553, file: !2295, line: 280, column: 7)
!2560 = !DILocation(line: 281, column: 22, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2559, file: !2295, line: 280, column: 33)
!2562 = !DILocation(line: 281, column: 9, scope: !2561)
!2563 = !DILocation(line: 281, column: 20, scope: !2561)
!2564 = !DILocation(line: 281, column: 24, scope: !2561)
!2565 = !DILocation(line: 280, column: 30, scope: !2559)
!2566 = !DILocation(line: 280, column: 7, scope: !2559)
!2567 = distinct !{!2567, !2552, !2568, !200}
!2568 = !DILocation(line: 282, column: 7, scope: !2553)
!2569 = !DILocation(line: 279, column: 28, scope: !2551)
!2570 = !DILocation(line: 279, column: 5, scope: !2551)
!2571 = distinct !{!2571, !2544, !2572, !200}
!2572 = !DILocation(line: 283, column: 5, scope: !2545)
!2573 = !DILocation(line: 284, column: 25, scope: !2546)
!2574 = !DILocation(line: 284, column: 5, scope: !2546)
!2575 = !DILocation(line: 278, column: 26, scope: !2542)
!2576 = !DILocation(line: 278, column: 3, scope: !2542)
!2577 = distinct !{!2577, !2543, !2578, !200}
!2578 = !DILocation(line: 285, column: 3, scope: !2536)
!2579 = !DILocation(line: 286, column: 1, scope: !2528)
!2580 = distinct !DISubprogram(name: "VECTOR_M_CLEAR_TAIL", scope: !100, file: !100, line: 58, type: !2581, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!2584 = !DILocalVariable(name: "C", arg: 1, scope: !2580, file: !100, line: 58, type: !2583)
!2585 = !DILocation(line: 0, scope: !2580)
!2586 = !DILocalVariable(name: "k", scope: !2587, file: !100, line: 59, type: !35)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !100, line: 59, column: 3)
!2588 = !DILocation(line: 0, scope: !2587)
!2589 = !DILocation(line: 59, column: 7, scope: !2587)
!2590 = !DILocation(line: 59, scope: !2587)
!2591 = !DILocation(line: 59, column: 16, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !100, line: 59, column: 3)
!2593 = !DILocation(line: 59, column: 3, scope: !2587)
!2594 = !DILocation(line: 59, column: 37, scope: !2592)
!2595 = !DILocation(line: 59, column: 41, scope: !2592)
!2596 = !DILocation(line: 59, column: 30, scope: !2592)
!2597 = !DILocation(line: 59, column: 26, scope: !2592)
!2598 = !DILocation(line: 59, column: 3, scope: !2592)
!2599 = distinct !{!2599, !2593, !2600, !200}
!2600 = !DILocation(line: 59, column: 90, scope: !2587)
!2601 = !DILocation(line: 60, column: 1, scope: !2580)
!2602 = distinct !DISubprogram(name: "VECTOR_V_CLEAR_TAIL", scope: !100, file: !100, line: 54, type: !2603, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 32)
!2606 = !DILocalVariable(name: "C", arg: 1, scope: !2602, file: !100, line: 54, type: !2605)
!2607 = !DILocation(line: 0, scope: !2602)
!2608 = !DILocalVariable(name: "k", scope: !2609, file: !100, line: 55, type: !35)
!2609 = distinct !DILexicalBlock(scope: !2602, file: !100, line: 55, column: 3)
!2610 = !DILocation(line: 0, scope: !2609)
!2611 = !DILocation(line: 55, column: 7, scope: !2609)
!2612 = !DILocation(line: 55, scope: !2609)
!2613 = !DILocation(line: 55, column: 16, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !100, line: 55, column: 3)
!2615 = !DILocation(line: 55, column: 3, scope: !2609)
!2616 = !DILocation(line: 55, column: 37, scope: !2614)
!2617 = !DILocation(line: 55, column: 41, scope: !2614)
!2618 = !DILocation(line: 55, column: 30, scope: !2614)
!2619 = !DILocation(line: 55, column: 26, scope: !2614)
!2620 = !DILocation(line: 55, column: 3, scope: !2614)
!2621 = distinct !{!2621, !2615, !2622, !200}
!2622 = !DILocation(line: 55, column: 90, scope: !2609)
!2623 = !DILocation(line: 56, column: 1, scope: !2602)
!2624 = distinct !DISubprogram(name: "save64", scope: !2295, file: !2295, line: 66, type: !2625, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !58, !82}
!2627 = !DILocalVariable(name: "src", scope: !2624, file: !2295, line: 67, type: !82)
!2628 = !DILocation(line: 0, scope: !2624)
!2629 = !DILocalVariable(name: "s", arg: 1, scope: !2624, file: !2295, line: 66, type: !58)
!2630 = !DILocalVariable(name: "dst", arg: 2, scope: !2624, file: !2295, line: 66, type: !82)
!2631 = !DILocation(line: 68, column: 11, scope: !2624)
!2632 = !DILocation(line: 69, column: 3, scope: !2624)
!2633 = !DILocation(line: 69, column: 11, scope: !2624)
!2634 = !DILocation(line: 70, column: 3, scope: !2624)
!2635 = !DILocation(line: 70, column: 11, scope: !2624)
!2636 = !DILocation(line: 71, column: 3, scope: !2624)
!2637 = !DILocation(line: 71, column: 11, scope: !2624)
!2638 = !DILocation(line: 72, column: 3, scope: !2624)
!2639 = !DILocation(line: 72, column: 11, scope: !2624)
!2640 = !DILocation(line: 73, column: 3, scope: !2624)
!2641 = !DILocation(line: 73, column: 11, scope: !2624)
!2642 = !DILocation(line: 74, column: 3, scope: !2624)
!2643 = !DILocation(line: 74, column: 11, scope: !2624)
!2644 = !DILocation(line: 75, column: 3, scope: !2624)
!2645 = !DILocation(line: 75, column: 11, scope: !2624)
!2646 = !DILocation(line: 76, column: 1, scope: !2624)
!2647 = distinct !DISubprogram(name: "RejSamp", scope: !2295, file: !2295, line: 138, type: !2648, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !50, !50, !82}
!2650 = !DILocalVariable(name: "length", arg: 1, scope: !2647, file: !2295, line: 139, type: !50)
!2651 = !DILocation(line: 0, scope: !2647)
!2652 = !DILocalVariable(name: "tau", arg: 2, scope: !2647, file: !2295, line: 140, type: !50)
!2653 = !DILocalVariable(name: "dst", arg: 3, scope: !2647, file: !2295, line: 141, type: !82)
!2654 = !DILocation(line: 143, column: 3, scope: !2647)
!2655 = !DILocation(line: 144, column: 42, scope: !2647)
!2656 = !DILocation(line: 144, column: 3, scope: !2647)
!2657 = !DILocation(line: 145, column: 1, scope: !2647)
!2658 = distinct !DISubprogram(name: "rejsamp_and_q", scope: !2295, file: !2295, line: 116, type: !2659, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !50, !82}
!2661 = !DILocalVariable(name: "tau", arg: 1, scope: !2658, file: !2295, line: 117, type: !50)
!2662 = !DILocation(line: 0, scope: !2658)
!2663 = !DILocalVariable(name: "dst", arg: 2, scope: !2658, file: !2295, line: 118, type: !82)
!2664 = !DILocalVariable(name: "i", scope: !2665, file: !2295, line: 120, type: !35)
!2665 = distinct !DILexicalBlock(scope: !2658, file: !2295, line: 120, column: 3)
!2666 = !DILocation(line: 0, scope: !2665)
!2667 = !DILocation(line: 120, column: 7, scope: !2665)
!2668 = !DILocation(line: 120, scope: !2665)
!2669 = !DILocation(line: 120, column: 17, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !2295, line: 120, column: 3)
!2671 = !DILocation(line: 120, column: 3, scope: !2665)
!2672 = !DILocation(line: 120, column: 29, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !2295, line: 120, column: 27)
!2674 = !DILocation(line: 120, column: 36, scope: !2673)
!2675 = !DILocation(line: 120, column: 24, scope: !2670)
!2676 = !DILocation(line: 120, column: 3, scope: !2670)
!2677 = distinct !{!2677, !2671, !2678, !200}
!2678 = !DILocation(line: 120, column: 49, scope: !2665)
!2679 = !DILocation(line: 121, column: 1, scope: !2658)
!2680 = distinct !DISubprogram(name: "rejsamp_rejection_with_aux", scope: !2295, file: !2295, line: 123, type: !2681, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !50, !21, !82}
!2683 = !DILocalVariable(name: "length", arg: 1, scope: !2680, file: !2295, line: 124, type: !50)
!2684 = !DILocation(line: 0, scope: !2680)
!2685 = !DILocalVariable(name: "aux", arg: 2, scope: !2680, file: !2295, line: 125, type: !21)
!2686 = !DILocalVariable(name: "dst", arg: 3, scope: !2680, file: !2295, line: 126, type: !82)
!2687 = !DILocation(line: 128, column: 3, scope: !2680)
!2688 = !DILocation(line: 128, column: 9, scope: !2680)
!2689 = !DILocation(line: 128, column: 13, scope: !2680)
!2690 = !DILocation(line: 129, column: 3, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2680, file: !2295, line: 129, column: 3)
!2692 = !DILocation(line: 128, column: 26, scope: !2680)
!2693 = distinct !{!2693, !2687, !2692, !200}
!2694 = !DILocation(line: 129, scope: !2691)
!2695 = !DILocalVariable(name: "i", scope: !2691, file: !2295, line: 129, type: !35)
!2696 = !DILocation(line: 0, scope: !2691)
!2697 = !DILocation(line: 129, column: 17, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2691, file: !2295, line: 129, column: 3)
!2699 = !DILocation(line: 130, column: 8, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !2295, line: 130, column: 8)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !2295, line: 129, column: 30)
!2702 = !DILocation(line: 130, column: 12, scope: !2700)
!2703 = !DILocation(line: 131, column: 14, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !2295, line: 130, column: 22)
!2705 = !DILocation(line: 131, column: 12, scope: !2704)
!2706 = !DILocation(line: 132, column: 7, scope: !2704)
!2707 = !DILocation(line: 0, scope: !2704)
!2708 = !DILocation(line: 132, column: 13, scope: !2704)
!2709 = !DILocation(line: 132, column: 17, scope: !2704)
!2710 = distinct !{!2710, !2706, !2711, !200}
!2711 = !DILocation(line: 132, column: 30, scope: !2704)
!2712 = !DILocation(line: 134, column: 9, scope: !2701)
!2713 = !DILocation(line: 129, column: 27, scope: !2698)
!2714 = !DILocation(line: 129, column: 3, scope: !2698)
!2715 = distinct !{!2715, !2690, !2716, !200}
!2716 = !DILocation(line: 135, column: 3, scope: !2691)
!2717 = !DILocation(line: 136, column: 1, scope: !2680)
!2718 = distinct !DISubprogram(name: "QRUOV_Sign", scope: !2295, file: !2295, line: 596, type: !2719, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !21, !21, !21, !21, !21, !21, !2721, !82}
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!2722 = !DILocalVariable(name: "seed_sk", arg: 1, scope: !2718, file: !2295, line: 598, type: !21)
!2723 = !DILocation(line: 0, scope: !2718)
!2724 = !DILocalVariable(name: "seed_pk", arg: 2, scope: !2718, file: !2295, line: 599, type: !21)
!2725 = !DILocalVariable(name: "seed_y", arg: 3, scope: !2718, file: !2295, line: 601, type: !21)
!2726 = !DILocalVariable(name: "seed_r", arg: 4, scope: !2718, file: !2295, line: 602, type: !21)
!2727 = !DILocalVariable(name: "seed_sol", arg: 5, scope: !2718, file: !2295, line: 603, type: !21)
!2728 = !DILocalVariable(name: "message", arg: 6, scope: !2718, file: !2295, line: 605, type: !21)
!2729 = !DILocalVariable(name: "message_length", arg: 7, scope: !2718, file: !2295, line: 606, type: !2721)
!2730 = !DILocalVariable(name: "sig", arg: 8, scope: !2718, file: !2295, line: 608, type: !82)
!2731 = !DILocalVariable(name: "echelon_perm", scope: !2718, file: !2295, line: 612, type: !2732)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1728, elements: !110)
!2733 = !DILocation(line: 612, column: 7, scope: !2718)
!2734 = !DILocalVariable(name: "echelon_index", scope: !2718, file: !2295, line: 614, type: !2732)
!2735 = !DILocation(line: 614, column: 7, scope: !2718)
!2736 = !DILocalVariable(name: "oil", scope: !2718, file: !2295, line: 617, type: !104)
!2737 = !DILocation(line: 617, column: 12, scope: !2718)
!2738 = !DILocalVariable(name: "oil_u", scope: !2718, file: !2295, line: 619, type: !2739)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 432, elements: !110)
!2740 = !DILocation(line: 619, column: 7, scope: !2718)
!2741 = !DILocalVariable(name: "b", scope: !2718, file: !2295, line: 620, type: !2739)
!2742 = !DILocation(line: 620, column: 7, scope: !2718)
!2743 = !DILocalVariable(name: "b2", scope: !2718, file: !2295, line: 621, type: !2739)
!2744 = !DILocation(line: 621, column: 7, scope: !2718)
!2745 = !DILocalVariable(name: "c", scope: !2718, file: !2295, line: 622, type: !2739)
!2746 = !DILocation(line: 622, column: 7, scope: !2718)
!2747 = !DILocalVariable(name: "eqn", scope: !2718, file: !2295, line: 624, type: !2748)
!2748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 23328, elements: !2749)
!2749 = !{!111, !111}
!2750 = !DILocation(line: 624, column: 6, scope: !2718)
!2751 = !DILocalVariable(name: "R", scope: !2718, file: !2295, line: 625, type: !2748)
!2752 = !DILocation(line: 625, column: 6, scope: !2718)
!2753 = !DILocalVariable(name: "cacheR", scope: !2718, file: !2295, line: 627, type: !35)
!2754 = !DILocation(line: 627, column: 7, scope: !2718)
!2755 = !DILocalVariable(name: "msg", scope: !2718, file: !2295, line: 629, type: !2739)
!2756 = !DILocation(line: 629, column: 6, scope: !2718)
!2757 = !DILocalVariable(name: "Sd", scope: !2718, file: !2295, line: 635, type: !2304)
!2758 = !DILocation(line: 635, column: 14, scope: !2718)
!2759 = !DILocalVariable(name: "SdT", scope: !2718, file: !2295, line: 636, type: !2310)
!2760 = !DILocation(line: 636, column: 14, scope: !2718)
!2761 = !DILocalVariable(name: "Pi1", scope: !2718, file: !2295, line: 637, type: !2318)
!2762 = !DILocation(line: 637, column: 14, scope: !2718)
!2763 = !DILocalVariable(name: "Pi2", scope: !2718, file: !2295, line: 638, type: !2304)
!2764 = !DILocation(line: 638, column: 14, scope: !2718)
!2765 = !DILocalVariable(name: "y", scope: !2718, file: !2295, line: 639, type: !2312)
!2766 = !DILocation(line: 639, column: 14, scope: !2718)
!2767 = !DILocalVariable(name: "yT", scope: !2718, file: !2295, line: 640, type: !2605)
!2768 = !DILocalVariable(name: "yT_Pi1", scope: !2718, file: !2295, line: 641, type: !2312)
!2769 = !DILocation(line: 641, column: 14, scope: !2718)
!2770 = !DILocalVariable(name: "yT_Fi1", scope: !2718, file: !2295, line: 642, type: !2605)
!2771 = !DILocalVariable(name: "yT_Pi1_Sd", scope: !2718, file: !2295, line: 643, type: !104)
!2772 = !DILocation(line: 643, column: 14, scope: !2718)
!2773 = !DILocalVariable(name: "yT_Pi2", scope: !2718, file: !2295, line: 644, type: !104)
!2774 = !DILocation(line: 644, column: 14, scope: !2718)
!2775 = !DILocalVariable(name: "yT_Fi2", scope: !2718, file: !2295, line: 645, type: !104)
!2776 = !DILocation(line: 645, column: 14, scope: !2718)
!2777 = !DILocation(line: 647, column: 3, scope: !2718)
!2778 = !DILocation(line: 648, column: 3, scope: !2718)
!2779 = !DILocation(line: 650, column: 28, scope: !2718)
!2780 = !DILocalVariable(name: "ctx_pk", scope: !2718, file: !2295, line: 650, type: !2330)
!2781 = !DILocalVariable(name: "i", scope: !2782, file: !2295, line: 651, type: !35)
!2782 = distinct !DILexicalBlock(scope: !2718, file: !2295, line: 651, column: 3)
!2783 = !DILocation(line: 0, scope: !2782)
!2784 = !DILocation(line: 651, column: 7, scope: !2782)
!2785 = !DILocation(line: 651, scope: !2782)
!2786 = !DILocation(line: 651, column: 20, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !2295, line: 651, column: 3)
!2788 = !DILocation(line: 651, column: 3, scope: !2782)
!2789 = !DILocation(line: 652, column: 23, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2787, file: !2295, line: 651, column: 35)
!2791 = !DILocation(line: 652, column: 5, scope: !2790)
!2792 = !DILocation(line: 654, column: 5, scope: !2790)
!2793 = !DILocation(line: 655, column: 5, scope: !2790)
!2794 = !DILocation(line: 656, column: 5, scope: !2790)
!2795 = !DILocation(line: 657, column: 5, scope: !2790)
!2796 = !DILocalVariable(name: "j", scope: !2797, file: !2295, line: 661, type: !35)
!2797 = distinct !DILexicalBlock(scope: !2790, file: !2295, line: 661, column: 5)
!2798 = !DILocation(line: 0, scope: !2797)
!2799 = !DILocation(line: 661, column: 9, scope: !2797)
!2800 = !DILocation(line: 661, scope: !2797)
!2801 = !DILocation(line: 661, column: 19, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2797, file: !2295, line: 661, column: 5)
!2803 = !DILocation(line: 661, column: 5, scope: !2797)
!2804 = !DILocation(line: 672, column: 7, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !2295, line: 672, column: 7)
!2806 = distinct !DILexicalBlock(scope: !2790, file: !2295, line: 670, column: 5)
!2807 = !DILocation(line: 662, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !2295, line: 662, column: 7)
!2809 = distinct !DILexicalBlock(scope: !2802, file: !2295, line: 661, column: 33)
!2810 = !DILocation(line: 662, scope: !2808)
!2811 = !DILocalVariable(name: "k", scope: !2808, file: !2295, line: 662, type: !35)
!2812 = !DILocation(line: 0, scope: !2808)
!2813 = !DILocation(line: 662, column: 21, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !2295, line: 662, column: 7)
!2815 = !DILocation(line: 663, column: 23, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2814, file: !2295, line: 662, column: 35)
!2817 = !DILocation(line: 663, column: 16, scope: !2816)
!2818 = !DILocalVariable(name: "u", scope: !2816, file: !2295, line: 663, type: !87)
!2819 = !DILocation(line: 0, scope: !2816)
!2820 = !DILocation(line: 664, column: 31, scope: !2816)
!2821 = !DILocation(line: 664, column: 23, scope: !2816)
!2822 = !DILocation(line: 664, column: 25, scope: !2816)
!2823 = !DILocation(line: 664, column: 9, scope: !2816)
!2824 = !DILocation(line: 664, column: 29, scope: !2816)
!2825 = !DILocation(line: 662, column: 32, scope: !2814)
!2826 = !DILocation(line: 662, column: 7, scope: !2814)
!2827 = distinct !{!2827, !2807, !2828, !200}
!2828 = !DILocation(line: 665, column: 7, scope: !2808)
!2829 = !DILocation(line: 661, column: 30, scope: !2802)
!2830 = !DILocation(line: 661, column: 5, scope: !2802)
!2831 = distinct !{!2831, !2803, !2832, !200}
!2832 = !DILocation(line: 666, column: 5, scope: !2797)
!2833 = !DILocation(line: 0, scope: !2806)
!2834 = !DILocation(line: 672, scope: !2805)
!2835 = !DILocalVariable(name: "j", scope: !2805, file: !2295, line: 672, type: !35)
!2836 = !DILocation(line: 0, scope: !2805)
!2837 = !DILocalVariable(name: "c_i", scope: !2806, file: !2295, line: 671, type: !23)
!2838 = !DILocation(line: 672, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2805, file: !2295, line: 672, column: 7)
!2840 = !DILocation(line: 675, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !2295, line: 675, column: 9)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !2295, line: 672, column: 35)
!2843 = !DILocation(line: 675, scope: !2841)
!2844 = !DILocalVariable(name: "k", scope: !2841, file: !2295, line: 675, type: !35)
!2845 = !DILocation(line: 0, scope: !2841)
!2846 = !DILocation(line: 675, column: 23, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !2295, line: 675, column: 9)
!2848 = !DILocation(line: 676, column: 9, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2842, file: !2295, line: 676, column: 9)
!2850 = !DILocation(line: 675, column: 52, scope: !2847)
!2851 = !DILocation(line: 675, column: 38, scope: !2847)
!2852 = !DILocation(line: 675, column: 50, scope: !2847)
!2853 = !DILocation(line: 675, column: 34, scope: !2847)
!2854 = !DILocation(line: 675, column: 9, scope: !2847)
!2855 = distinct !{!2855, !2840, !2856, !200}
!2856 = !DILocation(line: 675, column: 63, scope: !2841)
!2857 = !DILocation(line: 676, scope: !2849)
!2858 = !DILocalVariable(name: "k", scope: !2849, file: !2295, line: 676, type: !35)
!2859 = !DILocation(line: 0, scope: !2849)
!2860 = !DILocation(line: 676, column: 23, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2849, file: !2295, line: 676, column: 9)
!2862 = !DILocation(line: 676, column: 52, scope: !2861)
!2863 = !DILocation(line: 676, column: 38, scope: !2861)
!2864 = !DILocation(line: 676, column: 50, scope: !2861)
!2865 = !DILocation(line: 676, column: 34, scope: !2861)
!2866 = !DILocation(line: 676, column: 9, scope: !2861)
!2867 = distinct !{!2867, !2848, !2868, !200}
!2868 = !DILocation(line: 676, column: 63, scope: !2849)
!2869 = !DILocalVariable(name: "yT_Fi1_j_y_j", scope: !2842, file: !2295, line: 677, type: !84)
!2870 = !DILocation(line: 677, column: 13, scope: !2842)
!2871 = !DILocation(line: 678, column: 9, scope: !2842)
!2872 = !DILocation(line: 679, column: 27, scope: !2842)
!2873 = !DILocation(line: 679, column: 16, scope: !2842)
!2874 = !DILocation(line: 679, column: 13, scope: !2842)
!2875 = !DILocation(line: 672, column: 32, scope: !2839)
!2876 = !DILocation(line: 672, column: 7, scope: !2839)
!2877 = distinct !{!2877, !2804, !2878, !200}
!2878 = !DILocation(line: 680, column: 7, scope: !2805)
!2879 = !DILocation(line: 681, column: 23, scope: !2806)
!2880 = !DILocation(line: 681, column: 14, scope: !2806)
!2881 = !DILocation(line: 681, column: 7, scope: !2806)
!2882 = !DILocation(line: 681, column: 12, scope: !2806)
!2883 = !DILocation(line: 651, column: 32, scope: !2787)
!2884 = !DILocation(line: 651, column: 3, scope: !2787)
!2885 = distinct !{!2885, !2788, !2886, !200}
!2886 = !DILocation(line: 683, column: 3, scope: !2782)
!2887 = !DILocation(line: 684, column: 3, scope: !2718)
!2888 = !DILocalVariable(name: "echelon_rank", scope: !2718, file: !2295, line: 613, type: !35)
!2889 = !DILocation(line: 686, column: 3, scope: !2718)
!2890 = !DILocalVariable(name: "mu", scope: !2718, file: !2295, line: 688, type: !2891)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !1795)
!2892 = !DILocation(line: 688, column: 11, scope: !2718)
!2893 = !DILocation(line: 689, column: 3, scope: !2718)
!2894 = !DILocation(line: 691, column: 28, scope: !2718)
!2895 = !DILocalVariable(name: "ctx_r", scope: !2718, file: !2295, line: 691, type: !2330)
!2896 = !DILocation(line: 692, column: 3, scope: !2718)
!2897 = !DILocation(line: 693, column: 5, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2718, file: !2295, line: 692, column: 5)
!2899 = !DILocation(line: 694, column: 5, scope: !2898)
!2900 = !DILocalVariable(name: "i", scope: !2901, file: !2295, line: 695, type: !35)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !2295, line: 695, column: 5)
!2902 = !DILocation(line: 0, scope: !2901)
!2903 = !DILocation(line: 695, column: 9, scope: !2901)
!2904 = !DILocation(line: 695, scope: !2901)
!2905 = !DILocation(line: 695, column: 19, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !2295, line: 695, column: 5)
!2907 = !DILocation(line: 695, column: 5, scope: !2901)
!2908 = !DILocation(line: 695, column: 48, scope: !2906)
!2909 = !DILocation(line: 695, column: 56, scope: !2906)
!2910 = !DILocation(line: 695, column: 41, scope: !2906)
!2911 = !DILocation(line: 695, column: 34, scope: !2906)
!2912 = !DILocation(line: 695, column: 39, scope: !2906)
!2913 = !DILocation(line: 695, column: 30, scope: !2906)
!2914 = !DILocation(line: 695, column: 5, scope: !2906)
!2915 = distinct !{!2915, !2907, !2916, !200}
!2916 = !DILocation(line: 695, column: 60, scope: !2901)
!2917 = !DILocation(line: 696, column: 41, scope: !2718)
!2918 = !DILocation(line: 696, column: 11, scope: !2718)
!2919 = !DILocation(line: 696, column: 10, scope: !2718)
!2920 = !DILocation(line: 696, column: 3, scope: !2898)
!2921 = distinct !{!2921, !2896, !2922, !200}
!2922 = !DILocation(line: 696, column: 69, scope: !2718)
!2923 = !DILocation(line: 697, column: 3, scope: !2718)
!2924 = !DILocation(line: 699, column: 50, scope: !2718)
!2925 = !DILocation(line: 699, column: 3, scope: !2718)
!2926 = !DILocation(line: 701, column: 3, scope: !2718)
!2927 = !DILocation(line: 703, column: 3, scope: !2718)
!2928 = !DILocation(line: 705, column: 3, scope: !2718)
!2929 = !DILocation(line: 706, column: 3, scope: !2718)
!2930 = !DILocation(line: 708, column: 3, scope: !2718)
!2931 = distinct !DISubprogram(name: "Expand_y", scope: !2295, file: !2295, line: 347, type: !2932, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !21, !2605}
!2934 = !DILocalVariable(name: "seed_y", arg: 1, scope: !2931, file: !2295, line: 348, type: !21)
!2935 = !DILocation(line: 0, scope: !2931)
!2936 = !DILocalVariable(name: "y", arg: 2, scope: !2931, file: !2295, line: 349, type: !2605)
!2937 = !DILocalVariable(name: "n3", scope: !2931, file: !2295, line: 351, type: !2370)
!2938 = !DILocalVariable(name: "r3", scope: !2931, file: !2295, line: 352, type: !2939)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1536, elements: !2940)
!2940 = !{!2941}
!2941 = !DISubrange(count: 192)
!2942 = !DILocation(line: 352, column: 11, scope: !2931)
!2943 = !DILocation(line: 353, column: 25, scope: !2931)
!2944 = !DILocalVariable(name: "ctx", scope: !2931, file: !2295, line: 353, type: !2330)
!2945 = !DILocation(line: 354, column: 3, scope: !2931)
!2946 = !DILocation(line: 355, column: 3, scope: !2931)
!2947 = !DILocation(line: 356, column: 3, scope: !2931)
!2948 = !DILocation(line: 357, column: 1, scope: !2931)
!2949 = distinct !DISubprogram(name: "Fq_add", scope: !85, file: !85, line: 21, type: !2950, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!87, !87, !87}
!2952 = !DILocalVariable(name: "X", arg: 1, scope: !2949, file: !85, line: 21, type: !87)
!2953 = !DILocation(line: 0, scope: !2949)
!2954 = !DILocalVariable(name: "Y", arg: 2, scope: !2949, file: !85, line: 21, type: !87)
!2955 = !DILocation(line: 21, column: 51, scope: !2949)
!2956 = !DILocation(line: 21, column: 61, scope: !2949)
!2957 = !DILocation(line: 21, column: 59, scope: !2949)
!2958 = !DILocation(line: 21, column: 70, scope: !2949)
!2959 = !DILocation(line: 21, column: 45, scope: !2949)
!2960 = !DILocation(line: 21, column: 38, scope: !2949)
!2961 = distinct !DISubprogram(name: "Fql_mul", scope: !85, file: !85, line: 56, type: !2962, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !2964, !2964, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!2967 = !DILocalVariable(name: "X", arg: 1, scope: !2961, file: !85, line: 56, type: !2964)
!2968 = !DILocation(line: 0, scope: !2961)
!2969 = !DILocalVariable(name: "Y", arg: 2, scope: !2961, file: !85, line: 56, type: !2964)
!2970 = !DILocalVariable(name: "Z", arg: 3, scope: !2961, file: !85, line: 56, type: !2966)
!2971 = !DILocalVariable(name: "T", scope: !2961, file: !85, line: 57, type: !2972)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !879)
!2973 = !DILocation(line: 57, column: 7, scope: !2961)
!2974 = !DILocation(line: 58, column: 3, scope: !2961)
!2975 = !DILocalVariable(name: "i", scope: !2976, file: !85, line: 60, type: !19)
!2976 = distinct !DILexicalBlock(scope: !2961, file: !85, line: 60, column: 3)
!2977 = !DILocation(line: 0, scope: !2976)
!2978 = !DILocation(line: 60, column: 7, scope: !2976)
!2979 = !DILocation(line: 60, scope: !2976)
!2980 = !DILocation(line: 60, column: 20, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !85, line: 60, column: 3)
!2982 = !DILocation(line: 60, column: 3, scope: !2976)
!2983 = !DILocation(line: 61, column: 5, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !85, line: 61, column: 5)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !85, line: 60, column: 34)
!2986 = !DILocation(line: 66, column: 3, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2961, file: !85, line: 66, column: 3)
!2988 = !DILocation(line: 61, scope: !2984)
!2989 = !DILocalVariable(name: "j", scope: !2984, file: !85, line: 61, type: !19)
!2990 = !DILocation(line: 0, scope: !2984)
!2991 = !DILocation(line: 61, column: 22, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2984, file: !85, line: 61, column: 5)
!2993 = !DILocation(line: 62, column: 23, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2992, file: !85, line: 61, column: 36)
!2995 = !DILocation(line: 62, column: 17, scope: !2994)
!2996 = !DILocation(line: 62, column: 36, scope: !2994)
!2997 = !DILocation(line: 62, column: 30, scope: !2994)
!2998 = !DILocation(line: 62, column: 28, scope: !2994)
!2999 = !DILocation(line: 62, column: 10, scope: !2994)
!3000 = !DILocation(line: 62, column: 7, scope: !2994)
!3001 = !DILocation(line: 62, column: 14, scope: !2994)
!3002 = !DILocation(line: 61, column: 33, scope: !2992)
!3003 = !DILocation(line: 61, column: 5, scope: !2992)
!3004 = distinct !{!3004, !2983, !3005, !200}
!3005 = !DILocation(line: 63, column: 5, scope: !2984)
!3006 = !DILocation(line: 60, column: 31, scope: !2981)
!3007 = !DILocation(line: 60, column: 3, scope: !2981)
!3008 = distinct !{!3008, !2982, !3009, !200}
!3009 = !DILocation(line: 64, column: 3, scope: !2976)
!3010 = !DILocation(line: 66, scope: !2987)
!3011 = !DILocalVariable(name: "i", scope: !2987, file: !85, line: 66, type: !19)
!3012 = !DILocation(line: 0, scope: !2987)
!3013 = !DILocation(line: 66, column: 33, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2987, file: !85, line: 66, column: 3)
!3015 = !DILocation(line: 71, column: 3, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2961, file: !85, line: 71, column: 3)
!3017 = !DILocation(line: 67, column: 44, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !85, line: 66, column: 49)
!3019 = !DILocation(line: 67, column: 10, scope: !3018)
!3020 = !DILocation(line: 67, column: 7, scope: !3018)
!3021 = !DILocation(line: 67, column: 29, scope: !3018)
!3022 = !DILocation(line: 68, column: 44, scope: !3018)
!3023 = !DILocation(line: 68, column: 18, scope: !3018)
!3024 = !DILocation(line: 68, column: 7, scope: !3018)
!3025 = !DILocation(line: 68, column: 29, scope: !3018)
!3026 = !DILocation(line: 66, column: 46, scope: !3014)
!3027 = !DILocation(line: 66, column: 3, scope: !3014)
!3028 = distinct !{!3028, !2986, !3029, !200}
!3029 = !DILocation(line: 69, column: 3, scope: !2987)
!3030 = !DILocation(line: 71, scope: !3016)
!3031 = !DILocalVariable(name: "i", scope: !3016, file: !85, line: 71, type: !19)
!3032 = !DILocation(line: 0, scope: !3016)
!3033 = !DILocation(line: 71, column: 20, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3016, file: !85, line: 71, column: 3)
!3035 = !DILocation(line: 71, column: 47, scope: !3034)
!3036 = !DILocation(line: 71, column: 52, scope: !3034)
!3037 = !DILocation(line: 71, column: 42, scope: !3034)
!3038 = !DILocation(line: 71, column: 35, scope: !3034)
!3039 = !DILocation(line: 71, column: 40, scope: !3034)
!3040 = !DILocation(line: 71, column: 31, scope: !3034)
!3041 = !DILocation(line: 71, column: 3, scope: !3034)
!3042 = distinct !{!3042, !3015, !3043, !200}
!3043 = !DILocation(line: 71, column: 61, scope: !3016)
!3044 = !DILocation(line: 72, column: 1, scope: !2961)
!3045 = distinct !DISubprogram(name: "Fql2Fq", scope: !85, file: !85, line: 38, type: !3046, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!87, !2964, !35}
!3048 = !DILocalVariable(name: "Z", arg: 1, scope: !3045, file: !85, line: 38, type: !2964)
!3049 = !DILocation(line: 0, scope: !3045)
!3050 = !DILocalVariable(name: "i", arg: 2, scope: !3045, file: !85, line: 38, type: !35)
!3051 = !DILocation(line: 38, column: 54, scope: !3045)
!3052 = !DILocation(line: 38, column: 47, scope: !3045)
!3053 = distinct !DISubprogram(name: "LU_decompose", scope: !2295, file: !2295, line: 391, type: !3054, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !3056, !647, !647, !647}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 32)
!3057 = !DILocalVariable(name: "A", arg: 1, scope: !3053, file: !2295, line: 392, type: !3056)
!3058 = !DILocation(line: 0, scope: !3053)
!3059 = !DILocalVariable(name: "perm", arg: 2, scope: !3053, file: !2295, line: 393, type: !647)
!3060 = !DILocalVariable(name: "rank", arg: 3, scope: !3053, file: !2295, line: 394, type: !647)
!3061 = !DILocalVariable(name: "index", arg: 4, scope: !3053, file: !2295, line: 395, type: !647)
!3062 = !DILocation(line: 397, column: 3, scope: !3053)
!3063 = !DILocalVariable(name: "c", scope: !3053, file: !2295, line: 400, type: !35)
!3064 = !DILocalVariable(name: "i", scope: !3053, file: !2295, line: 398, type: !35)
!3065 = !DILocation(line: 401, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3053, file: !2295, line: 401, column: 3)
!3067 = !DILocation(line: 401, scope: !3066)
!3068 = !DILocation(line: 401, column: 13, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !2295, line: 401, column: 3)
!3070 = !DILocation(line: 401, column: 3, scope: !3066)
!3071 = !DILocation(line: 404, column: 5, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3069, file: !2295, line: 401, column: 28)
!3073 = !DILocation(line: 0, scope: !3072)
!3074 = !DILocalVariable(name: "j", scope: !3053, file: !2295, line: 398, type: !35)
!3075 = !DILocation(line: 404, column: 11, scope: !3072)
!3076 = !DILocation(line: 404, column: 19, scope: !3072)
!3077 = !DILocation(line: 405, column: 8, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3072, file: !2295, line: 404, column: 23)
!3079 = !DILocation(line: 406, column: 12, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3078, file: !2295, line: 406, column: 10)
!3081 = !DILocation(line: 407, column: 10, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3080, file: !2295, line: 406, column: 24)
!3083 = !DILocation(line: 407, column: 20, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3082, file: !2295, line: 407, column: 18)
!3085 = !DILocation(line: 0, scope: !3078)
!3086 = distinct !{!3086, !3071, !3087, !200}
!3087 = !DILocation(line: 410, column: 5, scope: !3072)
!3088 = !DILocation(line: 412, column: 5, scope: !3072)
!3089 = !DILocation(line: 413, column: 18, scope: !3072)
!3090 = !DILocation(line: 413, column: 5, scope: !3072)
!3091 = !DILocation(line: 413, column: 22, scope: !3072)
!3092 = !DILocation(line: 415, column: 16, scope: !3072)
!3093 = !DILocalVariable(name: "pivot", scope: !3072, file: !2295, line: 415, type: !87)
!3094 = !DILocation(line: 416, column: 16, scope: !3072)
!3095 = !DILocalVariable(name: "inv", scope: !3072, file: !2295, line: 416, type: !87)
!3096 = !DILocation(line: 418, column: 5, scope: !3072)
!3097 = !DILocation(line: 418, column: 15, scope: !3072)
!3098 = !DILocalVariable(name: "k", scope: !3053, file: !2295, line: 398, type: !35)
!3099 = !DILocation(line: 419, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3072, file: !2295, line: 419, column: 5)
!3101 = !DILocation(line: 419, scope: !3100)
!3102 = !DILocation(line: 419, column: 19, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !2295, line: 419, column: 5)
!3104 = !DILocation(line: 419, column: 5, scope: !3100)
!3105 = !DILocation(line: 421, column: 5, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3072, file: !2295, line: 421, column: 5)
!3107 = !DILocation(line: 419, column: 57, scope: !3103)
!3108 = !DILocation(line: 419, column: 45, scope: !3103)
!3109 = !DILocation(line: 419, column: 34, scope: !3103)
!3110 = !DILocation(line: 419, column: 43, scope: !3103)
!3111 = !DILocation(line: 419, column: 5, scope: !3103)
!3112 = distinct !{!3112, !3104, !3113, !200}
!3113 = !DILocation(line: 419, column: 65, scope: !3100)
!3114 = distinct !{!3114, !3105, !3115, !200}
!3115 = !DILocation(line: 428, column: 5, scope: !3106)
!3116 = !DILocation(line: 421, scope: !3106)
!3117 = !DILocation(line: 421, column: 17, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3106, file: !2295, line: 421, column: 5)
!3119 = !DILocation(line: 422, column: 16, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3118, file: !2295, line: 421, column: 32)
!3121 = !DILocalVariable(name: "mul", scope: !3120, file: !2295, line: 422, type: !87)
!3122 = !DILocation(line: 0, scope: !3120)
!3123 = !DILocation(line: 423, column: 7, scope: !3120)
!3124 = !DILocation(line: 423, column: 16, scope: !3120)
!3125 = !DILocation(line: 425, column: 11, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3120, file: !2295, line: 425, column: 7)
!3127 = !DILocation(line: 425, scope: !3126)
!3128 = !DILocation(line: 425, column: 21, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !2295, line: 425, column: 7)
!3130 = !DILocation(line: 425, column: 7, scope: !3126)
!3131 = !DILocation(line: 426, column: 27, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !2295, line: 425, column: 35)
!3133 = !DILocation(line: 426, column: 49, scope: !3132)
!3134 = !DILocation(line: 426, column: 37, scope: !3132)
!3135 = !DILocation(line: 426, column: 20, scope: !3132)
!3136 = !DILocation(line: 426, column: 9, scope: !3132)
!3137 = !DILocation(line: 426, column: 18, scope: !3132)
!3138 = !DILocation(line: 425, column: 7, scope: !3129)
!3139 = distinct !{!3139, !3130, !3140, !200}
!3140 = !DILocation(line: 427, column: 7, scope: !3126)
!3141 = !DILocation(line: 401, column: 24, scope: !3069)
!3142 = !DILocation(line: 401, column: 3, scope: !3069)
!3143 = distinct !{!3143, !3070, !3144, !200}
!3144 = !DILocation(line: 429, column: 3, scope: !3066)
!3145 = !DILocation(line: 432, column: 1, scope: !3053)
!3146 = distinct !DISubprogram(name: "Expand_mu", scope: !2295, file: !2295, line: 229, type: !3147, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !21, !21, !2721, !82}
!3149 = !DILocalVariable(name: "seed_pk", arg: 1, scope: !3146, file: !2295, line: 230, type: !21)
!3150 = !DILocation(line: 0, scope: !3146)
!3151 = !DILocalVariable(name: "message", arg: 2, scope: !3146, file: !2295, line: 231, type: !21)
!3152 = !DILocalVariable(name: "message_length", arg: 3, scope: !3146, file: !2295, line: 232, type: !2721)
!3153 = !DILocalVariable(name: "mu", arg: 4, scope: !3146, file: !2295, line: 233, type: !82)
!3154 = !DILocation(line: 235, column: 22, scope: !3146)
!3155 = !DILocalVariable(name: "ctx", scope: !3146, file: !2295, line: 235, type: !772)
!3156 = !DILocation(line: 236, column: 26, scope: !3146)
!3157 = !DILocation(line: 236, column: 3, scope: !3146)
!3158 = !DILocation(line: 237, column: 3, scope: !3146)
!3159 = !DILocation(line: 238, column: 3, scope: !3146)
!3160 = !DILocation(line: 239, column: 3, scope: !3146)
!3161 = !DILocation(line: 240, column: 3, scope: !3146)
!3162 = !DILocation(line: 241, column: 1, scope: !3146)
!3163 = distinct !DISubprogram(name: "PRG_yield_aes_ctr", scope: !2295, file: !2295, line: 157, type: !3164, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{null, !2330, !35, !82}
!3166 = !DILocalVariable(name: "ctx", arg: 1, scope: !3163, file: !2295, line: 157, type: !2330)
!3167 = !DILocation(line: 0, scope: !3163)
!3168 = !DILocalVariable(name: "length", arg: 2, scope: !3163, file: !2295, line: 157, type: !35)
!3169 = !DILocalVariable(name: "dst", arg: 3, scope: !3163, file: !2295, line: 157, type: !82)
!3170 = !DILocation(line: 159, column: 3, scope: !3163)
!3171 = !DILocalVariable(name: "out_len", scope: !3163, file: !2295, line: 158, type: !35)
!3172 = !DILocation(line: 160, column: 3, scope: !3163)
!3173 = !DILocation(line: 161, column: 1, scope: !3163)
!3174 = distinct !DISubprogram(name: "Hash", scope: !2295, file: !2295, line: 243, type: !3175, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{null, !21, !21, !82}
!3177 = !DILocalVariable(name: "mu", arg: 1, scope: !3174, file: !2295, line: 244, type: !21)
!3178 = !DILocation(line: 0, scope: !3174)
!3179 = !DILocalVariable(name: "salt", arg: 2, scope: !3174, file: !2295, line: 245, type: !21)
!3180 = !DILocalVariable(name: "dst", arg: 3, scope: !3174, file: !2295, line: 246, type: !82)
!3181 = !DILocalVariable(name: "tmp", scope: !3174, file: !2295, line: 248, type: !3182)
!3182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !3183)
!3183 = !{!3184}
!3184 = !DISubrange(count: 82)
!3185 = !DILocation(line: 248, column: 11, scope: !3174)
!3186 = !DILocation(line: 249, column: 22, scope: !3174)
!3187 = !DILocalVariable(name: "ctx", scope: !3174, file: !2295, line: 249, type: !772)
!3188 = !DILocation(line: 250, column: 26, scope: !3174)
!3189 = !DILocation(line: 250, column: 3, scope: !3174)
!3190 = !DILocation(line: 251, column: 3, scope: !3174)
!3191 = !DILocation(line: 252, column: 3, scope: !3174)
!3192 = !DILocation(line: 253, column: 3, scope: !3174)
!3193 = !DILocation(line: 254, column: 3, scope: !3174)
!3194 = !DILocation(line: 255, column: 3, scope: !3174)
!3195 = !DILocation(line: 256, column: 3, scope: !3174)
!3196 = !DILocation(line: 257, column: 3, scope: !3174)
!3197 = distinct !DISubprogram(name: "Fq_sub", scope: !85, file: !85, line: 22, type: !2950, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3198 = !DILocalVariable(name: "X", arg: 1, scope: !3197, file: !85, line: 22, type: !87)
!3199 = !DILocation(line: 0, scope: !3197)
!3200 = !DILocalVariable(name: "Y", arg: 2, scope: !3197, file: !85, line: 22, type: !87)
!3201 = !DILocation(line: 22, column: 51, scope: !3197)
!3202 = !DILocation(line: 22, column: 61, scope: !3197)
!3203 = !DILocation(line: 22, column: 59, scope: !3197)
!3204 = !DILocation(line: 22, column: 69, scope: !3197)
!3205 = !DILocation(line: 22, column: 80, scope: !3197)
!3206 = !DILocation(line: 22, column: 45, scope: !3197)
!3207 = !DILocation(line: 22, column: 38, scope: !3197)
!3208 = distinct !DISubprogram(name: "consistent", scope: !2295, file: !2295, line: 459, type: !3209, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!35, !3056, !647, !35, !2966, !647, !3056}
!3211 = !DILocalVariable(name: "A", arg: 1, scope: !3208, file: !2295, line: 460, type: !3056)
!3212 = !DILocation(line: 0, scope: !3208)
!3213 = !DILocalVariable(name: "perm", arg: 2, scope: !3208, file: !2295, line: 461, type: !647)
!3214 = !DILocalVariable(name: "rank", arg: 3, scope: !3208, file: !2295, line: 462, type: !35)
!3215 = !DILocalVariable(name: "b", arg: 4, scope: !3208, file: !2295, line: 463, type: !2966)
!3216 = !DILocalVariable(name: "cacheR", arg: 5, scope: !3208, file: !2295, line: 464, type: !647)
!3217 = !DILocalVariable(name: "R", arg: 6, scope: !3208, file: !2295, line: 465, type: !3056)
!3218 = !DILocation(line: 467, column: 10, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3208, file: !2295, line: 467, column: 6)
!3220 = !DILocation(line: 469, column: 6, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3208, file: !2295, line: 469, column: 6)
!3222 = !DILocation(line: 469, column: 14, scope: !3221)
!3223 = !DILocation(line: 470, column: 5, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !2295, line: 469, column: 19)
!3225 = !DILocation(line: 471, column: 13, scope: !3224)
!3226 = !DILocation(line: 472, column: 3, scope: !3224)
!3227 = !DILocalVariable(name: "i", scope: !3228, file: !2295, line: 474, type: !35)
!3228 = distinct !DILexicalBlock(scope: !3208, file: !2295, line: 474, column: 3)
!3229 = !DILocation(line: 0, scope: !3228)
!3230 = !DILocation(line: 474, column: 7, scope: !3228)
!3231 = !DILocation(line: 474, scope: !3228)
!3232 = !DILocation(line: 474, column: 20, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3228, file: !2295, line: 474, column: 3)
!3234 = !DILocation(line: 474, column: 3, scope: !3228)
!3235 = !DILocation(line: 477, column: 5, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !2295, line: 477, column: 5)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !2295, line: 474, column: 34)
!3238 = !DILocation(line: 0, scope: !3237)
!3239 = !DILocation(line: 477, scope: !3236)
!3240 = !DILocalVariable(name: "j", scope: !3236, file: !2295, line: 477, type: !35)
!3241 = !DILocation(line: 0, scope: !3236)
!3242 = !DILocalVariable(name: "t", scope: !3237, file: !2295, line: 476, type: !23)
!3243 = !DILocation(line: 477, column: 19, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3236, file: !2295, line: 477, column: 5)
!3245 = !DILocalVariable(name: "k", scope: !3237, file: !2295, line: 475, type: !35)
!3246 = !DILocation(line: 479, column: 23, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !2295, line: 477, column: 30)
!3248 = !DILocation(line: 479, column: 13, scope: !3247)
!3249 = !DILocation(line: 478, column: 11, scope: !3247)
!3250 = !DILocation(line: 479, column: 45, scope: !3247)
!3251 = !DILocation(line: 479, column: 35, scope: !3247)
!3252 = !DILocation(line: 479, column: 32, scope: !3247)
!3253 = !DILocation(line: 479, column: 9, scope: !3247)
!3254 = !DILocation(line: 477, column: 27, scope: !3244)
!3255 = !DILocation(line: 477, column: 5, scope: !3244)
!3256 = distinct !{!3256, !3235, !3257, !200}
!3257 = !DILocation(line: 480, column: 5, scope: !3236)
!3258 = !DILocation(line: 481, column: 9, scope: !3237)
!3259 = !DILocation(line: 482, column: 21, scope: !3237)
!3260 = !DILocation(line: 482, column: 11, scope: !3237)
!3261 = !DILocation(line: 482, column: 43, scope: !3237)
!3262 = !DILocation(line: 482, column: 33, scope: !3237)
!3263 = !DILocation(line: 482, column: 30, scope: !3237)
!3264 = !DILocation(line: 482, column: 7, scope: !3237)
!3265 = !DILocation(line: 483, column: 7, scope: !3237)
!3266 = !DILocation(line: 484, column: 8, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3237, file: !2295, line: 484, column: 8)
!3268 = !DILocation(line: 474, column: 31, scope: !3233)
!3269 = !DILocation(line: 474, column: 3, scope: !3233)
!3270 = distinct !{!3270, !3234, !3271, !200}
!3271 = !DILocation(line: 485, column: 3, scope: !3228)
!3272 = !DILocation(line: 488, column: 1, scope: !3208)
!3273 = distinct !DISubprogram(name: "sample_a_solution", scope: !2295, file: !2295, line: 490, type: !3274, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !21, !3056, !647, !35, !647, !2966, !2966, !2966}
!3276 = !DILocalVariable(name: "seed_sol", arg: 1, scope: !3273, file: !2295, line: 491, type: !21)
!3277 = !DILocation(line: 0, scope: !3273)
!3278 = !DILocalVariable(name: "A", arg: 2, scope: !3273, file: !2295, line: 492, type: !3056)
!3279 = !DILocalVariable(name: "perm", arg: 3, scope: !3273, file: !2295, line: 493, type: !647)
!3280 = !DILocalVariable(name: "rank", arg: 4, scope: !3273, file: !2295, line: 494, type: !35)
!3281 = !DILocalVariable(name: "index", arg: 5, scope: !3273, file: !2295, line: 495, type: !647)
!3282 = !DILocalVariable(name: "b", arg: 6, scope: !3273, file: !2295, line: 496, type: !2966)
!3283 = !DILocalVariable(name: "x", arg: 7, scope: !3273, file: !2295, line: 497, type: !2966)
!3284 = !DILocalVariable(name: "b2", arg: 8, scope: !3273, file: !2295, line: 498, type: !2966)
!3285 = !DILocalVariable(name: "o", scope: !3273, file: !2295, line: 500, type: !35)
!3286 = !DILocation(line: 500, column: 13, scope: !3273)
!3287 = !DILocalVariable(name: "random_buff", scope: !3273, file: !2295, line: 502, type: !3288)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 432, elements: !110)
!3289 = !DILocation(line: 502, column: 11, scope: !3273)
!3290 = !DILocalVariable(name: "random_element", scope: !3273, file: !2295, line: 503, type: !82)
!3291 = !DILocation(line: 504, column: 11, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3273, file: !2295, line: 504, column: 6)
!3293 = !DILocation(line: 504, column: 22, scope: !3292)
!3294 = !DILocalVariable(name: "i", scope: !3273, file: !2295, line: 500, type: !35)
!3295 = !DILocation(line: 506, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3273, file: !2295, line: 506, column: 3)
!3297 = !DILocation(line: 506, scope: !3296)
!3298 = !DILocation(line: 506, column: 13, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3296, file: !2295, line: 506, column: 3)
!3300 = !DILocation(line: 506, column: 3, scope: !3296)
!3301 = !DILocation(line: 508, column: 5, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !2295, line: 508, column: 5)
!3303 = distinct !DILexicalBlock(scope: !3299, file: !2295, line: 506, column: 24)
!3304 = !DILocation(line: 518, column: 3, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3273, file: !2295, line: 518, column: 3)
!3306 = !DILocation(line: 508, scope: !3302)
!3307 = !DILocation(line: 0, scope: !3303)
!3308 = !DILocalVariable(name: "t", scope: !3303, file: !2295, line: 507, type: !23)
!3309 = !DILocalVariable(name: "j", scope: !3273, file: !2295, line: 500, type: !35)
!3310 = !DILocation(line: 508, column: 14, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3302, file: !2295, line: 508, column: 5)
!3312 = !DILocation(line: 509, column: 23, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3311, file: !2295, line: 508, column: 21)
!3314 = !DILocation(line: 509, column: 13, scope: !3313)
!3315 = !DILocation(line: 509, column: 46, scope: !3313)
!3316 = !DILocation(line: 509, column: 36, scope: !3313)
!3317 = !DILocation(line: 509, column: 33, scope: !3313)
!3318 = !DILocation(line: 509, column: 9, scope: !3313)
!3319 = !DILocation(line: 508, column: 18, scope: !3311)
!3320 = !DILocation(line: 508, column: 5, scope: !3311)
!3321 = distinct !{!3321, !3301, !3322, !200}
!3322 = !DILocation(line: 510, column: 5, scope: !3302)
!3323 = !DILocation(line: 511, column: 21, scope: !3303)
!3324 = !DILocation(line: 511, column: 14, scope: !3303)
!3325 = !DILocalVariable(name: "tmp", scope: !3303, file: !2295, line: 511, type: !87)
!3326 = !DILocation(line: 512, column: 9, scope: !3303)
!3327 = !DILocalVariable(name: "k", scope: !3273, file: !2295, line: 500, type: !35)
!3328 = !DILocation(line: 513, column: 18, scope: !3303)
!3329 = !DILocation(line: 513, column: 11, scope: !3303)
!3330 = !DILocation(line: 514, column: 31, scope: !3303)
!3331 = !DILocation(line: 514, column: 24, scope: !3303)
!3332 = !DILocation(line: 514, column: 13, scope: !3303)
!3333 = !DILocation(line: 514, column: 5, scope: !3303)
!3334 = !DILocation(line: 514, column: 11, scope: !3303)
!3335 = !DILocation(line: 506, column: 21, scope: !3299)
!3336 = !DILocation(line: 506, column: 3, scope: !3299)
!3337 = distinct !{!3337, !3300, !3338, !200}
!3338 = !DILocation(line: 515, column: 3, scope: !3296)
!3339 = !DILocation(line: 503, column: 13, scope: !3273)
!3340 = !DILocation(line: 518, scope: !3305)
!3341 = !DILocation(line: 518, column: 20, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3305, file: !2295, line: 518, column: 3)
!3343 = !DILocation(line: 529, column: 3, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3273, file: !2295, line: 529, column: 3)
!3345 = !DILocation(line: 519, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3342, file: !2295, line: 518, column: 29)
!3347 = !DILocation(line: 520, column: 5, scope: !3346)
!3348 = !DILocation(line: 520, column: 14, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !2295, line: 520, column: 5)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !2295, line: 520, column: 5)
!3351 = !DILocation(line: 520, column: 5, scope: !3350)
!3352 = !DILocation(line: 523, column: 5, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3346, file: !2295, line: 523, column: 5)
!3354 = !DILocation(line: 520, column: 31, scope: !3349)
!3355 = !DILocation(line: 520, column: 24, scope: !3349)
!3356 = !DILocation(line: 520, column: 29, scope: !3349)
!3357 = !DILocation(line: 520, column: 46, scope: !3349)
!3358 = !DILocation(line: 520, column: 20, scope: !3349)
!3359 = !DILocation(line: 520, column: 5, scope: !3349)
!3360 = distinct !{!3360, !3351, !3361, !200}
!3361 = !DILocation(line: 520, column: 46, scope: !3350)
!3362 = !DILocation(line: 0, scope: !3346)
!3363 = !DILocation(line: 523, scope: !3353)
!3364 = !DILocalVariable(name: "t", scope: !3346, file: !2295, line: 522, type: !23)
!3365 = !DILocation(line: 523, column: 16, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3353, file: !2295, line: 523, column: 5)
!3367 = !DILocation(line: 524, column: 23, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3366, file: !2295, line: 523, column: 31)
!3369 = !DILocation(line: 524, column: 13, scope: !3368)
!3370 = !DILocation(line: 524, column: 47, scope: !3368)
!3371 = !DILocation(line: 524, column: 36, scope: !3368)
!3372 = !DILocation(line: 524, column: 33, scope: !3368)
!3373 = !DILocation(line: 524, column: 9, scope: !3368)
!3374 = !DILocation(line: 523, column: 5, scope: !3366)
!3375 = distinct !{!3375, !3352, !3376, !200}
!3376 = !DILocation(line: 525, column: 5, scope: !3353)
!3377 = !DILocation(line: 526, column: 19, scope: !3346)
!3378 = !DILocation(line: 526, column: 33, scope: !3346)
!3379 = !DILocation(line: 526, column: 26, scope: !3346)
!3380 = !DILocation(line: 526, column: 12, scope: !3346)
!3381 = !DILocation(line: 526, column: 5, scope: !3346)
!3382 = !DILocation(line: 526, column: 10, scope: !3346)
!3383 = !DILocation(line: 527, column: 6, scope: !3346)
!3384 = !DILocation(line: 518, column: 3, scope: !3342)
!3385 = distinct !{!3385, !3304, !3386, !200}
!3386 = !DILocation(line: 528, column: 3, scope: !3305)
!3387 = !DILocation(line: 529, column: 12, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3344, file: !2295, line: 529, column: 3)
!3389 = !DILocation(line: 529, column: 30, scope: !3388)
!3390 = !DILocation(line: 529, column: 23, scope: !3388)
!3391 = !DILocation(line: 529, column: 28, scope: !3388)
!3392 = !DILocation(line: 529, column: 45, scope: !3388)
!3393 = !DILocation(line: 529, column: 19, scope: !3388)
!3394 = !DILocation(line: 529, column: 3, scope: !3388)
!3395 = distinct !{!3395, !3343, !3396, !200}
!3396 = !DILocation(line: 529, column: 45, scope: !3344)
!3397 = !DILocation(line: 530, column: 3, scope: !3273)
!3398 = distinct !DISubprogram(name: "pack_0", scope: !2295, file: !2295, line: 533, type: !3399, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !2966, !2583}
!3401 = !DILocalVariable(name: "oil_u", arg: 1, scope: !3398, file: !2295, line: 533, type: !2966)
!3402 = !DILocation(line: 0, scope: !3398)
!3403 = !DILocalVariable(name: "oil", arg: 2, scope: !3398, file: !2295, line: 533, type: !2583)
!3404 = !DILocalVariable(name: "s", scope: !3398, file: !2295, line: 534, type: !2966)
!3405 = !DILocalVariable(name: "i", scope: !3406, file: !2295, line: 535, type: !35)
!3406 = distinct !DILexicalBlock(scope: !3398, file: !2295, line: 535, column: 3)
!3407 = !DILocation(line: 0, scope: !3406)
!3408 = !DILocation(line: 535, column: 7, scope: !3406)
!3409 = !DILocation(line: 534, column: 8, scope: !3398)
!3410 = !DILocation(line: 535, scope: !3406)
!3411 = !DILocation(line: 535, column: 17, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3406, file: !2295, line: 535, column: 3)
!3413 = !DILocation(line: 535, column: 3, scope: !3406)
!3414 = !DILocation(line: 536, column: 5, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3412, file: !2295, line: 536, column: 5)
!3416 = !DILocation(line: 536, scope: !3415)
!3417 = !DILocalVariable(name: "k", scope: !3415, file: !2295, line: 536, type: !35)
!3418 = !DILocation(line: 0, scope: !3415)
!3419 = !DILocation(line: 536, column: 19, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3415, file: !2295, line: 536, column: 5)
!3421 = !DILocation(line: 537, column: 19, scope: !3420)
!3422 = !DILocation(line: 537, column: 7, scope: !3420)
!3423 = !DILocation(line: 537, column: 17, scope: !3420)
!3424 = !DILocation(line: 537, column: 21, scope: !3420)
!3425 = !DILocation(line: 536, column: 30, scope: !3420)
!3426 = !DILocation(line: 536, column: 5, scope: !3420)
!3427 = distinct !{!3427, !3414, !3428, !200}
!3428 = !DILocation(line: 537, column: 21, scope: !3415)
!3429 = !DILocation(line: 535, column: 28, scope: !3412)
!3430 = !DILocation(line: 535, column: 3, scope: !3412)
!3431 = distinct !{!3431, !3413, !3432, !200}
!3432 = !DILocation(line: 537, column: 21, scope: !3406)
!3433 = !DILocation(line: 538, column: 1, scope: !3398)
!3434 = distinct !DISubprogram(name: "SIG_GEN", scope: !2295, file: !2295, line: 581, type: !3435, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !3437, !3439, !3441, !82}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!3443 = !DILocalVariable(name: "oil", arg: 1, scope: !3434, file: !2295, line: 581, type: !3437)
!3444 = !DILocation(line: 0, scope: !3434)
!3445 = !DILocalVariable(name: "Sd", arg: 2, scope: !3434, file: !2295, line: 581, type: !3439)
!3446 = !DILocalVariable(name: "vineger", arg: 3, scope: !3434, file: !2295, line: 581, type: !3441)
!3447 = !DILocalVariable(name: "sig", arg: 4, scope: !3434, file: !2295, line: 581, type: !82)
!3448 = !DILocalVariable(name: "i", scope: !3449, file: !2295, line: 582, type: !35)
!3449 = distinct !DILexicalBlock(scope: !3434, file: !2295, line: 582, column: 3)
!3450 = !DILocation(line: 0, scope: !3449)
!3451 = !DILocation(line: 582, column: 7, scope: !3449)
!3452 = !DILocation(line: 582, scope: !3449)
!3453 = !DILocation(line: 582, column: 16, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3449, file: !2295, line: 582, column: 3)
!3455 = !DILocation(line: 582, column: 3, scope: !3449)
!3456 = !DILocation(line: 584, column: 5, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !2295, line: 584, column: 5)
!3458 = distinct !DILexicalBlock(scope: !3454, file: !2295, line: 582, column: 29)
!3459 = !DILocation(line: 589, column: 3, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3434, file: !2295, line: 589, column: 3)
!3461 = !DILocation(line: 584, scope: !3457)
!3462 = !DILocalVariable(name: "j", scope: !3457, file: !2295, line: 584, type: !35)
!3463 = !DILocation(line: 0, scope: !3457)
!3464 = !DILocation(line: 584, column: 18, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3457, file: !2295, line: 584, column: 5)
!3466 = !DILocation(line: 584, column: 39, scope: !3465)
!3467 = !DILocation(line: 584, column: 32, scope: !3465)
!3468 = !DILocation(line: 584, column: 37, scope: !3465)
!3469 = !DILocation(line: 584, column: 28, scope: !3465)
!3470 = !DILocation(line: 584, column: 5, scope: !3465)
!3471 = distinct !{!3471, !3456, !3472, !200}
!3472 = !DILocation(line: 584, column: 51, scope: !3457)
!3473 = !DILocalVariable(name: "t", scope: !3458, file: !2295, line: 585, type: !86)
!3474 = !DILocation(line: 585, column: 8, scope: !3458)
!3475 = !DILocation(line: 586, column: 32, scope: !3458)
!3476 = !DILocation(line: 586, column: 5, scope: !3458)
!3477 = !DILocation(line: 587, column: 19, scope: !3458)
!3478 = !DILocation(line: 587, column: 5, scope: !3458)
!3479 = !DILocation(line: 582, column: 26, scope: !3454)
!3480 = !DILocation(line: 582, column: 3, scope: !3454)
!3481 = distinct !{!3481, !3455, !3482, !200}
!3482 = !DILocation(line: 588, column: 3, scope: !3449)
!3483 = !DILocation(line: 589, scope: !3460)
!3484 = !DILocalVariable(name: "i", scope: !3460, file: !2295, line: 589, type: !35)
!3485 = !DILocation(line: 0, scope: !3460)
!3486 = !DILocation(line: 589, column: 22, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3460, file: !2295, line: 589, column: 3)
!3488 = !DILocation(line: 591, column: 5, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !2295, line: 591, column: 5)
!3490 = distinct !DILexicalBlock(scope: !3487, file: !2295, line: 589, column: 35)
!3491 = !DILocation(line: 591, scope: !3489)
!3492 = !DILocalVariable(name: "j", scope: !3489, file: !2295, line: 591, type: !35)
!3493 = !DILocation(line: 0, scope: !3489)
!3494 = !DILocation(line: 591, column: 18, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3489, file: !2295, line: 591, column: 5)
!3496 = !DILocation(line: 592, column: 5, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3490, file: !2295, line: 592, column: 5)
!3498 = !DILocation(line: 591, column: 47, scope: !3495)
!3499 = !DILocation(line: 591, column: 39, scope: !3495)
!3500 = !DILocation(line: 591, column: 32, scope: !3495)
!3501 = !DILocation(line: 591, column: 37, scope: !3495)
!3502 = !DILocation(line: 591, column: 28, scope: !3495)
!3503 = !DILocation(line: 591, column: 5, scope: !3495)
!3504 = distinct !{!3504, !3488, !3505, !200}
!3505 = !DILocation(line: 591, column: 55, scope: !3489)
!3506 = !DILocation(line: 592, scope: !3497)
!3507 = !DILocalVariable(name: "j", scope: !3497, file: !2295, line: 592, type: !35)
!3508 = !DILocation(line: 0, scope: !3497)
!3509 = !DILocation(line: 592, column: 18, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3497, file: !2295, line: 592, column: 5)
!3511 = !DILocation(line: 592, column: 57, scope: !3510)
!3512 = !DILocation(line: 592, column: 32, scope: !3510)
!3513 = !DILocation(line: 592, column: 55, scope: !3510)
!3514 = !DILocation(line: 592, column: 28, scope: !3510)
!3515 = !DILocation(line: 592, column: 5, scope: !3510)
!3516 = distinct !{!3516, !3496, !3517, !200}
!3517 = !DILocation(line: 592, column: 60, scope: !3497)
!3518 = !DILocation(line: 589, column: 32, scope: !3487)
!3519 = !DILocation(line: 589, column: 3, scope: !3487)
!3520 = distinct !{!3520, !3459, !3521, !200}
!3521 = !DILocation(line: 593, column: 3, scope: !3460)
!3522 = !DILocation(line: 594, column: 1, scope: !3434)
!3523 = distinct !DISubprogram(name: "Fql_sub", scope: !85, file: !85, line: 48, type: !2962, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3524 = !DILocalVariable(name: "X", arg: 1, scope: !3523, file: !85, line: 48, type: !2964)
!3525 = !DILocation(line: 0, scope: !3523)
!3526 = !DILocalVariable(name: "Y", arg: 2, scope: !3523, file: !85, line: 48, type: !2964)
!3527 = !DILocalVariable(name: "Z", arg: 3, scope: !3523, file: !85, line: 48, type: !2966)
!3528 = !DILocalVariable(name: "i", scope: !3529, file: !85, line: 49, type: !35)
!3529 = distinct !DILexicalBlock(scope: !3523, file: !85, line: 49, column: 3)
!3530 = !DILocation(line: 0, scope: !3529)
!3531 = !DILocation(line: 49, column: 7, scope: !3529)
!3532 = !DILocation(line: 49, scope: !3529)
!3533 = !DILocation(line: 49, column: 17, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3529, file: !85, line: 49, column: 3)
!3535 = !DILocation(line: 49, column: 3, scope: !3529)
!3536 = !DILocation(line: 49, column: 46, scope: !3534)
!3537 = !DILocation(line: 49, column: 52, scope: !3534)
!3538 = !DILocation(line: 49, column: 39, scope: !3534)
!3539 = !DILocation(line: 49, column: 32, scope: !3534)
!3540 = !DILocation(line: 49, column: 37, scope: !3534)
!3541 = !DILocation(line: 49, column: 28, scope: !3534)
!3542 = !DILocation(line: 49, column: 3, scope: !3534)
!3543 = distinct !{!3543, !3535, !3544, !200}
!3544 = !DILocation(line: 49, column: 56, scope: !3529)
!3545 = !DILocation(line: 50, column: 1, scope: !3523)
!3546 = distinct !DISubprogram(name: "Expand_sol", scope: !2295, file: !2295, line: 359, type: !3547, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !21, !82}
!3549 = !DILocalVariable(name: "seed_sol", arg: 1, scope: !3546, file: !2295, line: 360, type: !21)
!3550 = !DILocation(line: 0, scope: !3546)
!3551 = !DILocalVariable(name: "dst", arg: 2, scope: !3546, file: !2295, line: 361, type: !82)
!3552 = !DILocalVariable(name: "n4", scope: !3546, file: !2295, line: 363, type: !2370)
!3553 = !DILocalVariable(name: "r4", scope: !3546, file: !2295, line: 364, type: !3182)
!3554 = !DILocation(line: 364, column: 11, scope: !3546)
!3555 = !DILocation(line: 365, column: 25, scope: !3546)
!3556 = !DILocalVariable(name: "ctx", scope: !3546, file: !2295, line: 365, type: !2330)
!3557 = !DILocation(line: 366, column: 3, scope: !3546)
!3558 = !DILocation(line: 367, column: 3, scope: !3546)
!3559 = !DILocation(line: 368, column: 3, scope: !3546)
!3560 = !DILocation(line: 369, column: 1, scope: !3546)
!3561 = distinct !DISubprogram(name: "Fq_inv", scope: !85, file: !85, line: 24, type: !3562, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!87, !87}
!3564 = !DILocalVariable(name: "X", arg: 1, scope: !3561, file: !85, line: 24, type: !87)
!3565 = !DILocation(line: 0, scope: !3561)
!3566 = !DILocation(line: 24, column: 73, scope: !3561)
!3567 = !DILocation(line: 24, column: 66, scope: !3561)
!3568 = distinct !DISubprogram(name: "Fq_mul", scope: !85, file: !85, line: 23, type: !2950, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3569 = !DILocalVariable(name: "X", arg: 1, scope: !3568, file: !85, line: 23, type: !87)
!3570 = !DILocation(line: 0, scope: !3568)
!3571 = !DILocalVariable(name: "Y", arg: 2, scope: !3568, file: !85, line: 23, type: !87)
!3572 = !DILocation(line: 23, column: 51, scope: !3568)
!3573 = !DILocation(line: 23, column: 61, scope: !3568)
!3574 = !DILocation(line: 23, column: 59, scope: !3568)
!3575 = !DILocation(line: 23, column: 70, scope: !3568)
!3576 = !DILocation(line: 23, column: 45, scope: !3568)
!3577 = !DILocation(line: 23, column: 38, scope: !3568)
!3578 = distinct !DISubprogram(name: "L_inverse", scope: !2295, file: !2295, line: 439, type: !3579, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3056, !647, !35, !3056}
!3581 = !DILocalVariable(name: "A", arg: 1, scope: !3578, file: !2295, line: 440, type: !3056)
!3582 = !DILocation(line: 0, scope: !3578)
!3583 = !DILocalVariable(name: "perm", arg: 2, scope: !3578, file: !2295, line: 441, type: !647)
!3584 = !DILocalVariable(name: "rank", arg: 3, scope: !3578, file: !2295, line: 442, type: !35)
!3585 = !DILocalVariable(name: "R", arg: 4, scope: !3578, file: !2295, line: 443, type: !3056)
!3586 = !DILocation(line: 445, column: 3, scope: !3578)
!3587 = !DILocalVariable(name: "i", scope: !3588, file: !2295, line: 447, type: !35)
!3588 = distinct !DILexicalBlock(scope: !3578, file: !2295, line: 447, column: 3)
!3589 = !DILocation(line: 0, scope: !3588)
!3590 = !DILocation(line: 447, column: 7, scope: !3588)
!3591 = !DILocation(line: 447, scope: !3588)
!3592 = !DILocation(line: 447, column: 16, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3588, file: !2295, line: 447, column: 3)
!3594 = !DILocation(line: 447, column: 3, scope: !3588)
!3595 = !DILocation(line: 448, column: 16, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3593, file: !2295, line: 447, column: 26)
!3597 = !DILocalVariable(name: "pivot", scope: !3596, file: !2295, line: 448, type: !87)
!3598 = !DILocation(line: 0, scope: !3596)
!3599 = !DILocation(line: 449, column: 16, scope: !3596)
!3600 = !DILocalVariable(name: "inv", scope: !3596, file: !2295, line: 449, type: !87)
!3601 = !DILocalVariable(name: "k", scope: !3602, file: !2295, line: 450, type: !35)
!3602 = distinct !DILexicalBlock(scope: !3596, file: !2295, line: 450, column: 5)
!3603 = !DILocation(line: 0, scope: !3602)
!3604 = !DILocation(line: 450, column: 9, scope: !3602)
!3605 = !DILocation(line: 450, scope: !3602)
!3606 = !DILocation(line: 450, column: 18, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3602, file: !2295, line: 450, column: 5)
!3608 = !DILocation(line: 450, column: 5, scope: !3602)
!3609 = !DILocation(line: 451, column: 5, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3596, file: !2295, line: 451, column: 5)
!3611 = !DILocation(line: 450, column: 44, scope: !3607)
!3612 = !DILocation(line: 450, column: 37, scope: !3607)
!3613 = !DILocation(line: 450, column: 27, scope: !3607)
!3614 = !DILocation(line: 450, column: 35, scope: !3607)
!3615 = !DILocation(line: 450, column: 23, scope: !3607)
!3616 = !DILocation(line: 450, column: 5, scope: !3607)
!3617 = distinct !{!3617, !3608, !3618, !200}
!3618 = !DILocation(line: 450, column: 55, scope: !3602)
!3619 = distinct !{!3619, !3609, !3620, !200}
!3620 = !DILocation(line: 455, column: 5, scope: !3610)
!3621 = !DILocation(line: 451, scope: !3610)
!3622 = !DILocalVariable(name: "j", scope: !3610, file: !2295, line: 451, type: !35)
!3623 = !DILocation(line: 0, scope: !3610)
!3624 = !DILocation(line: 451, column: 20, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3610, file: !2295, line: 451, column: 5)
!3626 = !DILocation(line: 452, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !2295, line: 452, column: 7)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !2295, line: 451, column: 33)
!3629 = !DILocation(line: 452, scope: !3627)
!3630 = !DILocalVariable(name: "k", scope: !3627, file: !2295, line: 452, type: !35)
!3631 = !DILocation(line: 0, scope: !3627)
!3632 = !DILocation(line: 452, column: 20, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3627, file: !2295, line: 452, column: 7)
!3634 = !DILocation(line: 453, column: 27, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3633, file: !2295, line: 452, column: 28)
!3636 = !DILocation(line: 453, column: 43, scope: !3635)
!3637 = !DILocation(line: 453, column: 52, scope: !3635)
!3638 = !DILocation(line: 453, column: 36, scope: !3635)
!3639 = !DILocation(line: 453, column: 20, scope: !3635)
!3640 = !DILocation(line: 453, column: 9, scope: !3635)
!3641 = !DILocation(line: 453, column: 18, scope: !3635)
!3642 = !DILocation(line: 452, column: 25, scope: !3633)
!3643 = !DILocation(line: 452, column: 7, scope: !3633)
!3644 = distinct !{!3644, !3626, !3645, !200}
!3645 = !DILocation(line: 454, column: 7, scope: !3627)
!3646 = !DILocation(line: 447, column: 23, scope: !3593)
!3647 = !DILocation(line: 447, column: 3, scope: !3593)
!3648 = distinct !{!3648, !3594, !3649, !200}
!3649 = !DILocation(line: 456, column: 3, scope: !3588)
!3650 = !DILocation(line: 457, column: 1, scope: !3578)
!3651 = distinct !DISubprogram(name: "Fq_mxm_identity", scope: !2295, file: !2295, line: 434, type: !3652, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !3056}
!3654 = !DILocalVariable(name: "A", arg: 1, scope: !3651, file: !2295, line: 434, type: !3056)
!3655 = !DILocation(line: 0, scope: !3651)
!3656 = !DILocation(line: 435, column: 3, scope: !3651)
!3657 = !DILocalVariable(name: "i", scope: !3658, file: !2295, line: 436, type: !35)
!3658 = distinct !DILexicalBlock(scope: !3651, file: !2295, line: 436, column: 3)
!3659 = !DILocation(line: 0, scope: !3658)
!3660 = !DILocation(line: 436, column: 7, scope: !3658)
!3661 = !DILocation(line: 436, scope: !3658)
!3662 = !DILocation(line: 436, column: 16, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3658, file: !2295, line: 436, column: 3)
!3664 = !DILocation(line: 436, column: 3, scope: !3658)
!3665 = !DILocation(line: 436, column: 30, scope: !3663)
!3666 = !DILocation(line: 436, column: 38, scope: !3663)
!3667 = !DILocation(line: 436, column: 26, scope: !3663)
!3668 = !DILocation(line: 436, column: 3, scope: !3663)
!3669 = distinct !{!3669, !3664, !3670, !200}
!3670 = !DILocation(line: 436, column: 40, scope: !3658)
!3671 = !DILocation(line: 437, column: 1, scope: !3651)
!3672 = distinct !DISubprogram(name: "echelon_form_init", scope: !2295, file: !2295, line: 377, type: !3673, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{null, !647, !647, !647}
!3675 = !DILocalVariable(name: "perm", arg: 1, scope: !3672, file: !2295, line: 377, type: !647)
!3676 = !DILocation(line: 0, scope: !3672)
!3677 = !DILocalVariable(name: "rank", arg: 2, scope: !3672, file: !2295, line: 377, type: !647)
!3678 = !DILocalVariable(name: "index", arg: 3, scope: !3672, file: !2295, line: 377, type: !647)
!3679 = !DILocalVariable(name: "i", scope: !3680, file: !2295, line: 378, type: !35)
!3680 = distinct !DILexicalBlock(scope: !3672, file: !2295, line: 378, column: 3)
!3681 = !DILocation(line: 0, scope: !3680)
!3682 = !DILocation(line: 378, column: 7, scope: !3680)
!3683 = !DILocation(line: 378, scope: !3680)
!3684 = !DILocation(line: 378, column: 16, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3680, file: !2295, line: 378, column: 3)
!3686 = !DILocation(line: 378, column: 3, scope: !3680)
!3687 = !DILocation(line: 378, column: 30, scope: !3685)
!3688 = !DILocation(line: 378, column: 38, scope: !3685)
!3689 = !DILocation(line: 378, column: 26, scope: !3685)
!3690 = !DILocation(line: 378, column: 3, scope: !3685)
!3691 = distinct !{!3691, !3686, !3692, !200}
!3692 = !DILocation(line: 378, column: 40, scope: !3680)
!3693 = !DILocation(line: 379, column: 9, scope: !3672)
!3694 = !DILocation(line: 380, column: 3, scope: !3672)
!3695 = !DILocation(line: 381, column: 1, scope: !3672)
!3696 = distinct !DISubprogram(name: "row_swap", scope: !2295, file: !2295, line: 383, type: !3697, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !647, !35, !35}
!3699 = !DILocalVariable(name: "perm", arg: 1, scope: !3696, file: !2295, line: 383, type: !647)
!3700 = !DILocation(line: 0, scope: !3696)
!3701 = !DILocalVariable(name: "i", arg: 2, scope: !3696, file: !2295, line: 383, type: !35)
!3702 = !DILocalVariable(name: "j", arg: 3, scope: !3696, file: !2295, line: 383, type: !35)
!3703 = !DILocation(line: 384, column: 14, scope: !3696)
!3704 = !DILocalVariable(name: "tmp", scope: !3696, file: !2295, line: 384, type: !35)
!3705 = !DILocation(line: 385, column: 13, scope: !3696)
!3706 = !DILocation(line: 385, column: 3, scope: !3696)
!3707 = !DILocation(line: 385, column: 11, scope: !3696)
!3708 = !DILocation(line: 386, column: 3, scope: !3696)
!3709 = !DILocation(line: 386, column: 11, scope: !3696)
!3710 = !DILocation(line: 387, column: 1, scope: !3696)
!3711 = distinct !DISubprogram(name: "ExpandVectorV", scope: !2295, file: !2295, line: 264, type: !3712, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !82, !2605}
!3714 = !DILocalVariable(name: "src", arg: 1, scope: !3711, file: !2295, line: 265, type: !82)
!3715 = !DILocation(line: 0, scope: !3711)
!3716 = !DILocalVariable(name: "A", arg: 2, scope: !3711, file: !2295, line: 266, type: !2605)
!3717 = !DILocalVariable(name: "s", scope: !3711, file: !2295, line: 268, type: !82)
!3718 = !DILocalVariable(name: "i", scope: !3719, file: !2295, line: 269, type: !35)
!3719 = distinct !DILexicalBlock(scope: !3711, file: !2295, line: 269, column: 3)
!3720 = !DILocation(line: 0, scope: !3719)
!3721 = !DILocation(line: 269, column: 7, scope: !3719)
!3722 = !DILocation(line: 268, column: 13, scope: !3711)
!3723 = !DILocation(line: 269, scope: !3719)
!3724 = !DILocation(line: 269, column: 16, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3719, file: !2295, line: 269, column: 3)
!3726 = !DILocation(line: 269, column: 3, scope: !3719)
!3727 = !DILocation(line: 269, column: 30, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3725, file: !2295, line: 269, column: 30)
!3729 = !DILocation(line: 269, scope: !3728)
!3730 = !DILocalVariable(name: "k", scope: !3728, file: !2295, line: 269, type: !35)
!3731 = !DILocation(line: 0, scope: !3728)
!3732 = !DILocation(line: 269, column: 43, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3728, file: !2295, line: 269, column: 30)
!3734 = !DILocation(line: 269, column: 67, scope: !3733)
!3735 = !DILocation(line: 269, column: 57, scope: !3733)
!3736 = !DILocation(line: 269, column: 65, scope: !3733)
!3737 = !DILocation(line: 269, column: 69, scope: !3733)
!3738 = !DILocation(line: 269, column: 53, scope: !3733)
!3739 = !DILocation(line: 269, column: 30, scope: !3733)
!3740 = distinct !{!3740, !3727, !3741, !200}
!3741 = !DILocation(line: 269, column: 69, scope: !3728)
!3742 = !DILocation(line: 269, column: 26, scope: !3725)
!3743 = !DILocation(line: 269, column: 3, scope: !3725)
!3744 = distinct !{!3744, !3726, !3745, !200}
!3745 = !DILocation(line: 269, column: 69, scope: !3719)
!3746 = !DILocation(line: 270, column: 3, scope: !3711)
!3747 = !DILocation(line: 271, column: 1, scope: !3711)
!3748 = distinct !DISubprogram(name: "QRUOV_Verify", scope: !2295, file: !2295, line: 741, type: !3749, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!35, !21, !3751, !21, !2721, !21}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!3753 = !DILocalVariable(name: "seed_pk", arg: 1, scope: !3748, file: !2295, line: 742, type: !21)
!3754 = !DILocation(line: 0, scope: !3748)
!3755 = !DILocalVariable(name: "P3", arg: 2, scope: !3748, file: !2295, line: 743, type: !3751)
!3756 = !DILocalVariable(name: "message", arg: 3, scope: !3748, file: !2295, line: 744, type: !21)
!3757 = !DILocalVariable(name: "message_length", arg: 4, scope: !3748, file: !2295, line: 745, type: !2721)
!3758 = !DILocalVariable(name: "sig", arg: 5, scope: !3748, file: !2295, line: 746, type: !21)
!3759 = !DILocalVariable(name: "mu", scope: !3748, file: !2295, line: 749, type: !2891)
!3760 = !DILocation(line: 749, column: 11, scope: !3748)
!3761 = !DILocation(line: 750, column: 3, scope: !3748)
!3762 = !DILocalVariable(name: "msg", scope: !3748, file: !2295, line: 751, type: !2739)
!3763 = !DILocation(line: 751, column: 6, scope: !3748)
!3764 = !DILocation(line: 752, column: 3, scope: !3748)
!3765 = !DILocalVariable(name: "Pi1", scope: !3748, file: !2295, line: 754, type: !2318)
!3766 = !DILocation(line: 754, column: 14, scope: !3748)
!3767 = !DILocalVariable(name: "Pi2", scope: !3748, file: !2295, line: 755, type: !2304)
!3768 = !DILocation(line: 755, column: 14, scope: !3748)
!3769 = !DILocation(line: 757, column: 22, scope: !3748)
!3770 = !DILocalVariable(name: "y_", scope: !3748, file: !2295, line: 757, type: !3771)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!3773 = !DILocalVariable(name: "oil_", scope: !3748, file: !2295, line: 758, type: !3771)
!3774 = !DILocalVariable(name: "y", scope: !3748, file: !2295, line: 760, type: !2312)
!3775 = !DILocation(line: 760, column: 12, scope: !3748)
!3776 = !DILocalVariable(name: "oil", scope: !3748, file: !2295, line: 761, type: !104)
!3777 = !DILocation(line: 761, column: 12, scope: !3748)
!3778 = !DILocalVariable(name: "i", scope: !3779, file: !2295, line: 763, type: !35)
!3779 = distinct !DILexicalBlock(scope: !3748, file: !2295, line: 763, column: 3)
!3780 = !DILocation(line: 0, scope: !3779)
!3781 = !DILocation(line: 763, column: 7, scope: !3779)
!3782 = !DILocation(line: 763, scope: !3779)
!3783 = !DILocation(line: 763, column: 17, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3779, file: !2295, line: 763, column: 3)
!3785 = !DILocation(line: 763, column: 3, scope: !3779)
!3786 = !DILocation(line: 764, column: 5, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3784, file: !2295, line: 764, column: 5)
!3788 = !DILocation(line: 764, scope: !3787)
!3789 = !DILocalVariable(name: "k", scope: !3787, file: !2295, line: 764, type: !35)
!3790 = !DILocation(line: 0, scope: !3787)
!3791 = !DILocation(line: 764, column: 19, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !2295, line: 764, column: 5)
!3793 = !DILocation(line: 765, column: 17, scope: !3792)
!3794 = !DILocation(line: 765, column: 7, scope: !3792)
!3795 = !DILocation(line: 765, column: 15, scope: !3792)
!3796 = !DILocation(line: 764, column: 30, scope: !3792)
!3797 = !DILocation(line: 764, column: 5, scope: !3792)
!3798 = distinct !{!3798, !3786, !3799, !200}
!3799 = !DILocation(line: 765, column: 29, scope: !3787)
!3800 = !DILocation(line: 763, column: 28, scope: !3784)
!3801 = !DILocation(line: 763, column: 33, scope: !3784)
!3802 = !DILocation(line: 763, column: 3, scope: !3784)
!3803 = distinct !{!3803, !3785, !3804, !200}
!3804 = !DILocation(line: 765, column: 29, scope: !3779)
!3805 = !DILocation(line: 758, column: 39, scope: !3748)
!3806 = !DILocation(line: 766, column: 3, scope: !3748)
!3807 = !DILocalVariable(name: "i", scope: !3808, file: !2295, line: 769, type: !35)
!3808 = distinct !DILexicalBlock(scope: !3748, file: !2295, line: 769, column: 3)
!3809 = !DILocation(line: 0, scope: !3808)
!3810 = !DILocation(line: 769, column: 7, scope: !3808)
!3811 = !DILocation(line: 769, scope: !3808)
!3812 = !DILocation(line: 769, column: 17, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3808, file: !2295, line: 769, column: 3)
!3814 = !DILocation(line: 769, column: 3, scope: !3808)
!3815 = !DILocation(line: 770, column: 5, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3813, file: !2295, line: 770, column: 5)
!3817 = !DILocation(line: 770, scope: !3816)
!3818 = !DILocalVariable(name: "k", scope: !3816, file: !2295, line: 770, type: !35)
!3819 = !DILocation(line: 0, scope: !3816)
!3820 = !DILocation(line: 770, column: 19, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3816, file: !2295, line: 770, column: 5)
!3822 = !DILocation(line: 771, column: 19, scope: !3821)
!3823 = !DILocation(line: 771, column: 7, scope: !3821)
!3824 = !DILocation(line: 771, column: 17, scope: !3821)
!3825 = !DILocation(line: 770, column: 30, scope: !3821)
!3826 = !DILocation(line: 770, column: 5, scope: !3821)
!3827 = distinct !{!3827, !3815, !3828, !200}
!3828 = !DILocation(line: 771, column: 33, scope: !3816)
!3829 = !DILocation(line: 769, column: 28, scope: !3813)
!3830 = !DILocation(line: 769, column: 35, scope: !3813)
!3831 = !DILocation(line: 769, column: 3, scope: !3813)
!3832 = distinct !{!3832, !3814, !3833, !200}
!3833 = !DILocation(line: 771, column: 33, scope: !3808)
!3834 = !DILocation(line: 772, column: 3, scope: !3748)
!3835 = !DILocalVariable(name: "verify", scope: !3748, file: !2295, line: 774, type: !35)
!3836 = !DILocation(line: 776, column: 28, scope: !3748)
!3837 = !DILocalVariable(name: "ctx_pk", scope: !3748, file: !2295, line: 776, type: !2330)
!3838 = !DILocalVariable(name: "i", scope: !3839, file: !2295, line: 777, type: !35)
!3839 = distinct !DILexicalBlock(scope: !3748, file: !2295, line: 777, column: 3)
!3840 = !DILocation(line: 0, scope: !3839)
!3841 = !DILocation(line: 777, column: 7, scope: !3839)
!3842 = !DILocation(line: 777, scope: !3839)
!3843 = !DILocation(line: 777, column: 16, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3839, file: !2295, line: 777, column: 3)
!3845 = !DILocation(line: 777, column: 3, scope: !3839)
!3846 = !DILocation(line: 778, column: 23, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3844, file: !2295, line: 777, column: 29)
!3848 = !DILocation(line: 778, column: 5, scope: !3847)
!3849 = !DILocation(line: 779, column: 34, scope: !3847)
!3850 = !DILocation(line: 779, column: 49, scope: !3847)
!3851 = !DILocation(line: 779, column: 15, scope: !3847)
!3852 = !DILocation(line: 779, column: 12, scope: !3847)
!3853 = !DILocation(line: 780, column: 10, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3847, file: !2295, line: 780, column: 8)
!3855 = !DILocation(line: 780, column: 8, scope: !3854)
!3856 = !DILocation(line: 777, column: 26, scope: !3844)
!3857 = !DILocation(line: 777, column: 3, scope: !3844)
!3858 = distinct !{!3858, !3845, !3859, !200}
!3859 = !DILocation(line: 781, column: 3, scope: !3839)
!3860 = !DILocation(line: 782, column: 3, scope: !3748)
!3861 = !DILocation(line: 783, column: 3, scope: !3748)
!3862 = distinct !DISubprogram(name: "VERIFY_i", scope: !2295, file: !2295, line: 715, type: !3863, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!14, !3865, !3439, !3439, !3437, !3441, !2965}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!3867 = !DILocalVariable(name: "Pi1", arg: 1, scope: !3862, file: !2295, line: 715, type: !3865)
!3868 = !DILocation(line: 0, scope: !3862)
!3869 = !DILocalVariable(name: "Pi2", arg: 2, scope: !3862, file: !2295, line: 715, type: !3439)
!3870 = !DILocalVariable(name: "Pi3", arg: 3, scope: !3862, file: !2295, line: 715, type: !3439)
!3871 = !DILocalVariable(name: "oil", arg: 4, scope: !3862, file: !2295, line: 715, type: !3437)
!3872 = !DILocalVariable(name: "vineger", arg: 5, scope: !3862, file: !2295, line: 715, type: !3441)
!3873 = !DILocalVariable(name: "msg_i", arg: 6, scope: !3862, file: !2295, line: 715, type: !2965)
!3874 = !DILocalVariable(name: "tmp_v", scope: !3862, file: !2295, line: 718, type: !2312)
!3875 = !DILocation(line: 718, column: 12, scope: !3862)
!3876 = !DILocalVariable(name: "tmp_o", scope: !3862, file: !2295, line: 719, type: !104)
!3877 = !DILocation(line: 719, column: 12, scope: !3862)
!3878 = !DILocalVariable(name: "t", scope: !3862, file: !2295, line: 721, type: !86)
!3879 = !DILocation(line: 721, column: 6, scope: !3862)
!3880 = !DILocalVariable(name: "u", scope: !3862, file: !2295, line: 722, type: !86)
!3881 = !DILocation(line: 722, column: 6, scope: !3862)
!3882 = !DILocalVariable(name: "j", scope: !3862, file: !2295, line: 716, type: !35)
!3883 = !DILocation(line: 724, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3862, file: !2295, line: 724, column: 3)
!3885 = !DILocation(line: 724, scope: !3884)
!3886 = !DILocation(line: 724, column: 12, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3884, file: !2295, line: 724, column: 3)
!3888 = !DILocation(line: 724, column: 3, scope: !3884)
!3889 = !DILocation(line: 730, column: 3, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3862, file: !2295, line: 730, column: 3)
!3891 = !DILocation(line: 725, column: 34, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !2295, line: 724, column: 25)
!3893 = !DILocation(line: 725, column: 7, scope: !3892)
!3894 = !DILocation(line: 726, column: 38, scope: !3892)
!3895 = !DILocation(line: 726, column: 7, scope: !3892)
!3896 = !DILocalVariable(name: "k", scope: !3862, file: !2295, line: 716, type: !35)
!3897 = !DILocation(line: 727, column: 11, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3892, file: !2295, line: 727, column: 7)
!3899 = !DILocation(line: 727, scope: !3898)
!3900 = !DILocation(line: 727, column: 16, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3898, file: !2295, line: 727, column: 7)
!3902 = !DILocation(line: 727, column: 7, scope: !3898)
!3903 = !DILocation(line: 727, column: 58, scope: !3901)
!3904 = !DILocation(line: 727, column: 51, scope: !3901)
!3905 = !DILocation(line: 727, column: 69, scope: !3901)
!3906 = !DILocation(line: 727, column: 44, scope: !3901)
!3907 = !DILocation(line: 727, column: 30, scope: !3901)
!3908 = !DILocation(line: 727, column: 42, scope: !3901)
!3909 = !DILocation(line: 727, column: 26, scope: !3901)
!3910 = !DILocation(line: 727, column: 7, scope: !3901)
!3911 = distinct !{!3911, !3902, !3912, !200}
!3912 = !DILocation(line: 727, column: 73, scope: !3898)
!3913 = !DILocation(line: 724, column: 22, scope: !3887)
!3914 = !DILocation(line: 724, column: 3, scope: !3887)
!3915 = distinct !{!3915, !3888, !3916, !200}
!3916 = !DILocation(line: 728, column: 3, scope: !3884)
!3917 = !DILocation(line: 730, scope: !3890)
!3918 = !DILocation(line: 730, column: 12, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3890, file: !2295, line: 730, column: 3)
!3920 = !DILocation(line: 731, column: 34, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3919, file: !2295, line: 730, column: 25)
!3922 = !DILocation(line: 731, column: 7, scope: !3921)
!3923 = !DILocation(line: 732, column: 11, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3921, file: !2295, line: 732, column: 7)
!3925 = !DILocation(line: 732, scope: !3924)
!3926 = !DILocation(line: 732, column: 16, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3924, file: !2295, line: 732, column: 7)
!3928 = !DILocation(line: 732, column: 7, scope: !3924)
!3929 = !DILocation(line: 732, column: 44, scope: !3927)
!3930 = !DILocation(line: 732, column: 30, scope: !3927)
!3931 = !DILocation(line: 732, column: 42, scope: !3927)
!3932 = !DILocation(line: 732, column: 26, scope: !3927)
!3933 = !DILocation(line: 732, column: 7, scope: !3927)
!3934 = distinct !{!3934, !3928, !3935, !200}
!3935 = !DILocation(line: 732, column: 47, scope: !3924)
!3936 = !DILocation(line: 730, column: 22, scope: !3919)
!3937 = !DILocation(line: 730, column: 3, scope: !3919)
!3938 = distinct !{!3938, !3889, !3939, !200}
!3939 = !DILocation(line: 733, column: 3, scope: !3890)
!3940 = !DILocation(line: 735, column: 3, scope: !3862)
!3941 = !DILocation(line: 736, column: 3, scope: !3862)
!3942 = !DILocation(line: 738, column: 26, scope: !3862)
!3943 = !DILocation(line: 738, column: 43, scope: !3862)
!3944 = !DILocation(line: 738, column: 19, scope: !3862)
!3945 = !DILocation(line: 738, column: 16, scope: !3862)
!3946 = !DILocation(line: 738, column: 10, scope: !3862)
!3947 = !DILocation(line: 738, column: 3, scope: !3862)
!3948 = distinct !DISubprogram(name: "store_QRUOV_P3", scope: !2295, file: !2295, line: 790, type: !3949, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !98)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3751, !82, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!3952 = !DILocalVariable(name: "P3", arg: 1, scope: !3948, file: !2295, line: 791, type: !3751)
!3953 = !DILocation(line: 0, scope: !3948)
!3954 = !DILocalVariable(name: "pool", arg: 2, scope: !3948, file: !2295, line: 792, type: !82)
!3955 = !DILocalVariable(name: "pool_bits", arg: 3, scope: !3948, file: !2295, line: 793, type: !3951)
!3956 = !DILocalVariable(name: "i", scope: !3957, file: !2295, line: 795, type: !35)
!3957 = distinct !DILexicalBlock(scope: !3948, file: !2295, line: 795, column: 3)
!3958 = !DILocation(line: 0, scope: !3957)
!3959 = !DILocation(line: 795, column: 7, scope: !3957)
!3960 = !DILocation(line: 795, scope: !3957)
!3961 = !DILocation(line: 795, column: 17, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3957, file: !2295, line: 795, column: 3)
!3963 = !DILocation(line: 795, column: 3, scope: !3957)
!3964 = !DILocation(line: 796, column: 5, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !2295, line: 796, column: 5)
!3966 = distinct !DILexicalBlock(scope: !3962, file: !2295, line: 795, column: 31)
!3967 = !DILocation(line: 796, scope: !3965)
!3968 = !DILocalVariable(name: "j", scope: !3965, file: !2295, line: 796, type: !35)
!3969 = !DILocation(line: 0, scope: !3965)
!3970 = !DILocation(line: 796, column: 19, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3965, file: !2295, line: 796, column: 5)
!3972 = !DILocation(line: 797, column: 7, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !2295, line: 797, column: 7)
!3974 = distinct !DILexicalBlock(scope: !3971, file: !2295, line: 796, column: 33)
!3975 = !DILocation(line: 797, scope: !3973)
!3976 = !DILocalVariable(name: "k", scope: !3973, file: !2295, line: 797, type: !35)
!3977 = !DILocation(line: 0, scope: !3973)
!3978 = !DILocation(line: 797, column: 21, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3973, file: !2295, line: 797, column: 7)
!3980 = !DILocation(line: 798, column: 13, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !2295, line: 798, column: 12)
!3982 = distinct !DILexicalBlock(scope: !3979, file: !2295, line: 797, column: 35)
!3983 = !DILocation(line: 802, column: 11, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !2295, line: 802, column: 11)
!3985 = distinct !DILexicalBlock(scope: !3981, file: !2295, line: 801, column: 7)
!3986 = !DILocation(line: 802, scope: !3984)
!3987 = !DILocalVariable(name: "n", scope: !3984, file: !2295, line: 802, type: !35)
!3988 = !DILocation(line: 0, scope: !3984)
!3989 = !DILocation(line: 802, column: 25, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3984, file: !2295, line: 802, column: 11)
!3991 = !DILocation(line: 803, column: 22, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3990, file: !2295, line: 802, column: 39)
!3993 = !DILocation(line: 803, column: 13, scope: !3992)
!3994 = !DILocation(line: 802, column: 36, scope: !3990)
!3995 = !DILocation(line: 802, column: 11, scope: !3990)
!3996 = distinct !{!3996, !3983, !3997, !200}
!3997 = !DILocation(line: 804, column: 4, scope: !3984)
!3998 = !DILocation(line: 797, column: 32, scope: !3979)
!3999 = !DILocation(line: 797, column: 7, scope: !3979)
!4000 = distinct !{!4000, !3972, !4001, !200}
!4001 = !DILocation(line: 806, column: 7, scope: !3973)
!4002 = !DILocation(line: 796, column: 30, scope: !3971)
!4003 = !DILocation(line: 796, column: 5, scope: !3971)
!4004 = distinct !{!4004, !3964, !4005, !200}
!4005 = !DILocation(line: 807, column: 5, scope: !3965)
!4006 = !DILocation(line: 795, column: 28, scope: !3962)
!4007 = !DILocation(line: 795, column: 3, scope: !3962)
!4008 = distinct !{!4008, !3963, !4009, !200}
!4009 = !DILocation(line: 808, column: 3, scope: !3957)
!4010 = !DILocation(line: 809, column: 1, scope: !3948)
!4011 = distinct !DISubprogram(name: "store_Fq", scope: !85, file: !85, line: 121, type: !4012, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !35, !82, !3951}
!4014 = !DILocalVariable(name: "x", arg: 1, scope: !4011, file: !85, line: 122, type: !35)
!4015 = !DILocation(line: 0, scope: !4011)
!4016 = !DILocalVariable(name: "pool", arg: 2, scope: !4011, file: !85, line: 123, type: !82)
!4017 = !DILocalVariable(name: "pool_bits", arg: 3, scope: !4011, file: !85, line: 124, type: !3951)
!4018 = !DILocation(line: 126, column: 3, scope: !4011)
!4019 = !DILocation(line: 127, column: 1, scope: !4011)
!4020 = distinct !DISubprogram(name: "store_bits", scope: !85, file: !85, line: 78, type: !4021, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{null, !35, !2370, !82, !3951}
!4023 = !DILocalVariable(name: "x", arg: 1, scope: !4020, file: !85, line: 79, type: !35)
!4024 = !DILocation(line: 0, scope: !4020)
!4025 = !DILocalVariable(name: "num_bits", arg: 2, scope: !4020, file: !85, line: 80, type: !2370)
!4026 = !DILocalVariable(name: "pool", arg: 3, scope: !4020, file: !85, line: 81, type: !82)
!4027 = !DILocalVariable(name: "pool_bits", arg: 4, scope: !4020, file: !85, line: 82, type: !3951)
!4028 = !DILocation(line: 84, column: 24, scope: !4020)
!4029 = !DILocation(line: 84, column: 35, scope: !4020)
!4030 = !DILocalVariable(name: "shift", scope: !4020, file: !85, line: 84, type: !35)
!4031 = !DILocation(line: 85, column: 30, scope: !4020)
!4032 = !DILocalVariable(name: "index", scope: !4020, file: !85, line: 85, type: !19)
!4033 = !DILocalVariable(name: "mask", scope: !4020, file: !85, line: 86, type: !35)
!4034 = !DILocation(line: 88, column: 5, scope: !4020)
!4035 = !DILocation(line: 89, column: 5, scope: !4020)
!4036 = !DILocalVariable(name: "x0", scope: !4020, file: !85, line: 90, type: !14)
!4037 = !DILocation(line: 91, column: 12, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4020, file: !85, line: 91, column: 6)
!4039 = !DILocation(line: 90, column: 16, scope: !4020)
!4040 = !DILocation(line: 92, column: 5, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4038, file: !85, line: 91, column: 17)
!4042 = !DILocation(line: 92, column: 17, scope: !4041)
!4043 = !DILocation(line: 93, column: 3, scope: !4041)
!4044 = !DILocation(line: 94, column: 5, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4038, file: !85, line: 93, column: 8)
!4046 = !DILocation(line: 94, column: 17, scope: !4045)
!4047 = !DILocation(line: 96, column: 23, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4020, file: !85, line: 96, column: 6)
!4049 = !DILocation(line: 97, column: 21, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4048, file: !85, line: 96, column: 27)
!4051 = !DILocation(line: 97, column: 18, scope: !4050)
!4052 = !DILocalVariable(name: "x1", scope: !4050, file: !85, line: 97, type: !14)
!4053 = !DILocation(line: 0, scope: !4050)
!4054 = !DILocation(line: 98, column: 5, scope: !4050)
!4055 = !DILocation(line: 98, column: 19, scope: !4050)
!4056 = !DILocation(line: 99, column: 3, scope: !4050)
!4057 = !DILocation(line: 101, column: 14, scope: !4020)
!4058 = !DILocation(line: 102, column: 1, scope: !4020)
!4059 = distinct !DISubprogram(name: "restore_QRUOV_P3", scope: !2295, file: !2295, line: 811, type: !4060, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !98)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !21, !3951, !2298}
!4062 = !DILocalVariable(name: "pool", arg: 1, scope: !4059, file: !2295, line: 812, type: !21)
!4063 = !DILocation(line: 0, scope: !4059)
!4064 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4059, file: !2295, line: 813, type: !3951)
!4065 = !DILocalVariable(name: "P3", arg: 3, scope: !4059, file: !2295, line: 814, type: !2298)
!4066 = !DILocalVariable(name: "i", scope: !4067, file: !2295, line: 816, type: !35)
!4067 = distinct !DILexicalBlock(scope: !4059, file: !2295, line: 816, column: 3)
!4068 = !DILocation(line: 0, scope: !4067)
!4069 = !DILocation(line: 816, column: 7, scope: !4067)
!4070 = !DILocation(line: 816, scope: !4067)
!4071 = !DILocation(line: 816, column: 17, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4067, file: !2295, line: 816, column: 3)
!4073 = !DILocation(line: 816, column: 3, scope: !4067)
!4074 = !DILocation(line: 817, column: 5, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !2295, line: 817, column: 5)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !2295, line: 816, column: 31)
!4077 = !DILocation(line: 817, scope: !4075)
!4078 = !DILocalVariable(name: "j", scope: !4075, file: !2295, line: 817, type: !35)
!4079 = !DILocation(line: 0, scope: !4075)
!4080 = !DILocation(line: 817, column: 19, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4075, file: !2295, line: 817, column: 5)
!4082 = !DILocation(line: 818, column: 7, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !2295, line: 818, column: 7)
!4084 = distinct !DILexicalBlock(scope: !4081, file: !2295, line: 817, column: 33)
!4085 = !DILocation(line: 818, scope: !4083)
!4086 = !DILocalVariable(name: "k", scope: !4083, file: !2295, line: 818, type: !35)
!4087 = !DILocation(line: 0, scope: !4083)
!4088 = !DILocation(line: 818, column: 21, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4083, file: !2295, line: 818, column: 7)
!4090 = !DILocation(line: 819, column: 13, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !2295, line: 819, column: 12)
!4092 = distinct !DILexicalBlock(scope: !4089, file: !2295, line: 818, column: 35)
!4093 = !DILocation(line: 822, column: 11, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !2295, line: 822, column: 11)
!4095 = distinct !DILexicalBlock(scope: !4091, file: !2295, line: 821, column: 14)
!4096 = !DILocation(line: 820, column: 11, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !2295, line: 820, column: 11)
!4098 = distinct !DILexicalBlock(scope: !4091, file: !2295, line: 819, column: 16)
!4099 = !DILocation(line: 820, scope: !4097)
!4100 = !DILocalVariable(name: "n", scope: !4097, file: !2295, line: 820, type: !35)
!4101 = !DILocation(line: 0, scope: !4097)
!4102 = !DILocation(line: 820, column: 25, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4097, file: !2295, line: 820, column: 11)
!4104 = !DILocation(line: 820, column: 57, scope: !4103)
!4105 = !DILocation(line: 820, column: 40, scope: !4103)
!4106 = !DILocation(line: 820, column: 55, scope: !4103)
!4107 = !DILocation(line: 820, column: 36, scope: !4103)
!4108 = !DILocation(line: 820, column: 11, scope: !4103)
!4109 = distinct !{!4109, !4096, !4110, !200}
!4110 = !DILocation(line: 820, column: 70, scope: !4097)
!4111 = !DILocation(line: 822, scope: !4094)
!4112 = !DILocalVariable(name: "n", scope: !4094, file: !2295, line: 822, type: !35)
!4113 = !DILocation(line: 0, scope: !4094)
!4114 = !DILocation(line: 822, column: 25, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4094, file: !2295, line: 822, column: 11)
!4116 = !DILocation(line: 822, column: 57, scope: !4115)
!4117 = !DILocation(line: 822, column: 40, scope: !4115)
!4118 = !DILocation(line: 822, column: 55, scope: !4115)
!4119 = !DILocation(line: 822, column: 36, scope: !4115)
!4120 = !DILocation(line: 822, column: 11, scope: !4115)
!4121 = distinct !{!4121, !4093, !4122, !200}
!4122 = !DILocation(line: 822, column: 83, scope: !4094)
!4123 = !DILocation(line: 818, column: 32, scope: !4089)
!4124 = !DILocation(line: 818, column: 7, scope: !4089)
!4125 = distinct !{!4125, !4082, !4126, !200}
!4126 = !DILocation(line: 824, column: 7, scope: !4083)
!4127 = !DILocation(line: 817, column: 30, scope: !4081)
!4128 = !DILocation(line: 817, column: 5, scope: !4081)
!4129 = distinct !{!4129, !4074, !4130, !200}
!4130 = !DILocation(line: 825, column: 5, scope: !4075)
!4131 = !DILocation(line: 816, column: 28, scope: !4072)
!4132 = !DILocation(line: 816, column: 3, scope: !4072)
!4133 = distinct !{!4133, !4073, !4134, !200}
!4134 = !DILocation(line: 826, column: 3, scope: !4067)
!4135 = !DILocation(line: 827, column: 1, scope: !4059)
!4136 = distinct !DISubprogram(name: "restore_Fq", scope: !85, file: !85, line: 129, type: !4137, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!87, !21, !3951}
!4139 = !DILocalVariable(name: "pool", arg: 1, scope: !4136, file: !85, line: 130, type: !21)
!4140 = !DILocation(line: 0, scope: !4136)
!4141 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4136, file: !85, line: 131, type: !3951)
!4142 = !DILocation(line: 133, column: 15, scope: !4136)
!4143 = !DILocation(line: 133, column: 10, scope: !4136)
!4144 = !DILocation(line: 133, column: 3, scope: !4136)
!4145 = distinct !DISubprogram(name: "restore_bits", scope: !85, file: !85, line: 104, type: !4146, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !98)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!35, !21, !3951, !2370}
!4148 = !DILocalVariable(name: "pool", arg: 1, scope: !4145, file: !85, line: 105, type: !21)
!4149 = !DILocation(line: 0, scope: !4145)
!4150 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4145, file: !85, line: 106, type: !3951)
!4151 = !DILocalVariable(name: "num_bits", arg: 3, scope: !4145, file: !85, line: 107, type: !2370)
!4152 = !DILocation(line: 109, column: 24, scope: !4145)
!4153 = !DILocation(line: 109, column: 35, scope: !4145)
!4154 = !DILocalVariable(name: "shift", scope: !4145, file: !85, line: 109, type: !35)
!4155 = !DILocation(line: 110, column: 30, scope: !4145)
!4156 = !DILocalVariable(name: "index", scope: !4145, file: !85, line: 110, type: !19)
!4157 = !DILocalVariable(name: "mask", scope: !4145, file: !85, line: 111, type: !35)
!4158 = !DILocation(line: 113, column: 25, scope: !4145)
!4159 = !DILocation(line: 114, column: 38, scope: !4145)
!4160 = !DILocation(line: 114, column: 20, scope: !4145)
!4161 = !DILocation(line: 114, column: 50, scope: !4145)
!4162 = !DILocation(line: 114, column: 45, scope: !4145)
!4163 = !DILocation(line: 114, column: 69, scope: !4145)
!4164 = !DILocation(line: 113, column: 19, scope: !4145)
!4165 = !DILocation(line: 114, column: 16, scope: !4145)
!4166 = !DILocalVariable(name: "x", scope: !4145, file: !85, line: 113, type: !35)
!4167 = !DILocation(line: 115, column: 5, scope: !4145)
!4168 = !DILocation(line: 116, column: 5, scope: !4145)
!4169 = !DILocation(line: 117, column: 14, scope: !4145)
!4170 = !DILocation(line: 118, column: 3, scope: !4145)
!4171 = !DILocalVariable(name: "pk", arg: 1, scope: !74, file: !75, line: 15, type: !78)
!4172 = !DILocation(line: 0, scope: !74)
!4173 = !DILocalVariable(name: "sk", arg: 2, scope: !74, file: !75, line: 15, type: !78)
!4174 = !DILocalVariable(name: "seed_sk", scope: !74, file: !75, line: 17, type: !4175)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "QRUOV_SEED", file: !4176, line: 77, baseType: !482)
!4176 = !DIFile(filename: "../qruov_port/ref/qruov.h", directory: "/home/siddhesh/Desktop/QRUOV_LLVM/round2/llvm/llvmgen_and_taintProp/build")
!4177 = !DILocation(line: 17, column: 14, scope: !74)
!4178 = !DILocation(line: 17, column: 24, scope: !74)
!4179 = !DILocalVariable(name: "seed_pk", scope: !74, file: !75, line: 18, type: !4175)
!4180 = !DILocation(line: 18, column: 14, scope: !74)
!4181 = !DILocation(line: 18, column: 24, scope: !74)
!4182 = !DILocation(line: 22, column: 3, scope: !74)
!4183 = !DILocalVariable(name: "sk_pool_bits", scope: !74, file: !75, line: 24, type: !19)
!4184 = !DILocation(line: 24, column: 10, scope: !74)
!4185 = !DILocation(line: 25, column: 3, scope: !74)
!4186 = !DILocation(line: 26, column: 3, scope: !74)
!4187 = !DILocalVariable(name: "pk_pool_bits", scope: !74, file: !75, line: 28, type: !19)
!4188 = !DILocation(line: 28, column: 10, scope: !74)
!4189 = !DILocation(line: 29, column: 3, scope: !74)
!4190 = !DILocation(line: 30, column: 3, scope: !74)
!4191 = !DILocation(line: 32, column: 3, scope: !74)
!4192 = distinct !DISubprogram(name: "store_QRUOV_SEED", scope: !4176, file: !4176, line: 122, type: !4193, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !21, !82, !3951}
!4195 = !DILocalVariable(name: "seed", arg: 1, scope: !4192, file: !4176, line: 123, type: !21)
!4196 = !DILocation(line: 0, scope: !4192)
!4197 = !DILocalVariable(name: "pool", arg: 2, scope: !4192, file: !4176, line: 124, type: !82)
!4198 = !DILocalVariable(name: "pool_bits", arg: 3, scope: !4192, file: !4176, line: 125, type: !3951)
!4199 = !DILocation(line: 127, column: 19, scope: !4192)
!4200 = !DILocation(line: 127, column: 30, scope: !4192)
!4201 = !DILocalVariable(name: "index", scope: !4192, file: !4176, line: 127, type: !19)
!4202 = !DILocation(line: 128, column: 14, scope: !4192)
!4203 = !DILocation(line: 128, column: 3, scope: !4192)
!4204 = !DILocation(line: 129, column: 14, scope: !4192)
!4205 = !DILocation(line: 130, column: 1, scope: !4192)
!4206 = distinct !DISubprogram(name: "crypto_sign", scope: !75, file: !75, line: 36, type: !94, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4207 = !DILocalVariable(name: "sm", arg: 1, scope: !4206, file: !75, line: 36, type: !78)
!4208 = !DILocation(line: 0, scope: !4206)
!4209 = !DILocalVariable(name: "smlen", arg: 2, scope: !4206, file: !75, line: 36, type: !96)
!4210 = !DILocalVariable(name: "m", arg: 3, scope: !4206, file: !75, line: 37, type: !97)
!4211 = !DILocalVariable(name: "mlen", arg: 4, scope: !4206, file: !75, line: 37, type: !25)
!4212 = !DILocalVariable(name: "sk", arg: 5, scope: !4206, file: !75, line: 38, type: !97)
!4213 = !DILocalVariable(name: "sk_pool_bits", scope: !4206, file: !75, line: 41, type: !19)
!4214 = !DILocation(line: 41, column: 10, scope: !4206)
!4215 = !DILocalVariable(name: "seed_sk", scope: !4206, file: !75, line: 42, type: !4175)
!4216 = !DILocation(line: 42, column: 14, scope: !4206)
!4217 = !DILocation(line: 42, column: 29, scope: !4206)
!4218 = !DILocalVariable(name: "seed_pk", scope: !4206, file: !75, line: 43, type: !4175)
!4219 = !DILocation(line: 43, column: 14, scope: !4206)
!4220 = !DILocation(line: 43, column: 29, scope: !4206)
!4221 = !DILocalVariable(name: "seed_y", scope: !4206, file: !75, line: 45, type: !4175)
!4222 = !DILocation(line: 45, column: 14, scope: !4206)
!4223 = !DILocation(line: 45, column: 29, scope: !4206)
!4224 = !DILocalVariable(name: "seed_r", scope: !4206, file: !75, line: 46, type: !4175)
!4225 = !DILocation(line: 46, column: 14, scope: !4206)
!4226 = !DILocation(line: 46, column: 29, scope: !4206)
!4227 = !DILocalVariable(name: "seed_sol", scope: !4206, file: !75, line: 47, type: !4175)
!4228 = !DILocation(line: 47, column: 14, scope: !4206)
!4229 = !DILocation(line: 47, column: 29, scope: !4206)
!4230 = !DILocalVariable(name: "sig", scope: !4206, file: !75, line: 49, type: !4231)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "QRUOV_SIGNATURE", file: !4176, line: 82, baseType: !4232)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1808, elements: !4233)
!4233 = !{!4234}
!4234 = !DISubrange(count: 226)
!4235 = !DILocation(line: 49, column: 19, scope: !4206)
!4236 = !DILocation(line: 50, column: 61, scope: !4206)
!4237 = !DILocation(line: 50, column: 3, scope: !4206)
!4238 = !DILocalVariable(name: "sig_pool_bits", scope: !4206, file: !75, line: 52, type: !19)
!4239 = !DILocation(line: 52, column: 10, scope: !4206)
!4240 = !DILocation(line: 53, column: 3, scope: !4206)
!4241 = !DILocation(line: 55, column: 12, scope: !4206)
!4242 = !DILocation(line: 55, column: 28, scope: !4206)
!4243 = !DILocation(line: 55, column: 3, scope: !4206)
!4244 = !DILocation(line: 56, column: 24, scope: !4206)
!4245 = !DILocation(line: 56, column: 10, scope: !4206)
!4246 = !DILocation(line: 58, column: 3, scope: !4206)
!4247 = distinct !DISubprogram(name: "restore_QRUOV_SEED", scope: !4176, file: !4176, line: 132, type: !4248, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !21, !3951, !82}
!4250 = !DILocalVariable(name: "pool", arg: 1, scope: !4247, file: !4176, line: 133, type: !21)
!4251 = !DILocation(line: 0, scope: !4247)
!4252 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4247, file: !4176, line: 134, type: !3951)
!4253 = !DILocalVariable(name: "seed", arg: 3, scope: !4247, file: !4176, line: 135, type: !82)
!4254 = !DILocation(line: 137, column: 19, scope: !4247)
!4255 = !DILocation(line: 137, column: 30, scope: !4247)
!4256 = !DILocalVariable(name: "index", scope: !4247, file: !4176, line: 137, type: !19)
!4257 = !DILocation(line: 138, column: 20, scope: !4247)
!4258 = !DILocation(line: 138, column: 3, scope: !4247)
!4259 = !DILocation(line: 139, column: 14, scope: !4247)
!4260 = !DILocation(line: 140, column: 1, scope: !4247)
!4261 = distinct !DISubprogram(name: "store_QRUOV_SIGNATURE", scope: !4176, file: !4176, line: 174, type: !4193, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4262 = !DILocalVariable(name: "sig", arg: 1, scope: !4261, file: !4176, line: 175, type: !21)
!4263 = !DILocation(line: 0, scope: !4261)
!4264 = !DILocalVariable(name: "pool", arg: 2, scope: !4261, file: !4176, line: 176, type: !82)
!4265 = !DILocalVariable(name: "pool_bits", arg: 3, scope: !4261, file: !4176, line: 177, type: !3951)
!4266 = !DILocation(line: 179, column: 3, scope: !4261)
!4267 = !DILocalVariable(name: "i", scope: !4268, file: !4176, line: 180, type: !19)
!4268 = distinct !DILexicalBlock(scope: !4261, file: !4176, line: 180, column: 3)
!4269 = !DILocation(line: 0, scope: !4268)
!4270 = !DILocation(line: 180, column: 7, scope: !4268)
!4271 = !DILocation(line: 180, scope: !4268)
!4272 = !DILocation(line: 180, column: 20, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4268, file: !4176, line: 180, column: 3)
!4274 = !DILocation(line: 180, column: 3, scope: !4268)
!4275 = !DILocation(line: 180, column: 45, scope: !4273)
!4276 = !DILocation(line: 180, column: 35, scope: !4273)
!4277 = !DILocation(line: 180, column: 31, scope: !4273)
!4278 = !DILocation(line: 180, column: 3, scope: !4273)
!4279 = distinct !{!4279, !4274, !4280, !200}
!4280 = !DILocation(line: 180, column: 81, scope: !4268)
!4281 = !DILocation(line: 181, column: 3, scope: !4261)
!4282 = distinct !DISubprogram(name: "store_QRUOV_SALT", scope: !4176, file: !4176, line: 142, type: !4193, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4283 = !DILocalVariable(name: "salt", arg: 1, scope: !4282, file: !4176, line: 143, type: !21)
!4284 = !DILocation(line: 0, scope: !4282)
!4285 = !DILocalVariable(name: "pool", arg: 2, scope: !4282, file: !4176, line: 144, type: !82)
!4286 = !DILocalVariable(name: "pool_bits", arg: 3, scope: !4282, file: !4176, line: 145, type: !3951)
!4287 = !DILocation(line: 147, column: 19, scope: !4282)
!4288 = !DILocation(line: 147, column: 30, scope: !4282)
!4289 = !DILocalVariable(name: "index", scope: !4282, file: !4176, line: 147, type: !19)
!4290 = !DILocation(line: 148, column: 14, scope: !4282)
!4291 = !DILocation(line: 148, column: 3, scope: !4282)
!4292 = !DILocation(line: 149, column: 14, scope: !4282)
!4293 = !DILocation(line: 150, column: 1, scope: !4282)
!4294 = distinct !DISubprogram(name: "store_Fql", scope: !85, file: !85, line: 154, type: !4295, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !2964, !82, !3951}
!4297 = !DILocalVariable(name: "X", arg: 1, scope: !4294, file: !85, line: 155, type: !2964)
!4298 = !DILocation(line: 0, scope: !4294)
!4299 = !DILocalVariable(name: "pool", arg: 2, scope: !4294, file: !85, line: 156, type: !82)
!4300 = !DILocalVariable(name: "pool_bits", arg: 3, scope: !4294, file: !85, line: 157, type: !3951)
!4301 = !DILocation(line: 159, column: 3, scope: !4294)
!4302 = !DILocation(line: 160, column: 1, scope: !4294)
!4303 = distinct !DISubprogram(name: "store_Fq_vector", scope: !85, file: !85, line: 136, type: !4304, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !2964, !2370, !82, !3951}
!4306 = !DILocalVariable(name: "X", arg: 1, scope: !4303, file: !85, line: 137, type: !2964)
!4307 = !DILocation(line: 0, scope: !4303)
!4308 = !DILocalVariable(name: "n", arg: 2, scope: !4303, file: !85, line: 138, type: !2370)
!4309 = !DILocalVariable(name: "pool", arg: 3, scope: !4303, file: !85, line: 139, type: !82)
!4310 = !DILocalVariable(name: "pool_bits", arg: 4, scope: !4303, file: !85, line: 140, type: !3951)
!4311 = !DILocalVariable(name: "i", scope: !4312, file: !85, line: 142, type: !19)
!4312 = distinct !DILexicalBlock(scope: !4303, file: !85, line: 142, column: 3)
!4313 = !DILocation(line: 0, scope: !4312)
!4314 = !DILocation(line: 142, column: 7, scope: !4312)
!4315 = !DILocation(line: 142, scope: !4312)
!4316 = !DILocation(line: 142, column: 20, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4312, file: !85, line: 142, column: 3)
!4318 = !DILocation(line: 142, column: 3, scope: !4312)
!4319 = !DILocation(line: 142, column: 38, scope: !4317)
!4320 = !DILocation(line: 142, column: 29, scope: !4317)
!4321 = !DILocation(line: 142, column: 25, scope: !4317)
!4322 = !DILocation(line: 142, column: 3, scope: !4317)
!4323 = distinct !{!4323, !4318, !4324, !200}
!4324 = !DILocation(line: 142, column: 59, scope: !4312)
!4325 = !DILocation(line: 143, column: 1, scope: !4303)
!4326 = distinct !DISubprogram(name: "store_Fq", scope: !85, file: !85, line: 121, type: !4012, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4327 = !DILocalVariable(name: "x", arg: 1, scope: !4326, file: !85, line: 122, type: !35)
!4328 = !DILocation(line: 0, scope: !4326)
!4329 = !DILocalVariable(name: "pool", arg: 2, scope: !4326, file: !85, line: 123, type: !82)
!4330 = !DILocalVariable(name: "pool_bits", arg: 3, scope: !4326, file: !85, line: 124, type: !3951)
!4331 = !DILocation(line: 126, column: 3, scope: !4326)
!4332 = !DILocation(line: 127, column: 1, scope: !4326)
!4333 = distinct !DISubprogram(name: "store_bits", scope: !85, file: !85, line: 78, type: !4021, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4334 = !DILocalVariable(name: "x", arg: 1, scope: !4333, file: !85, line: 79, type: !35)
!4335 = !DILocation(line: 0, scope: !4333)
!4336 = !DILocalVariable(name: "num_bits", arg: 2, scope: !4333, file: !85, line: 80, type: !2370)
!4337 = !DILocalVariable(name: "pool", arg: 3, scope: !4333, file: !85, line: 81, type: !82)
!4338 = !DILocalVariable(name: "pool_bits", arg: 4, scope: !4333, file: !85, line: 82, type: !3951)
!4339 = !DILocation(line: 84, column: 24, scope: !4333)
!4340 = !DILocation(line: 84, column: 35, scope: !4333)
!4341 = !DILocalVariable(name: "shift", scope: !4333, file: !85, line: 84, type: !35)
!4342 = !DILocation(line: 85, column: 30, scope: !4333)
!4343 = !DILocalVariable(name: "index", scope: !4333, file: !85, line: 85, type: !19)
!4344 = !DILocalVariable(name: "mask", scope: !4333, file: !85, line: 86, type: !35)
!4345 = !DILocation(line: 88, column: 5, scope: !4333)
!4346 = !DILocation(line: 89, column: 5, scope: !4333)
!4347 = !DILocalVariable(name: "x0", scope: !4333, file: !85, line: 90, type: !14)
!4348 = !DILocation(line: 91, column: 12, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4333, file: !85, line: 91, column: 6)
!4350 = !DILocation(line: 90, column: 16, scope: !4333)
!4351 = !DILocation(line: 92, column: 5, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4349, file: !85, line: 91, column: 17)
!4353 = !DILocation(line: 92, column: 17, scope: !4352)
!4354 = !DILocation(line: 93, column: 3, scope: !4352)
!4355 = !DILocation(line: 94, column: 5, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4349, file: !85, line: 93, column: 8)
!4357 = !DILocation(line: 94, column: 17, scope: !4356)
!4358 = !DILocation(line: 96, column: 23, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4333, file: !85, line: 96, column: 6)
!4360 = !DILocation(line: 97, column: 21, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4359, file: !85, line: 96, column: 27)
!4362 = !DILocation(line: 97, column: 18, scope: !4361)
!4363 = !DILocalVariable(name: "x1", scope: !4361, file: !85, line: 97, type: !14)
!4364 = !DILocation(line: 0, scope: !4361)
!4365 = !DILocation(line: 98, column: 5, scope: !4361)
!4366 = !DILocation(line: 98, column: 19, scope: !4361)
!4367 = !DILocation(line: 99, column: 3, scope: !4361)
!4368 = !DILocation(line: 101, column: 14, scope: !4333)
!4369 = !DILocation(line: 102, column: 1, scope: !4333)
!4370 = !DILocalVariable(name: "m", arg: 1, scope: !93, file: !75, line: 62, type: !78)
!4371 = !DILocation(line: 0, scope: !93)
!4372 = !DILocalVariable(name: "mlen", arg: 2, scope: !93, file: !75, line: 62, type: !96)
!4373 = !DILocalVariable(name: "sm", arg: 3, scope: !93, file: !75, line: 63, type: !97)
!4374 = !DILocalVariable(name: "smlen", arg: 4, scope: !93, file: !75, line: 63, type: !25)
!4375 = !DILocalVariable(name: "pk", arg: 5, scope: !93, file: !75, line: 64, type: !97)
!4376 = !DILocalVariable(name: "pk_pool_bits", scope: !93, file: !75, line: 66, type: !19)
!4377 = !DILocation(line: 66, column: 10, scope: !93)
!4378 = !DILocalVariable(name: "seed_pk", scope: !93, file: !75, line: 67, type: !4175)
!4379 = !DILocation(line: 67, column: 14, scope: !93)
!4380 = !DILocation(line: 67, column: 29, scope: !93)
!4381 = !DILocation(line: 71, column: 3, scope: !93)
!4382 = !DILocalVariable(name: "sig_pool_bits", scope: !93, file: !75, line: 73, type: !19)
!4383 = !DILocation(line: 73, column: 10, scope: !93)
!4384 = !DILocalVariable(name: "sig", scope: !93, file: !75, line: 74, type: !4231)
!4385 = !DILocation(line: 74, column: 19, scope: !93)
!4386 = !DILocation(line: 74, column: 25, scope: !93)
!4387 = !DILocation(line: 76, column: 34, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !93, file: !75, line: 76, column: 6)
!4389 = !DILocation(line: 76, column: 49, scope: !4388)
!4390 = !DILocation(line: 76, column: 6, scope: !4388)
!4391 = !DILocation(line: 77, column: 19, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4388, file: !75, line: 76, column: 74)
!4393 = !DILocation(line: 77, column: 11, scope: !4392)
!4394 = !DILocation(line: 78, column: 17, scope: !4392)
!4395 = !DILocation(line: 78, column: 32, scope: !4392)
!4396 = !DILocation(line: 78, column: 5, scope: !4392)
!4397 = !DILocation(line: 83, column: 3, scope: !93)
!4398 = !DILocation(line: 84, column: 1, scope: !93)
!4399 = distinct !DISubprogram(name: "restore_QRUOV_SIGNATURE", scope: !4176, file: !4176, line: 184, type: !4248, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4400 = !DILocalVariable(name: "pool", arg: 1, scope: !4399, file: !4176, line: 185, type: !21)
!4401 = !DILocation(line: 0, scope: !4399)
!4402 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4399, file: !4176, line: 186, type: !3951)
!4403 = !DILocalVariable(name: "sig", arg: 3, scope: !4399, file: !4176, line: 187, type: !82)
!4404 = !DILocation(line: 189, column: 3, scope: !4399)
!4405 = !DILocalVariable(name: "i", scope: !4406, file: !4176, line: 190, type: !19)
!4406 = distinct !DILexicalBlock(scope: !4399, file: !4176, line: 190, column: 3)
!4407 = !DILocation(line: 0, scope: !4406)
!4408 = !DILocation(line: 190, column: 7, scope: !4406)
!4409 = !DILocation(line: 190, scope: !4406)
!4410 = !DILocation(line: 190, column: 20, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4406, file: !4176, line: 190, column: 3)
!4412 = !DILocation(line: 190, column: 3, scope: !4406)
!4413 = !DILocation(line: 190, column: 64, scope: !4411)
!4414 = !DILocation(line: 190, column: 35, scope: !4411)
!4415 = !DILocation(line: 190, column: 31, scope: !4411)
!4416 = !DILocation(line: 190, column: 3, scope: !4411)
!4417 = distinct !{!4417, !4412, !4418, !200}
!4418 = !DILocation(line: 190, column: 83, scope: !4406)
!4419 = !DILocation(line: 191, column: 3, scope: !4399)
!4420 = distinct !DISubprogram(name: "restore_QRUOV_SALT", scope: !4176, file: !4176, line: 152, type: !4248, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4421 = !DILocalVariable(name: "pool", arg: 1, scope: !4420, file: !4176, line: 153, type: !21)
!4422 = !DILocation(line: 0, scope: !4420)
!4423 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4420, file: !4176, line: 154, type: !3951)
!4424 = !DILocalVariable(name: "salt", arg: 3, scope: !4420, file: !4176, line: 155, type: !82)
!4425 = !DILocation(line: 157, column: 19, scope: !4420)
!4426 = !DILocation(line: 157, column: 30, scope: !4420)
!4427 = !DILocalVariable(name: "index", scope: !4420, file: !4176, line: 157, type: !19)
!4428 = !DILocation(line: 158, column: 20, scope: !4420)
!4429 = !DILocation(line: 158, column: 3, scope: !4420)
!4430 = !DILocation(line: 159, column: 14, scope: !4420)
!4431 = !DILocation(line: 160, column: 1, scope: !4420)
!4432 = distinct !DISubprogram(name: "restore_Fql", scope: !85, file: !85, line: 162, type: !4433, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !21, !3951, !2966}
!4435 = !DILocalVariable(name: "pool", arg: 1, scope: !4432, file: !85, line: 163, type: !21)
!4436 = !DILocation(line: 0, scope: !4432)
!4437 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4432, file: !85, line: 164, type: !3951)
!4438 = !DILocalVariable(name: "Z", arg: 3, scope: !4432, file: !85, line: 165, type: !2966)
!4439 = !DILocation(line: 167, column: 3, scope: !4432)
!4440 = !DILocation(line: 168, column: 1, scope: !4432)
!4441 = distinct !DISubprogram(name: "restore_Fq_vector", scope: !85, file: !85, line: 145, type: !4442, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !21, !3951, !2966, !2721}
!4444 = !DILocalVariable(name: "pool", arg: 1, scope: !4441, file: !85, line: 146, type: !21)
!4445 = !DILocation(line: 0, scope: !4441)
!4446 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4441, file: !85, line: 147, type: !3951)
!4447 = !DILocalVariable(name: "Z", arg: 3, scope: !4441, file: !85, line: 148, type: !2966)
!4448 = !DILocalVariable(name: "n", arg: 4, scope: !4441, file: !85, line: 149, type: !2721)
!4449 = !DILocalVariable(name: "i", scope: !4450, file: !85, line: 151, type: !19)
!4450 = distinct !DILexicalBlock(scope: !4441, file: !85, line: 151, column: 3)
!4451 = !DILocation(line: 0, scope: !4450)
!4452 = !DILocation(line: 151, column: 7, scope: !4450)
!4453 = !DILocation(line: 151, scope: !4450)
!4454 = !DILocation(line: 151, column: 20, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4450, file: !85, line: 151, column: 3)
!4456 = !DILocation(line: 151, column: 3, scope: !4450)
!4457 = !DILocation(line: 151, column: 36, scope: !4455)
!4458 = !DILocation(line: 151, column: 29, scope: !4455)
!4459 = !DILocation(line: 151, column: 34, scope: !4455)
!4460 = !DILocation(line: 151, column: 25, scope: !4455)
!4461 = !DILocation(line: 151, column: 3, scope: !4455)
!4462 = distinct !{!4462, !4456, !4463, !200}
!4463 = !DILocation(line: 151, column: 62, scope: !4450)
!4464 = !DILocation(line: 152, column: 1, scope: !4441)
!4465 = distinct !DISubprogram(name: "restore_Fq", scope: !85, file: !85, line: 129, type: !4137, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4466 = !DILocalVariable(name: "pool", arg: 1, scope: !4465, file: !85, line: 130, type: !21)
!4467 = !DILocation(line: 0, scope: !4465)
!4468 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4465, file: !85, line: 131, type: !3951)
!4469 = !DILocation(line: 133, column: 15, scope: !4465)
!4470 = !DILocation(line: 133, column: 10, scope: !4465)
!4471 = !DILocation(line: 133, column: 3, scope: !4465)
!4472 = distinct !DISubprogram(name: "restore_bits", scope: !85, file: !85, line: 104, type: !4146, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !98)
!4473 = !DILocalVariable(name: "pool", arg: 1, scope: !4472, file: !85, line: 105, type: !21)
!4474 = !DILocation(line: 0, scope: !4472)
!4475 = !DILocalVariable(name: "pool_bits", arg: 2, scope: !4472, file: !85, line: 106, type: !3951)
!4476 = !DILocalVariable(name: "num_bits", arg: 3, scope: !4472, file: !85, line: 107, type: !2370)
!4477 = !DILocation(line: 109, column: 24, scope: !4472)
!4478 = !DILocation(line: 109, column: 35, scope: !4472)
!4479 = !DILocalVariable(name: "shift", scope: !4472, file: !85, line: 109, type: !35)
!4480 = !DILocation(line: 110, column: 30, scope: !4472)
!4481 = !DILocalVariable(name: "index", scope: !4472, file: !85, line: 110, type: !19)
!4482 = !DILocalVariable(name: "mask", scope: !4472, file: !85, line: 111, type: !35)
!4483 = !DILocation(line: 113, column: 25, scope: !4472)
!4484 = !DILocation(line: 114, column: 38, scope: !4472)
!4485 = !DILocation(line: 114, column: 20, scope: !4472)
!4486 = !DILocation(line: 114, column: 50, scope: !4472)
!4487 = !DILocation(line: 114, column: 45, scope: !4472)
!4488 = !DILocation(line: 114, column: 69, scope: !4472)
!4489 = !DILocation(line: 113, column: 19, scope: !4472)
!4490 = !DILocation(line: 114, column: 16, scope: !4472)
!4491 = !DILocalVariable(name: "x", scope: !4472, file: !85, line: 113, type: !35)
!4492 = !DILocation(line: 115, column: 5, scope: !4472)
!4493 = !DILocation(line: 116, column: 5, scope: !4472)
!4494 = !DILocation(line: 117, column: 14, scope: !4472)
!4495 = !DILocation(line: 118, column: 3, scope: !4472)
!4496 = distinct !DISubprogram(name: "VECTOR_M_ADD", scope: !151, file: !151, line: 60, type: !4497, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{null, !3437, !3437, !2583}
!4499 = !DILocalVariable(name: "A", arg: 1, scope: !4496, file: !151, line: 60, type: !3437)
!4500 = !DILocation(line: 0, scope: !4496)
!4501 = !DILocalVariable(name: "B", arg: 2, scope: !4496, file: !151, line: 60, type: !3437)
!4502 = !DILocalVariable(name: "C", arg: 3, scope: !4496, file: !151, line: 60, type: !2583)
!4503 = !DILocalVariable(name: "i", scope: !4504, file: !151, line: 61, type: !35)
!4504 = distinct !DILexicalBlock(scope: !4496, file: !151, line: 61, column: 3)
!4505 = !DILocation(line: 0, scope: !4504)
!4506 = !DILocation(line: 61, column: 7, scope: !4504)
!4507 = !DILocation(line: 61, scope: !4504)
!4508 = !DILocation(line: 61, column: 21, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4504, file: !151, line: 61, column: 3)
!4510 = !DILocation(line: 61, column: 3, scope: !4504)
!4511 = !DILocation(line: 61, column: 51, scope: !4509)
!4512 = !DILocation(line: 61, column: 57, scope: !4509)
!4513 = !DILocation(line: 61, column: 63, scope: !4509)
!4514 = !DILocation(line: 61, column: 38, scope: !4509)
!4515 = !DILocation(line: 61, column: 34, scope: !4509)
!4516 = !DILocation(line: 61, column: 3, scope: !4509)
!4517 = distinct !{!4517, !4510, !4518, !200}
!4518 = !DILocation(line: 61, column: 67, scope: !4504)
!4519 = !DILocation(line: 62, column: 1, scope: !4496)
!4520 = distinct !DISubprogram(name: "vector_M_add", scope: !151, file: !151, line: 17, type: !2962, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4521 = !DILocalVariable(name: "A", arg: 1, scope: !4520, file: !151, line: 17, type: !2964)
!4522 = !DILocation(line: 0, scope: !4520)
!4523 = !DILocalVariable(name: "B", arg: 2, scope: !4520, file: !151, line: 17, type: !2964)
!4524 = !DILocalVariable(name: "C", arg: 3, scope: !4520, file: !151, line: 17, type: !2966)
!4525 = !DILocalVariable(name: "a", scope: !4520, file: !151, line: 18, type: !149)
!4526 = !DILocalVariable(name: "b", scope: !4520, file: !151, line: 19, type: !149)
!4527 = !DILocalVariable(name: "c", scope: !4520, file: !151, line: 20, type: !149)
!4528 = !DILocalVariable(name: "j", scope: !4529, file: !151, line: 21, type: !35)
!4529 = distinct !DILexicalBlock(scope: !4520, file: !151, line: 21, column: 3)
!4530 = !DILocation(line: 0, scope: !4529)
!4531 = !DILocation(line: 21, column: 7, scope: !4529)
!4532 = !DILocation(line: 21, scope: !4529)
!4533 = !DILocation(line: 21, column: 21, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4529, file: !151, line: 21, column: 3)
!4535 = !DILocation(line: 21, column: 3, scope: !4529)
!4536 = !DILocation(line: 21, column: 70, scope: !4534)
!4537 = !DILocation(line: 21, column: 76, scope: !4534)
!4538 = !DILocation(line: 21, column: 59, scope: !4534)
!4539 = !DILocation(line: 21, column: 57, scope: !4534)
!4540 = !DILocation(line: 21, column: 54, scope: !4534)
!4541 = !DILocation(line: 21, column: 78, scope: !4534)
!4542 = !DILocation(line: 21, column: 72, scope: !4534)
!4543 = !DILocation(line: 21, column: 48, scope: !4534)
!4544 = !DILocation(line: 21, column: 3, scope: !4534)
!4545 = distinct !{!4545, !4535, !4546, !200}
!4546 = !DILocation(line: 21, column: 80, scope: !4529)
!4547 = !DILocation(line: 22, column: 1, scope: !4520)
!4548 = distinct !DISubprogram(name: "Fq_vec_add", scope: !151, file: !151, line: 8, type: !4549, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!150, !150, !150}
!4551 = !DILocalVariable(name: "a", arg: 1, scope: !4548, file: !151, line: 8, type: !150)
!4552 = !DILocation(line: 0, scope: !4548)
!4553 = !DILocalVariable(name: "b", arg: 2, scope: !4548, file: !151, line: 8, type: !150)
!4554 = !DILocation(line: 8, column: 61, scope: !4548)
!4555 = !DILocation(line: 8, column: 54, scope: !4548)
!4556 = distinct !DISubprogram(name: "Fq_add", scope: !85, file: !85, line: 21, type: !2950, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4557 = !DILocalVariable(name: "X", arg: 1, scope: !4556, file: !85, line: 21, type: !87)
!4558 = !DILocation(line: 0, scope: !4556)
!4559 = !DILocalVariable(name: "Y", arg: 2, scope: !4556, file: !85, line: 21, type: !87)
!4560 = !DILocation(line: 21, column: 51, scope: !4556)
!4561 = !DILocation(line: 21, column: 61, scope: !4556)
!4562 = !DILocation(line: 21, column: 59, scope: !4556)
!4563 = !DILocation(line: 21, column: 70, scope: !4556)
!4564 = !DILocation(line: 21, column: 45, scope: !4556)
!4565 = !DILocation(line: 21, column: 38, scope: !4556)
!4566 = distinct !DISubprogram(name: "VECTOR_M_SUB", scope: !151, file: !151, line: 64, type: !4497, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4567 = !DILocalVariable(name: "A", arg: 1, scope: !4566, file: !151, line: 64, type: !3437)
!4568 = !DILocation(line: 0, scope: !4566)
!4569 = !DILocalVariable(name: "B", arg: 2, scope: !4566, file: !151, line: 64, type: !3437)
!4570 = !DILocalVariable(name: "C", arg: 3, scope: !4566, file: !151, line: 64, type: !2583)
!4571 = !DILocalVariable(name: "i", scope: !4572, file: !151, line: 65, type: !35)
!4572 = distinct !DILexicalBlock(scope: !4566, file: !151, line: 65, column: 3)
!4573 = !DILocation(line: 0, scope: !4572)
!4574 = !DILocation(line: 65, column: 7, scope: !4572)
!4575 = !DILocation(line: 65, scope: !4572)
!4576 = !DILocation(line: 65, column: 21, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4572, file: !151, line: 65, column: 3)
!4578 = !DILocation(line: 65, column: 3, scope: !4572)
!4579 = !DILocation(line: 65, column: 51, scope: !4577)
!4580 = !DILocation(line: 65, column: 57, scope: !4577)
!4581 = !DILocation(line: 65, column: 63, scope: !4577)
!4582 = !DILocation(line: 65, column: 38, scope: !4577)
!4583 = !DILocation(line: 65, column: 34, scope: !4577)
!4584 = !DILocation(line: 65, column: 3, scope: !4577)
!4585 = distinct !{!4585, !4578, !4586, !200}
!4586 = !DILocation(line: 65, column: 67, scope: !4572)
!4587 = !DILocation(line: 66, column: 1, scope: !4566)
!4588 = distinct !DISubprogram(name: "vector_M_sub", scope: !151, file: !151, line: 24, type: !2962, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4589 = !DILocalVariable(name: "A", arg: 1, scope: !4588, file: !151, line: 24, type: !2964)
!4590 = !DILocation(line: 0, scope: !4588)
!4591 = !DILocalVariable(name: "B", arg: 2, scope: !4588, file: !151, line: 24, type: !2964)
!4592 = !DILocalVariable(name: "C", arg: 3, scope: !4588, file: !151, line: 24, type: !2966)
!4593 = !DILocalVariable(name: "a", scope: !4588, file: !151, line: 25, type: !149)
!4594 = !DILocalVariable(name: "b", scope: !4588, file: !151, line: 26, type: !149)
!4595 = !DILocalVariable(name: "c", scope: !4588, file: !151, line: 27, type: !149)
!4596 = !DILocalVariable(name: "j", scope: !4597, file: !151, line: 28, type: !35)
!4597 = distinct !DILexicalBlock(scope: !4588, file: !151, line: 28, column: 3)
!4598 = !DILocation(line: 0, scope: !4597)
!4599 = !DILocation(line: 28, column: 7, scope: !4597)
!4600 = !DILocation(line: 28, scope: !4597)
!4601 = !DILocation(line: 28, column: 21, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4597, file: !151, line: 28, column: 3)
!4603 = !DILocation(line: 28, column: 3, scope: !4597)
!4604 = !DILocation(line: 28, column: 70, scope: !4602)
!4605 = !DILocation(line: 28, column: 76, scope: !4602)
!4606 = !DILocation(line: 28, column: 59, scope: !4602)
!4607 = !DILocation(line: 28, column: 57, scope: !4602)
!4608 = !DILocation(line: 28, column: 54, scope: !4602)
!4609 = !DILocation(line: 28, column: 78, scope: !4602)
!4610 = !DILocation(line: 28, column: 72, scope: !4602)
!4611 = !DILocation(line: 28, column: 48, scope: !4602)
!4612 = !DILocation(line: 28, column: 3, scope: !4602)
!4613 = distinct !{!4613, !4603, !4614, !200}
!4614 = !DILocation(line: 28, column: 80, scope: !4597)
!4615 = !DILocation(line: 29, column: 1, scope: !4588)
!4616 = distinct !DISubprogram(name: "Fq_vec_sub", scope: !151, file: !151, line: 9, type: !4549, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4617 = !DILocalVariable(name: "a", arg: 1, scope: !4616, file: !151, line: 9, type: !150)
!4618 = !DILocation(line: 0, scope: !4616)
!4619 = !DILocalVariable(name: "b", arg: 2, scope: !4616, file: !151, line: 9, type: !150)
!4620 = !DILocation(line: 9, column: 61, scope: !4616)
!4621 = !DILocation(line: 9, column: 54, scope: !4616)
!4622 = distinct !DISubprogram(name: "Fq_sub", scope: !85, file: !85, line: 22, type: !2950, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4623 = !DILocalVariable(name: "X", arg: 1, scope: !4622, file: !85, line: 22, type: !87)
!4624 = !DILocation(line: 0, scope: !4622)
!4625 = !DILocalVariable(name: "Y", arg: 2, scope: !4622, file: !85, line: 22, type: !87)
!4626 = !DILocation(line: 22, column: 51, scope: !4622)
!4627 = !DILocation(line: 22, column: 61, scope: !4622)
!4628 = !DILocation(line: 22, column: 59, scope: !4622)
!4629 = !DILocation(line: 22, column: 69, scope: !4622)
!4630 = !DILocation(line: 22, column: 80, scope: !4622)
!4631 = !DILocation(line: 22, column: 45, scope: !4622)
!4632 = !DILocation(line: 22, column: 38, scope: !4622)
!4633 = distinct !DISubprogram(name: "VECTOR_V_SUB", scope: !151, file: !151, line: 68, type: !4634, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !3441, !3441, !2605}
!4636 = !DILocalVariable(name: "A", arg: 1, scope: !4633, file: !151, line: 68, type: !3441)
!4637 = !DILocation(line: 0, scope: !4633)
!4638 = !DILocalVariable(name: "B", arg: 2, scope: !4633, file: !151, line: 68, type: !3441)
!4639 = !DILocalVariable(name: "C", arg: 3, scope: !4633, file: !151, line: 68, type: !2605)
!4640 = !DILocalVariable(name: "i", scope: !4641, file: !151, line: 69, type: !35)
!4641 = distinct !DILexicalBlock(scope: !4633, file: !151, line: 69, column: 3)
!4642 = !DILocation(line: 0, scope: !4641)
!4643 = !DILocation(line: 69, column: 7, scope: !4641)
!4644 = !DILocation(line: 69, scope: !4641)
!4645 = !DILocation(line: 69, column: 21, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4641, file: !151, line: 69, column: 3)
!4647 = !DILocation(line: 69, column: 3, scope: !4641)
!4648 = !DILocation(line: 69, column: 51, scope: !4646)
!4649 = !DILocation(line: 69, column: 57, scope: !4646)
!4650 = !DILocation(line: 69, column: 63, scope: !4646)
!4651 = !DILocation(line: 69, column: 38, scope: !4646)
!4652 = !DILocation(line: 69, column: 34, scope: !4646)
!4653 = !DILocation(line: 69, column: 3, scope: !4646)
!4654 = distinct !{!4654, !4647, !4655, !200}
!4655 = !DILocation(line: 69, column: 67, scope: !4641)
!4656 = !DILocation(line: 70, column: 1, scope: !4633)
!4657 = distinct !DISubprogram(name: "vector_V_sub", scope: !151, file: !151, line: 31, type: !2962, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4658 = !DILocalVariable(name: "A", arg: 1, scope: !4657, file: !151, line: 31, type: !2964)
!4659 = !DILocation(line: 0, scope: !4657)
!4660 = !DILocalVariable(name: "B", arg: 2, scope: !4657, file: !151, line: 31, type: !2964)
!4661 = !DILocalVariable(name: "C", arg: 3, scope: !4657, file: !151, line: 31, type: !2966)
!4662 = !DILocalVariable(name: "a", scope: !4657, file: !151, line: 32, type: !149)
!4663 = !DILocalVariable(name: "b", scope: !4657, file: !151, line: 33, type: !149)
!4664 = !DILocalVariable(name: "c", scope: !4657, file: !151, line: 34, type: !149)
!4665 = !DILocalVariable(name: "j", scope: !4666, file: !151, line: 35, type: !35)
!4666 = distinct !DILexicalBlock(scope: !4657, file: !151, line: 35, column: 3)
!4667 = !DILocation(line: 0, scope: !4666)
!4668 = !DILocation(line: 35, column: 7, scope: !4666)
!4669 = !DILocation(line: 35, scope: !4666)
!4670 = !DILocation(line: 35, column: 21, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4666, file: !151, line: 35, column: 3)
!4672 = !DILocation(line: 35, column: 3, scope: !4666)
!4673 = !DILocation(line: 35, column: 70, scope: !4671)
!4674 = !DILocation(line: 35, column: 76, scope: !4671)
!4675 = !DILocation(line: 35, column: 59, scope: !4671)
!4676 = !DILocation(line: 35, column: 57, scope: !4671)
!4677 = !DILocation(line: 35, column: 54, scope: !4671)
!4678 = !DILocation(line: 35, column: 78, scope: !4671)
!4679 = !DILocation(line: 35, column: 72, scope: !4671)
!4680 = !DILocation(line: 35, column: 48, scope: !4671)
!4681 = !DILocation(line: 35, column: 3, scope: !4671)
!4682 = distinct !{!4682, !4672, !4683, !200}
!4683 = !DILocation(line: 35, column: 80, scope: !4666)
!4684 = !DILocation(line: 36, column: 1, scope: !4657)
!4685 = distinct !DISubprogram(name: "VECTOR_V_dot_VECTOR_V", scope: !151, file: !151, line: 72, type: !4686, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !3441, !3441, !2966}
!4688 = !DILocalVariable(name: "A", arg: 1, scope: !4685, file: !151, line: 73, type: !3441)
!4689 = !DILocation(line: 0, scope: !4685)
!4690 = !DILocalVariable(name: "B", arg: 2, scope: !4685, file: !151, line: 74, type: !3441)
!4691 = !DILocalVariable(name: "C", arg: 3, scope: !4685, file: !151, line: 75, type: !2966)
!4692 = !DILocalVariable(name: "T", scope: !4685, file: !151, line: 77, type: !878)
!4693 = !DILocation(line: 77, column: 12, scope: !4685)
!4694 = !DILocation(line: 78, column: 3, scope: !4685)
!4695 = !DILocalVariable(name: "i", scope: !4696, file: !151, line: 80, type: !35)
!4696 = distinct !DILexicalBlock(scope: !4685, file: !151, line: 80, column: 3)
!4697 = !DILocation(line: 0, scope: !4696)
!4698 = !DILocation(line: 80, column: 7, scope: !4696)
!4699 = !DILocation(line: 80, scope: !4696)
!4700 = !DILocation(line: 80, column: 21, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4696, file: !151, line: 80, column: 3)
!4702 = !DILocation(line: 80, column: 3, scope: !4696)
!4703 = !DILocation(line: 81, column: 5, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4701, file: !151, line: 81, column: 5)
!4705 = !DILocation(line: 84, column: 3, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4685, file: !151, line: 84, column: 3)
!4707 = !DILocation(line: 81, scope: !4704)
!4708 = !DILocalVariable(name: "j", scope: !4704, file: !151, line: 81, type: !35)
!4709 = !DILocation(line: 0, scope: !4704)
!4710 = !DILocation(line: 81, column: 23, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4704, file: !151, line: 81, column: 5)
!4712 = !DILocation(line: 82, column: 40, scope: !4711)
!4713 = !DILocation(line: 82, column: 46, scope: !4711)
!4714 = !DILocation(line: 82, column: 17, scope: !4711)
!4715 = !DILocation(line: 82, column: 10, scope: !4711)
!4716 = !DILocation(line: 82, column: 7, scope: !4711)
!4717 = !DILocation(line: 82, column: 14, scope: !4711)
!4718 = !DILocation(line: 81, column: 36, scope: !4711)
!4719 = !DILocation(line: 81, column: 5, scope: !4711)
!4720 = distinct !{!4720, !4703, !4721, !200}
!4721 = !DILocation(line: 82, column: 50, scope: !4704)
!4722 = !DILocation(line: 80, column: 34, scope: !4701)
!4723 = !DILocation(line: 80, column: 3, scope: !4701)
!4724 = distinct !{!4724, !4702, !4725, !200}
!4725 = !DILocation(line: 82, column: 50, scope: !4696)
!4726 = !DILocation(line: 84, scope: !4706)
!4727 = !DILocalVariable(name: "i", scope: !4706, file: !151, line: 84, type: !35)
!4728 = !DILocation(line: 0, scope: !4706)
!4729 = !DILocation(line: 84, column: 30, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4706, file: !151, line: 84, column: 3)
!4731 = !DILocation(line: 89, column: 3, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4685, file: !151, line: 89, column: 3)
!4733 = !DILocation(line: 85, column: 42, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !151, line: 84, column: 46)
!4735 = !DILocation(line: 85, column: 8, scope: !4734)
!4736 = !DILocation(line: 85, column: 5, scope: !4734)
!4737 = !DILocation(line: 85, column: 27, scope: !4734)
!4738 = !DILocation(line: 86, column: 42, scope: !4734)
!4739 = !DILocation(line: 86, column: 16, scope: !4734)
!4740 = !DILocation(line: 86, column: 5, scope: !4734)
!4741 = !DILocation(line: 86, column: 27, scope: !4734)
!4742 = !DILocation(line: 84, column: 43, scope: !4730)
!4743 = !DILocation(line: 84, column: 3, scope: !4730)
!4744 = distinct !{!4744, !4705, !4745, !200}
!4745 = !DILocation(line: 87, column: 3, scope: !4706)
!4746 = !DILocation(line: 89, scope: !4732)
!4747 = !DILocalVariable(name: "i", scope: !4732, file: !151, line: 89, type: !35)
!4748 = !DILocation(line: 0, scope: !4732)
!4749 = !DILocation(line: 89, column: 20, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4732, file: !151, line: 89, column: 3)
!4751 = !DILocation(line: 89, column: 48, scope: !4750)
!4752 = !DILocation(line: 89, column: 53, scope: !4750)
!4753 = !DILocation(line: 89, column: 43, scope: !4750)
!4754 = !DILocation(line: 89, column: 36, scope: !4750)
!4755 = !DILocation(line: 89, column: 41, scope: !4750)
!4756 = !DILocation(line: 89, column: 32, scope: !4750)
!4757 = !DILocation(line: 89, column: 3, scope: !4750)
!4758 = distinct !{!4758, !4731, !4759, !200}
!4759 = !DILocation(line: 89, column: 62, scope: !4732)
!4760 = !DILocation(line: 90, column: 1, scope: !4685)
!4761 = distinct !DISubprogram(name: "vector_V_dot_vector_V", scope: !151, file: !151, line: 38, type: !4762, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!23, !2964, !2964}
!4764 = !DILocalVariable(name: "A", arg: 1, scope: !4761, file: !151, line: 38, type: !2964)
!4765 = !DILocation(line: 0, scope: !4761)
!4766 = !DILocalVariable(name: "B", arg: 2, scope: !4761, file: !151, line: 38, type: !2964)
!4767 = !DILocalVariable(name: "a", scope: !4761, file: !151, line: 39, type: !149)
!4768 = !DILocalVariable(name: "b", scope: !4761, file: !151, line: 40, type: !149)
!4769 = !DILocalVariable(name: "c", scope: !4761, file: !151, line: 41, type: !23)
!4770 = !DILocalVariable(name: "j", scope: !4771, file: !151, line: 42, type: !35)
!4771 = distinct !DILexicalBlock(scope: !4761, file: !151, line: 42, column: 3)
!4772 = !DILocation(line: 0, scope: !4771)
!4773 = !DILocation(line: 42, column: 7, scope: !4771)
!4774 = !DILocation(line: 42, scope: !4771)
!4775 = !DILocation(line: 42, column: 21, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4771, file: !151, line: 42, column: 3)
!4777 = !DILocation(line: 42, column: 3, scope: !4771)
!4778 = !DILocation(line: 42, column: 78, scope: !4776)
!4779 = !DILocation(line: 42, column: 84, scope: !4776)
!4780 = !DILocation(line: 42, column: 56, scope: !4776)
!4781 = !DILocation(line: 42, column: 86, scope: !4776)
!4782 = !DILocation(line: 42, column: 80, scope: !4776)
!4783 = !DILocation(line: 42, column: 48, scope: !4776)
!4784 = !DILocation(line: 42, column: 3, scope: !4776)
!4785 = distinct !{!4785, !4777, !4786, !200}
!4786 = !DILocation(line: 42, column: 91, scope: !4771)
!4787 = !DILocation(line: 43, column: 16, scope: !4761)
!4788 = !DILocalVariable(name: "C", scope: !4761, file: !151, line: 43, type: !23)
!4789 = !DILocation(line: 44, column: 3, scope: !4761)
!4790 = distinct !DISubprogram(name: "Fq_vec_dot_accumulate", scope: !151, file: !151, line: 10, type: !4791, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!23, !150, !150, !23}
!4793 = !DILocalVariable(name: "a", arg: 1, scope: !4790, file: !151, line: 10, type: !150)
!4794 = !DILocation(line: 0, scope: !4790)
!4795 = !DILocalVariable(name: "b", arg: 2, scope: !4790, file: !151, line: 10, type: !150)
!4796 = !DILocalVariable(name: "c", arg: 3, scope: !4790, file: !151, line: 10, type: !23)
!4797 = !DILocation(line: 10, column: 90, scope: !4790)
!4798 = !DILocation(line: 10, column: 104, scope: !4790)
!4799 = !DILocation(line: 10, column: 102, scope: !4790)
!4800 = !DILocation(line: 10, column: 88, scope: !4790)
!4801 = !DILocation(line: 10, column: 79, scope: !4790)
!4802 = distinct !DISubprogram(name: "Fq_vec_dot_accumulate_final", scope: !151, file: !151, line: 11, type: !2109, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4803 = !DILocalVariable(name: "c", arg: 1, scope: !4802, file: !151, line: 11, type: !23)
!4804 = !DILocation(line: 0, scope: !4802)
!4805 = !DILocation(line: 11, column: 65, scope: !4802)
!4806 = distinct !DISubprogram(name: "VECTOR_M_dot_VECTOR_M", scope: !151, file: !151, line: 92, type: !4807, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !3437, !3437, !2966}
!4809 = !DILocalVariable(name: "A", arg: 1, scope: !4806, file: !151, line: 93, type: !3437)
!4810 = !DILocation(line: 0, scope: !4806)
!4811 = !DILocalVariable(name: "B", arg: 2, scope: !4806, file: !151, line: 94, type: !3437)
!4812 = !DILocalVariable(name: "C", arg: 3, scope: !4806, file: !151, line: 95, type: !2966)
!4813 = !DILocalVariable(name: "T", scope: !4806, file: !151, line: 97, type: !878)
!4814 = !DILocation(line: 97, column: 12, scope: !4806)
!4815 = !DILocation(line: 98, column: 3, scope: !4806)
!4816 = !DILocalVariable(name: "i", scope: !4817, file: !151, line: 100, type: !35)
!4817 = distinct !DILexicalBlock(scope: !4806, file: !151, line: 100, column: 3)
!4818 = !DILocation(line: 0, scope: !4817)
!4819 = !DILocation(line: 100, column: 7, scope: !4817)
!4820 = !DILocation(line: 100, scope: !4817)
!4821 = !DILocation(line: 100, column: 21, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4817, file: !151, line: 100, column: 3)
!4823 = !DILocation(line: 100, column: 3, scope: !4817)
!4824 = !DILocation(line: 101, column: 5, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4822, file: !151, line: 101, column: 5)
!4826 = !DILocation(line: 104, column: 3, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4806, file: !151, line: 104, column: 3)
!4828 = !DILocation(line: 101, scope: !4825)
!4829 = !DILocalVariable(name: "j", scope: !4825, file: !151, line: 101, type: !35)
!4830 = !DILocation(line: 0, scope: !4825)
!4831 = !DILocation(line: 101, column: 23, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4825, file: !151, line: 101, column: 5)
!4833 = !DILocation(line: 102, column: 40, scope: !4832)
!4834 = !DILocation(line: 102, column: 46, scope: !4832)
!4835 = !DILocation(line: 102, column: 17, scope: !4832)
!4836 = !DILocation(line: 102, column: 10, scope: !4832)
!4837 = !DILocation(line: 102, column: 7, scope: !4832)
!4838 = !DILocation(line: 102, column: 14, scope: !4832)
!4839 = !DILocation(line: 101, column: 36, scope: !4832)
!4840 = !DILocation(line: 101, column: 5, scope: !4832)
!4841 = distinct !{!4841, !4824, !4842, !200}
!4842 = !DILocation(line: 102, column: 50, scope: !4825)
!4843 = !DILocation(line: 100, column: 34, scope: !4822)
!4844 = !DILocation(line: 100, column: 3, scope: !4822)
!4845 = distinct !{!4845, !4823, !4846, !200}
!4846 = !DILocation(line: 102, column: 50, scope: !4817)
!4847 = !DILocation(line: 104, scope: !4827)
!4848 = !DILocalVariable(name: "i", scope: !4827, file: !151, line: 104, type: !35)
!4849 = !DILocation(line: 0, scope: !4827)
!4850 = !DILocation(line: 104, column: 30, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4827, file: !151, line: 104, column: 3)
!4852 = !DILocation(line: 109, column: 3, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4806, file: !151, line: 109, column: 3)
!4854 = !DILocation(line: 105, column: 42, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4851, file: !151, line: 104, column: 46)
!4856 = !DILocation(line: 105, column: 8, scope: !4855)
!4857 = !DILocation(line: 105, column: 5, scope: !4855)
!4858 = !DILocation(line: 105, column: 27, scope: !4855)
!4859 = !DILocation(line: 106, column: 42, scope: !4855)
!4860 = !DILocation(line: 106, column: 16, scope: !4855)
!4861 = !DILocation(line: 106, column: 5, scope: !4855)
!4862 = !DILocation(line: 106, column: 27, scope: !4855)
!4863 = !DILocation(line: 104, column: 43, scope: !4851)
!4864 = !DILocation(line: 104, column: 3, scope: !4851)
!4865 = distinct !{!4865, !4826, !4866, !200}
!4866 = !DILocation(line: 107, column: 3, scope: !4827)
!4867 = !DILocation(line: 109, scope: !4853)
!4868 = !DILocalVariable(name: "i", scope: !4853, file: !151, line: 109, type: !35)
!4869 = !DILocation(line: 0, scope: !4853)
!4870 = !DILocation(line: 109, column: 20, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4853, file: !151, line: 109, column: 3)
!4872 = !DILocation(line: 109, column: 48, scope: !4871)
!4873 = !DILocation(line: 109, column: 53, scope: !4871)
!4874 = !DILocation(line: 109, column: 43, scope: !4871)
!4875 = !DILocation(line: 109, column: 36, scope: !4871)
!4876 = !DILocation(line: 109, column: 41, scope: !4871)
!4877 = !DILocation(line: 109, column: 32, scope: !4871)
!4878 = !DILocation(line: 109, column: 3, scope: !4871)
!4879 = distinct !{!4879, !4852, !4880, !200}
!4880 = !DILocation(line: 109, column: 62, scope: !4853)
!4881 = !DILocation(line: 110, column: 1, scope: !4806)
!4882 = distinct !DISubprogram(name: "vector_M_dot_vector_M", scope: !151, file: !151, line: 47, type: !4762, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4883 = !DILocalVariable(name: "A", arg: 1, scope: !4882, file: !151, line: 47, type: !2964)
!4884 = !DILocation(line: 0, scope: !4882)
!4885 = !DILocalVariable(name: "B", arg: 2, scope: !4882, file: !151, line: 47, type: !2964)
!4886 = !DILocalVariable(name: "a", scope: !4882, file: !151, line: 48, type: !149)
!4887 = !DILocalVariable(name: "b", scope: !4882, file: !151, line: 49, type: !149)
!4888 = !DILocalVariable(name: "c", scope: !4882, file: !151, line: 50, type: !23)
!4889 = !DILocalVariable(name: "j", scope: !4890, file: !151, line: 51, type: !35)
!4890 = distinct !DILexicalBlock(scope: !4882, file: !151, line: 51, column: 3)
!4891 = !DILocation(line: 0, scope: !4890)
!4892 = !DILocation(line: 51, column: 7, scope: !4890)
!4893 = !DILocation(line: 51, scope: !4890)
!4894 = !DILocation(line: 51, column: 21, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4890, file: !151, line: 51, column: 3)
!4896 = !DILocation(line: 51, column: 3, scope: !4890)
!4897 = !DILocation(line: 51, column: 78, scope: !4895)
!4898 = !DILocation(line: 51, column: 84, scope: !4895)
!4899 = !DILocation(line: 51, column: 56, scope: !4895)
!4900 = !DILocation(line: 51, column: 86, scope: !4895)
!4901 = !DILocation(line: 51, column: 80, scope: !4895)
!4902 = !DILocation(line: 51, column: 48, scope: !4895)
!4903 = !DILocation(line: 51, column: 3, scope: !4895)
!4904 = distinct !{!4904, !4896, !4905, !200}
!4905 = !DILocation(line: 51, column: 91, scope: !4890)
!4906 = !DILocation(line: 52, column: 16, scope: !4882)
!4907 = !DILocalVariable(name: "C", scope: !4882, file: !151, line: 52, type: !23)
!4908 = !DILocation(line: 53, column: 3, scope: !4882)
!4909 = distinct !DISubprogram(name: "VECTOR_V_MUL_SYMMETRIC_MATRIX_VxV", scope: !151, file: !151, line: 112, type: !4910, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{null, !3441, !3865, !2605}
!4912 = !DILocalVariable(name: "A", arg: 1, scope: !4909, file: !151, line: 112, type: !3441)
!4913 = !DILocation(line: 0, scope: !4909)
!4914 = !DILocalVariable(name: "B", arg: 2, scope: !4909, file: !151, line: 112, type: !3865)
!4915 = !DILocalVariable(name: "C", arg: 3, scope: !4909, file: !151, line: 112, type: !2605)
!4916 = !DILocalVariable(name: "tmp", scope: !4909, file: !151, line: 113, type: !86)
!4917 = !DILocation(line: 113, column: 6, scope: !4909)
!4918 = !DILocalVariable(name: "i", scope: !4919, file: !151, line: 114, type: !35)
!4919 = distinct !DILexicalBlock(scope: !4909, file: !151, line: 114, column: 3)
!4920 = !DILocation(line: 0, scope: !4919)
!4921 = !DILocation(line: 114, column: 7, scope: !4919)
!4922 = !DILocation(line: 114, scope: !4919)
!4923 = !DILocation(line: 114, column: 21, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4919, file: !151, line: 114, column: 3)
!4925 = !DILocation(line: 114, column: 3, scope: !4919)
!4926 = !DILocation(line: 115, column: 31, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4924, file: !151, line: 114, column: 37)
!4928 = !DILocation(line: 115, column: 5, scope: !4927)
!4929 = !DILocalVariable(name: "k", scope: !4930, file: !151, line: 116, type: !35)
!4930 = distinct !DILexicalBlock(scope: !4927, file: !151, line: 116, column: 5)
!4931 = !DILocation(line: 0, scope: !4930)
!4932 = !DILocation(line: 116, column: 9, scope: !4930)
!4933 = !DILocation(line: 116, scope: !4930)
!4934 = !DILocation(line: 116, column: 22, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4930, file: !151, line: 116, column: 5)
!4936 = !DILocation(line: 116, column: 5, scope: !4930)
!4937 = !DILocation(line: 116, column: 48, scope: !4935)
!4938 = !DILocation(line: 116, column: 38, scope: !4935)
!4939 = !DILocation(line: 116, column: 46, scope: !4935)
!4940 = !DILocation(line: 116, column: 34, scope: !4935)
!4941 = !DILocation(line: 116, column: 5, scope: !4935)
!4942 = distinct !{!4942, !4936, !4943, !200}
!4943 = !DILocation(line: 116, column: 53, scope: !4930)
!4944 = !DILocation(line: 114, column: 34, scope: !4924)
!4945 = !DILocation(line: 114, column: 3, scope: !4924)
!4946 = distinct !{!4946, !4925, !4947, !200}
!4947 = !DILocation(line: 117, column: 3, scope: !4919)
!4948 = !DILocation(line: 118, column: 3, scope: !4909)
!4949 = !DILocation(line: 119, column: 1, scope: !4909)
!4950 = distinct !DISubprogram(name: "VECTOR_V_CLEAR_TAIL", scope: !100, file: !100, line: 54, type: !2603, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4951 = !DILocalVariable(name: "C", arg: 1, scope: !4950, file: !100, line: 54, type: !2605)
!4952 = !DILocation(line: 0, scope: !4950)
!4953 = !DILocalVariable(name: "k", scope: !4954, file: !100, line: 55, type: !35)
!4954 = distinct !DILexicalBlock(scope: !4950, file: !100, line: 55, column: 3)
!4955 = !DILocation(line: 0, scope: !4954)
!4956 = !DILocation(line: 55, column: 7, scope: !4954)
!4957 = !DILocation(line: 55, scope: !4954)
!4958 = !DILocation(line: 55, column: 16, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4954, file: !100, line: 55, column: 3)
!4960 = !DILocation(line: 55, column: 3, scope: !4954)
!4961 = !DILocation(line: 55, column: 37, scope: !4959)
!4962 = !DILocation(line: 55, column: 41, scope: !4959)
!4963 = !DILocation(line: 55, column: 30, scope: !4959)
!4964 = !DILocation(line: 55, column: 26, scope: !4959)
!4965 = !DILocation(line: 55, column: 3, scope: !4959)
!4966 = distinct !{!4966, !4960, !4967, !200}
!4967 = !DILocation(line: 55, column: 90, scope: !4954)
!4968 = !DILocation(line: 56, column: 1, scope: !4950)
!4969 = distinct !DISubprogram(name: "MATRIX_TRANSPOSE_VxM", scope: !151, file: !151, line: 121, type: !4970, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{null, !3439, !2364}
!4972 = !DILocalVariable(name: "A", arg: 1, scope: !4969, file: !151, line: 121, type: !3439)
!4973 = !DILocation(line: 0, scope: !4969)
!4974 = !DILocalVariable(name: "C", arg: 2, scope: !4969, file: !151, line: 121, type: !2364)
!4975 = !DILocalVariable(name: "i", scope: !4976, file: !151, line: 122, type: !35)
!4976 = distinct !DILexicalBlock(scope: !4969, file: !151, line: 122, column: 3)
!4977 = !DILocation(line: 0, scope: !4976)
!4978 = !DILocation(line: 122, column: 7, scope: !4976)
!4979 = !DILocation(line: 122, scope: !4976)
!4980 = !DILocation(line: 122, column: 16, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4976, file: !151, line: 122, column: 3)
!4982 = !DILocation(line: 122, column: 3, scope: !4976)
!4983 = !DILocation(line: 123, column: 5, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4985, file: !151, line: 123, column: 5)
!4985 = distinct !DILexicalBlock(scope: !4981, file: !151, line: 122, column: 29)
!4986 = !DILocation(line: 129, column: 3, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4969, file: !151, line: 129, column: 3)
!4988 = !DILocation(line: 123, scope: !4984)
!4989 = !DILocalVariable(name: "k", scope: !4984, file: !151, line: 123, type: !35)
!4990 = !DILocation(line: 0, scope: !4984)
!4991 = !DILocation(line: 123, column: 18, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4984, file: !151, line: 123, column: 5)
!4993 = !DILocation(line: 124, column: 7, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !151, line: 124, column: 7)
!4995 = distinct !DILexicalBlock(scope: !4992, file: !151, line: 123, column: 31)
!4996 = !DILocation(line: 124, scope: !4994)
!4997 = !DILocalVariable(name: "j", scope: !4994, file: !151, line: 124, type: !35)
!4998 = !DILocation(line: 0, scope: !4994)
!4999 = !DILocation(line: 124, column: 20, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4994, file: !151, line: 124, column: 7)
!5001 = !DILocation(line: 125, column: 22, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !5000, file: !151, line: 124, column: 33)
!5003 = !DILocation(line: 125, column: 9, scope: !5002)
!5004 = !DILocation(line: 125, column: 20, scope: !5002)
!5005 = !DILocation(line: 124, column: 30, scope: !5000)
!5006 = !DILocation(line: 124, column: 7, scope: !5000)
!5007 = distinct !{!5007, !4993, !5008, !200}
!5008 = !DILocation(line: 126, column: 7, scope: !4994)
!5009 = !DILocation(line: 123, column: 28, scope: !4992)
!5010 = !DILocation(line: 123, column: 5, scope: !4992)
!5011 = distinct !{!5011, !4983, !5012, !200}
!5012 = !DILocation(line: 127, column: 5, scope: !4984)
!5013 = !DILocation(line: 122, column: 26, scope: !4981)
!5014 = !DILocation(line: 122, column: 3, scope: !4981)
!5015 = distinct !{!5015, !4982, !5016, !200}
!5016 = !DILocation(line: 128, column: 3, scope: !4976)
!5017 = !DILocation(line: 129, scope: !4987)
!5018 = !DILocalVariable(name: "j", scope: !4987, file: !151, line: 129, type: !35)
!5019 = !DILocation(line: 0, scope: !4987)
!5020 = !DILocation(line: 129, column: 16, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4987, file: !151, line: 129, column: 3)
!5022 = !DILocation(line: 129, column: 50, scope: !5021)
!5023 = !DILocation(line: 129, column: 30, scope: !5021)
!5024 = !DILocation(line: 129, column: 26, scope: !5021)
!5025 = !DILocation(line: 129, column: 3, scope: !5021)
!5026 = distinct !{!5026, !4986, !5027, !200}
!5027 = !DILocation(line: 129, column: 54, scope: !4987)
!5028 = !DILocation(line: 130, column: 1, scope: !4969)
!5029 = distinct !DISubprogram(name: "VECTOR_V_MUL_MATRIX_VxM", scope: !151, file: !151, line: 132, type: !5030, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !3441, !3439, !2583}
!5032 = !DILocalVariable(name: "A", arg: 1, scope: !5029, file: !151, line: 132, type: !3441)
!5033 = !DILocation(line: 0, scope: !5029)
!5034 = !DILocalVariable(name: "B", arg: 2, scope: !5029, file: !151, line: 132, type: !3439)
!5035 = !DILocalVariable(name: "C", arg: 3, scope: !5029, file: !151, line: 132, type: !2583)
!5036 = !DILocalVariable(name: "BT", scope: !5029, file: !151, line: 133, type: !2310)
!5037 = !DILocation(line: 133, column: 14, scope: !5029)
!5038 = !DILocation(line: 134, column: 3, scope: !5029)
!5039 = !DILocalVariable(name: "tmp", scope: !5029, file: !151, line: 135, type: !86)
!5040 = !DILocation(line: 135, column: 6, scope: !5029)
!5041 = !DILocalVariable(name: "i", scope: !5042, file: !151, line: 136, type: !35)
!5042 = distinct !DILexicalBlock(scope: !5029, file: !151, line: 136, column: 3)
!5043 = !DILocation(line: 0, scope: !5042)
!5044 = !DILocation(line: 136, column: 7, scope: !5042)
!5045 = !DILocation(line: 136, scope: !5042)
!5046 = !DILocation(line: 136, column: 21, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5042, file: !151, line: 136, column: 3)
!5048 = !DILocation(line: 136, column: 3, scope: !5042)
!5049 = !DILocation(line: 137, column: 31, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5047, file: !151, line: 136, column: 37)
!5051 = !DILocation(line: 137, column: 5, scope: !5050)
!5052 = !DILocalVariable(name: "k", scope: !5053, file: !151, line: 138, type: !35)
!5053 = distinct !DILexicalBlock(scope: !5050, file: !151, line: 138, column: 5)
!5054 = !DILocation(line: 0, scope: !5053)
!5055 = !DILocation(line: 138, column: 9, scope: !5053)
!5056 = !DILocation(line: 138, scope: !5053)
!5057 = !DILocation(line: 138, column: 22, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5053, file: !151, line: 138, column: 5)
!5059 = !DILocation(line: 138, column: 5, scope: !5053)
!5060 = !DILocation(line: 138, column: 48, scope: !5058)
!5061 = !DILocation(line: 138, column: 38, scope: !5058)
!5062 = !DILocation(line: 138, column: 46, scope: !5058)
!5063 = !DILocation(line: 138, column: 34, scope: !5058)
!5064 = !DILocation(line: 138, column: 5, scope: !5058)
!5065 = distinct !{!5065, !5059, !5066, !200}
!5066 = !DILocation(line: 138, column: 53, scope: !5053)
!5067 = !DILocation(line: 136, column: 34, scope: !5047)
!5068 = !DILocation(line: 136, column: 3, scope: !5047)
!5069 = distinct !{!5069, !5048, !5070, !200}
!5070 = !DILocation(line: 139, column: 3, scope: !5042)
!5071 = !DILocation(line: 140, column: 3, scope: !5029)
!5072 = !DILocation(line: 141, column: 1, scope: !5029)
!5073 = distinct !DISubprogram(name: "VECTOR_M_CLEAR_TAIL", scope: !100, file: !100, line: 58, type: !2581, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !147, retainedNodes: !98)
!5074 = !DILocalVariable(name: "C", arg: 1, scope: !5073, file: !100, line: 58, type: !2583)
!5075 = !DILocation(line: 0, scope: !5073)
!5076 = !DILocalVariable(name: "k", scope: !5077, file: !100, line: 59, type: !35)
!5077 = distinct !DILexicalBlock(scope: !5073, file: !100, line: 59, column: 3)
!5078 = !DILocation(line: 0, scope: !5077)
!5079 = !DILocation(line: 59, column: 7, scope: !5077)
!5080 = !DILocation(line: 59, scope: !5077)
!5081 = !DILocation(line: 59, column: 16, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5077, file: !100, line: 59, column: 3)
!5083 = !DILocation(line: 59, column: 3, scope: !5077)
!5084 = !DILocation(line: 59, column: 37, scope: !5082)
!5085 = !DILocation(line: 59, column: 41, scope: !5082)
!5086 = !DILocation(line: 59, column: 30, scope: !5082)
!5087 = !DILocation(line: 59, column: 26, scope: !5082)
!5088 = !DILocation(line: 59, column: 3, scope: !5082)
!5089 = distinct !{!5089, !5083, !5090, !200}
!5090 = !DILocation(line: 59, column: 90, scope: !5077)
!5091 = !DILocation(line: 60, column: 1, scope: !5073)
!5092 = distinct !DISubprogram(name: "MATRIX_MxV_MUL_SYMMETRIC_MATRIX_VxV", scope: !151, file: !151, line: 143, type: !5093, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{null, !3865, !3865, !2364}
!5095 = !DILocalVariable(name: "A", arg: 1, scope: !5092, file: !151, line: 143, type: !3865)
!5096 = !DILocation(line: 0, scope: !5092)
!5097 = !DILocalVariable(name: "B", arg: 2, scope: !5092, file: !151, line: 143, type: !3865)
!5098 = !DILocalVariable(name: "C", arg: 3, scope: !5092, file: !151, line: 143, type: !2364)
!5099 = !DILocalVariable(name: "i", scope: !5100, file: !151, line: 144, type: !35)
!5100 = distinct !DILexicalBlock(scope: !5092, file: !151, line: 144, column: 3)
!5101 = !DILocation(line: 0, scope: !5100)
!5102 = !DILocation(line: 144, column: 7, scope: !5100)
!5103 = !DILocation(line: 144, scope: !5100)
!5104 = !DILocation(line: 144, column: 21, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5100, file: !151, line: 144, column: 3)
!5106 = !DILocation(line: 144, column: 3, scope: !5100)
!5107 = !DILocation(line: 145, column: 39, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5105, file: !151, line: 144, column: 37)
!5109 = !DILocation(line: 145, column: 48, scope: !5108)
!5110 = !DILocation(line: 145, column: 5, scope: !5108)
!5111 = !DILocation(line: 144, column: 34, scope: !5105)
!5112 = !DILocation(line: 144, column: 3, scope: !5105)
!5113 = distinct !{!5113, !5106, !5114, !200}
!5114 = !DILocation(line: 146, column: 3, scope: !5100)
!5115 = !DILocation(line: 147, column: 1, scope: !5092)
!5116 = distinct !DISubprogram(name: "MATRIX_MUL_MxV_VxM", scope: !151, file: !151, line: 149, type: !5117, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{null, !3865, !3439, !2363}
!5119 = !DILocalVariable(name: "A", arg: 1, scope: !5116, file: !151, line: 149, type: !3865)
!5120 = !DILocation(line: 0, scope: !5116)
!5121 = !DILocalVariable(name: "B", arg: 2, scope: !5116, file: !151, line: 149, type: !3439)
!5122 = !DILocalVariable(name: "C", arg: 3, scope: !5116, file: !151, line: 149, type: !2363)
!5123 = !DILocalVariable(name: "i", scope: !5124, file: !151, line: 150, type: !35)
!5124 = distinct !DILexicalBlock(scope: !5116, file: !151, line: 150, column: 3)
!5125 = !DILocation(line: 0, scope: !5124)
!5126 = !DILocation(line: 150, column: 7, scope: !5124)
!5127 = !DILocation(line: 150, scope: !5124)
!5128 = !DILocation(line: 150, column: 21, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5124, file: !151, line: 150, column: 3)
!5130 = !DILocation(line: 150, column: 3, scope: !5124)
!5131 = !DILocation(line: 151, column: 29, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5129, file: !151, line: 150, column: 37)
!5133 = !DILocation(line: 151, column: 38, scope: !5132)
!5134 = !DILocation(line: 151, column: 5, scope: !5132)
!5135 = !DILocation(line: 150, column: 34, scope: !5129)
!5136 = !DILocation(line: 150, column: 3, scope: !5129)
!5137 = distinct !{!5137, !5130, !5138, !200}
!5138 = !DILocation(line: 152, column: 3, scope: !5124)
!5139 = !DILocation(line: 153, column: 1, scope: !5116)
!5140 = distinct !DISubprogram(name: "MATRIX_ADD_MxM", scope: !151, file: !151, line: 155, type: !5141, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !3439, !3439, !2363}
!5143 = !DILocalVariable(name: "A", arg: 1, scope: !5140, file: !151, line: 155, type: !3439)
!5144 = !DILocation(line: 0, scope: !5140)
!5145 = !DILocalVariable(name: "B", arg: 2, scope: !5140, file: !151, line: 155, type: !3439)
!5146 = !DILocalVariable(name: "C", arg: 3, scope: !5140, file: !151, line: 155, type: !2363)
!5147 = !DILocalVariable(name: "i", scope: !5148, file: !151, line: 156, type: !35)
!5148 = distinct !DILexicalBlock(scope: !5140, file: !151, line: 156, column: 3)
!5149 = !DILocation(line: 0, scope: !5148)
!5150 = !DILocation(line: 156, column: 7, scope: !5148)
!5151 = !DILocation(line: 156, scope: !5148)
!5152 = !DILocation(line: 156, column: 21, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5148, file: !151, line: 156, column: 3)
!5154 = !DILocation(line: 156, column: 3, scope: !5148)
!5155 = !DILocation(line: 157, column: 18, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5153, file: !151, line: 156, column: 37)
!5157 = !DILocation(line: 157, column: 24, scope: !5156)
!5158 = !DILocation(line: 157, column: 30, scope: !5156)
!5159 = !DILocation(line: 157, column: 5, scope: !5156)
!5160 = !DILocation(line: 156, column: 34, scope: !5153)
!5161 = !DILocation(line: 156, column: 3, scope: !5153)
!5162 = distinct !{!5162, !5154, !5163, !200}
!5163 = !DILocation(line: 158, column: 3, scope: !5148)
!5164 = !DILocation(line: 159, column: 1, scope: !5140)
!5165 = distinct !DISubprogram(name: "MATRIX_MUL_ADD_MxV_VxM", scope: !151, file: !151, line: 161, type: !5117, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!5166 = !DILocalVariable(name: "A", arg: 1, scope: !5165, file: !151, line: 161, type: !3865)
!5167 = !DILocation(line: 0, scope: !5165)
!5168 = !DILocalVariable(name: "B", arg: 2, scope: !5165, file: !151, line: 161, type: !3439)
!5169 = !DILocalVariable(name: "C", arg: 3, scope: !5165, file: !151, line: 161, type: !2363)
!5170 = !DILocalVariable(name: "T", scope: !5165, file: !151, line: 162, type: !102)
!5171 = !DILocation(line: 162, column: 14, scope: !5165)
!5172 = !DILocation(line: 163, column: 3, scope: !5165)
!5173 = !DILocation(line: 164, column: 3, scope: !5165)
!5174 = !DILocation(line: 165, column: 1, scope: !5165)
!5175 = distinct !DISubprogram(name: "MATRIX_SUB_MxV", scope: !151, file: !151, line: 167, type: !5093, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !147, retainedNodes: !98)
!5176 = !DILocalVariable(name: "A", arg: 1, scope: !5175, file: !151, line: 167, type: !3865)
!5177 = !DILocation(line: 0, scope: !5175)
!5178 = !DILocalVariable(name: "B", arg: 2, scope: !5175, file: !151, line: 167, type: !3865)
!5179 = !DILocalVariable(name: "C", arg: 3, scope: !5175, file: !151, line: 167, type: !2364)
!5180 = !DILocalVariable(name: "i", scope: !5181, file: !151, line: 168, type: !35)
!5181 = distinct !DILexicalBlock(scope: !5175, file: !151, line: 168, column: 3)
!5182 = !DILocation(line: 0, scope: !5181)
!5183 = !DILocation(line: 168, column: 7, scope: !5181)
!5184 = !DILocation(line: 168, scope: !5181)
!5185 = !DILocation(line: 168, column: 21, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5181, file: !151, line: 168, column: 3)
!5187 = !DILocation(line: 168, column: 3, scope: !5181)
!5188 = !DILocation(line: 169, column: 18, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5186, file: !151, line: 168, column: 37)
!5190 = !DILocation(line: 169, column: 24, scope: !5189)
!5191 = !DILocation(line: 169, column: 30, scope: !5189)
!5192 = !DILocation(line: 169, column: 5, scope: !5189)
!5193 = !DILocation(line: 168, column: 34, scope: !5186)
!5194 = !DILocation(line: 168, column: 3, scope: !5186)
!5195 = distinct !{!5195, !5187, !5196, !200}
!5196 = !DILocation(line: 170, column: 3, scope: !5181)
!5197 = !DILocation(line: 171, column: 1, scope: !5175)
!5198 = distinct !DISubprogram(name: "seedexpander_init", scope: !128, file: !128, line: 27, type: !5199, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !98)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!35, !5201, !78, !78, !345}
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 32)
!5202 = !DIDerivedType(tag: DW_TAG_typedef, name: "AES_XOF_struct", file: !130, line: 25, baseType: !5203)
!5203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 19, size: 576, elements: !5204)
!5204 = !{!5205, !5206, !5207, !5208, !5209}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5203, file: !130, line: 20, baseType: !138, size: 128)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_pos", scope: !5203, file: !130, line: 21, baseType: !35, size: 32, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "length_remaining", scope: !5203, file: !130, line: 22, baseType: !345, size: 32, offset: 160)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5203, file: !130, line: 23, baseType: !134, size: 256, offset: 192)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !5203, file: !130, line: 24, baseType: !138, size: 128, offset: 448)
!5210 = !DILocalVariable(name: "ctx", arg: 1, scope: !5198, file: !128, line: 27, type: !5201)
!5211 = !DILocation(line: 0, scope: !5198)
!5212 = !DILocalVariable(name: "seed", arg: 2, scope: !5198, file: !128, line: 28, type: !78)
!5213 = !DILocalVariable(name: "diversifier", arg: 3, scope: !5198, file: !128, line: 29, type: !78)
!5214 = !DILocalVariable(name: "maxlen", arg: 4, scope: !5198, file: !128, line: 30, type: !345)
!5215 = !DILocation(line: 35, column: 10, scope: !5198)
!5216 = !DILocation(line: 35, column: 27, scope: !5198)
!5217 = !DILocation(line: 37, column: 17, scope: !5198)
!5218 = !DILocation(line: 37, column: 5, scope: !5198)
!5219 = !DILocation(line: 39, column: 17, scope: !5198)
!5220 = !DILocation(line: 39, column: 5, scope: !5198)
!5221 = !DILocation(line: 40, column: 20, scope: !5198)
!5222 = !DILocation(line: 40, column: 5, scope: !5198)
!5223 = !DILocation(line: 40, column: 18, scope: !5198)
!5224 = !DILocation(line: 41, column: 12, scope: !5198)
!5225 = !DILocation(line: 42, column: 20, scope: !5198)
!5226 = !DILocation(line: 42, column: 5, scope: !5198)
!5227 = !DILocation(line: 42, column: 18, scope: !5198)
!5228 = !DILocation(line: 43, column: 12, scope: !5198)
!5229 = !DILocation(line: 44, column: 26, scope: !5198)
!5230 = !DILocation(line: 44, column: 5, scope: !5198)
!5231 = !DILocation(line: 44, column: 17, scope: !5198)
!5232 = !DILocation(line: 45, column: 12, scope: !5198)
!5233 = !DILocation(line: 46, column: 19, scope: !5198)
!5234 = !DILocation(line: 46, column: 5, scope: !5198)
!5235 = !DILocation(line: 46, column: 17, scope: !5198)
!5236 = !DILocation(line: 47, column: 20, scope: !5198)
!5237 = !DILocation(line: 47, column: 5, scope: !5198)
!5238 = !DILocation(line: 49, column: 10, scope: !5198)
!5239 = !DILocation(line: 49, column: 21, scope: !5198)
!5240 = !DILocation(line: 50, column: 5, scope: !5198)
!5241 = !DILocation(line: 53, column: 1, scope: !5198)
!5242 = distinct !DISubprogram(name: "seedexpander", scope: !128, file: !128, line: 62, type: !5243, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !98)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!35, !5201, !78, !345}
!5245 = !DILocalVariable(name: "ctx", arg: 1, scope: !5242, file: !128, line: 62, type: !5201)
!5246 = !DILocation(line: 0, scope: !5242)
!5247 = !DILocalVariable(name: "x", arg: 2, scope: !5242, file: !128, line: 62, type: !78)
!5248 = !DILocalVariable(name: "xlen", arg: 3, scope: !5242, file: !128, line: 62, type: !345)
!5249 = !DILocation(line: 66, column: 12, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5242, file: !128, line: 66, column: 10)
!5251 = !DILocation(line: 68, column: 23, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5242, file: !128, line: 68, column: 10)
!5253 = !DILocation(line: 68, column: 15, scope: !5252)
!5254 = !DILocation(line: 71, column: 10, scope: !5242)
!5255 = !DILocation(line: 71, column: 27, scope: !5242)
!5256 = !DILocalVariable(name: "offset", scope: !5242, file: !128, line: 64, type: !345)
!5257 = !DILocation(line: 74, column: 5, scope: !5242)
!5258 = !DILocation(line: 74, column: 18, scope: !5242)
!5259 = !DILocation(line: 75, column: 31, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5261, file: !128, line: 75, column: 14)
!5261 = distinct !DILexicalBlock(scope: !5242, file: !128, line: 74, column: 24)
!5262 = !DILocation(line: 75, column: 25, scope: !5260)
!5263 = !DILocation(line: 75, column: 19, scope: !5260)
!5264 = !DILocation(line: 76, column: 21, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5260, file: !128, line: 75, column: 45)
!5266 = !DILocation(line: 76, column: 47, scope: !5265)
!5267 = !DILocation(line: 76, column: 41, scope: !5265)
!5268 = !DILocation(line: 76, column: 13, scope: !5265)
!5269 = !DILocation(line: 77, column: 18, scope: !5265)
!5270 = !DILocation(line: 77, column: 29, scope: !5265)
!5271 = !DILocation(line: 79, column: 13, scope: !5265)
!5272 = !DILocation(line: 83, column: 17, scope: !5261)
!5273 = !DILocation(line: 83, column: 43, scope: !5261)
!5274 = !DILocation(line: 83, column: 37, scope: !5261)
!5275 = !DILocation(line: 83, column: 57, scope: !5261)
!5276 = !DILocation(line: 83, column: 9, scope: !5261)
!5277 = !DILocation(line: 84, column: 25, scope: !5261)
!5278 = !DILocation(line: 84, column: 19, scope: !5261)
!5279 = !DILocation(line: 84, column: 14, scope: !5261)
!5280 = !DILocation(line: 85, column: 16, scope: !5261)
!5281 = !DILocation(line: 87, column: 25, scope: !5261)
!5282 = !DILocation(line: 87, column: 35, scope: !5261)
!5283 = !DILocation(line: 87, column: 9, scope: !5261)
!5284 = !DILocation(line: 88, column: 14, scope: !5261)
!5285 = !DILocation(line: 88, column: 25, scope: !5261)
!5286 = !DILocalVariable(name: "i", scope: !5287, file: !128, line: 91, type: !35)
!5287 = distinct !DILexicalBlock(scope: !5261, file: !128, line: 91, column: 9)
!5288 = !DILocation(line: 0, scope: !5287)
!5289 = !DILocation(line: 91, column: 14, scope: !5287)
!5290 = !DILocation(line: 91, scope: !5287)
!5291 = !DILocation(line: 91, column: 25, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5287, file: !128, line: 91, column: 9)
!5293 = !DILocation(line: 91, column: 9, scope: !5287)
!5294 = !DILocation(line: 92, column: 23, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !128, line: 92, column: 18)
!5296 = distinct !DILexicalBlock(scope: !5292, file: !128, line: 91, column: 36)
!5297 = !DILocation(line: 92, column: 18, scope: !5295)
!5298 = !DILocation(line: 92, column: 30, scope: !5295)
!5299 = !DILocation(line: 93, column: 22, scope: !5295)
!5300 = !DILocation(line: 93, column: 17, scope: !5295)
!5301 = !DILocation(line: 93, column: 29, scope: !5295)
!5302 = !DILocation(line: 91, column: 32, scope: !5292)
!5303 = !DILocation(line: 91, column: 9, scope: !5292)
!5304 = distinct !{!5304, !5293, !5305, !200}
!5305 = !DILocation(line: 98, column: 9, scope: !5287)
!5306 = !DILocation(line: 95, column: 22, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5295, file: !128, line: 94, column: 18)
!5308 = !DILocation(line: 95, column: 17, scope: !5307)
!5309 = !DILocation(line: 95, column: 28, scope: !5307)
!5310 = !DILocation(line: 96, column: 17, scope: !5307)
!5311 = distinct !{!5311, !5257, !5312, !200}
!5312 = !DILocation(line: 100, column: 5, scope: !5242)
!5313 = !DILocation(line: 103, column: 1, scope: !5242)
!5314 = distinct !DISubprogram(name: "AES256_ECB", scope: !128, file: !128, line: 117, type: !5315, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !98)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !78, !78, !78}
!5317 = !DILocalVariable(name: "key", arg: 1, scope: !5314, file: !128, line: 117, type: !78)
!5318 = !DILocation(line: 0, scope: !5314)
!5319 = !DILocalVariable(name: "ctr", arg: 2, scope: !5314, file: !128, line: 117, type: !78)
!5320 = !DILocalVariable(name: "buffer", arg: 3, scope: !5314, file: !128, line: 117, type: !78)
!5321 = !DILocation(line: 126, column: 16, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5314, file: !128, line: 126, column: 8)
!5323 = !DILocalVariable(name: "ctx", scope: !5314, file: !128, line: 119, type: !2330)
!5324 = !DILocation(line: 126, column: 14, scope: !5322)
!5325 = !DILocation(line: 126, column: 8, scope: !5322)
!5326 = !DILocation(line: 126, column: 39, scope: !5322)
!5327 = !DILocation(line: 128, column: 37, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5314, file: !128, line: 128, column: 8)
!5329 = !DILocation(line: 128, column: 13, scope: !5328)
!5330 = !DILocation(line: 128, column: 10, scope: !5328)
!5331 = !DILocation(line: 129, column: 9, scope: !5328)
!5332 = !DILocalVariable(name: "len", scope: !5314, file: !128, line: 121, type: !35)
!5333 = !DILocation(line: 131, column: 13, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5314, file: !128, line: 131, column: 8)
!5335 = !DILocation(line: 131, column: 10, scope: !5334)
!5336 = !DILocation(line: 132, column: 9, scope: !5334)
!5337 = !DILocalVariable(name: "ciphertext_len", scope: !5314, file: !128, line: 123, type: !35)
!5338 = !DILocation(line: 136, column: 5, scope: !5314)
!5339 = !DILocation(line: 137, column: 1, scope: !5314)
!5340 = distinct !DISubprogram(name: "handleErrors", scope: !128, file: !128, line: 106, type: !5341, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{null}
!5343 = !DILocation(line: 108, column: 25, scope: !5340)
!5344 = !DILocation(line: 108, column: 5, scope: !5340)
!5345 = !DILocation(line: 109, column: 5, scope: !5340)
!5346 = !DILocation(line: 110, column: 1, scope: !5340)
!5347 = distinct !DISubprogram(name: "randombytes_init", scope: !128, file: !128, line: 140, type: !5348, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !98)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !78, !78, !35}
!5350 = !DILocalVariable(name: "entropy_input", arg: 1, scope: !5347, file: !128, line: 140, type: !78)
!5351 = !DILocation(line: 0, scope: !5347)
!5352 = !DILocalVariable(name: "personalization_string", arg: 2, scope: !5347, file: !128, line: 141, type: !78)
!5353 = !DILocalVariable(name: "security_strength", arg: 3, scope: !5347, file: !128, line: 142, type: !35)
!5354 = !DILocalVariable(name: "seed_material", scope: !5347, file: !128, line: 144, type: !181)
!5355 = !DILocation(line: 144, column: 21, scope: !5347)
!5356 = !DILocation(line: 146, column: 5, scope: !5347)
!5357 = !DILocation(line: 147, column: 9, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5347, file: !128, line: 147, column: 9)
!5359 = !DILocation(line: 148, column: 9, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5358, file: !128, line: 148, column: 9)
!5361 = !DILocation(line: 148, scope: !5360)
!5362 = !DILocalVariable(name: "i", scope: !5360, file: !128, line: 148, type: !35)
!5363 = !DILocation(line: 0, scope: !5360)
!5364 = !DILocation(line: 148, column: 24, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !128, line: 148, column: 9)
!5366 = !DILocation(line: 149, column: 33, scope: !5365)
!5367 = !DILocation(line: 149, column: 13, scope: !5365)
!5368 = !DILocation(line: 149, column: 30, scope: !5365)
!5369 = !DILocation(line: 148, column: 30, scope: !5365)
!5370 = !DILocation(line: 148, column: 9, scope: !5365)
!5371 = distinct !{!5371, !5359, !5372, !200}
!5372 = !DILocation(line: 149, column: 57, scope: !5360)
!5373 = !DILocation(line: 150, column: 5, scope: !5347)
!5374 = !DILocation(line: 151, column: 5, scope: !5347)
!5375 = !DILocation(line: 152, column: 5, scope: !5347)
!5376 = !DILocation(line: 153, column: 29, scope: !5347)
!5377 = !DILocation(line: 154, column: 1, scope: !5347)
!5378 = distinct !DISubprogram(name: "AES256_CTR_DRBG_Update", scope: !128, file: !128, line: 190, type: !5315, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !98)
!5379 = !DILocalVariable(name: "provided_data", arg: 1, scope: !5378, file: !128, line: 190, type: !78)
!5380 = !DILocation(line: 0, scope: !5378)
!5381 = !DILocalVariable(name: "Key", arg: 2, scope: !5378, file: !128, line: 191, type: !78)
!5382 = !DILocalVariable(name: "V", arg: 3, scope: !5378, file: !128, line: 192, type: !78)
!5383 = !DILocalVariable(name: "temp", scope: !5378, file: !128, line: 194, type: !181)
!5384 = !DILocation(line: 194, column: 21, scope: !5378)
!5385 = !DILocalVariable(name: "i", scope: !5386, file: !128, line: 196, type: !35)
!5386 = distinct !DILexicalBlock(scope: !5378, file: !128, line: 196, column: 5)
!5387 = !DILocation(line: 0, scope: !5386)
!5388 = !DILocation(line: 196, column: 10, scope: !5386)
!5389 = !DILocation(line: 196, scope: !5386)
!5390 = !DILocation(line: 196, column: 20, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5386, file: !128, line: 196, column: 5)
!5392 = !DILocation(line: 196, column: 5, scope: !5386)
!5393 = !DILocation(line: 198, column: 9, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5395, file: !128, line: 198, column: 9)
!5395 = distinct !DILexicalBlock(scope: !5391, file: !128, line: 196, column: 29)
!5396 = !DILocation(line: 198, scope: !5394)
!5397 = !DILocalVariable(name: "j", scope: !5394, file: !128, line: 198, type: !35)
!5398 = !DILocation(line: 0, scope: !5394)
!5399 = !DILocation(line: 198, column: 25, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5394, file: !128, line: 198, column: 9)
!5401 = !DILocation(line: 199, column: 18, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !128, line: 199, column: 18)
!5403 = distinct !DILexicalBlock(scope: !5400, file: !128, line: 198, column: 35)
!5404 = !DILocation(line: 199, column: 23, scope: !5402)
!5405 = !DILocation(line: 200, column: 17, scope: !5402)
!5406 = !DILocation(line: 200, column: 22, scope: !5402)
!5407 = !DILocation(line: 198, column: 31, scope: !5400)
!5408 = !DILocation(line: 198, column: 9, scope: !5400)
!5409 = distinct !{!5409, !5393, !5410, !200}
!5410 = !DILocation(line: 205, column: 9, scope: !5394)
!5411 = !DILocation(line: 202, column: 17, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5402, file: !128, line: 201, column: 18)
!5413 = !DILocation(line: 202, column: 21, scope: !5412)
!5414 = !DILocation(line: 203, column: 17, scope: !5412)
!5415 = !DILocation(line: 207, column: 35, scope: !5395)
!5416 = !DILocation(line: 207, column: 32, scope: !5395)
!5417 = !DILocation(line: 207, column: 9, scope: !5395)
!5418 = !DILocation(line: 196, column: 25, scope: !5391)
!5419 = !DILocation(line: 196, column: 5, scope: !5391)
!5420 = distinct !{!5420, !5392, !5421, !200}
!5421 = !DILocation(line: 208, column: 5, scope: !5386)
!5422 = !DILocation(line: 209, column: 24, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5378, file: !128, line: 209, column: 10)
!5424 = !DILocation(line: 210, column: 9, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5423, file: !128, line: 210, column: 9)
!5426 = !DILocation(line: 210, scope: !5425)
!5427 = !DILocalVariable(name: "i", scope: !5425, file: !128, line: 210, type: !35)
!5428 = !DILocation(line: 0, scope: !5425)
!5429 = !DILocation(line: 210, column: 24, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5425, file: !128, line: 210, column: 9)
!5431 = !DILocation(line: 211, column: 24, scope: !5430)
!5432 = !DILocation(line: 211, column: 13, scope: !5430)
!5433 = !DILocation(line: 211, column: 21, scope: !5430)
!5434 = !DILocation(line: 210, column: 30, scope: !5430)
!5435 = !DILocation(line: 210, column: 9, scope: !5430)
!5436 = distinct !{!5436, !5424, !5437, !200}
!5437 = !DILocation(line: 211, column: 39, scope: !5425)
!5438 = !DILocation(line: 212, column: 5, scope: !5378)
!5439 = !DILocation(line: 213, column: 19, scope: !5378)
!5440 = !DILocation(line: 213, column: 5, scope: !5378)
!5441 = !DILocation(line: 214, column: 1, scope: !5378)
!5442 = distinct !DISubprogram(name: "randombytes", scope: !128, file: !128, line: 157, type: !5443, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !98)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{!35, !78, !25}
!5445 = !DILocalVariable(name: "x", arg: 1, scope: !5442, file: !128, line: 157, type: !78)
!5446 = !DILocation(line: 0, scope: !5442)
!5447 = !DILocalVariable(name: "xlen", arg: 2, scope: !5442, file: !128, line: 157, type: !25)
!5448 = !DILocalVariable(name: "block", scope: !5442, file: !128, line: 159, type: !138)
!5449 = !DILocation(line: 159, column: 21, scope: !5442)
!5450 = !DILocalVariable(name: "i", scope: !5442, file: !128, line: 160, type: !35)
!5451 = !DILocation(line: 162, column: 5, scope: !5442)
!5452 = !DILocation(line: 162, column: 18, scope: !5442)
!5453 = !DILocation(line: 164, column: 9, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !128, line: 164, column: 9)
!5455 = distinct !DILexicalBlock(scope: !5442, file: !128, line: 162, column: 24)
!5456 = !DILocation(line: 164, scope: !5454)
!5457 = !DILocalVariable(name: "j", scope: !5454, file: !128, line: 164, type: !35)
!5458 = !DILocation(line: 0, scope: !5454)
!5459 = !DILocation(line: 164, column: 25, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5454, file: !128, line: 164, column: 9)
!5461 = !DILocation(line: 165, column: 18, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !128, line: 165, column: 18)
!5463 = distinct !DILexicalBlock(scope: !5460, file: !128, line: 164, column: 35)
!5464 = !DILocation(line: 165, column: 32, scope: !5462)
!5465 = !DILocation(line: 166, column: 17, scope: !5462)
!5466 = !DILocation(line: 166, column: 31, scope: !5462)
!5467 = !DILocation(line: 164, column: 31, scope: !5460)
!5468 = !DILocation(line: 164, column: 9, scope: !5460)
!5469 = distinct !{!5469, !5453, !5470, !200}
!5470 = !DILocation(line: 171, column: 9, scope: !5454)
!5471 = !DILocation(line: 168, column: 17, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5462, file: !128, line: 167, column: 18)
!5473 = !DILocation(line: 168, column: 30, scope: !5472)
!5474 = !DILocation(line: 169, column: 17, scope: !5472)
!5475 = !DILocation(line: 172, column: 9, scope: !5455)
!5476 = !DILocation(line: 173, column: 19, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5455, file: !128, line: 173, column: 14)
!5478 = !DILocation(line: 174, column: 21, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5477, file: !128, line: 173, column: 26)
!5480 = !DILocation(line: 174, column: 13, scope: !5479)
!5481 = !DILocation(line: 175, column: 15, scope: !5479)
!5482 = !DILocation(line: 176, column: 18, scope: !5479)
!5483 = !DILocation(line: 177, column: 9, scope: !5479)
!5484 = !DILocation(line: 179, column: 21, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5477, file: !128, line: 178, column: 14)
!5486 = !DILocation(line: 179, column: 32, scope: !5485)
!5487 = !DILocation(line: 179, column: 13, scope: !5485)
!5488 = !DILocation(line: 0, scope: !5477)
!5489 = distinct !{!5489, !5451, !5490, !200}
!5490 = !DILocation(line: 182, column: 5, scope: !5442)
!5491 = !DILocation(line: 183, column: 5, scope: !5442)
!5492 = !DILocation(line: 184, column: 28, scope: !5442)
!5493 = !DILocation(line: 186, column: 5, scope: !5442)
