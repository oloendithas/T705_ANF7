.class Lcom/android/keyguard/KeyguardSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSelectorView;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$400(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSelectorView;->access$600(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    .line 100
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$500(Lcom/android/keyguard/KeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSelectorView;->access$600(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    .line 95
    :cond_15
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$000(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v6

    .line 65
    .local v6, "resId":I
    sparse-switch v6, :sswitch_data_70

    .line 89
    :goto_12
    return-void

    .line 67
    :sswitch_13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$200(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "search"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSelectorView;->access$100(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/content/Context;

    move-result-object v5

    const/4 v7, -0x2

    invoke-virtual {v0, v5, v3, v7}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, "assistIntent":Landroid/content/Intent;
    if-eqz v1, :cond_42

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$300(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 75
    :goto_38
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$400(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_12

    .line 73
    :cond_42
    const-string v0, "SecuritySelectorView"

    const-string v2, "Failed to get intent for assist activity"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 79
    .end local v1    # "assistIntent":Landroid/content/Intent;
    :sswitch_4a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$300(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$400(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_12

    .line 85
    :sswitch_5d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$400(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$400(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_12

    .line 65
    :sswitch_data_70
    .sparse-switch
        0x7f0200a0 -> :sswitch_13
        0x7f0200a8 -> :sswitch_4a
        0x7f0200be -> :sswitch_5d
        0x7f0200c1 -> :sswitch_5d
    .end sparse-switch
.end method
