.class Lcom/diotek/ime/framework/common/InputManagerImpl$33;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 10288
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$33;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 10291
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$33;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/view/ViewController;->resetMultitap()V

    .line 10292
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$33;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputController;->finishAndInitByCursorMove()V

    .line 10294
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$33;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10295
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$33;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10296
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$33;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    .line 10301
    :cond_0
    :goto_0
    return-void

    .line 10298
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$33;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputController;->updateCandidates()V

    goto :goto_0
.end method
