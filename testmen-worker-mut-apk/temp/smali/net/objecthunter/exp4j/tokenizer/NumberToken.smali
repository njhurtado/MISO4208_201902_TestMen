.class public final Lnet/objecthunter/exp4j/tokenizer/NumberToken;
.super Lnet/objecthunter/exp4j/tokenizer/Token;
.source "NumberToken.java"


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Token;-><init>(I)V

    .line 30
    iput-wide p1, p0, Lnet/objecthunter/exp4j/tokenizer/NumberToken;->value:D

    .line 31
    return-void
.end method

.method constructor <init>([CII)V
    .locals 2
    .param p1, "expression"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 34
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/objecthunter/exp4j/tokenizer/NumberToken;-><init>(D)V

    .line 35
    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lnet/objecthunter/exp4j/tokenizer/NumberToken;->value:D

    return-wide v0
.end method
