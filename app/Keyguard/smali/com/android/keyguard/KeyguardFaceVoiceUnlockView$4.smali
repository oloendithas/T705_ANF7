.class Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 2

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 7
    .param p1, "showing"    # Z

    .prologue
    .line 513
    const-string v2, "FULKeyguardFaceUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, "wasShowing":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 516
    :try_start_26
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Z

    move-result v1

    .line 517
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # setter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1202(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;Z)Z

    .line 518
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_56

    .line 519
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1300(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 521
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 522
    if-nez p1, :cond_59

    if-eqz v1, :cond_59

    .line 523
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 528
    :cond_55
    :goto_55
    return-void

    .line 518
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2

    .line 524
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_59
    if-eqz p1, :cond_55

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_55

    if-nez v1, :cond_55

    .line 525
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    goto :goto_55
.end method

.method public onPhoneStateChanged(I)V
    .registers 5
    .param p1, "phoneState"    # I

    .prologue
    .line 472
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 480
    :cond_32
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$900(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1000(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 482
    const/4 v0, 0x2

    if-ne p1, v0, :cond_57

    .line 483
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$900(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :cond_56
    :goto_56
    return-void

    .line 485
    :cond_57
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$1000(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_56

    .line 486
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$900(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_56
.end method

.method public onUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 505
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 509
    :cond_2b
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 495
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitching("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 501
    :cond_2f
    return-void
.end method
