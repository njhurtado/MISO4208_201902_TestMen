.class final Lnet/objecthunter/exp4j/operator/Operators$8;
.super Lnet/objecthunter/exp4j/operator/Operator;
.source "Operators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/objecthunter/exp4j/operator/Operators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "numberOfOperands"    # I
    .param p3, "leftAssociative"    # Z
    .param p4, "precedence"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/objecthunter/exp4j/operator/Operator;-><init>(Ljava/lang/String;IZI)V

    return-void
.end method


# virtual methods
.method public varargs apply([D)D
    .locals 5
    .param p1, "args"    # [D

    .prologue
    const/4 v4, 0x1

    .line 79
    aget-wide v0, p1, v4

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero!"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aget-wide v2, p1, v4

    rem-double/2addr v0, v2

    return-wide v0
.end method
