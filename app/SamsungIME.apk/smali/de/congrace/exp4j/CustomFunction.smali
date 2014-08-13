.class public abstract Lde/congrace/exp4j/CustomFunction;
.super Ljava/lang/Object;
.source "CustomFunction.java"


# instance fields
.field final argc:I

.field final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/InvalidCustomFunctionException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x1

    iput v1, p0, Lde/congrace/exp4j/CustomFunction;->argc:I

    .line 34
    iput-object p1, p0, Lde/congrace/exp4j/CustomFunction;->name:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 36
    .local v0, "firstChar":I
    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 37
    :cond_1
    new-instance v1, Lde/congrace/exp4j/InvalidCustomFunctionException;

    const-string v2, "functions have to start with a lowercase or uppercase character"

    invoke-direct {v1, v2}, Lde/congrace/exp4j/InvalidCustomFunctionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_2
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argumentCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/congrace/exp4j/InvalidCustomFunctionException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lde/congrace/exp4j/CustomFunction;->argc:I

    .line 49
    iput-object p1, p0, Lde/congrace/exp4j/CustomFunction;->name:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public varargs abstract applyFunction([D)D
.end method

.method public getArgumentCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lde/congrace/exp4j/CustomFunction;->argc:I

    return v0
.end method
