.class Lcom/android/keyguard/KeyguardViewStateManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardViewStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewStateManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewStateManager;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager$1;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager$1;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    # getter for: Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 62
    return-void
.end method
