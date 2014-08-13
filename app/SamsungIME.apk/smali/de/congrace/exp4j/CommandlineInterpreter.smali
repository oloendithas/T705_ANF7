.class public Lde/congrace/exp4j/CommandlineInterpreter;
.super Ljava/lang/Object;
.source "CommandlineInterpreter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateExpression(Ljava/lang/String;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Lde/congrace/exp4j/ExpressionBuilder;

    invoke-direct {v2, p0}, Lde/congrace/exp4j/ExpressionBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lde/congrace/exp4j/ExpressionBuilder;->build()Lde/congrace/exp4j/Calculable;

    move-result-object v2

    invoke-interface {v2}, Lde/congrace/exp4j/Calculable;->calculate()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->println(D)V
    :try_end_0
    .catch Lde/congrace/exp4j/UnparsableExpressionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lde/congrace/exp4j/UnknownFunctionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lde/congrace/exp4j/UnparsableExpressionException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Lde/congrace/exp4j/UnparsableExpressionException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Lde/congrace/exp4j/UnknownFunctionException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 44
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 45
    invoke-static {}, Lde/congrace/exp4j/CommandlineInterpreter;->printUsage()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lde/congrace/exp4j/CommandlineInterpreter;->calculateExpression(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static printUsage()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "usage":Ljava/lang/StringBuilder;
    const-string v1, "Commandline Expression Parser\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Example: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java -jar exp4j.jar \"2.12 * log(23) * (12 - 4)\"\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "written by fas@congrace.de"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    return-void
.end method
