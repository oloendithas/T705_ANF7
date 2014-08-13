.class Lde/congrace/exp4j/FunctionToken;
.super Lde/congrace/exp4j/CalculationToken;
.source "FunctionToken.java"


# instance fields
.field final function:Lde/congrace/exp4j/CustomFunction;

.field final functionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lde/congrace/exp4j/CustomFunction;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "function"    # Lde/congrace/exp4j/CustomFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnknownFunctionException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lde/congrace/exp4j/CalculationToken;-><init>(Ljava/lang/String;)V

    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v1, Lde/congrace/exp4j/UnknownFunctionException;

    invoke-direct {v1, p1}, Lde/congrace/exp4j/UnknownFunctionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_0
    :try_start_0
    iget-object v1, p2, Lde/congrace/exp4j/CustomFunction;->name:Ljava/lang/String;

    iput-object v1, p0, Lde/congrace/exp4j/FunctionToken;->functionName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lde/congrace/exp4j/FunctionToken;->function:Lde/congrace/exp4j/CustomFunction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lde/congrace/exp4j/UnknownFunctionException;

    invoke-direct {v1, p1}, Lde/congrace/exp4j/UnknownFunctionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p1, Lde/congrace/exp4j/FunctionToken;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lde/congrace/exp4j/FunctionToken;->functionName:Ljava/lang/String;

    check-cast p1, Lde/congrace/exp4j/FunctionToken;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lde/congrace/exp4j/FunctionToken;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/congrace/exp4j/FunctionToken;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/congrace/exp4j/FunctionToken;->functionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method mutateStackForCalculation(Ljava/util/Stack;Ljava/util/Map;)V
    .locals 4
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
    .line 45
    .local p1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Double;>;"
    .local p2, "variableValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    iget-object v2, p0, Lde/congrace/exp4j/FunctionToken;->function:Lde/congrace/exp4j/CustomFunction;

    iget v2, v2, Lde/congrace/exp4j/CustomFunction;->argc:I

    new-array v0, v2, [D

    .line 46
    .local v0, "args":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lde/congrace/exp4j/FunctionToken;->function:Lde/congrace/exp4j/CustomFunction;

    iget v2, v2, Lde/congrace/exp4j/CustomFunction;->argc:I

    if-ge v1, v2, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, p0, Lde/congrace/exp4j/FunctionToken;->function:Lde/congrace/exp4j/CustomFunction;

    invoke-static {v0}, Lde/congrace/exp4j/ArrayUtil;->reverse([D)[D

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/congrace/exp4j/CustomFunction;->applyFunction([D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method mutateStackForInfixTranslation(Ljava/util/Stack;Ljava/lang/StringBuilder;)V
    .locals 0
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
    .line 54
    .local p1, "operatorStack":Ljava/util/Stack;, "Ljava/util/Stack<Lde/congrace/exp4j/Token;>;"
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
