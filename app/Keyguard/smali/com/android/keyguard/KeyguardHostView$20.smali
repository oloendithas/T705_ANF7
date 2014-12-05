.class Lcom/android/keyguard/KeyguardHostView$20;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 3056
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSecurityView(I)V
    .registers 4
    .param p1, "duration"    # I

    .prologue
    .line 3059
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3060
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3061
    :cond_12
    return-void
.end method

.method public showSecurityView()V
    .registers 3

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3066
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3067
    :cond_12
    return-void
.end method

.method public showUnlockHint()V
    .registers 2

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3072
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSelectorView;->showUsabilityHint()V

    .line 3074
    :cond_11
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_d

    .line 3079
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$20;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 3081
    :cond_d
    return-void
.end method
