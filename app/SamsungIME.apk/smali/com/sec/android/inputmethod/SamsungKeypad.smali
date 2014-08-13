.class public Lcom/sec/android/inputmethod/SamsungKeypad;
.super Lcom/diotek/ime/framework/common/AbstractInputMethod;
.source "SamsungKeypad.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field leftaltstate:I

.field mBeforeShowSoftFuncKbd:Z

.field private mCandateArea:Landroid/view/View;

.field public mExtractArea:Landroid/view/View;

.field protected mInputLanguage:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsConfigurationChanged:Z

.field mIsForceShowSIP:Z

.field private final mIsHardwareAcceleratedDrawingEnabled:Z

.field mIsLongPress:Z

.field private mIsShowSIP:Z

.field public mKeyPreviewBackingView:Landroid/view/View;

.field private mRemoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/diotek/ime/framework/common/AbstractInputMethod;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 68
    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 69
    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRemoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    .line 70
    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 71
    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    .line 72
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    .line 73
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    .line 74
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    .line 75
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    .line 79
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    .line 89
    invoke-static {p0}, Lcom/sec/android/inputmethod/compat/InputMethodServiceCompatUtils;->enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    .line 91
    const-string v0, "SamsungKeypad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware accelerated drawing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private forceShowSip()V
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 306
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    .line 313
    .end local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 771
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 772
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 775
    :cond_0
    return-void
.end method

