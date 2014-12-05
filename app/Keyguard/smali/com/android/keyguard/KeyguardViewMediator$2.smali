.class Lcom/android/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 2

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doKeyguardLocked()V
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 734
    return-void
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .registers 4
    .param p1, "authenticated"    # Z

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 700
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 704
    return-void
.end method

.method public keyguardDonePending()V
    .registers 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1902(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 719
    return-void
.end method

.method public keyguardGone()V
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 724
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    .line 714
    return-void
.end method

.method public resetStateLocked(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 744
    return-void
.end method

.method public setNeedsInput(Z)V
    .registers 3
    .param p1, "needsInput"    # Z

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    .line 709
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 692
    return-void
.end method

.method public userActivity(J)V
    .registers 4
    .param p1, "holdMs"    # J

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 696
    return-void
.end method
