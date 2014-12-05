.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAnimation(ZIILandroid/content/pm/UserInfo;)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field final synthetic val$expanding:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Z)V
    .registers 3

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->val$expanding:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$000(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->val$expanding:Z

    if-nez v0, :cond_1d

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$000(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    :cond_1d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 258
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$000(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 254
    return-void
.end method
