.class Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$2;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFilteredFieldSpecificPredictions(Lcom/touchtype_fluency/Predictions;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/touchtype_fluency/Prediction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$2;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/Prediction;)I
    .locals 4
    .param p1, "p1"    # Lcom/touchtype_fluency/Prediction;
    .param p2, "p2"    # Lcom/touchtype_fluency/Prediction;

    .prologue
    .line 1087
    invoke-virtual {p1}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1088
    const/4 v0, 0x1

    .line 1089
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1084
    check-cast p1, Lcom/touchtype_fluency/Prediction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/touchtype_fluency/Prediction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$2;->compare(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/Prediction;)I

    move-result v0

    return v0
.end method
