.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardResizeAnim(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onFinishAnimation()V
    .registers 4

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$500(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_16

    .line 360
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 361
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$602(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 366
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 348
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;->onFinishAnimation()V

    .line 351
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;->onFinishAnimation()V

    .line 344
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 355
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 339
    return-void
.end method
