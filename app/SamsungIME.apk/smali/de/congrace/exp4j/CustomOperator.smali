.class public abstract Lde/congrace/exp4j/CustomOperator;
.super Ljava/lang/Object;
.source "CustomOperator.java"


# instance fields
.field final leftAssociative:Z

.field final operandCount:I

.field final precedence:I

.field final symbol:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v0, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    .line 90
    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    .line 91
    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    .line 93
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "precedence"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    .line 106
    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    .line 107
    iput p2, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    .line 109
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "leftAssociative"    # Z
    .param p3, "precedence"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p2, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    .line 53
    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    .line 54
    iput p3, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;
    .param p2, "leftAssociative"    # Z
    .param p3, "precedence"    # I
    .param p4, "operandCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p2, p0, Lde/congrace/exp4j/CustomOperator;->leftAssociative:Z

    .line 76
    iput-object p1, p0, Lde/congrace/exp4j/CustomOperator;->symbol:Ljava/lang/String;

    .line 77
    iput p3, p0, Lde/congrace/exp4j/CustomOperator;->precedence:I

    .line 78
    if-ne p4, v0, :cond_0

    :goto_0
    iput v0, p0, Lde/congrace/exp4j/CustomOperator;->operandCount:I

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected abstract applyOperation([D)D
.end method
