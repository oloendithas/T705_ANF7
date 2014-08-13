.class public Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;
.super Lcom/diotek/ime/implement/view/HwrKeyboardView;
.source "FullScreenHwrKeyboardView.java"


# instance fields
.field private mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

.field private mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

.field private mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShowRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    .line 21
    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 23
    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mShowRequested:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/implement/view/HwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    .line 21
    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 23
    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mShowRequested:Z

    .line 37
    return-void
.end method

.method private updateFullScreenHwrPanel()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_0
.end method


# virtual methods
.method public hideFullscreenHwrPanel()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mShowRequested:Z

    .line 58
    :cond_0
    return-void
.end method

.method public init(Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;)V
    .locals 6
    .param p1, "fullScreenHwrPanelView"    # Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    iput-object p1, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    invoke-virtual {v0, p0}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->setParentView(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    .line 42
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullScreenHwrPanelView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 51
    return-void

    .line 46
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public invalidateHwrBackgound()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateHwrBackgound()V

    .line 102
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->invalidateHwrBackgound()V

    .line 105
    :cond_0
    return-void
.end method

.method public onHwrPanelLongPressed(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "longpressedPoint"    # Landroid/graphics/Point;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelView:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->onHwrPanelLongPressed(Landroid/graphics/Point;)V

    .line 110
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 63
    if-nez p1, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mShowRequested:Z

    .line 65
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->showFullscreenHwrPanel()V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mShowRequested:Z

    .line 68
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->hideFullscreenHwrPanel()V

    goto :goto_0
.end method

.method public showFullscreenHwrPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissClipboard()V

    .line 75
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mShowRequested:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->mFullScreenHwrPanelWindow:Landroid/widget/PopupWindow;

    const/16 v1, -0x1f4

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->updateFullScreenHwrPanel()V

    .line 83
    :cond_2
    return-void
.end method
