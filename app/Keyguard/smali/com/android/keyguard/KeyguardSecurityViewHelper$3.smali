.class final Lcom/android/keyguard/KeyguardSecurityViewHelper$3;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$Anim:Landroid/view/animation/ScaleAnimation;

.field final synthetic val$animationView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V
    .registers 3

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;->val$animationView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;->val$Anim:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;->val$animationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;->val$Anim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    return-void
.end method
