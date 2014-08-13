.class Lcom/diotek/ime/framework/common/InputManagerImpl$18;
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
    .line 9051
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 9054
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v6, :cond_0

    .line 9055
    const-string v6, "SamsungIME"

    const-string v7, "mScreenUnlockReceiver"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9057
    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 9058
    .local v2, "inputMethod":I
    const/4 v3, 0x0

    .line 9059
    .local v3, "isLockDisabled":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4900(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    .line 9060
    .local v5, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v9}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9061
    const/4 v3, 0x1

    .line 9063
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v6

    const-string v8, "keyguard"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v7, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5302(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 9066
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->isPopupInputMethod(I)Z
    invoke-static {v6, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5000(Lcom/diotek/ime/framework/common/InputManagerImpl;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9067
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    .line 9068
    .local v4, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v4, :cond_3

    .line 9069
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 9070
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 9073
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isClipboardShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 9081
    if-nez v3, :cond_2

    .line 9082
    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    .line 9084
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6, v10}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5102(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9094
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 9095
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v6

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 9096
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 9097
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9098
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->updateShiftState()V

    .line 9102
    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v6, v10}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5202(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9103
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsUnlockState:Z
    invoke-static {v6, v9}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5502(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9104
    return-void

    .line 9088
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 9089
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->changeToNormalKeyboardModeForEasyMode(I)V

    .line 9090
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mNeedChangeToFloatingKeyboardModeForInputTypeOption:Z
    invoke-static {v6, v9}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5402(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    goto :goto_0
.end method
