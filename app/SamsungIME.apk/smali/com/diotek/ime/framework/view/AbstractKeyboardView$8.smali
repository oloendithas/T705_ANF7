.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOnScaleEndCalled:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 1

    .prologue
    .line 2584
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 2586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2591
    const/4 v0, 0x0

    .line 2592
    .local v0, "scaleFactor":F
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUseScaleGestureDetector:Z
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2593
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 2595
    :cond_0
    const v3, 0x3f333333

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    const v3, 0x3e99999a

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 2598
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 2599
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 2600
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    .line 2601
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    .line 2602
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    .line 2603
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    .line 2607
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2615
    const/4 v0, 0x0

    .line 2618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2636
    :cond_0
    :goto_0
    return-void

    .line 2630
    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    if-eqz v0, :cond_0

    .line 2632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->mOnScaleEndCalled:Z

    .line 2633
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$8;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0
.end method
