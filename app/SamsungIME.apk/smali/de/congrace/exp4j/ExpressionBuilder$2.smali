.class Lde/congrace/exp4j/ExpressionBuilder$2;
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
.method constructor <init>(Lde/congrace/exp4j/ExpressionBuilder;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lde/congrace/exp4j/ExpressionBuilder$2;->this$0:Lde/congrace/exp4j/ExpressionBuilder;

    invoke-direct {p0, p2}, Lde/congrace/exp4j/CustomOperator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applyOperation([D)D
    .locals 4
    .param p1, "values"    # [D

    .prologue
    .line 71
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    return-wide v0
.end method
