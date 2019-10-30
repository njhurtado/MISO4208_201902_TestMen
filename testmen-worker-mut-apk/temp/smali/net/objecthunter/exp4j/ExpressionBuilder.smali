.class public Lnet/objecthunter/exp4j/ExpressionBuilder;
.super Ljava/lang/Object;
.source "ExpressionBuilder.java"


# instance fields
.field private final expression:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expression can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userOperators:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userFunctions:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    .line 52
    return-void
.end method

.method private checkOperatorSymbol(Lnet/objecthunter/exp4j/operator/Operator;)V
    .locals 6
    .param p1, "op"    # Lnet/objecthunter/exp4j/operator/Operator;

    .prologue
    .line 115
    invoke-virtual {p1}, Lnet/objecthunter/exp4j/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v0, v3, v2

    .line 117
    .local v0, "ch":C
    invoke-static {v0}, Lnet/objecthunter/exp4j/operator/Operator;->isAllowedOperatorChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The operator symbol \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "ch":C
    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lnet/objecthunter/exp4j/Expression;
    .locals 6

    .prologue
    .line 152
    iget-object v1, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The expression can not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    iget-object v1, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    const-string v2, "pi"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    const-string/jumbo v2, "\u03c0"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    const-string v2, "e"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    const-string/jumbo v2, "\u03c6"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, "var":Ljava/lang/String;
    invoke-static {v0}, Lnet/objecthunter/exp4j/function/Functions;->getBuiltinFunction(Ljava/lang/String;)Lnet/objecthunter/exp4j/function/Function;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userFunctions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A variable can not have the same name as a function ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    .end local v0    # "var":Ljava/lang/String;
    :cond_3
    new-instance v1, Lnet/objecthunter/exp4j/Expression;

    iget-object v2, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    iget-object v3, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userFunctions:Ljava/util/Map;

    iget-object v4, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userOperators:Ljava/util/Map;

    iget-object v5, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    invoke-static {v2, v3, v4, v5}, Lnet/objecthunter/exp4j/shuntingyard/ShuntingYard;->convertToRPN(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)[Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v2

    iget-object v3, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userFunctions:Ljava/util/Map;

    .line 167
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/objecthunter/exp4j/Expression;-><init>([Lnet/objecthunter/exp4j/tokenizer/Token;Ljava/util/Set;)V

    return-object v1
.end method

.method public function(Lnet/objecthunter/exp4j/function/Function;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 2
    .param p1, "function"    # Lnet/objecthunter/exp4j/function/Function;

    .prologue
    .line 60
    iget-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userFunctions:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/objecthunter/exp4j/function/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0
.end method

.method public functions(Ljava/util/List;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/objecthunter/exp4j/function/Function;",
            ">;)",
            "Lnet/objecthunter/exp4j/ExpressionBuilder;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "functions":Ljava/util/List;, "Ljava/util/List<Lnet/objecthunter/exp4j/function/Function;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/objecthunter/exp4j/function/Function;

    .line 83
    .local v0, "f":Lnet/objecthunter/exp4j/function/Function;
    iget-object v2, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userFunctions:Ljava/util/Map;

    invoke-virtual {v0}, Lnet/objecthunter/exp4j/function/Function;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    .end local v0    # "f":Lnet/objecthunter/exp4j/function/Function;
    :cond_0
    return-object p0
.end method

.method public varargs functions([Lnet/objecthunter/exp4j/function/Function;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 5
    .param p1, "functions"    # [Lnet/objecthunter/exp4j/function/Function;

    .prologue
    .line 70
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 71
    .local v0, "f":Lnet/objecthunter/exp4j/function/Function;
    iget-object v3, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userFunctions:Ljava/util/Map;

    invoke-virtual {v0}, Lnet/objecthunter/exp4j/function/Function;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "f":Lnet/objecthunter/exp4j/function/Function;
    :cond_0
    return-object p0
.end method

.method public operator(Ljava/util/List;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/objecthunter/exp4j/operator/Operator;",
            ">;)",
            "Lnet/objecthunter/exp4j/ExpressionBuilder;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "operators":Ljava/util/List;, "Ljava/util/List<Lnet/objecthunter/exp4j/operator/Operator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/objecthunter/exp4j/operator/Operator;

    .line 142
    .local v0, "o":Lnet/objecthunter/exp4j/operator/Operator;
    invoke-virtual {p0, v0}, Lnet/objecthunter/exp4j/ExpressionBuilder;->operator(Lnet/objecthunter/exp4j/operator/Operator;)Lnet/objecthunter/exp4j/ExpressionBuilder;

    goto :goto_0

    .line 144
    .end local v0    # "o":Lnet/objecthunter/exp4j/operator/Operator;
    :cond_0
    return-object p0
.end method

.method public operator(Lnet/objecthunter/exp4j/operator/Operator;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 2
    .param p1, "operator"    # Lnet/objecthunter/exp4j/operator/Operator;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lnet/objecthunter/exp4j/ExpressionBuilder;->checkOperatorSymbol(Lnet/objecthunter/exp4j/operator/Operator;)V

    .line 110
    iget-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->userOperators:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/objecthunter/exp4j/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object p0
.end method

.method public varargs operator([Lnet/objecthunter/exp4j/operator/Operator;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 3
    .param p1, "operators"    # [Lnet/objecthunter/exp4j/operator/Operator;

    .prologue
    .line 129
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 130
    .local v0, "o":Lnet/objecthunter/exp4j/operator/Operator;
    invoke-virtual {p0, v0}, Lnet/objecthunter/exp4j/ExpressionBuilder;->operator(Lnet/objecthunter/exp4j/operator/Operator;)Lnet/objecthunter/exp4j/ExpressionBuilder;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "o":Lnet/objecthunter/exp4j/operator/Operator;
    :cond_0
    return-object p0
.end method

.method public variable(Ljava/lang/String;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 1
    .param p1, "variableName"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    return-object p0
.end method

.method public variables(Ljava/util/Set;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/objecthunter/exp4j/ExpressionBuilder;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "variableNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-object p0
.end method

.method public varargs variables([Ljava/lang/String;)Lnet/objecthunter/exp4j/ExpressionBuilder;
    .locals 1
    .param p1, "variableNames"    # [Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lnet/objecthunter/exp4j/ExpressionBuilder;->variableNames:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 95
    return-object p0
.end method
