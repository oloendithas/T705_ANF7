.class Lde/congrace/exp4j/ExpressionBuilder$7;
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
.method constructor <init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;ZII)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Z
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .prologue
    .line 104
    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder$7;->this$0:Lde/congrace/exp4j/ExpressionBuilder;

    invoke-direct {p0, p2, p3, p4, p5}, Lde/congrace/exp4j/CustomOperator;-><init>(Ljava/lang/String;ZII)V

    return-void
.end method


# virtual methods
.method protected applyOperation([D)D
    .locals 4
    .param p1, "values"    # [D

    .prologue
    .line 107
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method
