.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardFadeAnim(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

.field final synthetic val$currentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iput-object p2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->val$currentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onFinishAnimation()V
    .registers 4

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->val$currentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->val$currentView:Landroid/view/View;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 415
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$702(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z

    .line 417
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$502(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 420
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 421
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->onFinishAnimation()V

    .line 407
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;->onFinishAnimation()V

    .line 403
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 410
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 399
    return-void
.end method
