.class public Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
.super Lnet/objecthunter/exp4j/tokenizer/Token;
.source "OperatorToken.java"


# instance fields
.field private final operator:Lnet/objecthunter/exp4j/operator/Operator;


# direct methods
.method public constructor <init>(Lnet/objecthunter/exp4j/operator/Operator;)V
    .locals 2
    .param p1, "op"    # Lnet/objecthunter/exp4j/operator/Operator;

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Token;-><init>(I)V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operator is unknown for token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->operator:Lnet/objecthunter/exp4j/operator/Operator;

    .line 36
    return-void
.end method


# virtual methods
.method public getOperator()Lnet/objecthunter/exp4j/operator/Operator;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->operator:Lnet/objecthunter/exp4j/operator/Operator;

    return-object v0
.end method
