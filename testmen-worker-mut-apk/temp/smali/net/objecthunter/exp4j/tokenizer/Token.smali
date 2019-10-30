.class public abstract Lnet/objecthunter/exp4j/tokenizer/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field public static final TOKEN_FUNCTION:S = 0x3s

.field public static final TOKEN_NUMBER:S = 0x1s

.field public static final TOKEN_OPERATOR:S = 0x2s

.field public static final TOKEN_PARENTHESES_CLOSE:S = 0x5s

.field public static final TOKEN_PARENTHESES_OPEN:S = 0x4s

.field public static final TOKEN_SEPARATOR:S = 0x7s

.field public static final TOKEN_VARIABLE:S = 0x6s


# instance fields
.field protected final type:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lnet/objecthunter/exp4j/tokenizer/Token;->type:I

    .line 34
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lnet/objecthunter/exp4j/tokenizer/Token;->type:I

    return v0
.end method
