.class public Lnet/objecthunter/exp4j/tokenizer/FunctionToken;
.super Lnet/objecthunter/exp4j/tokenizer/Token;
.source "FunctionToken.java"


# instance fields
.field private final function:Lnet/objecthunter/exp4j/function/Function;


# direct methods
.method public constructor <init>(Lnet/objecthunter/exp4j/function/Function;)V
    .locals 1
    .param p1, "function"    # Lnet/objecthunter/exp4j/function/Function;

    .prologue
    .line 23
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Token;-><init>(I)V

    .line 24
    iput-object p1, p0, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;->function:Lnet/objecthunter/exp4j/function/Function;

    .line 25
    return-void
.end method


# virtual methods
.method public getFunction()Lnet/objecthunter/exp4j/function/Function;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;->function:Lnet/objecthunter/exp4j/function/Function;

    return-object v0
.end method
