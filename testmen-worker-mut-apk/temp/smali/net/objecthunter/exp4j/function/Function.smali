.class public abstract Lnet/objecthunter/exp4j/function/Function;
.super Ljava/lang/Object;
.source "Function.java"


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final numArguments:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/objecthunter/exp4j/function/Function;-><init>(Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArguments"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-gez p2, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of function arguments can not be less than 0 for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-static {p1}, Lnet/objecthunter/exp4j/function/Function;->isValidFunctionName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The function name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lnet/objecthunter/exp4j/function/Function;->name:Ljava/lang/String;

    .line 43
    iput p2, p0, Lnet/objecthunter/exp4j/function/Function;->numArguments:I

    .line 45
    return-void
.end method

.method public static getAllowedFunctionCharacters()[C
    .locals 5

    .prologue
    .line 90
    const/16 v4, 0x35

    new-array v0, v4, [C

    .line 91
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 92
    .local v1, "count":I
    const/16 v3, 0x41

    .local v3, "i":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_0
    const/16 v4, 0x5b

    if-ge v3, v4, :cond_0

    .line 93
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    int-to-char v4, v3

    aput-char v4, v0, v2

    .line 92
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_0

    .line 95
    :cond_0
    const/16 v3, 0x61

    :goto_1
    const/16 v4, 0x7b

    if-ge v3, v4, :cond_1

    .line 96
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    int-to-char v4, v3

    aput-char v4, v0, v2

    .line 95
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 98
    :cond_1
    const/16 v4, 0x5f

    aput-char v4, v0, v2

    .line 99
    return-object v0
.end method

.method public static isValidFunctionName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 103
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v3

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 109
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x5f

    if-ne v0, v4, :cond_3

    .line 113
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v1, :cond_0

    goto :goto_2

    .line 122
    .end local v0    # "c":C
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs abstract apply([D)D
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/objecthunter/exp4j/function/Function;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumArguments()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lnet/objecthunter/exp4j/function/Function;->numArguments:I

    return v0
.end method
