.class public Lnet/objecthunter/exp4j/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# instance fields
.field private final tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

.field private final userFunctionNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/objecthunter/exp4j/Expression;)V
    .locals 2
    .param p1, "existing"    # Lnet/objecthunter/exp4j/Expression;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    iget-object v1, p1, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/objecthunter/exp4j/tokenizer/Token;

    iput-object v0, p0, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    iget-object v1, p1, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lnet/objecthunter/exp4j/Expression;->userFunctionNames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/objecthunter/exp4j/Expression;->userFunctionNames:Ljava/util/Set;

    .line 53
    return-void
.end method

.method constructor <init>([Lnet/objecthunter/exp4j/tokenizer/Token;)V
    .locals 1
    .param p1, "tokens"    # [Lnet/objecthunter/exp4j/tokenizer/Token;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 57
    invoke-static {}, Lnet/objecthunter/exp4j/Expression;->createDefaultVariables()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/objecthunter/exp4j/Expression;->userFunctionNames:Ljava/util/Set;

    .line 59
    return-void
.end method

.method constructor <init>([Lnet/objecthunter/exp4j/tokenizer/Token;Ljava/util/Set;)V
    .locals 1
    .param p1, "tokens"    # [Lnet/objecthunter/exp4j/tokenizer/Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/objecthunter/exp4j/tokenizer/Token;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "userFunctionNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 63
    invoke-static {}, Lnet/objecthunter/exp4j/Expression;->createDefaultVariables()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    .line 64
    iput-object p2, p0, Lnet/objecthunter/exp4j/Expression;->userFunctionNames:Ljava/util/Set;

    .line 65
    return-void
.end method

.method private checkVariableName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lnet/objecthunter/exp4j/Expression;->userFunctionNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/objecthunter/exp4j/function/Functions;->getBuiltinFunction(Ljava/lang/String;)Lnet/objecthunter/exp4j/function/Function;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The variable name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is invalid. Since there exists a function with the same name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    return-void
.end method

.method private static createDefaultVariables()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    .local v0, "vars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string v1, "pi"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v1, "\u03c0"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v1, "\u03c6"

    const-wide v2, 0x3ff9e3779b974695L    # 1.61803398874

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "e"

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-object v0
.end method


# virtual methods
.method public evaluate()D
    .locals 21

    .prologue
    .line 159
    new-instance v13, Lnet/objecthunter/exp4j/ArrayStack;

    invoke-direct {v13}, Lnet/objecthunter/exp4j/ArrayStack;-><init>()V

    .line 160
    .local v13, "output":Lnet/objecthunter/exp4j/ArrayStack;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    move-object/from16 v18, v0

    aget-object v16, v18, v6

    .line 162
    .local v16, "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual/range {v16 .. v16}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 163
    check-cast v16, Lnet/objecthunter/exp4j/tokenizer/NumberToken;

    .end local v16    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual/range {v16 .. v16}, Lnet/objecthunter/exp4j/tokenizer/NumberToken;->getValue()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lnet/objecthunter/exp4j/ArrayStack;->push(D)V

    .line 160
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 164
    .restart local v16    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 165
    check-cast v16, Lnet/objecthunter/exp4j/tokenizer/VariableToken;

    .end local v16    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual/range {v16 .. v16}, Lnet/objecthunter/exp4j/tokenizer/VariableToken;->getName()Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Double;

    .line 167
    .local v17, "value":Ljava/lang/Double;
    if-nez v17, :cond_2

    .line 168
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No value has been set for the setVariable \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 170
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lnet/objecthunter/exp4j/ArrayStack;->push(D)V

    goto :goto_1

    .line 171
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/Double;
    .restart local v16    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v12, v16

    .line 172
    check-cast v12, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    .line 173
    .local v12, "op":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->size()I

    move-result v18

    invoke-virtual {v12}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 174
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid number of operands available for \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/objecthunter/exp4j/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' operator"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 176
    :cond_4
    invoke-virtual {v12}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 178
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->pop()D

    move-result-wide v14

    .line 179
    .local v14, "rightArg":D
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->pop()D

    move-result-wide v8

    .line 180
    .local v8, "leftArg":D
    invoke-virtual {v12}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-wide v8, v19, v20

    const/16 v20, 0x1

    aput-wide v14, v19, v20

    invoke-virtual/range {v18 .. v19}, Lnet/objecthunter/exp4j/operator/Operator;->apply([D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lnet/objecthunter/exp4j/ArrayStack;->push(D)V

    goto/16 :goto_1

    .line 181
    .end local v8    # "leftArg":D
    .end local v14    # "rightArg":D
    :cond_5
    invoke-virtual {v12}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->pop()D

    move-result-wide v2

    .line 184
    .local v2, "arg":D
    invoke-virtual {v12}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-wide v2, v19, v20

    invoke-virtual/range {v18 .. v19}, Lnet/objecthunter/exp4j/operator/Operator;->apply([D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lnet/objecthunter/exp4j/ArrayStack;->push(D)V

    goto/16 :goto_1

    .line 186
    .end local v2    # "arg":D
    .end local v12    # "op":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v5, v16

    .line 187
    check-cast v5, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;

    .line 188
    .local v5, "func":Lnet/objecthunter/exp4j/tokenizer/FunctionToken;
    invoke-virtual {v5}, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;->getFunction()Lnet/objecthunter/exp4j/function/Function;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/objecthunter/exp4j/function/Function;->getNumArguments()I

    move-result v11

    .line 189
    .local v11, "numArguments":I
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v11, :cond_7

    .line 190
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid number of arguments available for \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;->getFunction()Lnet/objecthunter/exp4j/function/Function;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/objecthunter/exp4j/function/Function;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' function"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 193
    :cond_7
    new-array v4, v11, [D

    .line 194
    .local v4, "args":[D
    add-int/lit8 v7, v11, -0x1

    .local v7, "j":I
    :goto_2
    if-ltz v7, :cond_8

    .line 195
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->pop()D

    move-result-wide v18

    aput-wide v18, v4, v7

    .line 194
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 197
    :cond_8
    invoke-virtual {v5}, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;->getFunction()Lnet/objecthunter/exp4j/function/Function;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lnet/objecthunter/exp4j/function/Function;->apply([D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lnet/objecthunter/exp4j/ArrayStack;->push(D)V

    goto/16 :goto_1

    .line 200
    .end local v4    # "args":[D
    .end local v5    # "func":Lnet/objecthunter/exp4j/tokenizer/FunctionToken;
    .end local v7    # "j":I
    .end local v11    # "numArguments":I
    .end local v16    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_9
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 201
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Invalid number of items on the output queue. Might be caused by an invalid number of arguments for a function."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 203
    :cond_a
    invoke-virtual {v13}, Lnet/objecthunter/exp4j/ArrayStack;->pop()D

    move-result-wide v18

    return-wide v18
.end method

.method public evaluateAsync(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lnet/objecthunter/exp4j/Expression$1;

    invoke-direct {v0, p0}, Lnet/objecthunter/exp4j/Expression$1;-><init>(Lnet/objecthunter/exp4j/Expression;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setVariable(Ljava/lang/String;D)Lnet/objecthunter/exp4j/Expression;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lnet/objecthunter/exp4j/Expression;->checkVariableName(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object p0
.end method

.method public setVariables(Ljava/util/Map;)Lnet/objecthunter/exp4j/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lnet/objecthunter/exp4j/Expression;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    .local v0, "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lnet/objecthunter/exp4j/Expression;->setVariable(Ljava/lang/String;D)Lnet/objecthunter/exp4j/Expression;

    goto :goto_0

    .line 83
    .end local v0    # "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_0
    return-object p0
.end method

.method public validate()Lnet/objecthunter/exp4j/ValidationResult;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/objecthunter/exp4j/Expression;->validate(Z)Lnet/objecthunter/exp4j/ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public validate(Z)Lnet/objecthunter/exp4j/ValidationResult;
    .locals 13
    .param p1, "checkVariablesSet"    # Z

    .prologue
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 90
    iget-object v9, p0, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v5, v9, v8

    .line 91
    .local v5, "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual {v5}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    .line 92
    check-cast v5, Lnet/objecthunter/exp4j/tokenizer/VariableToken;

    .end local v5    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual {v5}, Lnet/objecthunter/exp4j/tokenizer/VariableToken;->getName()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "var":Ljava/lang/String;
    iget-object v11, p0, Lnet/objecthunter/exp4j/Expression;->variables:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The setVariable \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' has not been set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v7    # "var":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 107
    .local v1, "count":I
    iget-object v9, p0, Lnet/objecthunter/exp4j/Expression;->tokens:[Lnet/objecthunter/exp4j/tokenizer/Token;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_6

    aget-object v6, v9, v8

    .line 108
    .local v6, "tok":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual {v6}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 133
    .end local v6    # "tok":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_2
    :goto_2
    :pswitch_0
    const/4 v11, 0x1

    if-ge v1, v11, :cond_5

    .line 134
    const-string v8, "Too many operators"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v8, Lnet/objecthunter/exp4j/ValidationResult;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lnet/objecthunter/exp4j/ValidationResult;-><init>(ZLjava/util/List;)V

    .line 141
    :goto_3
    return-object v8

    .line 111
    .restart local v6    # "tok":Lnet/objecthunter/exp4j/tokenizer/Token;
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 112
    goto :goto_2

    .line 114
    :pswitch_2
    check-cast v6, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;

    .end local v6    # "tok":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual {v6}, Lnet/objecthunter/exp4j/tokenizer/FunctionToken;->getFunction()Lnet/objecthunter/exp4j/function/Function;

    move-result-object v3

    .line 115
    .local v3, "func":Lnet/objecthunter/exp4j/function/Function;
    invoke-virtual {v3}, Lnet/objecthunter/exp4j/function/Function;->getNumArguments()I

    move-result v0

    .line 116
    .local v0, "argsNum":I
    if-le v0, v1, :cond_3

    .line 117
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not enough arguments for \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lnet/objecthunter/exp4j/function/Function;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    const/4 v11, 0x1

    if-le v0, v11, :cond_4

    .line 120
    add-int/lit8 v11, v0, -0x1

    sub-int/2addr v1, v11

    goto :goto_2

    .line 121
    :cond_4
    if-nez v0, :cond_2

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .end local v0    # "argsNum":I
    .end local v3    # "func":Lnet/objecthunter/exp4j/function/Function;
    .restart local v6    # "tok":Lnet/objecthunter/exp4j/tokenizer/Token;
    :pswitch_3
    check-cast v6, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    .end local v6    # "tok":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual {v6}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v4

    .line 128
    .local v4, "op":Lnet/objecthunter/exp4j/operator/Operator;
    invoke-virtual {v4}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 129
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 107
    .end local v4    # "op":Lnet/objecthunter/exp4j/operator/Operator;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 138
    :cond_6
    const/4 v8, 0x1

    if-le v1, v8, :cond_7

    .line 139
    const-string v8, "Too many operands"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8

    sget-object v8, Lnet/objecthunter/exp4j/ValidationResult;->SUCCESS:Lnet/objecthunter/exp4j/ValidationResult;

    goto :goto_3

    :cond_8
    new-instance v8, Lnet/objecthunter/exp4j/ValidationResult;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lnet/objecthunter/exp4j/ValidationResult;-><init>(ZLjava/util/List;)V

    goto :goto_3

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
