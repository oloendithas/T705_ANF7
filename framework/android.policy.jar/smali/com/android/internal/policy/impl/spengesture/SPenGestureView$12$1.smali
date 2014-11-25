.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;)V
    .registers 2

    .prologue
    .line 2650
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2678
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    .line 2657
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2658
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2660
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->val$key:I

    packed-switch v0, :pswitch_data_4a

    .line 2670
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2671
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2673
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    .line 2674
    return-void

    .line 2662
    :pswitch_37
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/16 v1, 0x52

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    goto :goto_1d

    .line 2665
    :pswitch_41
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12$1;->this$1:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    goto :goto_1d

    .line 2660
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_41
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2682
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2653
    return-void
.end method
