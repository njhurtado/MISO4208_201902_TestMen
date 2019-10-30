.class public Lnet/objecthunter/exp4j/tokenizer/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# instance fields
.field private final expression:[C

.field private final expressionLength:I

.field private lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

.field private pos:I

.field private final userFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/objecthunter/exp4j/function/Function;",
            ">;"
        }
    .end annotation
.end field

.field private final userOperators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/objecthunter/exp4j/operator/Operator;",
            ">;"
        }
    .end annotation
.end field

.field private final variableNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/objecthunter/exp4j/function/Function;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/objecthunter/exp4j/operator/Operator;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "userFunctions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/objecthunter/exp4j/function/Function;>;"
    .local p3, "userOperators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/objecthunter/exp4j/operator/Operator;>;"
    .local p4, "variableNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    .line 45
    iget-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    array-length v0, v0

    iput v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expressionLength:I

    .line 46
    iput-object p2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->userFunctions:Ljava/util/Map;

    .line 47
    iput-object p3, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->userOperators:Ljava/util/Map;

    .line 48
    iput-object p4, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->variableNames:Ljava/util/Set;

    .line 49
    return-void
.end method

.method private getFunction(Ljava/lang/String;)Lnet/objecthunter/exp4j/function/Function;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "f":Lnet/objecthunter/exp4j/function/Function;
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->userFunctions:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->userFunctions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Lnet/objecthunter/exp4j/function/Function;
    check-cast v0, Lnet/objecthunter/exp4j/function/Function;

    .line 174
    .restart local v0    # "f":Lnet/objecthunter/exp4j/function/Function;
    :cond_0
    if-nez v0, :cond_1

    .line 175
    invoke-static {p1}, Lnet/objecthunter/exp4j/function/Functions;->getBuiltinFunction(Ljava/lang/String;)Lnet/objecthunter/exp4j/function/Function;

    move-result-object v0

    .line 177
    :cond_1
    return-object v0
.end method

