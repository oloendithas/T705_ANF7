.class Lcom/diotek/ime/framework/input/HwrInputModule$5;
.super Ljava/lang/Object;
.source "HwrInputModule.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/dhwr/AddStroke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/HwrInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/HwrInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndAddStroke(Z)V
    .locals 8
    .param p1, "isEndStroke"    # Z

    .prologue
    const/4 v7, 0x5

    const/16 v6, 0x14

    const/4 v5, 0x0

    .line 525
    if-eqz p1, :cond_2

    .line 527
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$200(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 528
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v3}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$300(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, "returnValue":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->mStrokeCount:I
    invoke-static {v2}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$500(Lcom/diotek/ime/framework/input/HwrInputModule;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 532
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v5, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->recognize(IZ)I

    move-result v1

    .line 534
    if-eqz v1, :cond_1

    .line 535
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 536
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHwrTouchUp - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 539
    .local v0, "msg":Landroid/os/Message;
    packed-switch v1, :pswitch_data_0

    .line 596
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 598
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 600
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "returnValue":I
    :cond_2
    :goto_0
    return-void

    .line 545
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "returnValue":I
    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 546
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 556
    :pswitch_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 557
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 569
    :pswitch_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 570
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 578
    :pswitch_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 579
    iget-object v2, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/HwrInputModule;->mHwrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStartAddStroke(Z)V
    .locals 2
    .param p1, "isEndStroke"    # Z

    .prologue
    .line 518
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeAll:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$200(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 519
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$5;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # getter for: Lcom/diotek/ime/framework/input/HwrInputModule;->recognizeFail:Lcom/diotek/ime/framework/input/InputModule$Timer;
    invoke-static {v1}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$300(Lcom/diotek/ime/framework/input/HwrInputModule;)Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 520
    return-void
.end method
