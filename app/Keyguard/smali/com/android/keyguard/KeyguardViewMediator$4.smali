.class Lcom/android/keyguard/KeyguardViewMediator$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


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
    .line 1829
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1834
    const-string v2, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1836
    const-string v2, "verify_sim_pin"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1840
    .local v1, "verifySimPin":Z
    if-eqz v1, :cond_3a

    .line 1841
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1842
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1867
    .end local v1    # "verifySimPin":Z
    :cond_2f
    :goto_2f
    return-void

    .line 1844
    .restart local v1    # "verifySimPin":Z
    :cond_30
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_2f

    .line 1848
    :cond_3a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 1849
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_2f

    .line 1852
    .end local v1    # "verifySimPin":Z
    :cond_4a
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1853
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1854
    const-string v2, "KeyguardViewMediator"

    const-string v3, "dpc"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    .line 1856
    .local v0, "isSecure":Z
    if-nez v0, :cond_8b

    .line 1857
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v4, v4}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 1858
    const-string v2, "KeyguardViewMediator"

    const-string v3, "wakeUp device!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_2f

    .line 1861
    :cond_8b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1862
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_2f
.end method
