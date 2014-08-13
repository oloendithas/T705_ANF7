.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;->initScaleGestureDetector()V
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
    .line 2508
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 2510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2515
    const/4 v2, 0x0

    .line 2516
    .local v2, "scaleFactor":F
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUseScaleGestureDetector:Z
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$800(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2517
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 2519
    :cond_0
    const v4, 0x3fa66666

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 2520
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2521
    iput-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    .line 2523
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 2524
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 2525
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    .line 2526
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    .line 2527
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4, v7, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    .line 2529
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2530
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2531
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "SETTINGS_DEFAULT_ONE_HAND"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2534
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    .line 2535
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 2536
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->setOneHandLayoutShown()V

    .line 2537
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureEvents:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$902(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    .line 2567
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return v6

    .line 2539
    :cond_2
    const v4, 0x3f333333

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 2540
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsSupportOneHanded:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2543
    iput-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    .line 2545
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 2546
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 2547
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    .line 2548
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    .line 2549
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4, v7, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    .line 2551
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2552
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2553
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "SETTINGS_DEFAULT_ONE_HAND"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2556
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    .line 2557
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    .line 2558
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->setOneHandLayoutShown()V

    .line 2560
    const-string v4, "first_one_handed_execution"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2561
    .local v1, "isFirstExecution":Z
    if-eqz v1, :cond_3

    .line 2562
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->showOneHandedGuideDialog()V

    .line 2564
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # setter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mScaleGestureEvents:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$902(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)Z

    goto/16 :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2572
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$7;->mOnScaleEndCalled:Z

    .line 2578
    return-void
.end method
