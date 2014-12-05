.class final Lcom/android/keyguard/KeyguardSecurityViewHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ecaView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;->val$ecaView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 60
    const/4 v0, 0x1

    # setter for: Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->access$002(Z)Z

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;->val$ecaView:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 62
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;->val$ecaView:Landroid/view/View;

    # getter for: Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void

    .line 65
    :cond_d
    const/4 v0, 0x4

    goto :goto_9
.end method
