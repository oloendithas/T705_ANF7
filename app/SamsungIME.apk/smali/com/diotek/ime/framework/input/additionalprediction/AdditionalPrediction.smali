.class public Lcom/diotek/ime/framework/input/additionalprediction/AdditionalPrediction;
.super Ljava/lang/Object;
.source "AdditionalPrediction.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdditionalPrediction(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "expression"    # Ljava/lang/String;

    .prologue
    .line 12
    :try_start_0
    const-string v4, "\ufffd\ufffd"

    const-string v5, "*"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\ufffd\ufffd"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v4, Lde/congrace/exp4j/ExpressionBuilder;

    invoke-direct {v4, p0}, Lde/congrace/exp4j/ExpressionBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lde/congrace/exp4j/ExpressionBuilder;->build()Lde/congrace/exp4j/Calculable;

    move-result-object v0

    .line 14
    .local v0, "calc":Lde/congrace/exp4j/Calculable;
    invoke-interface {v0}, Lde/congrace/exp4j/Calculable;->calculate()D

    move-result-wide v1

    .line 15
    .local v1, "d":D
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .local v3, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 18
    .end local v0    # "calc":Lde/congrace/exp4j/Calculable;
    .end local v1    # "d":D
    .end local v3    # "df":Ljava/text/DecimalFormat;
    :goto_0
    return-object v4

    .line 17
    :catch_0
    move-exception v4

    .line 18
    const/4 v4, 0x0

    goto :goto_0
.end method
