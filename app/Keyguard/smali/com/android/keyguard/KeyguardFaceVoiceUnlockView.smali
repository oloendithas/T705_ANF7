.class public Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;
    }
.end annotation


# instance fields
.field private final MSG_HIDE_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

.field private final MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

.field private mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

.field private mErrorShowed:Z

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLastRotation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mMsg:Landroid/widget/TextView;

.field private mMsg2:Landroid/widget/TextView;

.field private mResId:I

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mStatusImg:Landroid/widget/ImageView;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

.field private mVolumeImg:Landroid/widget/ImageView;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    .line 65
    iput v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mResId:I

    .line 67
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 70
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT:I

    .line 71
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

    .line 72
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

    .line 73
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

    .line 74
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->MSG_HIDE_VOICE_LAYOUT:I

    .line 75
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

    .line 83
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    .line 86
    new-instance v0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$1;-><init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 235
    new-instance v0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;-><init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    .line 468
    new-instance v0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$4;-><init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayPrepareMsg()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsg()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifySuccessMsg()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->hideVoiceLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method private displayPrepareMsg()V
    .registers 3

    .prologue
    .line 158
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayPrepareMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method

.method private displayVerifyFailMsg()V
    .registers 5

    .prologue
    .line 184
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayVerifyFailMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    return-void
.end method

.method private displayVerifyFailMsgDelayed(J)V
    .registers 6
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 174
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayVerifyFailMsgDelayed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    return-void
.end method

.method private displayVerifySuccessMsg()V
    .registers 3

    .prologue
    .line 194
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayVerifySuccessMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    return-void
.end method

.method private hideVoiceLayout()V
    .registers 3

    .prologue
    .line 203
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "hideVoiceLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    return-void
.end method

.method private initializeBiometricUnlockView()V
    .registers 4

    .prologue
    .line 405
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "initializeBiometricUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 408
    new-instance v0, Lcom/android/keyguard/FaceVoiceUnlock;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/FaceVoiceUnlock;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    .line 410
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$3;-><init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    :goto_34
    return-void

    .line 418
    :cond_35
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private maybeStartBiometricUnlock()V
    .registers 7

    .prologue
    .line 428
    const-string v4, "FULKeyguardFaceUnlockView"

    const-string v5, "maybeStartBiometricUnlock()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v4, :cond_36

    .line 430
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 431
    .local v2, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_37

    const/4 v0, 0x1

    .line 434
    .local v0, "backupIsTimedOut":Z
    :goto_19
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 438
    .local v3, "powerManager":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 439
    :try_start_26
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 440
    .local v1, "isShowing":Z
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39

    .line 445
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_31

    if-nez v1, :cond_3c

    .line 446
    :cond_31
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 466
    .end local v0    # "backupIsTimedOut":Z
    .end local v1    # "isShowing":Z
    .end local v2    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_36
    :goto_36
    return-void

    .line 431
    .restart local v2    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_37
    const/4 v0, 0x0

    goto :goto_19

    .line 440
    .restart local v0    # "backupIsTimedOut":Z
    .restart local v3    # "powerManager":Landroid/os/PowerManager;
    :catchall_39
    move-exception v4

    :try_start_3a
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v4

    .line 457
    .restart local v1    # "isShowing":Z
    :cond_3c
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_56

    if-nez v0, :cond_56

    .line 461
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_36

    .line 463
    :cond_56
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_36
.end method

.method private removeWakeupCmdDisplayMessages()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 118
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_36

    .line 141
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_d
    return v0

    .line 120
    :pswitch_e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->setPrepareMsg()V

    .line 144
    :goto_16
    const/4 v0, 0x1

    goto :goto_d

    .line 125
    :pswitch_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 128
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->setRecognitionMsg()V

    .line 129
    const-wide/16 v0, 0x1770

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsgDelayed(J)V

    goto :goto_16

    .line 132
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->setErrorMsg()V

    goto :goto_16

    .line 135
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->setSuccessMsg()V

    goto :goto_16

    .line 138
    :pswitch_30
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->updateVolumeBg(I)V

    goto :goto_16

    .line 118
    :pswitch_data_36
    .packed-switch 0xa
        :pswitch_e
        :pswitch_1f
        :pswitch_28
        :pswitch_2c
        :pswitch_18
        :pswitch_30
    .end packed-switch
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 545
    return-void
.end method

