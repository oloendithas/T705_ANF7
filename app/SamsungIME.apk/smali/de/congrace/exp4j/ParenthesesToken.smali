.class Lde/congrace/exp4j/ParenthesesToken;
.super Lde/congrace/exp4j/Token;
.source "ParenthesesToken.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lde/congrace/exp4j/Token;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v1, p1, Lde/congrace/exp4j/ParenthesesToken;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 35
    check-cast v0, Lde/congrace/exp4j/ParenthesesToken;

    .line 36
    .local v0, "t":Lde/congrace/exp4j/ParenthesesToken;
    invoke-virtual {v0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 38
    .end local v0    # "t":Lde/congrace/exp4j/ParenthesesToken;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isOpen()Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mutateStackForInfixTranslation(Ljava/util/Stack;Ljava/lang/StringBuilder;)V
    .locals 3
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
    .line 57
    .local p1, "operatorStack":Ljava/util/Stack;, "Ljava/util/Stack<Lde/congrace/exp4j/Token;>;"
    invoke-virtual {p0}, Lde/congrace/exp4j/ParenthesesToken;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/congrace/exp4j/Token;

    .local v0, "next":Lde/congrace/exp4j/Token;
    instance-of v1, v0, Lde/congrace/exp4j/OperatorToken;

    if-nez v1, :cond_1

    instance-of v1, v0, Lde/congrace/exp4j/FunctionToken;

    if-nez v1, :cond_1

    instance-of v1, v0, Lde/congrace/exp4j/ParenthesesToken;

    if-eqz v1, :cond_2

    check-cast v0, Lde/congrace/exp4j/ParenthesesToken;

    .end local v0    # "next":Lde/congrace/exp4j/Token;
    invoke-virtual {v0}, Lde/congrace/exp4j/ParenthesesToken;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/congrace/exp4j/Token;

    invoke-virtual {v1}, Lde/congrace/exp4j/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method
