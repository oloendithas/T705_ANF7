.class public Lcom/android/keyguard/KeyguardFaceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLastRotation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    .line 60
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    .line 63
    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$1;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 273
    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$3;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardFaceUnlockView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardFaceUnlockView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardFaceUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardFaceUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initializeBiometricUnlockView()V
    .registers 3

    .prologue
    .line 211
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 213
    new-instance v0, Lcom/android/keyguard/FaceUnlock;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/FaceUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    .line 215
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardFaceUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$2;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :goto_2b
    return-void

    .line 223
    :cond_2c
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private maybeStartBiometricUnlock()V
    .registers 7

    .prologue
    .line 234
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v4, :cond_2f

    .line 235
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 236
    .local v2, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_30

    const/4 v0, 0x1

    .line 239
    .local v0, "backupIsTimedOut":Z
    :goto_12
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 243
    .local v3, "powerManager":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 244
    :try_start_1f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 245
    .local v1, "isShowing":Z
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_32

    .line 250
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-nez v1, :cond_35

    .line 251
    :cond_2a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 271
    .end local v0    # "backupIsTimedOut":Z
    .end local v1    # "isShowing":Z
    .end local v2    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_2f
    :goto_2f
    return-void

    .line 236
    .restart local v2    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_30
    const/4 v0, 0x0

    goto :goto_12

    .line 245
    .restart local v0    # "backupIsTimedOut":Z
    .restart local v3    # "powerManager":Landroid/os/PowerManager;
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v4

    .line 262
    .restart local v1    # "isShowing":Z
    :cond_35
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_4f

    if-nez v0, :cond_4f

    .line 266
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_2f

    .line 268
    :cond_4f
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_2f
.end method


# virtual methods
.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 362
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_9

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 144
    :cond_9
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 145
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_22

    .line 147
    :try_start_18
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    .line 153
    :cond_22
    :goto_22
    return-void

    .line 149
    :catch_23
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 92
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 93
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_57

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_e
    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->initializeBiometricUnlockView()V

    .line 98
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 99
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    .line 100
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_32

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 106
    :cond_32
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 107
    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/EmergencyCircleView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    .line 108
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 110
    :cond_56
    return-void

    .line 93
    .end local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_57
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_e
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 205
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 207
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_9

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 161
    :cond_9
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 162
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_22

    .line 164
    :try_start_18
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    .line 170
    :cond_22
    :goto_22
    return-void

    .line 166
    :catch_23
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public onResume(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 175
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 176
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 177
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    .line 179
    :cond_1b
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 183
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-nez v1, :cond_37

    .line 185
    :try_start_2a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_38

    .line 191
    :cond_37
    :goto_37
    return-void

    .line 187
    :catch_38
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when adding rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 127
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_28

    .line 129
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 130
    .local v0, "phoneState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 131
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .end local v0    # "phoneState":I
    :cond_28
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/FaceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/FaceUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 117
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 356
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 350
    return-void
.end method
