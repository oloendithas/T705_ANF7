.class Lcom/diotek/ime/framework/common/InputManagerImpl$21;
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
    .line 9167
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 9170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9171
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9172
    const-string v3, "penInsert"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 9173
    .local v2, "penInsert":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    .line 9174
    if-nez v2, :cond_2

    .line 9175
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->isChangeToHwrAvailable()Z
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9176
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->dismissClipboard()V

    .line 9177
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/app/KeyguardManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 9178
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v3

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4, v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5302(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 9180
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9181
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isHandWritingHasBoonUsed()Z

    move-result v1

    .line 9182
    .local v1, "backUpHWRUsed":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/input/InputController;->changeToHwrMode()V

    .line 9183
    if-nez v1, :cond_1

    .line 9184
    iget-object v3, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$21;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->resetHandWritingHasBoonUsed()V

    .line 9192
    .end local v1    # "backUpHWRUsed":Z
    .end local v2    # "penInsert":Z
    :cond_1
    :goto_0
    return-void

    .line 9189
    .restart local v2    # "penInsert":Z
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    goto :goto_0
.end method