.method private getOperator(Ljava/lang/String;)Lnet/objecthunter/exp4j/operator/Operator;
    .locals 7
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "op":Lnet/objecthunter/exp4j/operator/Operator;
    iget-object v4, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->userOperators:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->userOperators:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "op":Lnet/objecthunter/exp4j/operator/Operator;
    check-cast v3, Lnet/objecthunter/exp4j/operator/Operator;

    .line 211
    .restart local v3    # "op":Lnet/objecthunter/exp4j/operator/Operator;
    :cond_0
    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 212
    const/4 v0, 0x2

    .line 213
    .local v0, "argc":I
    iget-object v4, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    if-nez v4, :cond_3

    .line 214
    const/4 v0, 0x1

    .line 227
    :cond_1
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v0}, Lnet/objecthunter/exp4j/operator/Operators;->getBuiltinOperator(CI)Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v3

    .line 229
    .end local v0    # "argc":I
    :cond_2
    return-object v3

    .line 216
    .restart local v0    # "argc":I
    :cond_3
    iget-object v4, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v4}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v2

    .line 217
    .local v2, "lastTokenType":I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_4

    const/4 v4, 0x7

    if-ne v2, v4, :cond_5

    .line 218
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    :cond_5
    if-ne v2, v6, :cond_1

    .line 220
    iget-object v4, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    check-cast v4, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    invoke-virtual {v4}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v1

    .line 221
    .local v1, "lastOp":Lnet/objecthunter/exp4j/operator/Operator;
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v4

    if-eq v4, v6, :cond_6

    invoke-virtual {v1}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lnet/objecthunter/exp4j/operator/Operator;->isLeftAssociative()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphabetic(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 262
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method private isArgumentSeparator(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 115
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCloseParentheses(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 133
    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEndOfExpression(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 266
    iget v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expressionLength:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumeric(CZ)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "lastCharE"    # Z

    .prologue
    .line 257
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    if-eqz p1, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpenParentheses(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 129
    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseArgumentSeparatorToken(C)Lnet/objecthunter/exp4j/tokenizer/Token;
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 109
    iget v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 110
    new-instance v0, Lnet/objecthunter/exp4j/tokenizer/ArgumentSeparatorToken;

    invoke-direct {v0}, Lnet/objecthunter/exp4j/tokenizer/ArgumentSeparatorToken;-><init>()V

    iput-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 111
    iget-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    return-object v0
.end method

.method private parseFunctionOrVariable()Lnet/objecthunter/exp4j/tokenizer/Token;
    .locals 9

    .prologue
    .line 137
    iget v5, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 138
    .local v5, "offset":I
    const/4 v1, 0x1

    .line 139
    .local v1, "lastValidLen":I
    const/4 v2, 0x0

    .line 140
    .local v2, "lastValidToken":Lnet/objecthunter/exp4j/tokenizer/Token;
    const/4 v3, 0x1

    .line 141
    .local v3, "len":I
    invoke-direct {p0, v5}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isEndOfExpression(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    iget v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 144
    :cond_0
    :goto_0
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v6}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isEndOfExpression(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v7, v5, v3

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    .line 145
    invoke-static {v6}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isAlphabetic(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v7, v5, v3

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    .line 146
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v7, v5, v3

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_4

    .line 148
    :cond_1
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    invoke-direct {v4, v6, v5, v3}, Ljava/lang/String;-><init>([CII)V

    .line 149
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->variableNames:Ljava/util/Set;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->variableNames:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 150
    move v1, v3

    .line 151
    new-instance v2, Lnet/objecthunter/exp4j/tokenizer/VariableToken;

    .end local v2    # "lastValidToken":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-direct {v2, v4}, Lnet/objecthunter/exp4j/tokenizer/VariableToken;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v2    # "lastValidToken":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 160
    goto :goto_0

    .line 153
    :cond_3
    invoke-direct {p0, v4}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->getFunction(Ljava/lang/String;)Lnet/objecthunter/exp4j/function/Function;

    move-result-object v0

    .line 154
    .local v0, "f":Lnet/objecthunter/exp4j/function/Function;
    if-eqz v0, :cond_2

    .line 155
    move v1, v3

    .line 156
    new-instance v2, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;

    .end local v2    # "lastValidToken":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-direct {v2, v0}, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;-><init>(Lnet/objecthunter/exp4j/function/Function;)V

    .restart local v2    # "lastValidToken":Lnet/objecthunter/exp4j/tokenizer/Token;
    goto :goto_1

    .line 161
    .end local v0    # "f":Lnet/objecthunter/exp4j/function/Function;
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 162
    new-instance v6, Lnet/objecthunter/exp4j/tokenizer/UnknownFunctionOrVariableException;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    iget v8, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    invoke-direct {v6, v7, v8, v3}, Lnet/objecthunter/exp4j/tokenizer/UnknownFunctionOrVariableException;-><init>(Ljava/lang/String;II)V

    throw v6

    .line 164
    :cond_5
    iget v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/2addr v6, v1

    iput v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 165
    iput-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 166
    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    return-object v6
.end method

.method private parseNumberToken(C)Lnet/objecthunter/exp4j/tokenizer/Token;
    .locals 7
    .param p1, "firstChar"    # C

    .prologue
    const/16 v6, 0x65

    const/16 v5, 0x45

    .line 233
    iget v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 234
    .local v1, "offset":I
    const/4 v0, 0x1

    .line 235
    .local v0, "len":I
    iget v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 236
    add-int v2, v1, v0

    invoke-direct {p0, v2}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isEndOfExpression(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    new-instance v2, Lnet/objecthunter/exp4j/tokenizer/NumberToken;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lnet/objecthunter/exp4j/tokenizer/NumberToken;-><init>(D)V

    iput-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 238
    iget-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 253
    :goto_0
    return-object v2

    .line 240
    :cond_0
    :goto_1
    add-int v2, v1, v0

    invoke-direct {p0, v2}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isEndOfExpression(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v3, v1, v0

    aget-char v3, v2, v3

    iget-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    aget-char v2, v2, v4

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    aget-char v2, v2, v4

    if-ne v2, v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 241
    :goto_2
    invoke-static {v3, v2}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isNumeric(CZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 244
    iget v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    goto :goto_1

    .line 240
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 247
    :cond_3
    iget-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_5

    .line 249
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 250
    iget v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 252
    :cond_5
    new-instance v2, Lnet/objecthunter/exp4j/tokenizer/NumberToken;

    iget-object v3, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    invoke-direct {v2, v3, v1, v0}, Lnet/objecthunter/exp4j/tokenizer/NumberToken;-><init>([CII)V

    iput-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 253
    iget-object v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    goto :goto_0
.end method

.method private parseOperatorToken(C)Lnet/objecthunter/exp4j/tokenizer/Token;
    .locals 8
    .param p1, "firstChar"    # C

    .prologue
    .line 181
    iget v3, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 182
    .local v3, "offset":I
    const/4 v1, 0x1

    .line 183
    .local v1, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v5, "symbol":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 185
    .local v0, "lastValid":Lnet/objecthunter/exp4j/operator/Operator;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :goto_0
    add-int v6, v3, v1

    invoke-direct {p0, v6}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isEndOfExpression(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int v7, v3, v1

    aget-char v6, v6, v7

    invoke-static {v6}, Lnet/objecthunter/exp4j/operator/Operator;->isAllowedOperatorChar(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "len":I
    .local v2, "len":I
    add-int v7, v3, v1

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2    # "len":I
    .restart local v1    # "len":I
    goto :goto_0

    .line 191
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->getOperator(Ljava/lang/String;)Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v4

    .line 193
    .local v4, "op":Lnet/objecthunter/exp4j/operator/Operator;
    if-nez v4, :cond_1

    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 196
    :cond_1
    move-object v0, v4

    .line 201
    .end local v4    # "op":Lnet/objecthunter/exp4j/operator/Operator;
    :cond_2
    iget v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 202
    new-instance v6, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    invoke-direct {v6, v0}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;-><init>(Lnet/objecthunter/exp4j/operator/Operator;)V

    iput-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 203
    iget-object v6, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    return-object v6
.end method

.method private parseParentheses(Z)Lnet/objecthunter/exp4j/tokenizer/Token;
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    new-instance v0, Lnet/objecthunter/exp4j/tokenizer/OpenParenthesesToken;

    invoke-direct {v0}, Lnet/objecthunter/exp4j/tokenizer/OpenParenthesesToken;-><init>()V

    iput-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 124
    :goto_0
    iget v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    .line 125
    iget-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lnet/objecthunter/exp4j/tokenizer/CloseParenthesesToken;

    invoke-direct {v0}, Lnet/objecthunter/exp4j/tokenizer/CloseParenthesesToken;-><init>()V

    iput-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    array-length v0, v0

    iget v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Lnet/objecthunter/exp4j/tokenizer/Token;
    .locals 8

    .prologue
    const/16 v7, 0x2a

    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 56
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    iget v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    aget-char v0, v1, v2

    .line 57
    .local v0, "ch":C
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->expression:[C

    iget v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    aget-char v0, v1, v2

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4

    .line 61
    :cond_1
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse char \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_2
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 65
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 66
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 67
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 69
    new-instance v1, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    invoke-static {v7, v3}, Lnet/objecthunter/exp4j/operator/Operators;->getBuiltinOperator(CI)Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;-><init>(Lnet/objecthunter/exp4j/operator/Operator;)V

    iput-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 70
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 102
    :goto_1
    return-object v1

    .line 73
    :cond_3
    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->parseNumberToken(C)Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_4
    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isArgumentSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->parseArgumentSeparatorToken(C)Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v1

    goto :goto_1

    .line 76
    :cond_5
    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isOpenParentheses(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 78
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 79
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v5, :cond_6

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 80
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v4, :cond_6

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 81
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 83
    new-instance v1, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    invoke-static {v7, v3}, Lnet/objecthunter/exp4j/operator/Operators;->getBuiltinOperator(CI)Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;-><init>(Lnet/objecthunter/exp4j/operator/Operator;)V

    iput-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 84
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    goto :goto_1

    .line 86
    :cond_6
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->parseParentheses(Z)Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_7
    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isCloseParentheses(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 88
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->parseParentheses(Z)Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v1

    goto :goto_1

    .line 89
    :cond_8
    invoke-static {v0}, Lnet/objecthunter/exp4j/operator/Operator;->isAllowedOperatorChar(C)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 90
    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->parseOperatorToken(C)Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v1

    goto :goto_1

    .line 91
    :cond_9
    invoke-static {v0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->isAlphabetic(I)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_c

    .line 93
    :cond_a
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 94
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v3, :cond_b

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 95
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v5, :cond_b

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 96
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v4, :cond_b

    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 97
    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v1

    if-eq v1, v6, :cond_b

    .line 99
    new-instance v1, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    invoke-static {v7, v3}, Lnet/objecthunter/exp4j/operator/Operators;->getBuiltinOperator(CI)Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;-><init>(Lnet/objecthunter/exp4j/operator/Operator;)V

    iput-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 100
    iget-object v1, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->lastToken:Lnet/objecthunter/exp4j/tokenizer/Token;

    goto/16 :goto_1

    .line 102
    :cond_b
    invoke-direct {p0}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->parseFunctionOrVariable()Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v1

    goto/16 :goto_1

    .line 105
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse char \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
