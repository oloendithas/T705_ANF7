.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardResizeAnim(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFadeAnimationStarted:Z

.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

.field final synthetic val$animator:Landroid/animation/ValueAnimator;

.field final synthetic val$currentView:Landroid/view/View;

.field final synthetic val$resizedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iput-object p2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->val$animator:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->val$currentView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->val$resizedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->mIsFadeAnimationStarted:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 318
    const-string v2, "resizeY"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 320
    .local v1, "resizeY":Ljava/lang/Float;
    if-nez v1, :cond_b

    .line 333
    :cond_a
    :goto_a
    return-void

    .line 324
    :cond_b
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 325
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 326
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->mIsFadeAnimationStarted:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->val$currentView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->val$resizedView:Landroid/view/View;

    # invokes: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardFadeAnim(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v2, v3, v4}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$400(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;Landroid/view/View;)V

    .line 331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;->mIsFadeAnimationStarted:Z

    goto :goto_a
.end method
