.class Lcom/android/keyguard/KeyguardMultiUserAvatar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMultiUserAvatar.java"


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

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 412
    :cond_9
    return-void
.end method
