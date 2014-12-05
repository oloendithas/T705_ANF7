.class Lcom/android/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;

.field final synthetic val$spassEcaButton:Landroid/view/View;

.field final synthetic val$spassPlmn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSecurityView(I)V
    .registers 4
    .param p1, "duration"    # I

    .prologue
    const/4 v1, 0x4

    .line 859
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 860
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 862
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 866
    :cond_2e
    return-void
.end method

.method public showSecurityView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 870
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 871
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 872
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 873
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassPlmn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->val$spassEcaButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mCarrierText:Lcom/android/keyguard/CarrierText;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 877
    :cond_2e
    return-void
.end method

.method public showUnlockHint()V
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 882
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSelectorView;->showUsabilityHint()V

    .line 884
    :cond_11
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_d

    .line 889
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 891
    :cond_d
    return-void
.end method
