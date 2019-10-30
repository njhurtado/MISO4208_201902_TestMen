.class public Lnet/objecthunter/exp4j/shuntingyard/ShuntingYard;
.super Ljava/lang/Object;
.source "ShuntingYard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRPN(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)[Lnet/objecthunter/exp4j/tokenizer/Token;
    .locals 11
    .param p0, "expression"    # Ljava/lang/String;
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
            ">;)[",
            "Lnet/objecthunter/exp4j/tokenizer/Token;"
        }
    .end annotation

    .prologue
    .local p1, "userFunctions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/objecthunter/exp4j/function/Function;>;"
    .local p2, "userOperators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/objecthunter/exp4j/operator/Operator;>;"
    .local p3, "variableNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x2

    const/4 v9, 0x4

    .line 41
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 42
    .local v3, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lnet/objecthunter/exp4j/tokenizer/Token;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "output":Ljava/util/List;, "Ljava/util/List<Lnet/objecthunter/exp4j/tokenizer/Token;>;"
    new-instance v6, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;

    invoke-direct {v6, p0, p1, p2, p3}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    .line 45
    .local v6, "tokenizer":Lnet/objecthunter/exp4j/tokenizer/Tokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 46
    invoke-virtual {v6}, Lnet/objecthunter/exp4j/tokenizer/Tokenizer;->nextToken()Lnet/objecthunter/exp4j/tokenizer/Token;

    move-result-object v5

    .line 47
    .local v5, "token":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual {v5}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 91
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unknown Token type encountered. This should not happen"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 50
    :pswitch_0
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :goto_1
    :pswitch_2
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    if-eq v7, v9, :cond_1

    .line 57
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 60
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Misplaced function separator \',\' or mismatched parentheses"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 69
    .local v0, "o1":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    .local v1, "o2":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    :cond_3
    invoke-virtual {v0}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v7

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/operator/Operator;->isLeftAssociative()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v7

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/operator/Operator;->getPrecedence()I

    move-result v7

    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/objecthunter/exp4j/operator/Operator;->getPrecedence()I

    move-result v8

    if-le v7, v8, :cond_5

    .line 70
    :cond_4
    invoke-virtual {v0}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v7

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/operator/Operator;->getPrecedence()I

    move-result v7

    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/objecthunter/exp4j/operator/Operator;->getPrecedence()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 71
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v0    # "o1":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    .end local v1    # "o2":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    :pswitch_3
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    if-ne v7, v10, :cond_6

    move-object v0, v5

    .line 65
    check-cast v0, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    .line 66
    .restart local v0    # "o1":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;

    .line 67
    .restart local v1    # "o2":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    invoke-virtual {v0}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v7

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v1}, Lnet/objecthunter/exp4j/tokenizer/OperatorToken;->getOperator()Lnet/objecthunter/exp4j/operator/Operator;

    move-result-object v7

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/operator/Operator;->getNumOperands()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 76
    .end local v0    # "o1":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    .end local v1    # "o2":Lnet/objecthunter/exp4j/tokenizer/OperatorToken;
    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 79
    :pswitch_4
    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 82
    :goto_2
    :pswitch_5
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    if-eq v7, v9, :cond_7

    .line 83
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :cond_7
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 86
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-virtual {v7}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 87
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 99
    .end local v5    # "token":Lnet/objecthunter/exp4j/tokenizer/Token;
    .local v4, "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_8
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v4    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_9
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 95
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/objecthunter/exp4j/tokenizer/Token;

    .line 96
    .restart local v4    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    invoke-virtual {v4}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_a

    invoke-virtual {v4}, Lnet/objecthunter/exp4j/tokenizer/Token;->getType()I

    move-result v7

    if-ne v7, v9, :cond_8

    .line 97
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Mismatched parentheses detected. Please check the expression"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 102
    .end local v4    # "t":Lnet/objecthunter/exp4j/tokenizer/Token;
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lnet/objecthunter/exp4j/tokenizer/Token;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lnet/objecthunter/exp4j/tokenizer/Token;

    check-cast v7, [Lnet/objecthunter/exp4j/tokenizer/Token;

    return-object v7

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
