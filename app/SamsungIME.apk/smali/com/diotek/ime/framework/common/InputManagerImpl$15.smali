.class Lcom/diotek/ime/framework/common/InputManagerImpl$15;
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
    .line 8821
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8824
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_0

    .line 8825
    const-string v1, "SamsungIME"

    const-string v2, "mCapsStatusReceiver onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8828
    :cond_0
    const-string v1, "caps_status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 8830
    .local v0, "capslock":Z
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_1

    .line 8831
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCapsStatusReceiver onReceive() Capslock Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8834
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mCurrentInputLanguage:Lcom/diotek/ime/framework/common/Language;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    const/high16 v2, 0x656c0000

    if-ne v1, v2, :cond_4

    .line 8835
    if-eqz v0, :cond_3

    .line 8836
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->isForcedCapsLockForGreek()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8837
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->backupCapsLock()V

    .line 8839
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    .line 8841
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/input/InputController;->updateShiftState()V

    .line 8842
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/view/ViewController;->update()V

    .line 8845
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$15;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->setForcedCapslock(Z)V

    .line 8846
    return-void
.end method
