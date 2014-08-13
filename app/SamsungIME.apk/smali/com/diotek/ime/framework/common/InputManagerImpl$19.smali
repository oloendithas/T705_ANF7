.class Lcom/diotek/ime/framework/common/InputManagerImpl$19;
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
    .line 9107
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 9110
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v6, :cond_0

    .line 9111
    const-string v6, "SamsungIME"

    const-string v7, "mKeyguardGoneReceiver"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9115
    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 9116
    .local v2, "inputMethod":I
    const/4 v3, 0x0

    .line 9117
    .local v3, "isLockDisabled":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4900(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    .line 9118
    .local v5, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9119
    const/4 v3, 0x1

    .line 9121
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->isPopupInputMethod(I)Z
    invoke-static {v6, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5000(Lcom/diotek/ime/framework/common/InputManagerImpl;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9122
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    .line 9123
    .local v4, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v4, :cond_3

    .line 9124
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 9125
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 9126
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isClipboardShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 9131
    if-nez v3, :cond_2

    .line 9132
    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    .line 9134
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6, v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5102(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9138
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v6, v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5202(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 9139
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->guidePopupIsHidden()V

    .line 9140
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$19;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showDlgMsgBox()V

    .line 9141
    return-void
.end method
