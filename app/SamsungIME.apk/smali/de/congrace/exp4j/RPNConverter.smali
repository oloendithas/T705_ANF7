.class abstract Lde/congrace/exp4j/RPNConverter;
.super Ljava/lang/Object;
.source "RPNConverter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOperatorCharacter(CLjava/util/Map;)Z
    .locals 4
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "operators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "symbol":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 97
    .end local v1    # "symbol":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static substituteUnaryOperators(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p0, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "operators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .local v5, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 12
    .local v6, "whitespaceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "afterOperator":Z
    const/4 v1, 0x0

    .line 15
    .local v1, "afterParantheses":Z
    const/4 v3, 0x0

    .line 16
    .local v3, "expressionStart":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 17
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 18
    add-int/lit8 v6, v6, 0x1

    .line 19
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 23
    const/4 v3, 0x1

    .line 26
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lde/congrace/exp4j/RPNConverter;->isOperatorCharacter(CLjava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 28
    const/4 v0, 0x1

    .line 33
    :cond_2
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 50
    :pswitch_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :cond_3
    :goto_3
    const/4 v6, 0x0

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_2

    .line 30
    const/4 v1, 0x1

    goto :goto_2

    .line 35
    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 41
    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 46
    :cond_5
    const/16 v7, 0x27

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 54
    .end local v0    # "afterOperator":Z
    .end local v1    # "afterParantheses":Z
    .end local v2    # "c":C
    .end local v3    # "expressionStart":Z
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static toRPNExpression(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lde/congrace/exp4j/RPNExpression;
    .locals 9
    .param p0, "infix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;)",
            "Lde/congrace/exp4j/RPNExpression;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnknownFunctionException;,
            Lde/congrace/exp4j/UnparsableExpressionException;
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .local p2, "customFunctions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomFunction;>;"
    .local p3, "operators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;>;"
    new-instance v5, Lde/congrace/exp4j/Tokenizer;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7, p2, p3}, Lde/congrace/exp4j/Tokenizer;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    .line 61
    .local v5, "tokenizer":Lde/congrace/exp4j/Tokenizer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v2, "output":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 63
    .local v1, "operatorStack":Ljava/util/Stack;, "Ljava/util/Stack<Lde/congrace/exp4j/Token;>;"
    invoke-static {p0, p3}, Lde/congrace/exp4j/RPNConverter;->substituteUnaryOperators(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lde/congrace/exp4j/Tokenizer;->getTokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 64
    .local v6, "tokens":Ljava/util/List;, "Ljava/util/List<Lde/congrace/exp4j/Token;>;"
    invoke-static {v6, p3}, Lde/congrace/exp4j/RPNConverter;->validateRPNExpression(Ljava/util/List;Ljava/util/Map;)V

    .line 65
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/congrace/exp4j/Token;

    .line 66
    .local v4, "token":Lde/congrace/exp4j/Token;
    invoke-virtual {v4, v1, v2}, Lde/congrace/exp4j/Token;->mutateStackForInfixTranslation(Ljava/util/Stack;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 69
    .end local v4    # "token":Lde/congrace/exp4j/Token;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 70
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/congrace/exp4j/Token;

    invoke-virtual {v7}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "postfix":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lde/congrace/exp4j/Tokenizer;->getTokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 74
    new-instance v7, Lde/congrace/exp4j/RPNExpression;

    invoke-direct {v7, v6, v3, p1}, Lde/congrace/exp4j/RPNExpression;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    return-object v7
.end method

.method private static validateRPNExpression(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/congrace/exp4j/Token;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnparsableExpressionException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lde/congrace/exp4j/Token;>;"
    .local p1, "operators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 80
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/congrace/exp4j/Token;

    .line 81
    .local v1, "t":Lde/congrace/exp4j/Token;
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lde/congrace/exp4j/NumberToken;

    if-eqz v2, :cond_2

    .line 82
    instance-of v2, v1, Lde/congrace/exp4j/VariableToken;

    if-nez v2, :cond_1

    instance-of v2, v1, Lde/congrace/exp4j/ParenthesesToken;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lde/congrace/exp4j/ParenthesesToken;

    invoke-virtual {v2}, Lde/congrace/exp4j/ParenthesesToken;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    instance-of v2, v1, Lde/congrace/exp4j/FunctionToken;

    if-eqz v2, :cond_2

    .line 84
    :cond_1
    new-instance v2, Lde/congrace/exp4j/UnparsableExpressionException;

    const-string v3, "Implicit multiplication is not supported. E.g. always use \'2*x\' instead of \'2x\'"

    invoke-direct {v2, v3}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "t":Lde/congrace/exp4j/Token;
    :cond_3
    return-void
.end method
