.class Lde/congrace/exp4j/RPNExpression;
.super Ljava/lang/Object;
.source "RPNExpression.java"

# interfaces
.implements Lde/congrace/exp4j/Calculable;


# instance fields
.field final expression:Ljava/lang/String;

.field final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/congrace/exp4j/Token;",
            ">;"
        }
    .end annotation
.end field

.field final variables:Ljava/util/Map;
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
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p2, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/congrace/exp4j/Token;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lde/congrace/exp4j/Token;>;"
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lde/congrace/exp4j/RPNExpression;->tokens:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lde/congrace/exp4j/RPNExpression;->expression:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lde/congrace/exp4j/RPNExpression;->variables:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public calculate()D
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/congrace/exp4j/RPNExpression;->calculate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs calculate([D)D
    .locals 8
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v6, p0, Lde/congrace/exp4j/RPNExpression;->variables:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    .line 32
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "there are no variables to set values"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 33
    :cond_0
    if-eqz p1, :cond_1

    array-length v6, p1

    iget-object v7, p0, Lde/congrace/exp4j/RPNExpression;->variables:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 34
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The are an unequal number of variables and arguments"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .local v1, "i":I
    iget-object v6, p0, Lde/congrace/exp4j/RPNExpression;->variables:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    if-eqz p1, :cond_2

    .line 38
    iget-object v6, p0, Lde/congrace/exp4j/RPNExpression;->variables:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 40
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 42
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 43
    .local v4, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Double;>;"
    iget-object v6, p0, Lde/congrace/exp4j/RPNExpression;->tokens:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/congrace/exp4j/Token;

    .line 44
    .local v5, "t":Lde/congrace/exp4j/Token;
    check-cast v5, Lde/congrace/exp4j/CalculationToken;

    .end local v5    # "t":Lde/congrace/exp4j/Token;
    iget-object v6, p0, Lde/congrace/exp4j/RPNExpression;->variables:Ljava/util/Map;

    invoke-virtual {v5, v4, v6}, Lde/congrace/exp4j/CalculationToken;->mutateStackForCalculation(Ljava/util/Stack;Ljava/util/Map;)V

    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    return-wide v6
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/congrace/exp4j/RPNExpression;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public setVariable(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 54
    iget-object v0, p0, Lde/congrace/exp4j/RPNExpression;->variables:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
