.class public abstract Lnet/objecthunter/exp4j/operator/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# static fields
.field private static final INDEX_ADDITION:I = 0x0

.field private static final INDEX_DIVISION:I = 0x3

.field private static final INDEX_MODULO:I = 0x5

.field private static final INDEX_MUTLIPLICATION:I = 0x2

.field private static final INDEX_POWER:I = 0x4

.field private static final INDEX_SUBTRACTION:I = 0x1

.field private static final INDEX_UNARYMINUS:I = 0x6

.field private static final INDEX_UNARYPLUS:I = 0x7

.field private static final builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v3, 0x1f4

    const/16 v8, 0x3e8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lnet/objecthunter/exp4j/operator/Operator;

    sput-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    .line 31
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    new-instance v1, Lnet/objecthunter/exp4j/operator/Operators$1;

    const-string v2, "+"

    invoke-direct {v1, v2, v6, v5, v3}, Lnet/objecthunter/exp4j/operator/Operators$1;-><init>(Ljava/lang/String;IZI)V

    aput-object v1, v0, v7

    .line 37
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    new-instance v1, Lnet/objecthunter/exp4j/operator/Operators$2;

    const-string v2, "-"

    invoke-direct {v1, v2, v6, v5, v3}, Lnet/objecthunter/exp4j/operator/Operators$2;-><init>(Ljava/lang/String;IZI)V

    aput-object v1, v0, v5

    .line 43
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x6

    new-instance v2, Lnet/objecthunter/exp4j/operator/Operators$3;

    const-string v3, "-"

    const/16 v4, 0x1388

    invoke-direct {v2, v3, v5, v7, v4}, Lnet/objecthunter/exp4j/operator/Operators$3;-><init>(Ljava/lang/String;IZI)V

    aput-object v2, v0, v1

    .line 49
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x7

    new-instance v2, Lnet/objecthunter/exp4j/operator/Operators$4;

    const-string v3, "+"

    const/16 v4, 0x1388

    invoke-direct {v2, v3, v5, v7, v4}, Lnet/objecthunter/exp4j/operator/Operators$4;-><init>(Ljava/lang/String;IZI)V

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    new-instance v1, Lnet/objecthunter/exp4j/operator/Operators$5;

    const-string v2, "*"

    invoke-direct {v1, v2, v6, v5, v8}, Lnet/objecthunter/exp4j/operator/Operators$5;-><init>(Ljava/lang/String;IZI)V

    aput-object v1, v0, v6

    .line 61
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x3

    new-instance v2, Lnet/objecthunter/exp4j/operator/Operators$6;

    const-string v3, "/"

    invoke-direct {v2, v3, v6, v5, v8}, Lnet/objecthunter/exp4j/operator/Operators$6;-><init>(Ljava/lang/String;IZI)V

    aput-object v2, v0, v1

    .line 70
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x4

    new-instance v2, Lnet/objecthunter/exp4j/operator/Operators$7;

    const-string v3, "^"

    const/16 v4, 0x2710

    invoke-direct {v2, v3, v6, v7, v4}, Lnet/objecthunter/exp4j/operator/Operators$7;-><init>(Ljava/lang/String;IZI)V

    aput-object v2, v0, v1

    .line 76
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x5

    new-instance v2, Lnet/objecthunter/exp4j/operator/Operators$8;

    const-string v3, "%"

    invoke-direct {v2, v3, v6, v5, v8}, Lnet/objecthunter/exp4j/operator/Operators$8;-><init>(Ljava/lang/String;IZI)V

    aput-object v2, v0, v1

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuiltinOperator(CI)Lnet/objecthunter/exp4j/operator/Operator;
    .locals 2
    .param p0, "symbol"    # C
    .param p1, "numArguments"    # I

    .prologue
    const/4 v1, 0x1

    .line 88
    sparse-switch p0, :sswitch_data_0

    .line 110
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 90
    :sswitch_0
    if-eq p1, v1, :cond_0

    .line 91
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    .line 96
    :sswitch_1
    if-eq p1, v1, :cond_1

    .line 97
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    aget-object v0, v0, v1

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    .line 102
    :sswitch_2
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 104
    :sswitch_3
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 106
    :sswitch_4
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 108
    :sswitch_5
    sget-object v0, Lnet/objecthunter/exp4j/operator/Operators;->builtinOperators:[Lnet/objecthunter/exp4j/operator/Operator;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_5
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2d -> :sswitch_1
        0x2f -> :sswitch_3
        0x5e -> :sswitch_4
    .end sparse-switch
.end method
