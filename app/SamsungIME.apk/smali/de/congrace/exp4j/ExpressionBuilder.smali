.class public Lde/congrace/exp4j/ExpressionBuilder;
.super Ljava/lang/Object;
.source "ExpressionBuilder.java"


# static fields
.field public static final PROPERTY_UNARY_HIGH_PRECEDENCE:Ljava/lang/String; = "exp4j.unary.precedence.high"


# instance fields
.field private final builtInOperators:Ljava/util/Map;
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

.field private final customFunctions:Ljava/util/Map;
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

.field private customOperators:Ljava/util/Map;
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

.field private expression:Ljava/lang/String;

.field private final highUnaryPrecedence:Z

.field private final validOperatorSymbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expression can not be empty!."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    .line 50
    const-string v0, "exp4j.unary.precedence.high"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "exp4j.unary.precedence.high"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->highUnaryPrecedence:Z

    .line 52
    invoke-direct {p0}, Lde/congrace/exp4j/ExpressionBuilder;->getBuiltinFunctions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    .line 53
    invoke-direct {p0}, Lde/congrace/exp4j/ExpressionBuilder;->getBuiltinOperators()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->builtInOperators:Ljava/util/Map;

    .line 54
    invoke-direct {p0}, Lde/congrace/exp4j/ExpressionBuilder;->getValidOperators()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->validOperatorSymbols:Ljava/util/List;

    .line 55
    return-void

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkVariableName(Ljava/lang/String;)V
    .locals 5
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnparsableExpressionException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x5f

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 281
    .local v1, "name":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 282
    if-nez v0, :cond_0

    .line 283
    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_1

    .line 284
    new-instance v2, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid variable name: character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_0
    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    aget-char v2, v1, v0

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_1

    .line 289
    new-instance v2, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid variable name: character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_2
    return-void
.end method

