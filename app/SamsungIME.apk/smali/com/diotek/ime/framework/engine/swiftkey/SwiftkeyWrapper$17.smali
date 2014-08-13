.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/util/PredictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->registerPredictionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPredictionsReady(Lcom/touchtype_fluency/Predictions;)V
    .locals 3
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;

    .prologue
    const/16 v2, 0x14

    .line 1714
    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1600()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictions(Lcom/touchtype_fluency/Predictions;)V

    .line 1715
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1702(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I

    .line 1716
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1718
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$17;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1720
    :cond_0
    return-void
.end method
