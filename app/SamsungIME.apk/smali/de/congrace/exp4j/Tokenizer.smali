.class Lde/congrace/exp4j/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# instance fields
.field private final functions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
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
.method constructor <init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "variableNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "functions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomFunction;>;"
    .local p3, "operators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lde/congrace/exp4j/Tokenizer;->variableNames:Ljava/util/Set;

    .line 19
    iput-object p2, p0, Lde/congrace/exp4j/Tokenizer;->functions:Ljava/util/Map;

    .line 20
    iput-object p3, p0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private isDigitOrDecimalSeparator(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 24
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFunction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lde/congrace/exp4j/Tokenizer;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNotationSeparator(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 28
    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x45

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOperatorCharacter(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 47
    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 48
    .local v1, "symbol":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 49
    const/4 v2, 0x1

    .line 52
    .end local v1    # "symbol":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOperatorStart(Ljava/lang/String;)Z
    .locals 3
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 193
    .local v1, "operatorName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const/4 v2, 0x1

    .line 197
    .end local v1    # "operatorName":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVariable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->variableNames:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 33
    iget-object v2, p0, Lde/congrace/exp4j/Tokenizer;->variableNames:Ljava/util/Set;

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

    .line 34
    .local v1, "var":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x1

    .line 39
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "var":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method getTokens(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/congrace/exp4j/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnparsableExpressionException;,
            Lde/congrace/exp4j/UnknownFunctionException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v21, "tokens":Ljava/util/List;, "Ljava/util/List<Lde/congrace/exp4j/Token;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 58
    .local v4, "chars":[C
    const/16 v16, 0x0

    .line 59
    .local v16, "openBraces":I
    const/16 v17, 0x0

    .line 60
    .local v17, "openCurly":I
    const/16 v18, 0x0

    .line 62
    .local v18, "openSquare":I
    const/4 v9, 0x0

    .line 63
    .local v9, "lastToken":Lde/congrace/exp4j/Token;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_17

    .line 64
    aget-char v3, v4, v7

    .line 65
    .local v3, "c":C
    const/16 v23, 0x20

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 63
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 68
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v22, "valueBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/4 v13, 0x1

    .line 72
    .local v13, "numberLen":I
    const/4 v8, 0x0

    .line 73
    .local v8, "lastCharNotationSeparator":Z
    const/4 v12, 0x0

    .line 74
    .local v12, "notationSeparatorOccured":Z
    :goto_2
    array-length v0, v4

    move/from16 v23, v0

    add-int v24, v7, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 75
    add-int v23, v7, v13

    aget-char v23, v4, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isDigitOrDecimalSeparator(C)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 76
    add-int v23, v7, v13

    aget-char v23, v4, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const/4 v8, 0x0

    .line 91
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 78
    :cond_1
    add-int v23, v7, v13

    aget-char v23, v4, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isNotationSeparator(C)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 79
    if-eqz v12, :cond_2

    .line 80
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    const-string v24, "Number can have only one notation separator \'e/E\'"

    invoke-direct/range {v23 .. v24}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 82
    :cond_2
    add-int v23, v7, v13

    aget-char v23, v4, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/4 v8, 0x1

    .line 84
    const/4 v12, 0x1

    goto :goto_3

    .line 85
    :cond_3
    if-eqz v8, :cond_5

    add-int v23, v7, v13

    aget-char v23, v4, v23

    const/16 v24, 0x2d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    add-int v23, v7, v13

    aget-char v23, v4, v23

    const/16 v24, 0x2b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 86
    :cond_4
    add-int v23, v7, v13

    aget-char v23, v4, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/4 v8, 0x0

    goto :goto_3

    .line 93
    :cond_5
    add-int/lit8 v23, v13, -0x1

    add-int v7, v7, v23

    .line 94
    new-instance v9, Lde/congrace/exp4j/NumberToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/NumberToken;-><init>(Ljava/lang/String;)V

    .line 160
    .end local v8    # "lastCharNotationSeparator":Z
    .end local v12    # "notationSeparatorOccured":Z
    .end local v13    # "numberLen":I
    .end local v22    # "valueBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    :goto_4
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 95
    :cond_6
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v23

    if-nez v23, :cond_7

    const/16 v23, 0x5f

    move/from16 v0, v23

    if-ne v3, v0, :cond_c

    .line 97
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v11, "nameBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const/4 v14, 0x1

    .line 101
    .local v14, "offset":I
    :goto_5
    array-length v0, v4

    move/from16 v23, v0

    add-int v24, v7, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    add-int v23, v7, v14

    aget-char v23, v4, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isLetter(C)Z

    move-result v23

    if-nez v23, :cond_8

    add-int v23, v7, v14

    aget-char v23, v4, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isDigit(C)Z

    move-result v23

    if-nez v23, :cond_8

    add-int v23, v7, v14

    aget-char v23, v4, v23

    const/16 v24, 0x5f

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 103
    :cond_8
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .local v15, "offset":I
    add-int v23, v7, v14

    aget-char v23, v4, v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v14, v15

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_5

    .line 105
    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lde/congrace/exp4j/Tokenizer;->isVariable(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 108
    add-int/lit8 v23, v14, -0x1

    add-int v7, v7, v23

    .line 109
    new-instance v9, Lde/congrace/exp4j/VariableToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-direct {v9, v10}, Lde/congrace/exp4j/VariableToken;-><init>(Ljava/lang/String;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto :goto_4

    .line 110
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lde/congrace/exp4j/Tokenizer;->isFunction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 112
    add-int/lit8 v23, v14, -0x1

    add-int v7, v7, v23

    .line 113
    new-instance v9, Lde/congrace/exp4j/FunctionToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/congrace/exp4j/Tokenizer;->functions:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lde/congrace/exp4j/CustomFunction;

    move-object/from16 v0, v23

    invoke-direct {v9, v10, v0}, Lde/congrace/exp4j/FunctionToken;-><init>(Ljava/lang/String;Lde/congrace/exp4j/CustomFunction;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 116
    :cond_b
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    add-int/lit8 v24, v7, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;CI)V

    throw v23

    .line 118
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameBuilder":Ljava/lang/StringBuilder;
    .end local v14    # "offset":I
    :cond_c
    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_d

    .line 120
    new-instance v9, Lde/congrace/exp4j/FunctionSeparatorToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-direct {v9}, Lde/congrace/exp4j/FunctionSeparatorToken;-><init>()V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 121
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lde/congrace/exp4j/Tokenizer;->isOperatorCharacter(C)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 123
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v20, "symbolBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    const/4 v14, 0x1

    .line 127
    .restart local v14    # "offset":I
    :goto_6
    array-length v0, v4

    move/from16 v23, v0

    add-int v24, v7, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    add-int v23, v7, v14

    aget-char v23, v4, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isOperatorCharacter(C)Z

    move-result v23

    if-eqz v23, :cond_e

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int v24, v7, v14

    aget-char v24, v4, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lde/congrace/exp4j/Tokenizer;->isOperatorStart(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 128
    add-int v23, v7, v14

    aget-char v23, v4, v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 131
    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 132
    .local v19, "symbol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 133
    add-int/lit8 v23, v14, -0x1

    add-int v7, v7, v23

    .line 134
    new-instance v9, Lde/congrace/exp4j/OperatorToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/congrace/exp4j/Tokenizer;->operators:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lde/congrace/exp4j/CustomOperator;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Lde/congrace/exp4j/OperatorToken;-><init>(Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 136
    :cond_f
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    add-int/lit8 v24, v7, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;CI)V

    throw v23

    .line 138
    .end local v14    # "offset":I
    .end local v19    # "symbol":Ljava/lang/String;
    .end local v20    # "symbolBuilder":Ljava/lang/StringBuilder;
    :cond_10
    const/16 v23, 0x28

    move/from16 v0, v23

    if-ne v3, v0, :cond_11

    .line 139
    add-int/lit8 v16, v16, 0x1

    .line 140
    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 141
    :cond_11
    const/16 v23, 0x7b

    move/from16 v0, v23

    if-ne v3, v0, :cond_12

    .line 142
    add-int/lit8 v17, v17, 0x1

    .line 143
    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 144
    :cond_12
    const/16 v23, 0x5b

    move/from16 v0, v23

    if-ne v3, v0, :cond_13

    .line 145
    add-int/lit8 v18, v18, 0x1

    .line 146
    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 147
    :cond_13
    const/16 v23, 0x29

    move/from16 v0, v23

    if-ne v3, v0, :cond_14

    .line 148
    add-int/lit8 v16, v16, -0x1

    .line 149
    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 150
    :cond_14
    const/16 v23, 0x7d

    move/from16 v0, v23

    if-ne v3, v0, :cond_15

    .line 151
    add-int/lit8 v17, v17, -0x1

    .line 152
    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 153
    :cond_15
    const/16 v23, 0x5d

    move/from16 v0, v23

    if-ne v3, v0, :cond_16

    .line 154
    add-int/lit8 v18, v18, -0x1

    .line 155
    new-instance v9, Lde/congrace/exp4j/ParenthesesToken;

    .end local v9    # "lastToken":Lde/congrace/exp4j/Token;
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lde/congrace/exp4j/ParenthesesToken;-><init>(Ljava/lang/String;)V

    .restart local v9    # "lastToken":Lde/congrace/exp4j/Token;
    goto/16 :goto_4

    .line 158
    :cond_16
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    add-int/lit8 v24, v7, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v3, v2}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;CI)V

    throw v23

    .line 162
    .end local v3    # "c":C
    :cond_17
    if-nez v17, :cond_18

    if-eqz v16, :cond_1e

    const/16 v23, 0x1

    move/from16 v24, v23

    :goto_7
    if-eqz v18, :cond_1f

    const/16 v23, 0x1

    :goto_8
    or-int v23, v23, v24

    if-eqz v23, :cond_20

    .line 163
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v5, "errorBuilder":Ljava/lang/StringBuilder;
    const-string v23, "There are "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/4 v6, 0x1

    .line 166
    .local v6, "first":Z
    if-eqz v16, :cond_19

    .line 167
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " unmatched parantheses "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const/4 v6, 0x0

    .line 170
    :cond_19
    if-eqz v17, :cond_1b

    .line 171
    if-nez v6, :cond_1a

    .line 172
    const-string v23, " and "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_1a
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " unmatched curly brackets "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const/4 v6, 0x0

    .line 177
    :cond_1b
    if-eqz v18, :cond_1d

    .line 178
    if-nez v6, :cond_1c

    .line 179
    const-string v23, " and "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " unmatched square brackets "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const/4 v6, 0x0

    .line 184
    :cond_1d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "in expression \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v23, Lde/congrace/exp4j/UnparsableExpressionException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 162
    .end local v5    # "errorBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "first":Z
    :cond_1e
    const/16 v23, 0x0

    move/from16 v24, v23

    goto/16 :goto_7

    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 187
    :cond_20
    return-object v21
.end method
