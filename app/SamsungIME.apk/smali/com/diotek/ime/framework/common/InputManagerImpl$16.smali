.class Lcom/diotek/ime/framework/common/InputManagerImpl$16;
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
    .line 8849
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 8853
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8855
    .local v0, "action":Ljava/lang/String;
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v8, :cond_0

    .line 8856
    const-string v8, "SamsungIME"

    const-string v9, "mClipboardReceiver onReceive()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8858
    :cond_0
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v8

    const-string v9, "clipboardEx"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 8859
    .local v1, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    .line 8861
    .local v5, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    move v4, v6

    .line 8865
    .local v4, "isFullScreenHandwritingMode":Z
    :goto_0
    const-string v8, "ShowClipboardDialog"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 8866
    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v8, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4802(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 8867
    if-eqz v5, :cond_1

    .line 8871
    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    .line 8872
    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 8874
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8875
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/view/ViewController;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    .line 8876
    if-eqz v4, :cond_2

    .line 8877
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/view/ViewController;->hideFullscreenHwrPanel()V

    .line 8880
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    .line 8881
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/input/InputController;->finishAndInitByCursorMove()V

    .line 8882
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 8883
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setCandidatesViewShown(Z)V

    .line 8906
    :cond_3
    :goto_1
    return-void

    .end local v4    # "isFullScreenHandwritingMode":Z
    :cond_4
    move v4, v7

    .line 8861
    goto :goto_0

    :cond_5
    move v4, v7

    goto :goto_0

    .line 8885
    .restart local v4    # "isFullScreenHandwritingMode":Z
    :cond_6
    const-string v6, "dismissClipboardDialog"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 8886
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 8887
    if-eqz v5, :cond_7

    .line 8888
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 8889
    .local v3, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 8890
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    iget v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v6, :cond_7

    .line 8891
    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    .line 8894
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_7
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v6, v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4802(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 8896
    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 8897
    if-eqz v4, :cond_9

    .line 8898
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/view/ViewController;->showFullscreenHwrPanel()V

    .line 8903
    :cond_9
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    goto :goto_1
.end method
