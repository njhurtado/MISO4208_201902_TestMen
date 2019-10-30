.class public Lnet/objecthunter/exp4j/function/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# static fields
.field private static final INDEX_ABS:I = 0x5

.field private static final INDEX_ACOS:I = 0x6

.field private static final INDEX_ASIN:I = 0x7

.field private static final INDEX_ATAN:I = 0x8

.field private static final INDEX_CBRT:I = 0x9

.field private static final INDEX_CEIL:I = 0xa

.field private static final INDEX_COS:I = 0x1

.field private static final INDEX_COSH:I = 0xf

.field private static final INDEX_EXP:I = 0x11

.field private static final INDEX_EXPM1:I = 0x12

.field private static final INDEX_FLOOR:I = 0xb

.field private static final INDEX_LOG:I = 0x3

.field private static final INDEX_LOG10:I = 0x13

.field private static final INDEX_LOG1P:I = 0x4

.field private static final INDEX_LOG2:I = 0x14

.field private static final INDEX_POW:I = 0x10

.field private static final INDEX_SGN:I = 0x15

.field private static final INDEX_SIN:I = 0x0

.field private static final INDEX_SINH:I = 0xc

.field private static final INDEX_SQRT:I = 0xd

.field private static final INDEX_TAN:I = 0x2

.field private static final INDEX_TANH:I = 0xe

.field private static final builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 45
    const/16 v0, 0x16

    new-array v0, v0, [Lnet/objecthunter/exp4j/function/Function;

    sput-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    .line 48
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x0

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$1;

    const-string v3, "sin"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$1;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    new-instance v1, Lnet/objecthunter/exp4j/function/Functions$2;

    const-string v2, "cos"

    invoke-direct {v1, v2}, Lnet/objecthunter/exp4j/function/Functions$2;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 60
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    new-instance v1, Lnet/objecthunter/exp4j/function/Functions$3;

    const-string v2, "tan"

    invoke-direct {v1, v2}, Lnet/objecthunter/exp4j/function/Functions$3;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 66
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x3

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$4;

    const-string v3, "log"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$4;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 72
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x14

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$5;

    const-string v3, "log2"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$5;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 78
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x13

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$6;

    const-string v3, "log10"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$6;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 84
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x4

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$7;

    const-string v3, "log1p"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$7;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 90
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x5

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$8;

    const-string v3, "abs"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$8;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 96
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x6

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$9;

    const-string v3, "acos"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$9;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 102
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x7

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$10;

    const-string v3, "asin"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$10;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 108
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x8

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$11;

    const-string v3, "atan"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$11;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 114
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x9

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$12;

    const-string v3, "cbrt"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$12;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 120
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xb

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$13;

    const-string v3, "floor"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$13;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 126
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xc

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$14;

    const-string v3, "sinh"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$14;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 132
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xd

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$15;

    const-string v3, "sqrt"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$15;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 138
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xe

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$16;

    const-string v3, "tanh"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$16;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 144
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xf

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$17;

    const-string v3, "cosh"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$17;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 150
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xa

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$18;

    const-string v3, "ceil"

    invoke-direct {v2, v3}, Lnet/objecthunter/exp4j/function/Functions$18;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 156
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x10

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$19;

    const-string v3, "pow"

    invoke-direct {v2, v3, v5}, Lnet/objecthunter/exp4j/function/Functions$19;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 162
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x11

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$20;

    const-string v3, "exp"

    invoke-direct {v2, v3, v4}, Lnet/objecthunter/exp4j/function/Functions$20;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 168
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x12

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$21;

    const-string v3, "expm1"

    invoke-direct {v2, v3, v4}, Lnet/objecthunter/exp4j/function/Functions$21;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 174
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x15

    new-instance v2, Lnet/objecthunter/exp4j/function/Functions$22;

    const-string v3, "signum"

    invoke-direct {v2, v3, v4}, Lnet/objecthunter/exp4j/function/Functions$22;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 186
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuiltinFunction(Ljava/lang/String;)Lnet/objecthunter/exp4j/function/Function;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v0, "sin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const-string v0, "cos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 199
    :cond_1
    const-string v0, "tan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 201
    :cond_2
    const-string v0, "asin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    .line 203
    :cond_3
    const-string v0, "acos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    .line 205
    :cond_4
    const-string v0, "atan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_0

    .line 207
    :cond_5
    const-string v0, "sinh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_0

    .line 209
    :cond_6
    const-string v0, "cosh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    goto :goto_0

    .line 211
    :cond_7
    const-string v0, "tanh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    goto :goto_0

    .line 213
    :cond_8
    const-string v0, "abs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 215
    :cond_9
    const-string v0, "log"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 217
    :cond_a
    const-string v0, "log10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 219
    :cond_b
    const-string v0, "log2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 220
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 221
    :cond_c
    const-string v0, "log1p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 223
    :cond_d
    const-string v0, "ceil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 224
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 225
    :cond_e
    const-string v0, "floor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 226
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 227
    :cond_f
    const-string v0, "sqrt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 228
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 229
    :cond_10
    const-string v0, "cbrt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 230
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 231
    :cond_11
    const-string v0, "pow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 232
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 233
    :cond_12
    const-string v0, "exp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 234
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 235
    :cond_13
    const-string v0, "expm1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 236
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 237
    :cond_14
    const-string v0, "signum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 238
    sget-object v0, Lnet/objecthunter/exp4j/function/Functions;->builtinFunctions:[Lnet/objecthunter/exp4j/function/Function;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 240
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
