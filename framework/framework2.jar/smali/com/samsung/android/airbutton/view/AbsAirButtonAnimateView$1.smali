.class Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;
.super Ljava/lang/Object;
.source "AbsAirButtonAnimateView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    if-ne v0, v3, :cond_12

    .line 235
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    .line 236
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    # invokes: Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playYPositionAdjustAnimationIfNeeded()V
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->access$000(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V

    .line 240
    :goto_11
    return-void

    .line 238
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    iput-boolean v3, v2, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    iput-boolean v3, v1, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    iput-boolean v3, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    goto :goto_11
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 230
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 227
    return-void
.end method
