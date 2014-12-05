.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$nextView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    iput-object p2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;->val$nextView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;->val$currentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 387
    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 388
    .local v0, "alpha":Ljava/lang/Float;
    if-nez v0, :cond_b

    .line 393
    :goto_a
    return-void

    .line 391
    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;->val$nextView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;->val$currentView:Landroid/view/View;

    const/high16 v2, 0x3f800000

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a
.end method
