.class Lcom/android/systemui/statusbar/phone/PanelView$3;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 403
    .local v8, "pointerIndex":I
    if-gez v8, :cond_0

    .line 404
    const/4 v8, 0x0

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$402(Lcom/android/systemui/statusbar/phone/PanelView;I)I

    .line 407
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 408
    .local v14, "y":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    sub-float v9, v16, v17

    .line 409
    .local v9, "rawDelta":F
    add-float v10, v14, v9

    .line 414
    .local v10, "rawY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$500(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 541
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v16, 0x1

    return v16

    .line 418
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$602(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setPressed(Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mSecHandleView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setPressed(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleBottom:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleBottom:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setPressed(Z)V

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->postInvalidate()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->obtain()Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v17

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1002(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    # invokes: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1100(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->cancel()V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$500(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v17

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v10, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v18

    sub-float v17, v17, v18

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1202(Lcom/android/systemui/statusbar/phone/PanelView;F)F

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1402(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)V

    goto/16 :goto_0

    .line 440
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 441
    .local v11, "upPointer":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v11, :cond_1

    .line 443
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v11, :cond_3

    const/4 v5, 0x0

    .line 444
    .local v5, "newIndex":I
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 445
    .local v7, "newY":F
    add-float v6, v7, v9

    .line 446
    .local v6, "newRawY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$402(Lcom/android/systemui/statusbar/phone/PanelView;I)I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$500(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v17

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v18

    sub-float v17, v17, v18

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1202(Lcom/android/systemui/statusbar/phone/PanelView;F)F

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v7, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_0

    .line 443
    .end local v5    # "newIndex":I
    .end local v6    # "newRawY":F
    .end local v7    # "newY":F
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 454
    .end local v11    # "upPointer":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 455
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mQuickpanelAnimationStopWorkaround:Z

    if-nez v16, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->cancel()V

    .line 458
    :cond_4
    sget-object v16, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v17, "Stop Anim."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$500(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v16

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v10, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v17

    sub-float v3, v16, v17

    .line 462
    .local v3, "h":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v16

    cmpl-float v16, v3, v16

    if-lez v16, :cond_7

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->cancel()V

    .line 466
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1402(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 468
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 473
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    # invokes: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1100(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 478
    .end local v3    # "h":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v14, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$602(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$402(Lcom/android/systemui/statusbar/phone/PanelView;I)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setPressed(Z)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mSecHandleView:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setPressed(Z)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleBottom:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_9

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleBottom:Landroid/view/View;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setPressed(Z)V

    .line 488
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->postInvalidate()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    # invokes: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1100(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    .line 492
    const/4 v12, 0x0

    .local v12, "vel":F
    const/4 v15, 0x0

    .local v15, "yVel":F
    const/4 v13, 0x0

    .line 493
    .local v13, "xVel":F
    const/4 v4, 0x0

    .line 495
    .local v4, "negative":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v16

    if-eqz v16, :cond_d

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v16

    const-wide/16 v17, 0x3e8

    invoke-virtual/range {v16 .. v18}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->computeCurrentVelocity(J)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getYVelocity()F

    move-result v15

    .line 500
    const/16 v16, 0x0

    cmpg-float v16, v15, v16

    if-gez v16, :cond_11

    const/4 v4, 0x1

    .line 502
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getXVelocity()F

    move-result v13

    .line 503
    const/16 v16, 0x0

    cmpg-float v16, v13, v16

    if-gez v16, :cond_a

    .line 504
    neg-float v13, v13

    .line 506
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v16

    cmpl-float v16, v13, v16

    if-lez v16, :cond_b

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v13

    .line 510
    :cond_b
    float-to-double v0, v15

    move-wide/from16 v16, v0

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2000(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v16

    cmpl-float v16, v12, v16

    if-lez v16, :cond_c

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2000(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v12

    .line 515
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->recycle()V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    invoke-static/range {v16 .. v17}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1002(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 521
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 522
    .local v2, "deltaY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2100(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v16

    cmpg-float v16, v2, v16

    if-ltz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PanelView;->access$2200(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v16

    cmpg-float v16, v12, v16

    if-gez v16, :cond_f

    .line 525
    :cond_e
    const/4 v12, 0x0

    .line 528
    :cond_f
    if-eqz v4, :cond_10

    .line 529
    neg-float v12, v12

    .line 537
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto/16 :goto_0

    .line 500
    .end local v2    # "deltaY":F
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
