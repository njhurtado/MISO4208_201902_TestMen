.class public Lnet/objecthunter/exp4j/tokenizer/VariableToken;
.super Lnet/objecthunter/exp4j/tokenizer/Token;
.source "VariableToken.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Token;-><init>(I)V

    .line 38
    iput-object p1, p0, Lnet/objecthunter/exp4j/tokenizer/VariableToken;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/VariableToken;->name:Ljava/lang/String;

    return-object v0
.end method
