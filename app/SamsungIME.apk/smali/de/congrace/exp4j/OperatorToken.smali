.class Lde/congrace/exp4j/OperatorToken;
.super Lde/congrace/exp4j/CalculationToken;
.source "OperatorToken.java"


# instance fields
.field operation:Lde/congrace/exp4j/CustomOperator;


# direct methods
.method constructor <init>(Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "operation"    # Lde/congrace/exp4j/CustomOperator;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lde/congrace/exp4j/CalculationToken;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    .line 42
    return-void
.end method

.method private getPrecedence()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v0, v0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    return v0
.end method

.method private isLeftAssociative()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget-boolean v0, v0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    return v0
.end method


# virtual methods
.method varargs applyOperation([D)D
    .locals 2
    .param p1, "values"    # [D

    .prologue
    .line 52
    iget-object v0, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    invoke-virtual {v0, p1}, Lde/congrace/exp4j/CustomOperator;->applyOperation([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 57
    instance-of v1, p1, Lde/congrace/exp4j/OperatorToken;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lde/congrace/exp4j/OperatorToken;

    .line 59
    .local v0, "t":Lde/congrace/exp4j/OperatorToken;
    invoke-virtual {v0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 61
    .end local v0    # "t":Lde/congrace/exp4j/OperatorToken;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method mutateStackForCalculation(Ljava/util/Stack;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Double;>;"
    .local p2, "variableValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v2, v2, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    new-array v1, v2, [D

    .line 72
    .local v1, "operands":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v2, v2, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    if-ge v0, v2, :cond_0

    .line 73
    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    iget v2, v2, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    sub-int/2addr v2, v0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Lde/congrace/exp4j/OperatorToken;->operation:Lde/congrace/exp4j/CustomOperator;

    invoke-virtual {v2, v1}, Lde/congrace/exp4j/CustomOperator;->applyOperation([D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method mutateStackForInfixTranslation(Ljava/util/Stack;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lde/congrace/exp4j/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "operatorStack":Ljava/util/Stack;, "Ljava/util/Stack<Lde/congrace/exp4j/Token;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/congrace/exp4j/Token;

    .local v0, "before":Lde/congrace/exp4j/Token;
    if-eqz v0, :cond_3

    instance-of v2, v0, Lde/congrace/exp4j/OperatorToken;

    if-nez v2, :cond_0

    instance-of v2, v0, Lde/congrace/exp4j/FunctionToken;

    if-eqz v2, :cond_3

    .line 83
    :cond_0
    instance-of v2, v0, Lde/congrace/exp4j/FunctionToken;

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 85
    invoke-virtual {v0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 87
    check-cast v1, Lde/congrace/exp4j/OperatorToken;

    .line 88
    .local v1, "stackOperator":Lde/congrace/exp4j/OperatorToken;
    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->isLeftAssociative()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v2

    invoke-direct {v1}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 89
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/congrace/exp4j/Token;

    invoke-virtual {v2}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->isLeftAssociative()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v2

    invoke-direct {v1}, Lde/congrace/exp4j/OperatorToken;->getPrecedence()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 91
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/congrace/exp4j/Token;

    invoke-virtual {v2}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    .end local v0    # "before":Lde/congrace/exp4j/Token;
    .end local v1    # "stackOperator":Lde/congrace/exp4j/OperatorToken;
    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method
