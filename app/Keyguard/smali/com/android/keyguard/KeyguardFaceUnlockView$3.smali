.class Lcom/android/keyguard/KeyguardFaceUnlockView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 345
    :cond_11
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 6
    .param p1, "showing"    # Z

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "wasShowing":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$600(Lcom/android/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 326
    :try_start_8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$700(Lcom/android/keyguard/KeyguardFaceUnlockView;)Z

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # setter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$702(Lcom/android/keyguard/KeyguardFaceUnlockView;Z)Z

    .line 328
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_38

    .line 329
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$800(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 331
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 332
    if-nez p1, :cond_3b

    if-eqz v1, :cond_3b

    .line 333
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 338
    :cond_37
    :goto_37
    return-void

    .line 328
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2

    .line 334
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_3b
    if-eqz p1, :cond_37

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_37

    if-nez v1, :cond_37

    .line 335
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    goto :goto_37
.end method

.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 278
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 285
    :cond_14
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$400(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 287
    const/4 v0, 0x2

    if-ne p1, v0, :cond_39

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_38
    :goto_38
    return-void

    .line 290
    :cond_39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$400(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_38

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38
.end method

.method public onUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 312
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Biometric unlock not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 314
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 315
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Starting biometric face unlock!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 319
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_2f
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 306
    :cond_11
    return-void
.end method