.method public onBindInput()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    .line 140
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 741
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 742
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->computeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 745
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 701
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/common/InputManager;->beforeConfigrationChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 702
    .local v0, "hasToCallSuper":Z
    if-eqz v0, :cond_0

    .line 703
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/common/InputManager;->afterConfigrationChanged(Landroid/content/res/Configuration;)V

    .line 707
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 708
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    if-eqz v1, :cond_2

    .line 709
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    .line 714
    :cond_1
    :goto_0
    return-void

    .line 711
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 98
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v3, :cond_0

    .line 99
    invoke-static {p0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 100
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 102
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 103
    .local v1, "configuredMultiTouchPreview":Z
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->setMultiTouchPreviewEnabled(Z)V

    .line 105
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    if-eqz v3, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    .local v0, "configuredDrawingHardwareAcceleted":Z
    const/high16 v3, 0x7f0c0000

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 112
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/common/InputManager;->setHardwareAcceleratedDrawingEnabled(Z)V

    .line 117
    .end local v0    # "configuredDrawingHardwareAcceleted":Z
    .end local v1    # "configuredMultiTouchPreview":Z
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, p0}, Lcom/diotek/ime/framework/common/InputManager;->initModulesWithService(Lcom/diotek/ime/framework/common/AbstractInputMethod;)V

    .line 118
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 119
    invoke-static {}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getInstance()Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRemoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    .line 124
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 125
    return-void

    .line 112
    .restart local v0    # "configuredDrawingHardwareAcceleted":Z
    .restart local v1    # "configuredMultiTouchPreview":Z
    .restart local v2    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/common/InputManager;->setHardwareAcceleratedDrawingEnabled(Z)V

    throw v3
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_5

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    .line 151
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    .line 152
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v1

    .line 155
    :cond_0
    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 157
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 158
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v1

    .line 149
    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationChanged()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    .line 164
    .end local v1    # "view":Landroid/view/View;
    :cond_5
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 133
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->onDestroy()V

    .line 206
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->evaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    .line 756
    :goto_0
    return v0

    .line 753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    .line 292
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->finishInput()V

    .line 293
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 294
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->finishInputView(Z)V

    .line 300
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 318
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "INPUT_LANGUAGE"

    const/high16 v12, 0x656e0000

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    .line 319
    const/4 v10, 0x4

    if-eq p1, v10, :cond_2

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x6b6f0000

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x6a610000

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x7a680000

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x7a68434e

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x7a68484b

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x7a685457

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x74680000

    if-eq v10, v11, :cond_2

    const/16 v10, 0xe4

    if-eq p1, v10, :cond_2

    const/16 v10, 0x3e

    if-ne p1, v10, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit16 v10, v10, 0xc1

    if-nez v10, :cond_2

    .line 330
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 521
    :cond_1
    :goto_0
    return v9

    .line 351
    :cond_2
    const/4 v9, 0x0

    .line 352
    .local v9, "result":Z
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 353
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 354
    .local v3, "info":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 355
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_e

    const/4 v5, 0x1

    .line 356
    .local v5, "isAltRightPressed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_10

    .line 357
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-nez v10, :cond_f

    if-eqz v3, :cond_f

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_3

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v10, :cond_f

    .line 359
    :cond_3
    const/4 v10, 0x7

    if-lt p1, v10, :cond_4

    const/16 v10, 0x10

    if-le p1, v10, :cond_5

    :cond_4
    const/16 v10, 0x11

    if-eq p1, v10, :cond_5

    const/16 v10, 0x12

    if-ne p1, v10, :cond_7

    :cond_5
    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 363
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    .line 364
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->showSoftFuncKbd()V

    .line 365
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->forceShowSip()V

    .line 366
    const/16 v10, 0x11

    if-eq p1, v10, :cond_6

    const/16 v10, 0x12

    if-ne p1, v10, :cond_7

    .line 367
    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    .line 377
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_KeepKeypadDuringHwKeyAvailable"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    const/4 v6, 0x1

    .line 378
    .local v6, "isFolderType":Z
    :goto_3
    if-eqz v6, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_c

    const/16 v10, 0x43

    if-eq p1, v10, :cond_a

    const/4 v10, 0x7

    if-lt p1, v10, :cond_8

    const/16 v10, 0x10

    if-le p1, v10, :cond_9

    :cond_8
    const/16 v10, 0x11

    if-eq p1, v10, :cond_9

    const/16 v10, 0x12

    if-ne p1, v10, :cond_c

    :cond_9
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_a
    if-eqz v3, :cond_c

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_b

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v10, :cond_c

    .line 382
    :cond_b
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 383
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    .line 384
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    .line 387
    :cond_c
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-lez v10, :cond_12

    .line 388
    :cond_d
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    .line 389
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 390
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 355
    .end local v5    # "isAltRightPressed":Z
    .end local v6    # "isFolderType":Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 370
    .restart local v5    # "isAltRightPressed":Z
    :cond_f
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v10

    if-nez v10, :cond_7

    .line 371
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->forceShowSip()V

    goto/16 :goto_2

    .line 374
    :cond_10
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    goto/16 :goto_2

    .line 377
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 394
    .restart local v6    # "isFolderType":Z
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit8 v8, v10, 0x10

    .line 395
    .local v8, "metaAltLeftState":I
    const/4 v2, 0x0

    .line 397
    .local v2, "editorAction":I
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 398
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    iget v10, v10, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v11, 0x400000ff

    and-int v2, v10, v11

    .line 402
    :cond_13
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    .line 403
    .local v4, "inputmodemanager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v10

    if-nez v10, :cond_14

    if-eqz v5, :cond_15

    .line 404
    :cond_14
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isNotUseAltGrKeyInCountry()Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->isHwDpadKey(ILandroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v10

    if-nez v10, :cond_15

    .line 406
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 412
    :cond_15
    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_18

    .line 414
    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_16

    .line 415
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 417
    :cond_16
    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_18

    if-eqz v3, :cond_18

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_17

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v10, :cond_18

    :cond_17
    const/4 v10, 0x7

    if-lt p1, v10, :cond_18

    const/16 v10, 0x10

    if-gt p1, v10, :cond_18

    .line 420
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 426
    :cond_18
    const/16 v10, 0x43

    if-ne p1, v10, :cond_19

    const/4 v10, 0x3

    if-ne v2, v10, :cond_19

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_19

    const-string v10, "com.sec.pcw"

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 429
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 432
    :cond_19
    const/16 v10, 0x39

    if-ne p1, v10, :cond_1a

    .line 433
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    if-nez v10, :cond_1d

    .line 434
    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    .line 442
    :cond_1a
    :goto_4
    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1b

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1f

    .line 443
    :cond_1b
    const/16 v10, 0x39

    if-eq p1, v10, :cond_1c

    .line 444
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    .line 445
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    .line 448
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 435
    :cond_1d
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1e

    .line 436
    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    goto :goto_4

    .line 437
    :cond_1e
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1a

    .line 438
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    goto :goto_4

    .line 451
    :cond_1f
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_20

    .line 452
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->setHWkeyboardConnectionSetting()V

    .line 456
    :cond_20
    const/16 v10, 0x37

    if-eq p1, v10, :cond_21

    const/16 v10, 0x38

    if-ne p1, v10, :cond_22

    :cond_21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_22

    .line 457
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 461
    :cond_22
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x6b6f0000

    if-ne v10, v11, :cond_23

    const/4 v10, 0x7

    if-lt p1, v10, :cond_23

    const/16 v10, 0x10

    if-gt p1, v10, :cond_23

    .line 462
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 465
    :cond_23
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v10

    if-nez v10, :cond_24

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 466
    :cond_24
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_25

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v10

    if-eqz v10, :cond_28

    :cond_25
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-nez v10, :cond_28

    const/16 v10, 0x10

    if-eq v8, v10, :cond_28

    .line 467
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 468
    const/16 v10, 0x1d

    if-eq p1, v10, :cond_26

    const/16 v10, 0x34

    if-eq p1, v10, :cond_26

    const/16 v10, 0x1f

    if-eq p1, v10, :cond_26

    const/16 v10, 0x32

    if-ne p1, v10, :cond_27

    .line 470
    :cond_26
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 473
    :cond_27
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 492
    :cond_28
    :goto_5
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_30

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.hancom."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_30

    if-nez v6, :cond_30

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-nez v10, :cond_29

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-nez v10, :cond_29

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    if-eqz v10, :cond_30

    .line 497
    :cond_29
    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_30

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v10, :cond_30

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v10

    if-nez v10, :cond_30

    .line 499
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 476
    :cond_2a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-nez v10, :cond_28

    const/16 v10, 0x10

    if-eq v8, v10, :cond_28

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_2b

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_2b

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-nez v10, :cond_2b

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-nez v10, :cond_2b

    if-eqz v6, :cond_28

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-eqz v10, :cond_28

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_28

    const-string v10, "com.sec.android.app.sbrowser"

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v10, 0x7

    if-lt p1, v10, :cond_28

    const/16 v10, 0x10

    if-gt p1, v10, :cond_28

    .line 482
    :cond_2b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-nez v10, :cond_2c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 483
    :cond_2c
    const/16 v10, 0x1d

    if-lt p1, v10, :cond_2d

    const/16 v10, 0x36

    if-le p1, v10, :cond_2e

    :cond_2d
    const/4 v10, 0x7

    if-lt p1, v10, :cond_2f

    const/16 v10, 0x10

    if-gt p1, v10, :cond_2f

    .line 485
    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 488
    :cond_2f
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_5

    .line 503
    :cond_30
    if-nez v9, :cond_1

    .line 504
    if-eqz v5, :cond_31

    .line 505
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 507
    :cond_31
    const/4 v10, 0x4

    if-ne p1, v10, :cond_33

    .line 508
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v7

    .line 509
    .local v7, "mTipsDialog":Lcom/diotek/ime/framework/view/TipsDialog;
    if-eqz v7, :cond_32

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v10

    if-eqz v10, :cond_32

    .line 510
    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    .line 511
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 513
    :cond_32
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v10

    if-eqz v10, :cond_33

    .line 514
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "description":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v1}, Lcom/diotek/ime/framework/common/InputManager;->sendTalkbackDescription(Ljava/lang/String;)V

    .line 518
    .end local v1    # "description":Ljava/lang/String;
    .end local v7    # "mTipsDialog":Lcom/diotek/ime/framework/view/TipsDialog;
    :cond_33
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V

    .line 519
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 527
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const/high16 v3, 0x656e0000

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    .line 528
    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x6a610000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x7a680000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v2, 0x7a68434e

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v2, 0x7a68484b

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v2, 0x7a685457

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x74680000

    if-eq v1, v2, :cond_2

    const/16 v1, 0xe4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, 0xc1

    if-nez v1, :cond_2

    .line 538
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 565
    :cond_1
    :goto_0
    return v0

    .line 551
    :cond_2
    const/4 v0, 0x0

    .line 561
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 562
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 571
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 577
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const/high16 v6, 0x656e0000

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    .line 578
    if-eq p1, v8, :cond_2

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x6b6f0000

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x6a610000

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x7a680000

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a68434e

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a68484b

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a685457

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-eq v4, v5, :cond_2

    const/16 v4, 0xe4

    if-eq p1, v4, :cond_2

    const/16 v4, 0x3e

    if-ne p1, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit16 v4, v4, 0xc1

    if-nez v4, :cond_2

    .line 589
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 661
    :cond_1
    :goto_0
    return v2

    .line 603
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    if-eqz v4, :cond_3

    .line 604
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    .line 605
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 608
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    if-ne v4, v3, :cond_5

    const/16 v4, 0x11

    if-eq p1, v4, :cond_4

    const/16 v4, 0x12

    if-ne p1, v4, :cond_5

    .line 610
    :cond_4
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    .line 611
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    .line 612
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 615
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 617
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v3, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    if-nez v4, :cond_9

    .line 620
    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    .line 621
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 623
    :cond_6
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    if-nez v4, :cond_7

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    if-nez v4, :cond_7

    .line 624
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 626
    :cond_7
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 627
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    if-eqz v1, :cond_9

    iget v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v4, :cond_8

    iget v4, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v4, :cond_9

    :cond_8
    const/4 v4, 0x7

    if-lt p1, v4, :cond_9

    const/16 v4, 0x10

    if-gt p1, v4, :cond_9

    move v2, v3

    .line 630
    goto :goto_0

    .line 635
    .end local v1    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_9
    const/4 v2, 0x0

    .line 644
    .local v2, "result":Z
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 645
    :cond_a
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 649
    :cond_b
    if-nez v2, :cond_1

    .line 650
    if-ne p1, v8, :cond_c

    .line 652
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendSideSyncKeyCode(I)V

    .line 654
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 655
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    move v2, v3

    .line 656
    goto/16 :goto_0

    .line 659
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "SamsungIME"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 210
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "SamsungIME"

    const-string v1, "onStartInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    .line 215
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->startInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 217
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 11
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 222
    const-string v8, "SamsungIME"

    const-string v9, "onStartInputView"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 227
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_KeepKeypadDuringHwKeyAvailable"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v6, :cond_7

    move v2, v6

    .line 228
    .local v2, "isFolderType":Z
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "com.sec.android.app.sbrowser"

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 230
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    .line 233
    :cond_0
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 234
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8, v7, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    .line 235
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->updateWacomState()V

    .line 238
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isEnabledMagnificationGesture(Landroid/content/Context;)Z

    move-result v8

    if-ne v8, v6, :cond_2

    .line 240
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    .line 241
    .local v1, "inputmodemanager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    .line 243
    .local v0, "currenttype":I
    const/4 v8, 0x7

    if-eq v0, v8, :cond_1

    const/16 v8, 0x8

    if-ne v0, v8, :cond_2

    .line 246
    :cond_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->setQwertyInputMethod()V

    .line 258
    .end local v0    # "currenttype":I
    .end local v1    # "inputmodemanager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    :cond_2
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 259
    .local v4, "sPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 260
    .local v5, "spe":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;-><init>()V

    .line 261
    .local v3, "mSamsungKeypadSettingsFragment":Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 262
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->isPowerSavingModeON(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->isEmergencyModeON(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 264
    :cond_3
    const-string v8, "doing_one_in_power_saving_mode"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_4

    .line 265
    const-string v8, "doing_one_in_power_saving_mode"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v8, "user_choice_to_vibration_on"

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sip_key_feedback_vibration"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "sip_key_feedback_vibration"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    :cond_4
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    :cond_5
    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->startInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 284
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    if-eqz v6, :cond_6

    .line 285
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    .line 287
    :cond_6
    return-void

    .end local v2    # "isFolderType":Z
    .end local v3    # "mSamsungKeypadSettingsFragment":Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
    .end local v4    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v5    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_7
    move v2, v7

    .line 227
    goto/16 :goto_0

    .line 274
    .restart local v2    # "isFolderType":Z
    .restart local v3    # "mSamsungKeypadSettingsFragment":Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
    .restart local v4    # "sPrefs":Landroid/content/SharedPreferences;
    .restart local v5    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_8
    const-string v8, "doing_one_in_power_saving_mode"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 275
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sip_key_feedback_vibration"

    const-string v10, "user_choice_to_vibration_on"

    invoke-interface {v4, v10, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    const-string v6, "doing_one_in_power_saving_mode"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 787
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMeomory Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sparse-switch p1, :sswitch_data_0

    .line 802
    :sswitch_0
    return-void

    .line 789
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 719
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 720
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SK] <onUpdateSelection> oldSelStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldSelEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSelStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSelEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", candidatesStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", candidatesEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSelection(IIIIII)V

    .line 726
    return-void
.end method

.method public onViewClicked(Z)V
    .locals 2
    .param p1, "focusChanged"    # Z

    .prologue
    .line 730
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "SamsungIME"

    const-string v1, "onViewClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 734
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->viewClicked(Z)V

    .line 737
    :cond_1
    return-void
.end method

.method public onWindowHidden()V
    .locals 2

    .prologue
    .line 666
    const-string v0, "SamsungIME"

    const-string v1, "onWindowHidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->windowHidden()V

    .line 668
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setIsMovable(Z)V

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    .line 670
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 671
    return-void
.end method

.method public onWindowShown()V
    .locals 2

    .prologue
    .line 676
    const-string v0, "SamsungIME"

    const-string v1, "onWindowShown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->sendTalkbackDescriptionOnWindowShown()V

    .line 678
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setIsMovable(Z)V

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    .line 680
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 681
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 169
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    .line 171
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "decorView":Landroid/view/View;
    const v3, 0x102001d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    .line 173
    const v3, 0x102001c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    .line 174
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setExtractArea(Landroid/view/View;)V

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v2, "fl_cand":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    instance-of v3, p1, Lcom/diotek/ime/framework/view/PopupCandidateView;

    if-nez v3, :cond_1

    .line 184
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    .line 185
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setBackingView(Landroid/view/View;)V

    .line 186
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v1, "fl":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x40400000

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .end local v1    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .restart local v1    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v3, v4

    .line 190
    goto :goto_0
.end method

.method public setCandidatesViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 685
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 686
    return-void
.end method

.method public updateFullscreenMode()V
    .locals 2

    .prologue
    .line 690
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 692
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