.method private getBuiltinFunctions()Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    new-instance v3, Lde/congrace/exp4j/ExpressionBuilder$8;

    const-string v22, "abs"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$8;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 129
    .local v3, "abs":Lde/congrace/exp4j/CustomFunction;
    new-instance v4, Lde/congrace/exp4j/ExpressionBuilder$9;

    const-string v22, "acos"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$9;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 135
    .local v4, "acos":Lde/congrace/exp4j/CustomFunction;
    new-instance v5, Lde/congrace/exp4j/ExpressionBuilder$10;

    const-string v22, "asin"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$10;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 141
    .local v5, "asin":Lde/congrace/exp4j/CustomFunction;
    new-instance v6, Lde/congrace/exp4j/ExpressionBuilder$11;

    const-string v22, "atan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$11;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 147
    .local v6, "atan":Lde/congrace/exp4j/CustomFunction;
    new-instance v7, Lde/congrace/exp4j/ExpressionBuilder$12;

    const-string v22, "cbrt"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$12;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 153
    .local v7, "cbrt":Lde/congrace/exp4j/CustomFunction;
    new-instance v8, Lde/congrace/exp4j/ExpressionBuilder$13;

    const-string v22, "ceil"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v8, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$13;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 159
    .local v8, "ceil":Lde/congrace/exp4j/CustomFunction;
    new-instance v9, Lde/congrace/exp4j/ExpressionBuilder$14;

    const-string v22, "cos"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$14;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 165
    .local v9, "cos":Lde/congrace/exp4j/CustomFunction;
    new-instance v10, Lde/congrace/exp4j/ExpressionBuilder$15;

    const-string v22, "cosh"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$15;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 171
    .local v10, "cosh":Lde/congrace/exp4j/CustomFunction;
    new-instance v13, Lde/congrace/exp4j/ExpressionBuilder$16;

    const-string v22, "exp"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$16;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 177
    .local v13, "exp":Lde/congrace/exp4j/CustomFunction;
    new-instance v14, Lde/congrace/exp4j/ExpressionBuilder$17;

    const-string v22, "expm1"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v14, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$17;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 183
    .local v14, "expm1":Lde/congrace/exp4j/CustomFunction;
    new-instance v15, Lde/congrace/exp4j/ExpressionBuilder$18;

    const-string v22, "floor"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Lde/congrace/exp4j/ExpressionBuilder$18;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 189
    .local v15, "floor":Lde/congrace/exp4j/CustomFunction;
    new-instance v16, Lde/congrace/exp4j/ExpressionBuilder$19;

    const-string v22, "log"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$19;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 195
    .local v16, "log":Lde/congrace/exp4j/CustomFunction;
    new-instance v17, Lde/congrace/exp4j/ExpressionBuilder$20;

    const-string v22, "sin"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$20;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 201
    .local v17, "sine":Lde/congrace/exp4j/CustomFunction;
    new-instance v18, Lde/congrace/exp4j/ExpressionBuilder$21;

    const-string v22, "sinh"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$21;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 207
    .local v18, "sinh":Lde/congrace/exp4j/CustomFunction;
    new-instance v19, Lde/congrace/exp4j/ExpressionBuilder$22;

    const-string v22, "sqrt"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$22;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 213
    .local v19, "sqrt":Lde/congrace/exp4j/CustomFunction;
    new-instance v20, Lde/congrace/exp4j/ExpressionBuilder$23;

    const-string v22, "tan"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$23;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 219
    .local v20, "tan":Lde/congrace/exp4j/CustomFunction;
    new-instance v21, Lde/congrace/exp4j/ExpressionBuilder$24;

    const-string v22, "tanh"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/congrace/exp4j/ExpressionBuilder$24;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 225
    .local v21, "tanh":Lde/congrace/exp4j/CustomFunction;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v11, "customFunctions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomFunction;>;"
    const-string v22, "abs"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v22, "acos"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v22, "asin"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v22, "atan"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v22, "cbrt"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v22, "ceil"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v22, "cos"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v22, "cosh"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v22, "exp"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v22, "expm1"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v22, "floor"

    move-object/from16 v0, v22

    invoke-interface {v11, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v22, "log"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v22, "sin"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v22, "sinh"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v22, "sqrt"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v22, "tan"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v22, "tanh"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lde/congrace/exp4j/InvalidCustomFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    return-object v11

    .line 244
    .end local v3    # "abs":Lde/congrace/exp4j/CustomFunction;
    .end local v4    # "acos":Lde/congrace/exp4j/CustomFunction;
    .end local v5    # "asin":Lde/congrace/exp4j/CustomFunction;
    .end local v6    # "atan":Lde/congrace/exp4j/CustomFunction;
    .end local v7    # "cbrt":Lde/congrace/exp4j/CustomFunction;
    .end local v8    # "ceil":Lde/congrace/exp4j/CustomFunction;
    .end local v9    # "cos":Lde/congrace/exp4j/CustomFunction;
    .end local v10    # "cosh":Lde/congrace/exp4j/CustomFunction;
    .end local v11    # "customFunctions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomFunction;>;"
    .end local v13    # "exp":Lde/congrace/exp4j/CustomFunction;
    .end local v14    # "expm1":Lde/congrace/exp4j/CustomFunction;
    .end local v15    # "floor":Lde/congrace/exp4j/CustomFunction;
    .end local v16    # "log":Lde/congrace/exp4j/CustomFunction;
    .end local v17    # "sine":Lde/congrace/exp4j/CustomFunction;
    .end local v18    # "sinh":Lde/congrace/exp4j/CustomFunction;
    .end local v19    # "sqrt":Lde/congrace/exp4j/CustomFunction;
    .end local v20    # "tan":Lde/congrace/exp4j/CustomFunction;
    .end local v21    # "tanh":Lde/congrace/exp4j/CustomFunction;
    :catch_0
    move-exception v12

    .line 246
    .local v12, "e":Lde/congrace/exp4j/InvalidCustomFunctionException;
    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22
.end method

.method private getBuiltinOperators()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v7, Lde/congrace/exp4j/ExpressionBuilder$1;

    const-string v2, "+"

    invoke-direct {v7, p0, v2}, Lde/congrace/exp4j/ExpressionBuilder$1;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 68
    .local v7, "add":Lde/congrace/exp4j/CustomOperator;
    new-instance v12, Lde/congrace/exp4j/ExpressionBuilder$2;

    const-string v2, "-"

    invoke-direct {v12, p0, v2}, Lde/congrace/exp4j/ExpressionBuilder$2;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V

    .line 74
    .local v12, "sub":Lde/congrace/exp4j/CustomOperator;
    new-instance v8, Lde/congrace/exp4j/ExpressionBuilder$3;

    const-string v2, "/"

    const/4 v3, 0x3

    invoke-direct {v8, p0, v2, v3}, Lde/congrace/exp4j/ExpressionBuilder$3;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;I)V

    .line 83
    .local v8, "div":Lde/congrace/exp4j/CustomOperator;
    new-instance v10, Lde/congrace/exp4j/ExpressionBuilder$4;

    const-string v2, "*"

    const/4 v3, 0x3

    invoke-direct {v10, p0, v2, v3}, Lde/congrace/exp4j/ExpressionBuilder$4;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;I)V

    .line 89
    .local v10, "mul":Lde/congrace/exp4j/CustomOperator;
    new-instance v9, Lde/congrace/exp4j/ExpressionBuilder$5;

    const-string v2, "%"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v9, p0, v2, v3, v4}, Lde/congrace/exp4j/ExpressionBuilder$5;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZI)V

    .line 98
    .local v9, "mod":Lde/congrace/exp4j/CustomOperator;
    new-instance v0, Lde/congrace/exp4j/ExpressionBuilder$6;

    const-string v2, "\'"

    const/4 v3, 0x0

    iget-boolean v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->highUnaryPrecedence:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    :goto_0
    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/congrace/exp4j/ExpressionBuilder$6;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZII)V

    .line 104
    .local v0, "umin":Lde/congrace/exp4j/CustomOperator;
    new-instance v1, Lde/congrace/exp4j/ExpressionBuilder$7;

    const-string v3, "^"

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lde/congrace/exp4j/ExpressionBuilder$7;-><init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZII)V

    .line 110
    .local v1, "pow":Lde/congrace/exp4j/CustomOperator;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v11, "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;>;"
    const-string v2, "+"

    invoke-interface {v11, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "-"

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "*"

    invoke-interface {v11, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "/"

    invoke-interface {v11, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "\'"

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v2, "^"

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "%"

    invoke-interface {v11, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object v11

    .line 98
    .end local v0    # "umin":Lde/congrace/exp4j/CustomOperator;
    .end local v1    # "pow":Lde/congrace/exp4j/CustomOperator;
    .end local v11    # "operations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/congrace/exp4j/CustomOperator;>;"
    :cond_0
    const/4 v4, 0x5

    goto :goto_0
.end method

.method private getValidOperators()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Character;

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x7e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x7c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lde/congrace/exp4j/Calculable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/UnknownFunctionException;,
            Lde/congrace/exp4j/UnparsableExpressionException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/congrace/exp4j/CustomOperator;

    .line 261
    .local v2, "op":Lde/congrace/exp4j/CustomOperator;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, v2, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 262
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->validOperatorSymbols:Ljava/util/List;

    iget-object v5, v2, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 263
    new-instance v4, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid symbol for an operator please choose from: !,#,\u00a7,$,&,;,:,~,<,>,|,="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    .end local v2    # "op":Lde/congrace/exp4j/CustomOperator;
    :cond_2
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    .local v3, "varName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lde/congrace/exp4j/ExpressionBuilder;->checkVariableName(Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    new-instance v4, Lde/congrace/exp4j/UnparsableExpressionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Variable \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' cannot have the same name as a function"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/congrace/exp4j/UnparsableExpressionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    .end local v3    # "varName":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->builtInOperators:Ljava/util/Map;

    iget-object v5, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 276
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    iget-object v5, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    iget-object v6, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    iget-object v7, p0, Lde/congrace/exp4j/ExpressionBuilder;->builtInOperators:Ljava/util/Map;

    invoke-static {v4, v5, v6, v7}, Lde/congrace/exp4j/RPNConverter;->toRPNExpression(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lde/congrace/exp4j/RPNExpression;

    move-result-object v4

    return-object v4
.end method

.method public withCustomFunction(Lde/congrace/exp4j/CustomFunction;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 2
    .param p1, "function"    # Lde/congrace/exp4j/CustomFunction;

    .prologue
    .line 304
    iget-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customFunctions:Ljava/util/Map;

    iget-object v1, p1, Lde/congrace/exp4j/CustomFunction;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-object p0
.end method

.method public withCustomFunctions(Ljava/util/Collection;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lde/congrace/exp4j/CustomFunction;",
            ">;)",
            "Lde/congrace/exp4j/ExpressionBuilder;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "functions":Ljava/util/Collection;, "Ljava/util/Collection<Lde/congrace/exp4j/CustomFunction;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/congrace/exp4j/CustomFunction;

    .line 310
    .local v0, "f":Lde/congrace/exp4j/CustomFunction;
    invoke-virtual {p0, v0}, Lde/congrace/exp4j/ExpressionBuilder;->withCustomFunction(Lde/congrace/exp4j/CustomFunction;)Lde/congrace/exp4j/ExpressionBuilder;

    goto :goto_0

    .line 312
    .end local v0    # "f":Lde/congrace/exp4j/CustomFunction;
    :cond_0
    return-object p0
.end method

.method public withExpression(Ljava/lang/String;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder;->expression:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public withOperation(Lde/congrace/exp4j/CustomOperator;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 2
    .param p1, "operation"    # Lde/congrace/exp4j/CustomOperator;

    .prologue
    .line 365
    iget-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->customOperators:Ljava/util/Map;

    iget-object v1, p1, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-object p0
.end method

.method public withOperations(Ljava/util/Collection;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lde/congrace/exp4j/CustomOperator;",
            ">;)",
            "Lde/congrace/exp4j/ExpressionBuilder;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "operations":Ljava/util/Collection;, "Ljava/util/Collection<Lde/congrace/exp4j/CustomOperator;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/congrace/exp4j/CustomOperator;

    .line 378
    .local v1, "op":Lde/congrace/exp4j/CustomOperator;
    invoke-virtual {p0, v1}, Lde/congrace/exp4j/ExpressionBuilder;->withOperation(Lde/congrace/exp4j/CustomOperator;)Lde/congrace/exp4j/ExpressionBuilder;

    goto :goto_0

    .line 380
    .end local v1    # "op":Lde/congrace/exp4j/CustomOperator;
    :cond_0
    return-object p0
.end method

.method public withVariable(Ljava/lang/String;D)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 325
    iget-object v0, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-object p0
.end method

.method public varargs withVariableNames([Ljava/lang/String;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 6
    .param p1, "variableNames"    # [Ljava/lang/String;

    .prologue
    .line 337
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 338
    .local v3, "variable":Ljava/lang/String;
    iget-object v4, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "variable":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public withVariables(Ljava/util/Map;)Lde/congrace/exp4j/ExpressionBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lde/congrace/exp4j/ExpressionBuilder;"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "variableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 352
    .local v1, "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    iget-object v2, p0, Lde/congrace/exp4j/ExpressionBuilder;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 354
    .end local v1    # "v":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_0
    return-object p0
.end method
