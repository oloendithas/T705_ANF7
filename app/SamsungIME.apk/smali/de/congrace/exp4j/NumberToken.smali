.class Lde/congrace/exp4j/NumberToken;
.super Lde/congrace/exp4j/CalculationToken;
.source "NumberToken.java"


# instance fields
.field private final doubleValue:D


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x65

    .line 39
    invoke-direct {p0, p1}, Lde/congrace/exp4j/CalculationToken;-><init>(Ljava/lang/String;)V

    .line 40
    const/16 v5, 0x45

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 44
    .local v4, "pos":I
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 45
    .local v2, "mantissa":D
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 46
    .local v0, "exponent":D
    const-wide/high16 v5, 0x4024000000000000L

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v2

    iput-wide v5, p0, Lde/congrace/exp4j/NumberToken;->doubleValue:D

    .line 50
    .end local v0    # "exponent":D
    .end local v2    # "mantissa":D
    .end local v4    # "pos":I
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lde/congrace/exp4j/NumberToken;->doubleValue:D

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    instance-of v1, p1, Lde/congrace/exp4j/NumberToken;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Lde/congrace/exp4j/NumberToken;

    .line 56
    .local v0, "t":Lde/congrace/exp4j/NumberToken;
    invoke-virtual {v0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 58
    .end local v0    # "t":Lde/congrace/exp4j/NumberToken;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method mutateStackForCalculation(Ljava/util/Stack;Ljava/util/Map;)V
    .locals 2
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
    .line 68
    .local p1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Double;>;"
    .local p2, "variableValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    iget-wide v0, p0, Lde/congrace/exp4j/NumberToken;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method mutateStackForInfixTranslation(Ljava/util/Stack;Ljava/lang/StringBuilder;)V
    .locals 2
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
    .line 73
    .local p1, "operatorStack":Ljava/util/Stack;, "Ljava/util/Stack<Lde/congrace/exp4j/Token;>;"
    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    return-void
.end method
