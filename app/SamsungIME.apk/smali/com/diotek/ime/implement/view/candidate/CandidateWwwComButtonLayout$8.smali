.class Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;
.super Ljava/lang/Object;
.source "CandidateWwwComButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->setButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/16 v6, 0x27

    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 250
    .local v0, "action":I
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1600(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1800(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 265
    .local v1, "candidateHeight":I
    const/4 v2, 0x0

    .line 266
    .local v2, "y":I
    int-to-float v3, v2

    int-to-float v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    int-to-float v4, v2

    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 268
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1900(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 296
    .end local v1    # "candidateHeight":I
    .end local v2    # "y":I
    :cond_0
    :goto_1
    return v7

    .line 254
    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 260
    :pswitch_3
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 273
    :cond_1
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 280
    :pswitch_5
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 275
    :pswitch_6
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 276
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 277
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 283
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 284
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 286
    invoke-virtual {p1, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 288
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 273
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
