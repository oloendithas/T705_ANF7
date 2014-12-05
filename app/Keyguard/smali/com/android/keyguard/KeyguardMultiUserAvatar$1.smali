.class Lcom/android/keyguard/KeyguardMultiUserAvatar$1;
.super Ljava/lang/Object;
.source "KeyguardMultiUserAvatar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field final synthetic val$active:Z

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$initAlpha:F

.field final synthetic val$initScale:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFZ)V
    .registers 7

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    iput p3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    iput p4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    iput p5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    iput-boolean p6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000

    .line 348
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 349
    .local v1, "r":F
    sub-float v3, v5, v1

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 350
    .local v2, "scale":F
    sub-float v3, v5, v1

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    mul-float/2addr v4, v1

    add-float v0, v3, v4

    .line 353
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setScale(F)V

    .line 354
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$active:Z

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setActive(Z)V

    .line 355
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 357
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 358
    return-void
.end method
