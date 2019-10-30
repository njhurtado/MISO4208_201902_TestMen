.class public abstract Lnet/objecthunter/exp4j/operator/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# static fields
.field public static final ALLOWED_OPERATOR_CHARS:[C

.field public static final PRECEDENCE_ADDITION:I = 0x1f4

.field public static final PRECEDENCE_DIVISION:I = 0x3e8

.field public static final PRECEDENCE_MODULO:I = 0x3e8

.field public static final PRECEDENCE_MULTIPLICATION:I = 0x3e8

.field public static final PRECEDENCE_POWER:I = 0x2710

.field public static final PRECEDENCE_SUBTRACTION:I = 0x1f4

.field public static final PRECEDENCE_UNARY_MINUS:I = 0x1388

.field public static final PRECEDENCE_UNARY_PLUS:I = 0x1388


# instance fields
.field protected final leftAssociative:Z

.field protected final numOperands:I

.field protected final precedence:I

.field protected final symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/objecthunter/exp4j/operator/Operator;->ALLOWED_OPERATOR_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x2bs
        0x2ds
        0x2as
        0x2fs
        0x25s
        0x5es
        0x21s
        0x23s
        0xa7s
        0x24s
        0x26s
        0x3bs
        0x3as
        0x7es
        0x3cs
        0x3es
        0x7cs
        0x3ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "numberOfOperands"    # I
    .param p3, "leftAssociative"    # Z
    .param p4, "precedence"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lnet/objecthunter/exp4j/operator/Operator;->numOperands:I

    .line 76
    iput-boolean p3, p0, Lnet/objecthunter/exp4j/operator/Operator;->leftAssociative:Z

    .line 77
    iput-object p1, p0, Lnet/objecthunter/exp4j/operator/Operator;->symbol:Ljava/lang/String;

    .line 78
    iput p4, p0, Lnet/objecthunter/exp4j/operator/Operator;->precedence:I

    .line 79
    return-void
.end method

.method public static isAllowedOperatorChar(C)Z
    .locals 5
    .param p0, "ch"    # C

    .prologue
    const/4 v1, 0x0

    .line 87
    sget-object v3, Lnet/objecthunter/exp4j/operator/Operator;->ALLOWED_OPERATOR_CHARS:[C

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 88
    .local v0, "allowed":C
    if-ne p0, v0, :cond_1

    .line 89
    const/4 v1, 0x1

    .line 92
    .end local v0    # "allowed":C
    :cond_0
    return v1

    .line 87
    .restart local v0    # "allowed":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs abstract apply([D)D
.end method

.method public getNumOperands()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lnet/objecthunter/exp4j/operator/Operator;->numOperands:I

    return v0
.end method

.method public getPrecedence()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lnet/objecthunter/exp4j/operator/Operator;->precedence:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/objecthunter/exp4j/operator/Operator;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public isLeftAssociative()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lnet/objecthunter/exp4j/operator/Operator;->leftAssociative:Z

    return v0
.end method
