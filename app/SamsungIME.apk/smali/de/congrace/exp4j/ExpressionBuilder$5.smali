.class Lde/congrace/exp4j/ExpressionBuilder$5;
.super Lde/congrace/exp4j/CustomOperator;
.source "ExpressionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/congrace/exp4j/ExpressionBuilder;->getBuiltinOperators()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/congrace/exp4j/ExpressionBuilder;


# direct methods
.method constructor <init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZI)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Z
    .param p4, "x2"    # I

    .prologue
    .line 89
    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder$5;->this$0:Lde/congrace/exp4j/ExpressionBuilder;

    invoke-direct {p0, p2, p3, p4}, Lde/congrace/exp4j/CustomOperator;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method protected applyOperation([D)D
    .locals 5
    .param p1, "values"    # [D

    .prologue
    const/4 v4, 0x1

    .line 92
    aget-wide v0, p1, v4

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero!"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    aget-wide v2, p1, v4

    rem-double/2addr v0, v2

    return-wide v0
.end method
