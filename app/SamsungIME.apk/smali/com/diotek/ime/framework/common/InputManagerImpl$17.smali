.class Lcom/diotek/ime/framework/common/InputManagerImpl$17;
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
    .line 9019
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 9022
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v4, :cond_0

    .line 9023
    const-string v4, "SamsungIME"

    const-string v5, "mScreenLockReceiver onReceive()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9025
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 9026
    .local v0, "inputMethod":I
    const/4 v1, 0x0

    .line 9027
    .local v1, "isLockDisabled":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4900(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 9028
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9029
    const/4 v1, 0x1

    .line 9031
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->isPopupInputMethod(I)Z
    invoke-static {v4, v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5000(Lcom/diotek/ime/framework/common/InputManagerImpl;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9032
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v2

    .line 9033
    .local v2, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v2, :cond_3

    .line 9034
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9035
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5102(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9037
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    .line 9038
    if-nez v1, :cond_3

    .line 9039
    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 9042
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 9043
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v4

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/ViewController;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    .line 9046
    .end local v2    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5202(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9047
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->dismissAllDialog()V

    .line 9048
    return-void
.end method