.method public isErrorShowed()Z
    .registers 2

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 334
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onDetachedFromWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_17

    .line 336
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v1, Lcom/android/keyguard/FaceVoiceUnlock;

    invoke-virtual {v1}, Lcom/android/keyguard/FaceVoiceUnlock;->cleanUp()V

    .line 339
    :cond_17
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 340
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_30

    .line 342
    :try_start_26
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 343
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31

    .line 348
    :cond_30
    :goto_30
    return-void

    .line 344
    :catch_31
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 280
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 281
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_8e

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_e
    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 284
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->initializeBiometricUnlockView()V

    .line 286
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 287
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    .line 288
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_32

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 293
    :cond_32
    const v1, 0x7f0b0050

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    .line 294
    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    .line 296
    const v1, 0x7f0b0053

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    .line 297
    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    .line 300
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 301
    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/EmergencyCircleView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    .line 302
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 304
    :cond_8d
    return-void

    .line 281
    .end local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_8e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_e
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 400
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 402
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 352
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_10

    .line 354
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 356
    :cond_10
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 357
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_29

    .line 359
    :try_start_1f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_29} :catch_2a

    .line 365
    :cond_29
    :goto_29
    return-void

    .line 361
    :catch_2a
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onResume(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 369
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 371
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_22

    .line 372
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V

    .line 374
    :cond_22
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 378
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z

    if-nez v1, :cond_3e

    .line 380
    :try_start_31
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_3f

    .line 386
    :cond_3e
    :goto_3e
    return-void

    .line 382
    :catch_3f
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when adding rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 321
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 322
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_28

    .line 323
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 324
    .local v0, "phoneState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 325
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .end local v0    # "phoneState":I
    :cond_28
    return-void
.end method

.method public setErrorMsg()V
    .registers 3

    .prologue
    .line 564
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "setErrorMsg() mErrorShowed=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/FaceVoiceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/FaceVoiceUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 311
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 316
    return-void
.end method

.method public setPrepareMsg()V
    .registers 3

    .prologue
    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 549
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 551
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x7f06010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    return-void
.end method

.method public setRecognitionMsg()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    return-void
.end method

.method public setSuccessMsg()V
    .registers 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x7f060109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 539
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 533
    return-void
.end method

.method public updateVolume(I)V
    .registers 6
    .param p1, "volume"    # I

    .prologue
    .line 212
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "updateVolume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method public updateVolumeBg(I)V
    .registers 6
    .param p1, "rmsValue"    # I

    .prologue
    .line 579
    iget v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mResId:I

    if-eq v1, p1, :cond_34

    .line 580
    const-string v1, "FULKeyguardFaceUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolumeBg("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "img":I
    const/16 v1, 0x1c

    if-ge p1, v1, :cond_35

    .line 585
    const v0, 0x7f02011a

    .line 628
    :goto_2a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 631
    .end local v0    # "img":I
    :cond_34
    return-void

    .line 586
    .restart local v0    # "img":I
    :cond_35
    const/16 v1, 0x1f

    if-ge p1, v1, :cond_3d

    .line 587
    const v0, 0x7f02011b

    goto :goto_2a

    .line 588
    :cond_3d
    const/16 v1, 0x22

    if-ge p1, v1, :cond_45

    .line 589
    const v0, 0x7f020126

    goto :goto_2a

    .line 590
    :cond_45
    const/16 v1, 0x25

    if-ge p1, v1, :cond_4d

    .line 591
    const v0, 0x7f020128

    goto :goto_2a

    .line 592
    :cond_4d
    const/16 v1, 0x28

    if-ge p1, v1, :cond_55

    .line 593
    const v0, 0x7f020129

    goto :goto_2a

    .line 594
    :cond_55
    const/16 v1, 0x2b

    if-ge p1, v1, :cond_5d

    .line 595
    const v0, 0x7f02012a

    goto :goto_2a

    .line 596
    :cond_5d
    const/16 v1, 0x2e

    if-ge p1, v1, :cond_65

    .line 597
    const v0, 0x7f02012b

    goto :goto_2a

    .line 598
    :cond_65
    const/16 v1, 0x31

    if-ge p1, v1, :cond_6d

    .line 599
    const v0, 0x7f02012c

    goto :goto_2a

    .line 600
    :cond_6d
    const/16 v1, 0x34

    if-ge p1, v1, :cond_75

    .line 601
    const v0, 0x7f02012d

    goto :goto_2a

    .line 602
    :cond_75
    const/16 v1, 0x37

    if-ge p1, v1, :cond_7d

    .line 603
    const v0, 0x7f02012e

    goto :goto_2a

    .line 604
    :cond_7d
    const/16 v1, 0x3a

    if-ge p1, v1, :cond_85

    .line 605
    const v0, 0x7f02011c

    goto :goto_2a

    .line 606
    :cond_85
    const/16 v1, 0x3d

    if-ge p1, v1, :cond_8d

    .line 607
    const v0, 0x7f02011d

    goto :goto_2a

    .line 608
    :cond_8d
    const/16 v1, 0x40

    if-ge p1, v1, :cond_95

    .line 609
    const v0, 0x7f02011e

    goto :goto_2a

    .line 610
    :cond_95
    const/16 v1, 0x43

    if-ge p1, v1, :cond_9d

    .line 611
    const v0, 0x7f02011f

    goto :goto_2a

    .line 612
    :cond_9d
    const/16 v1, 0x46

    if-ge p1, v1, :cond_a5

    .line 613
    const v0, 0x7f020120

    goto :goto_2a

    .line 614
    :cond_a5
    const/16 v1, 0x49

    if-ge p1, v1, :cond_ae

    .line 615
    const v0, 0x7f020121

    goto/16 :goto_2a

    .line 616
    :cond_ae
    const/16 v1, 0x4c

    if-ge p1, v1, :cond_b7

    .line 617
    const v0, 0x7f020122

    goto/16 :goto_2a

    .line 618
    :cond_b7
    const/16 v1, 0x4f

    if-ge p1, v1, :cond_c0

    .line 619
    const v0, 0x7f020123

    goto/16 :goto_2a

    .line 620
    :cond_c0
    const/16 v1, 0x52

    if-ge p1, v1, :cond_c9

    .line 621
    const v0, 0x7f020124

    goto/16 :goto_2a

    .line 622
    :cond_c9
    const/16 v1, 0x55

    if-ge p1, v1, :cond_d2

    .line 623
    const v0, 0x7f020125

    goto/16 :goto_2a

    .line 625
    :cond_d2
    const v0, 0x7f020127

    goto/16 :goto_2a
.end method
