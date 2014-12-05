.class Lcom/android/keyguard/KeyguardViewMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
    .line 504
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 594
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 599
    return-void
.end method

.method public onICCCardStateChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "iccStatus"    # Ljava/lang/String;

    .prologue
    .line 676
    const-string v0, "REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 677
    monitor-enter p0

    .line 678
    :try_start_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 683
    :goto_17
    monitor-exit p0

    .line 685
    :cond_18
    return-void

    .line 681
    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_17

    .line 683
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method onPhoneStateChanged(I)V
    .registers 5
    .param p1, "phoneState"    # I

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 573
    if-nez p1, :cond_30

    :try_start_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$900(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$1202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 584
    const-string v0, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 588
    :cond_30
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 603
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardViewMediator$1;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 604
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 6
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "subscription"    # I

    .prologue
    .line 608
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget-object v0, Lcom/android/keyguard/KeyguardViewMediator$11;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e0

    .line 672
    :cond_23
    :goto_23
    return-void

    .line 614
    :pswitch_24
    monitor-enter p0

    .line 615
    :try_start_25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_46

    .line 616
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 617
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 625
    :cond_46
    :goto_46
    monitor-exit p0

    goto :goto_23

    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_48

    throw v0

    .line 622
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_48

    goto :goto_46

    .line 630
    :pswitch_52
    monitor-enter p0

    .line 631
    :try_start_53
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_72

    .line 632
    const-string v0, "KeyguardViewMediator"

    const-string v1, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 638
    :goto_68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 639
    monitor-exit p0

    goto :goto_23

    :catchall_6f
    move-exception v0

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_6f

    throw v0

    .line 636
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_6f

    goto :goto_68

    .line 642
    :pswitch_79
    monitor-enter p0

    .line 643
    :try_start_7a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_94

    .line 644
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 652
    :goto_8f
    monitor-exit p0

    goto :goto_23

    :catchall_91
    move-exception v0

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_7a .. :try_end_93} :catchall_91

    throw v0

    .line 648
    :cond_94
    :try_start_94
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_91

    goto :goto_8f

    .line 655
    :pswitch_a2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 656
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 657
    monitor-enter p0

    .line 658
    :try_start_b5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 659
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 661
    :cond_c4
    monitor-exit p0

    goto/16 :goto_23

    :catchall_c7
    move-exception v0

    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_b5 .. :try_end_c9} :catchall_c7

    throw v0

    .line 664
    :cond_ca
    monitor-enter p0

    .line 665
    :try_start_cb
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 666
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 668
    :cond_d9
    monitor-exit p0

    goto/16 :goto_23

    :catchall_dc
    move-exception v0

    monitor-exit p0
    :try_end_de
    .catchall {:try_start_cb .. :try_end_de} :catchall_dc

    throw v0

    .line 609
    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_79
        :pswitch_a2
    .end packed-switch
.end method

.method public onUserInfoChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 563
    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$800()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onUserInfoChanged(I)V

    .line 568
    :cond_18
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 554
    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$800()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onUserRemoved(I)V

    .line 559
    :cond_21
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 541
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onUserSwitchComplete setting rollup to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$102(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->checkUnlockEffectVarification()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$500(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 548
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onUserSwitched(I)V

    .line 549
    :cond_31
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    .line 511
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 512
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUserSwitching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 514
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 515
    .local v0, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 516
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v6, v6}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 536
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :goto_48
    return-void

    .line 518
    .restart local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_49
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 522
    const-string v2, "KeyguardViewMediator"

    const-string v3, "onUserSwitching returning bcz of rollup."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 527
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_59
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v3

    .line 528
    :try_start_5c
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v4, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v2, v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 529
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 530
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v4, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 531
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 534
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 535
    monitor-exit v3

    goto :goto_48

    :catchall_80
    move-exception v2

    monitor-exit v3
    :try_end_82
    .catchall {:try_start_5c .. :try_end_82} :catchall_80

    throw v2
.end method
