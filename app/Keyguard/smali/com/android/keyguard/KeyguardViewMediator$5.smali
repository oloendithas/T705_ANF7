.class Lcom/android/keyguard/KeyguardViewMediator$5;
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
    .line 1871
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 1874
    const-string v7, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 1875
    const-string v6, "seq"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1876
    .local v5, "sequence":I
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDelayedShowingSequence = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v7

    .line 1879
    :try_start_40
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v6

    if-ne v6, v5, :cond_88

    .line 1881
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$1202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 1883
    sget-boolean v6, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v6, :cond_99

    .line 1884
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1885
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$1202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 1886
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_8a

    .line 1888
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v6

    if-eqz v6, :cond_83

    .line 1889
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 1890
    .local v0, "State":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_83

    .line 1891
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v6

    if-nez v6, :cond_83

    .line 1892
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$1202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 1897
    .end local v0    # "State":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_83
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1908
    :cond_88
    :goto_88
    monitor-exit v7

    .line 2070
    .end local v5    # "sequence":I
    :cond_89
    :goto_89
    return-void

    .line 1899
    .restart local v5    # "sequence":I
    :cond_8a
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1900
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v8, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_88

    .line 1908
    :catchall_96
    move-exception v6

    monitor-exit v7
    :try_end_98
    .catchall {:try_start_40 .. :try_end_98} :catchall_96

    throw v6

    .line 1904
    :cond_99
    :try_start_99
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_96

    goto :goto_88

    .line 1911
    .end local v5    # "sequence":I
    :cond_9f
    const-string v7, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 1913
    const-string v6, "KeyguardViewMediator"

    const-string v7, "FMM_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 1915
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1921
    :goto_bf
    const-string v6, "KeyguardViewMediator"

    const-string v7, "wakeUp device!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_89

    .line 1917
    :cond_d4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1918
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_bf

    .line 1923
    :cond_df
    const-string v7, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_124

    .line 1924
    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock FMM unlockscreen!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 1926
    .local v2, "isSecure":Z
    if-nez v2, :cond_119

    .line 1927
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 1933
    :goto_103
    const-string v6, "KeyguardViewMediator"

    const-string v7, "wakeUp device!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_89

    .line 1929
    :cond_119
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1930
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_103

    .line 1937
    .end local v2    # "isSecure":Z
    :cond_124
    const-string v7, "com.sec.android.Keyguard.SIDE_TOUCH_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_146

    .line 1938
    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock SIDE_UNLOCK unlockscreen!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v7

    if-nez v7, :cond_89

    .line 1940
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_89

    .line 1944
    :cond_146
    const-string v7, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_174

    .line 1945
    const-string v6, "KeyguardViewMediator"

    const-string v7, "CARRIER_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_168

    .line 1947
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_89

    .line 1949
    :cond_168
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1950
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_89

    .line 1952
    :cond_174
    const-string v7, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a6

    .line 1953
    const-string v7, "KeyguardViewMediator"

    const-string v8, "received intent to unlock FLP!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 1955
    .restart local v2    # "isSecure":Z
    if-nez v2, :cond_19a

    .line 1956
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_89

    .line 1958
    :cond_19a
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1959
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_89

    .line 1961
    .end local v2    # "isSecure":Z
    :cond_1a6
    const-string v7, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d4

    .line 1962
    const-string v6, "KeyguardViewMediator"

    const-string v7, "CARRIER_FLPP_LOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1c8

    .line 1964
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_89

    .line 1966
    :cond_1c8
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1967
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_89

    .line 1969
    :cond_1d4
    const-string v7, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20f

    .line 1970
    const-string v7, "KeyguardViewMediator"

    const-string v8, "CARRIER_FLPP_UNLOCKED_ACTION intent is received."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSKTPassword(Ljava/lang/String;)V

    .line 1972
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 1973
    .restart local v2    # "isSecure":Z
    if-nez v2, :cond_203

    .line 1974
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_89

    .line 1976
    :cond_203
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 1977
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_89

    .line 1980
    .end local v2    # "isSecure":Z
    :cond_20f
    const-string v7, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_231

    .line 1982
    const-string v7, "KeyguardViewMediator"

    const-string v8, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 1984
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_89

    .line 1987
    :cond_231
    const-string v7, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_266

    .line 1988
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 1989
    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 1991
    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    .line 1992
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_25f

    .line 1993
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_89

    .line 1995
    :cond_25f
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_89

    .line 1998
    :cond_266
    const-string v7, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29b

    .line 1999
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 2000
    const-string v7, "KeyguardViewMediator"

    const-string v8, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 2002
    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    .line 2003
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_294

    .line 2004
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_89

    .line 2006
    :cond_294
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_89

    .line 2009
    :cond_29b
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33d

    .line 2010
    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2012
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v7, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 2013
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_334

    if-eqz v1, :cond_334

    .line 2014
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32b

    .line 2015
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$3202(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2016
    const-string v7, "android.bluetooth.device.extra.LINKTYPE"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2017
    .local v3, "linktype":I
    if-ne v3, v6, :cond_89

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v6

    if-eqz v6, :cond_89

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v6

    if-nez v6, :cond_89

    .line 2019
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2020
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 2021
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_89

    .line 2024
    .end local v3    # "linktype":I
    :cond_32b
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_ACL_DISCONNECTED : mWearabledevice =/= device !!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_89

    .line 2027
    :cond_334
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_ACL_DISCONNECTED : mWearabledevice or device is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_89

    .line 2030
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_33d
    const-string v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37c

    .line 2031
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2033
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v6, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 2034
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$3202(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_89

    .line 2036
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_37c
    const-string v7, "com.samsung.pen.INSERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e4

    .line 2037
    const-string v7, "penInsert"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2038
    .local v4, "penInsert":Z
    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " penInsert = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    if-nez v4, :cond_89

    .line 2047
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-nez v7, :cond_3d2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v7

    if-eqz v7, :cond_3d3

    :cond_3d2
    move v2, v6

    .line 2049
    .restart local v2    # "isSecure":Z
    :cond_3d3
    if-nez v2, :cond_89

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_89

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v7, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_89

    .line 2052
    .end local v2    # "isSecure":Z
    .end local v4    # "penInsert":Z
    :cond_3e4
    const-string v7, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41f

    .line 2054
    const-string v6, "KeyguardViewMediator"

    const-string v7, "EmergencyMode intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_409

    .line 2056
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 2057
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v6, v10}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 2059
    :cond_409
    const-string v6, "KeyguardViewMediator"

    const-string v7, "wakeUp device!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_89

    .line 2061
    :cond_41f
    const-string v7, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_437

    const-string v7, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_440

    .line 2062
    :cond_437
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    goto/16 :goto_89

    .line 2063
    :cond_440
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_453

    .line 2064
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleAirplaneMode()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_89

    .line 2065
    :cond_453
    const-string v7, "com.android.keyguard.action.flight_mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_466

    .line 2066
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleShowAirplaneConfirmDialog()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_89

    .line 2067
    :cond_466
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_89

    .line 2068
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->buildDisableDialog()V
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$3500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_89
.end method
