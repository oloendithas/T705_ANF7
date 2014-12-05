.class public Lcom/android/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardViewMediator$11;,
        Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;,
        Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field private static OUT_OF_RANGE_ALERT_TIMEOUT:I

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static sIsVzwDevice:Z

.field private static sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;


# instance fields
.field private mAirplaneConfirmDialog:Landroid/app/AlertDialog;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlindLockSoundId:I

.field private mBrilliantRingCutSoundId:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mDelayedShowingSequence:I

.field private final mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mIsRollUp:Z

.field private mIsUsbAlreadyConnected:Z

.field private mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

.field private mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

.field private mLensLockSoundId:I

.field private mLensUnlockSoundId:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedReenableAdbAfterUnlock:Z

.field private mNeedToReshowWhenReenabled:Z

.field private mNoneLockSoundId:I

.field private mNoneUnlockSoundId:I

.field private mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

.field private mPM:Landroid/os/PowerManager;

.field private mParticleLockSoundId:I

.field private mParticleUnlockSoundId:I

.field private mPhoneState:Ljava/lang/String;

.field private mRippleLockSoundId:I

.field private mRippleUnlockSoundId:I

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mScreenOffByProxSensor:Z

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private final mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWearabledevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 357
    const-string v0, "VZW"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 427
    new-instance v0, Lcom/android/keyguard/MultiUserAvatarCache;

    invoke-direct {v0}, Lcom/android/keyguard/MultiUserAvatarCache;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;

    .line 2693
    const/16 v0, 0x7d0

    sput v0, Lcom/android/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    .line 360
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z

    .line 504
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 689
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 748
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 1829
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1871
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2112
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$6;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    .line 2696
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    .line 2706
    new-instance v0, Lcom/android/keyguard/KeyguardViewMediator$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 832
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 835
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v9

    .line 836
    .local v9, "mSavedPriority":I
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 840
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->loadWholeKeyguardLocalConfig(Landroid/content/Context;)V

    .line 841
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->loadSCafeConfig(Landroid/content/Context;)V

    .line 843
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 844
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 846
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 848
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "show keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 849
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 852
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 853
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 855
    const-string v0, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    const-string v0, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    :cond_e1
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v0, "com.sec.android.Keyguard.SIDE_TOUCH_UNLOCK"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v0, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v0, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v0, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v0, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 882
    const-string v0, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    const-string v0, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string v0, "android.settings.POWERSAVING_AUTO_ENABLE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v0, "com.android.keyguard.action.flight_mode"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 892
    sget-boolean v0, Lcom/android/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v0, :cond_153

    .line 893
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/keyguard/KeyguardViewMediator$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 897
    :cond_153
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 898
    .local v10, "smartUnlockFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string v0, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string v0, "android.bluetooth.device.action.RSSI"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    const-string v0, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.sec.android.permission.SMART_UNLOCK"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 905
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 907
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 909
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 913
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 914
    .local v3, "edmFilter":Landroid/content/IntentFilter;
    const-string v0, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 915
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 919
    if-eqz p2, :cond_348

    .end local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_1a9
    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 921
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 924
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1c1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_351

    :cond_1c1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_351

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_351

    const/4 v0, 0x1

    :goto_1d0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 927
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 929
    .local v12, "wm":Landroid/view/WindowManager;
    new-instance v0, Lcom/android/keyguard/KeyguardViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1, v12, v1, v2}, Lcom/android/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    .line 932
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 934
    .local v6, "cr":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 936
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 937
    const-string v0, "lock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 938
    .local v11, "soundPath":Ljava/lang/String;
    if-eqz v11, :cond_20e

    .line 939
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleLockSoundId:I

    .line 941
    :cond_20e
    if-eqz v11, :cond_214

    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleLockSoundId:I

    if-nez v0, :cond_22c

    .line 942
    :cond_214
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load lock sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_22c
    const-string v0, "unlock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 945
    if-eqz v11, :cond_23d

    .line 946
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleUnlockSoundId:I

    .line 948
    :cond_23d
    if-eqz v11, :cond_243

    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleUnlockSoundId:I

    if-nez v0, :cond_25b

    .line 949
    :cond_243
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load unlock sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_25b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/lens_flare_lock.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLensLockSoundId:I

    .line 955
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLensLockSoundId:I

    if-nez v0, :cond_271

    .line 956
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load lens lock sound from /system/media/audio/ui/lens_flare_lock.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/lens_flare_unlock_silence.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLensUnlockSoundId:I

    .line 961
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLensUnlockSoundId:I

    if-nez v0, :cond_287

    .line 962
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load lens unlock sound from /system/media/audio/ui/lens_flare_unlock_silence.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_287
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/Unlock_none_effect.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNoneUnlockSoundId:I

    .line 967
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNoneUnlockSoundId:I

    if-nez v0, :cond_29d

    .line 968
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load Circle lock sound from /system/media/audio/ui/Unlock_none_effect.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_29d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/Lock_none_effect.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNoneLockSoundId:I

    .line 973
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNoneLockSoundId:I

    if-nez v0, :cond_2b3

    .line 974
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load Circle lock sound from /system/media/audio/ui/Lock_none_effect.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_2b3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/blind_lock.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBlindLockSoundId:I

    .line 979
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBlindLockSoundId:I

    if-nez v0, :cond_2c9

    .line 980
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load Circle lock sound from /system/media/audio/ui/blind_lock.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_2c9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/Particle_Lock.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mParticleLockSoundId:I

    .line 986
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mParticleLockSoundId:I

    if-nez v0, :cond_2df

    .line 987
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load Particle lock sound from /system/media/audio/ui/Particle_Lock.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_2df
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/Particle_unlock_silence.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mParticleUnlockSoundId:I

    .line 992
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mParticleUnlockSoundId:I

    if-nez v0, :cond_2f5

    .line 993
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load Particle lock sound from /system/media/audio/ui/Particle_unlock_silence.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_2f5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/brilliantcut_lock.ogg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBrilliantRingCutSoundId:I

    .line 998
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBrilliantRingCutSoundId:I

    if-nez v0, :cond_30b

    .line 999
    const-string v0, "KeyguardViewMediator"

    const-string v1, "failed to load Brilliant Ring lock sound from /system/media/audio/ui/brilliantcut_lock.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_30b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 1004
    .local v8, "lockSoundDefaultAttenuation":I
    const-wide/high16 v0, 0x4024000000000000L

    int-to-float v2, v8

    const/high16 v4, 0x41a00000

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 1006
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V

    .line 1008
    new-instance v0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->initCoverManager(Landroid/content/Context;)V

    .line 1013
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .line 1016
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1018
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->buildDisableDialog()V

    .line 1019
    return-void

    .line 919
    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "lockSoundDefaultAttenuation":I
    .end local v11    # "soundPath":Ljava/lang/String;
    .end local v12    # "wm":Landroid/view/WindowManager;
    .restart local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_348
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1a9

    .line 924
    :cond_351
    const/4 v0, 0x0

    goto/16 :goto_1d0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardViewManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardViewMediator;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardViewMediator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleAirplaneMode()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleShowAirplaneConfirmDialog()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->buildDisableDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->handleUpdateRSSI(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardViewMediator;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->handleUpdateFlightMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4700()I
    .registers 1

    .prologue
    .line 187
    sget v0, Lcom/android/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->checkUnlockEffectVarification()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/sec/KeyguardMultiUserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/keyguard/MultiUserAvatarCache;
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewMediator;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method private adjustStatusBarLocked()V
    .registers 5

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_10

    .line 2493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2496
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_1c

    .line 2497
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Could not get status bar manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_1b
    :goto_1b
    return-void

    .line 2501
    :cond_1c
    const/4 v0, 0x0

    .line 2502
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3b

    .line 2506
    const/high16 v0, 0x1000000

    .line 2507
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_89

    .line 2511
    :goto_29
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2513
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 2515
    :cond_32
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isAssistantAvailable()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2516
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 2521
    :cond_3b
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSecure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1b

    .line 2526
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1b

    .line 2509
    :cond_89
    const/high16 v0, 0x1010000

    goto :goto_29
.end method

.method private buildDisableDialog()V
    .registers 8

    .prologue
    .line 2847
    const-string v0, "KeyguardViewMediator"

    const-string v1, "buildDisableDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2899
    :goto_d
    return-void

    .line 2852
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2856
    const/4 v2, 0x4

    .line 2861
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 2863
    if-eqz v0, :cond_90

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_90

    const/4 v1, 0x1

    .line 2865
    :goto_2c
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2866
    if-eqz v1, :cond_92

    .line 2867
    const v2, 0x10401f3

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2868
    const v2, 0x10401ed

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2874
    :goto_41
    if-eqz v1, :cond_9f

    const v2, 0x10401f4

    :goto_46
    new-instance v6, Lcom/android/keyguard/KeyguardViewMediator$9;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/keyguard/KeyguardViewMediator;ZLandroid/hardware/usb/UsbManager;)V

    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2889
    const v0, 0x1040009

    new-instance v1, Lcom/android/keyguard/KeyguardViewMediator$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2895
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    .line 2896
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2898
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildDisableDialog() time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2863
    :cond_90
    const/4 v1, 0x0

    goto :goto_2c

    .line 2870
    :cond_92
    const v2, 0x10401eb

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2871
    const v2, 0x10401f2

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_41

    .line 2874
    :cond_9f
    const v2, 0x104000a

    goto :goto_46
.end method

.method private cancelDoKeyguardLaterLocked()V
    .registers 2

    .prologue
    .line 1303
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1304
    return-void
.end method

.method private checkUnlockEffectVarification()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1776
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1780
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isLockScreenEffect(I)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v1

    .line 1804
    :goto_15
    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    move v0, v1

    .line 1815
    :cond_19
    if-ne v0, v1, :cond_26

    .line 1816
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1818
    :cond_26
    return-void

    :cond_27
    move v0, v2

    goto :goto_15
.end method

.method private clearLockoutDeadline()V
    .registers 5

    .prologue
    .line 1821
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 1823
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 1825
    :cond_17
    return-void
.end method

.method private doKeyguardLaterLocked(I)V
    .registers 13

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1138
    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v1, v1

    .line 1142
    const-string v3, "lock_screen_lock_after_timeout"

    const/16 v4, 0x1388

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-long v3, v0

    .line 1147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    .line 1151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1153
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->getPasswordLockDelay()I

    move-result v0

    int-to-long v5, v0

    .line 1155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_6b

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-lez v0, :cond_6b

    .line 1156
    const-wide/16 v9, 0x3e8

    mul-long/2addr v5, v9

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1157
    const-string v0, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "final_delay was changed by mdm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_6b
    const-wide/16 v5, 0x0

    cmp-long v0, v7, v5

    if-lez v0, :cond_16d

    .line 1163
    const-wide/16 v5, 0x0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1164
    sub-long v0, v7, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1167
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v2

    if-eqz v2, :cond_229

    .line 1168
    const/4 v2, 0x2

    if-ne p1, v2, :cond_c1

    .line 1169
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1202
    :cond_8a
    :goto_8a
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v0

    .line 1250
    :cond_a3
    :goto_a3
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_248

    .line 1252
    const/4 v0, 0x3

    if-ne p1, v0, :cond_af

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1254
    :cond_af
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1255
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->showNonSecureLockscrenBeforeTimeout()Z

    move-result v0

    if-eqz v0, :cond_243

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_243

    .line 1256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    .line 1300
    :cond_c0
    :goto_c0
    return-void

    .line 1170
    :cond_c1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_8a

    .line 1171
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_305

    .line 1173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    const/4 v5, -0x2

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_157

    const/4 v0, 0x1

    .line 1174
    :goto_da
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_159

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_159

    const/4 v1, 0x1

    .line 1177
    :goto_fb
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v2

    if-eqz v2, :cond_302

    if-eqz v1, :cond_302

    .line 1178
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "isLowLevel"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_15b

    const/4 v2, 0x1

    .line 1179
    :goto_114
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_auto_turn_on"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15d

    const/4 v5, 0x1

    .line 1181
    :goto_125
    if-eqz v5, :cond_302

    if-nez v2, :cond_302

    .line 1182
    const/4 v1, 0x0

    move v5, v1

    .line 1186
    :goto_12b
    const-wide/16 v1, 0x2710

    .line 1187
    const/4 v6, 0x1

    if-ne v0, v6, :cond_15f

    const-wide/16 v9, 0x1388

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_136
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1189
    const/4 v2, 0x1

    if-ne v5, v2, :cond_147

    const-wide/16 v5, 0xbb8

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_147
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1192
    :goto_14f
    cmp-long v2, v7, v0

    if-gtz v2, :cond_161

    .line 1193
    const-wide/16 v0, 0x0

    goto/16 :goto_8a

    .line 1173
    :cond_157
    const/4 v0, 0x0

    goto :goto_da

    .line 1174
    :cond_159
    const/4 v1, 0x0

    goto :goto_fb

    .line 1178
    :cond_15b
    const/4 v2, 0x0

    goto :goto_114

    .line 1179
    :cond_15d
    const/4 v5, 0x0

    goto :goto_125

    :cond_15f
    move-wide v0, v1

    .line 1187
    goto :goto_136

    .line 1195
    :cond_161
    cmp-long v2, v7, v3

    if-lez v2, :cond_169

    .line 1196
    sub-long v0, v3, v0

    goto/16 :goto_8a

    .line 1198
    :cond_169
    sub-long v0, v7, v0

    goto/16 :goto_8a

    .line 1210
    :cond_16d
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_237

    .line 1212
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2fc

    .line 1213
    const-wide/16 v5, 0x0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1214
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_20f

    .line 1216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    const/4 v5, -0x2

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22c

    const/4 v0, 0x1

    .line 1217
    :goto_19a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22f

    const/4 v1, 0x1

    .line 1220
    :goto_1bb
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v2

    if-eqz v2, :cond_2ff

    if-eqz v1, :cond_2ff

    .line 1221
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "isLowLevel"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_231

    const/4 v2, 0x1

    .line 1222
    :goto_1d4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_auto_turn_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_233

    const/4 v5, 0x1

    .line 1224
    :goto_1e5
    if-eqz v5, :cond_2ff

    if-nez v2, :cond_2ff

    .line 1225
    const/4 v1, 0x0

    move v5, v1

    .line 1229
    :goto_1eb
    const-wide/16 v1, 0x2710

    .line 1230
    const/4 v6, 0x1

    if-ne v0, v6, :cond_235

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1f6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1232
    const/4 v2, 0x1

    if-ne v5, v2, :cond_207

    const-wide/16 v5, 0xbb8

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_207
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1235
    :cond_20f
    sub-long v0, v3, v0

    .line 1244
    :goto_211
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_229
    move-wide v3, v0

    goto/16 :goto_a3

    .line 1216
    :cond_22c
    const/4 v0, 0x0

    goto/16 :goto_19a

    .line 1217
    :cond_22f
    const/4 v1, 0x0

    goto :goto_1bb

    .line 1221
    :cond_231
    const/4 v2, 0x0

    goto :goto_1d4

    .line 1222
    :cond_233
    const/4 v5, 0x0

    goto :goto_1e5

    :cond_235
    move-wide v0, v1

    .line 1230
    goto :goto_1f6

    .line 1238
    :cond_237
    const/4 v0, 0x3

    if-ne p1, v0, :cond_23d

    .line 1239
    const-wide/16 v0, 0x1388

    goto :goto_211

    .line 1240
    :cond_23d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2fc

    .line 1241
    const-wide/16 v0, 0x0

    goto :goto_211

    .line 1258
    :cond_243
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_c0

    .line 1262
    :cond_248
    const/4 v0, 0x1

    .line 1263
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "automatic_unlock"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1264
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    .line 1265
    if-nez v2, :cond_29b

    const/4 v5, 0x1

    if-ne v1, v5, :cond_29b

    .line 1266
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v5, :cond_29b

    .line 1267
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v5

    .line 1268
    if-eqz v5, :cond_29b

    .line 1269
    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v5

    if-nez v5, :cond_29b

    .line 1270
    const-string v0, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doKeyguardLocked isAutoUnlock  ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", isSecureLock = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "State.getSwitchState() is Close -do not make Lockscreen in the future"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v0, 0x0

    .line 1277
    :cond_29b
    if-eqz v0, :cond_2d9

    .line 1279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v3

    .line 1280
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    const-string v3, "seq"

    iget v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1284
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1285
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting alarm to turn off keyguard, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_2d9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->showNonSecureLockscrenBeforeTimeout()Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1290
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_2f4

    .line 1291
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 1292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto/16 :goto_c0

    .line 1294
    :cond_2f4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1295
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_c0

    :cond_2fc
    move-wide v0, v3

    goto/16 :goto_211

    :cond_2ff
    move v5, v1

    goto/16 :goto_1eb

    :cond_302
    move v5, v1

    goto/16 :goto_12b

    :cond_305
    move-wide v0, v5

    goto/16 :goto_14f
.end method

.method private doKeyguardLocked()V
    .registers 2

    .prologue
    .line 2687
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 2688
    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v5, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1542
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1544
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: not showing because externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_2a
    :goto_2a
    return-void

    .line 1558
    :cond_2b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_unlock"

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1559
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    .line 1560
    if-nez v1, :cond_7a

    if-ne v0, v3, :cond_7a

    .line 1561
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v4, :cond_7a

    .line 1562
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    .line 1563
    if-eqz v4, :cond_7a

    .line 1564
    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 1565
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doKeyguardLocked isAutoUnlock  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isSecureLock = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "State.getSwitchState() is Close -do not make Locksscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1575
    :cond_7a
    if-eqz p1, :cond_b9

    .line 1576
    const-string v0, "ROLLUP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z

    .line 1581
    :goto_84
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in doKeyguardLocked mIsRollUp "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1585
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: not showing because it is already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1578
    :cond_b9
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mIsRollUp:Z

    goto :goto_84

    .line 1589
    :cond_bc
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1590
    const-string v1, "2.0"

    const-string v4, "version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1591
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1592
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1593
    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 1595
    :try_start_e2
    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v2

    if-eq v2, v3, :cond_2a

    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1596
    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->rollUpToParent(I)V

    .line 1597
    const-string v1, "persona_state_manager"

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaStateManager;

    .line 1598
    if-eqz v0, :cond_2a

    .line 1599
    new-instance v1, Landroid/content/pm/PersonaEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PersonaStateManager;->postEvent(Landroid/content/pm/PersonaEvent;)I
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_104} :catch_106

    goto/16 :goto_2a

    .line 1602
    :catch_106
    move-exception v0

    .line 1603
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: Error while switching &  posting event "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1611
    :cond_110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1612
    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_12a

    .line 1614
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: not showing because access control is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V

    goto/16 :goto_2a

    .line 1620
    :cond_12a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    .line 1623
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 1624
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    .line 1628
    :goto_13a
    new-array v6, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    move v4, v2

    move v1, v2

    .line 1630
    :goto_13e
    if-ge v4, v0, :cond_1c6

    .line 1631
    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    aput-object v7, v6, v4

    .line 1632
    if-nez v1, :cond_152

    aget-object v1, v6, v4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v1

    if-eqz v1, :cond_16c

    :cond_152
    move v1, v3

    .line 1633
    :goto_153
    if-eqz v1, :cond_16e

    move v0, v1

    .line 1636
    :goto_156
    if-nez v0, :cond_171

    if-nez v5, :cond_171

    .line 1637
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1626
    :cond_163
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    goto :goto_13a

    :cond_16c
    move v1, v2

    .line 1632
    goto :goto_153

    .line 1630
    :cond_16e
    add-int/lit8 v4, v4, 0x1

    goto :goto_13e

    .line 1642
    :cond_171
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1a9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-eqz v1, :cond_1a9

    if-nez v0, :cond_1a9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1a9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_1a9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1a9

    .line 1647
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1653
    :cond_1a9
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 1654
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: not showing because factory mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1658
    :cond_1b8
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard: showing the lock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1660
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto/16 :goto_2a

    :cond_1c6
    move v0, v1

    goto :goto_156
.end method

.method public static getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;
    .registers 1

    .prologue
    .line 2615
    sget-object v0, Lcom/android/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method private handleAirplaneMode()V
    .registers 6

    .prologue
    .line 2074
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2088
    :goto_6
    return-void

    .line 2079
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2080
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2082
    const/16 v2, 0x13

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2083
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2084
    const-string v3, "requestClass"

    const-string v4, "flightmode"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string v3, "isFlightMode"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2086
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2087
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6
.end method

.method private handleHide()V
    .registers 3

    .prologue
    .line 2468
    monitor-enter p0

    .line 2469
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_1b

    .line 2474
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_1b

    .line 2475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 2476
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2480
    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->hide()V

    .line 2481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2483
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2484
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2486
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    if-eqz v0, :cond_35

    .line 2487
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onKeyguardHided()V

    .line 2488
    :cond_35
    monitor-exit p0

    .line 2489
    return-void

    .line 2488
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method private handleKeyguardDone(ZZ)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2179
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 2204
    if-eqz p1, :cond_14

    .line 2205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 2208
    :cond_14
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v0, :cond_26

    .line 2210
    :try_start_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_71

    .line 2215
    :goto_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 2217
    if-eqz p1, :cond_26

    .line 2220
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 2221
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 2226
    :cond_26
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    .line 2231
    :cond_33
    const-string v0, "2.0"

    const-string v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 2232
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2234
    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 2235
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2236
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->updateSDcardState()V

    .line 2243
    :cond_5f
    :goto_5f
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleHide()V

    .line 2244
    sget-boolean v0, Lcom/android/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v0, :cond_6d

    .line 2245
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v0, :cond_6d

    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 2247
    :cond_6d
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2248
    return-void

    .line 2211
    :catch_71
    move-exception v0

    .line 2212
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call onKeyguardExitResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 2239
    :cond_91
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2240
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->updateSDcardState()V

    goto :goto_5f
.end method

.method private handleKeyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 2268
    monitor-enter p0

    .line 2269
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_20

    .line 2271
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 2273
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2280
    :cond_20
    monitor-exit p0

    .line 2281
    return-void

    .line 2280
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .registers 3

    .prologue
    .line 2579
    monitor-enter p0

    .line 2580
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    .line 2582
    monitor-exit p0

    .line 2583
    return-void

    .line 2582
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .registers 4

    .prologue
    .line 2590
    monitor-enter p0

    .line 2591
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 2593
    monitor-exit p0

    .line 2594
    return-void

    .line 2593
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 2536
    if-nez p1, :cond_7

    .line 2537
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2541
    :cond_7
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 2542
    const-string v1, "2.0"

    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2543
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2545
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2546
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Kiosk container exist on device. Ignoring owner keyguard right now from handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :goto_30
    return-void

    .line 2549
    :cond_31
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Kiosk container not exists on device."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :cond_38
    const-string v0, "is_switching_user"

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2555
    monitor-enter p0

    .line 2556
    :try_start_40
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    .line 2558
    monitor-exit p0

    goto :goto_30

    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method private handleSetHidden(Z)V
    .registers 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 1504
    monitor-enter p0

    .line 1505
    :try_start_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_16

    .line 1506
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 1507
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1508
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1509
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setHidden(Z)V

    .line 1511
    :cond_16
    monitor-exit p0

    .line 1512
    return-void

    .line 1511
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 2415
    monitor-enter p0

    .line 2416
    :try_start_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_e

    .line 2417
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring handleShow because system is not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    monitor-exit p0

    .line 2461
    :goto_d
    return-void

    .line 2420
    :cond_e
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 2425
    const-string v1, "2.0"

    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2428
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2429
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Kiosk container exist on device. Ignoring owner keyguard right now from handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    monitor-exit p0

    goto :goto_d

    .line 2459
    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw v0

    .line 2432
    :cond_43
    :try_start_43
    const-string v0, "KeyguardViewMediator"

    const-string v1, "Kiosk container not exists on device."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_4a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2443
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2444
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2445
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V
    :try_end_62
    .catchall {:try_start_43 .. :try_end_62} :catchall_40

    .line 2447
    :try_start_62
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_80
    .catchall {:try_start_62 .. :try_end_6b} :catchall_40

    .line 2455
    :goto_6b
    :try_start_6b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    if-eqz v0, :cond_74

    .line 2456
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->onKeyguardShowed()V

    .line 2458
    :cond_74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2459
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_40

    .line 2460
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    goto :goto_d

    .line 2448
    :catch_80
    move-exception v0

    goto :goto_6b
.end method

.method private handleShowAirplaneConfirmDialog()V
    .registers 2

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2842
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2844
    :cond_11
    return-void
.end method

.method private handleUpdateFlightMode(Ljava/lang/String;I)V
    .registers 10

    .prologue
    const/16 v6, 0x1389

    const/4 v5, 0x0

    .line 2804
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleUpdateFlightMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2838
    :cond_10
    :goto_10
    return-void

    .line 2812
    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "magazinecardservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardManager;

    .line 2813
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2817
    if-nez p2, :cond_29

    .line 2818
    invoke-virtual {v0, v6}, Lcom/samsung/android/magazinecard/MagazineCardManager;->removeCard(I)Z

    goto :goto_10

    .line 2819
    :cond_29
    invoke-virtual {v0, v6}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isCardExist(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2820
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030047

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2822
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.keyguard.action.flight_mode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2823
    const v3, 0x7f0b0129

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2825
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2826
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2827
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2830
    new-instance v3, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;-><init>(Landroid/content/Context;)V

    .line 2832
    invoke-virtual {v3, v6}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setCardId(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v1

    sget v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FLIGHT_MODE:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setCategory(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->build()Lcom/samsung/android/magazinecard/MagazineCardInfo;

    move-result-object v1

    .line 2836
    invoke-virtual {v0, v1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->addCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z

    goto :goto_10
.end method

.method private handleUpdateRSSI(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 2780
    const-string v0, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2781
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2782
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateRSSI( rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BluetoothDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2801
    :cond_39
    :goto_39
    return-void

    .line 2786
    :cond_3a
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelMidRssi()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-lt v1, v0, :cond_5e

    .line 2787
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleUpdateRSSI(SMART_LOCK_SECURE_LOCK_TO_SWIPE_LOCK)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v0

    if-nez v0, :cond_39

    .line 2789
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2790
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2791
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_39

    .line 2793
    :cond_5e
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelLowRssi()I

    move-result v0

    if-gt v1, v0, :cond_39

    .line 2794
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleUpdateRSSI(SMART_LOCK_SWIPE_LOCK_TO_SECURE_LOCK) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2796
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2797
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2798
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_39
.end method

.method private handleVerifyUnlock()V
    .registers 3

    .prologue
    .line 2566
    monitor-enter p0

    .line 2567
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->verifyUnlock()V

    .line 2569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2570
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2571
    monitor-exit p0

    .line 2572
    return-void

    .line 2571
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private hideLocked()V
    .registers 3

    .prologue
    .line 1747
    const-string v0, "KeyguardViewMediator"

    const-string v1, "hideLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1749
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1750
    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 765
    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 767
    :try_start_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_e} :catch_27
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_7 .. :try_end_e} :catch_2c

    .line 774
    :goto_e
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 776
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_26

    .line 777
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 779
    :cond_26
    return-void

    .line 768
    :catch_27
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 770
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2c
    move-exception v0

    .line 771
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method

.method private isAdbEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2922
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isAssistantAvailable()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2610
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isFactoryMode()Z
    .registers 2

    .prologue
    .line 2653
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2902
    if-nez p1, :cond_b

    .line 2903
    const-string v1, "KeyguardViewMediator"

    const-string v2, "isGear1: device is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :goto_a
    return v0

    .line 2907
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2908
    if-nez v1, :cond_19

    .line 2909
    const-string v1, "KeyguardViewMediator"

    const-string v2, "isGear1: name is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2913
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GALAXY GEAR ("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2914
    const-string v0, "KeyguardViewMediator"

    const-string v1, "isGear1: device is B1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const/4 v0, 0x1

    goto :goto_a

    .line 2917
    :cond_2e
    const-string v1, "KeyguardViewMediator"

    const-string v2, "isGear1: device is not B1!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private maybeSendUserPresentBroadcast()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1332
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 1337
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1339
    :cond_1c
    return-void
.end method

.method private notifyScreenOffLocked()V
    .registers 3

    .prologue
    .line 1715
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1717
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .registers 4

    .prologue
    .line 1725
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOnLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1727
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1728
    return-void
.end method

.method private playSounds(Z)V
    .registers 9

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2298
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_a

    .line 2299
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 2401
    :cond_9
    :goto_9
    return-void

    .line 2302
    :cond_a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2303
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSounds():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_9

    .line 2307
    :cond_38
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_50

    .line 2309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 2310
    if-eqz v0, :cond_50

    .line 2311
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2316
    :cond_50
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isInCallScreenTopActivity()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2321
    :cond_56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2324
    :try_start_5c
    const-string v1, "lockscreen_sounds_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_62
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5c .. :try_end_62} :catch_db

    move-result v0

    .line 2329
    :goto_63
    if-ne v0, v4, :cond_9

    .line 2331
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2334
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_e1

    move v1, v5

    .line 2336
    :goto_80
    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v1

    if-eqz v1, :cond_93

    :cond_92
    move v0, v5

    .line 2341
    :cond_93
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 2342
    if-eqz p1, :cond_e3

    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleLockSoundId:I

    :goto_9d
    move v1, v0

    .line 2388
    :goto_9e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 2390
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_c1

    .line 2391
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 2392
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_9

    .line 2393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 2396
    :cond_c1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto/16 :goto_9

    .line 2325
    :catch_db
    move-exception v0

    .line 2326
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v5

    goto :goto_63

    :cond_e1
    move v1, v4

    .line 2334
    goto :goto_80

    .line 2342
    :cond_e3
    iget v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleUnlockSoundId:I

    goto :goto_9d

    .line 2343
    :cond_e6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isFestivalActivated()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 2344
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNoneUnlockSoundId:I

    goto :goto_9e

    .line 2346
    :cond_f5
    if-eqz p1, :cond_10c

    .line 2347
    packed-switch v0, :pswitch_data_11c

    .line 2366
    :pswitch_fa
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNoneLockSoundId:I

    goto :goto_9e

    .line 2349
    :pswitch_fd
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLensLockSoundId:I

    goto :goto_9e

    .line 2354
    :pswitch_100
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleLockSoundId:I

    goto :goto_9e

    .line 2357
    :pswitch_103
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBlindLockSoundId:I

    goto :goto_9e

    .line 2360
    :pswitch_106
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mParticleLockSoundId:I

    goto :goto_9e

    .line 2363
    :pswitch_109
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mBrilliantRingCutSoundId:I

    goto :goto_9e

    .line 2369
    :cond_10c
    packed-switch v0, :pswitch_data_132

    .line 2384
    :pswitch_10f
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNoneUnlockSoundId:I

    goto :goto_9e

    .line 2372
    :pswitch_112
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mRippleUnlockSoundId:I

    goto :goto_9e

    .line 2378
    :pswitch_115
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLensUnlockSoundId:I

    goto :goto_9e

    .line 2381
    :pswitch_118
    iget v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mParticleUnlockSoundId:I

    goto :goto_9e

    .line 2347
    nop

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_100
        :pswitch_fd
        :pswitch_106
        :pswitch_100
        :pswitch_103
        :pswitch_fa
        :pswitch_100
        :pswitch_fa
        :pswitch_109
    .end packed-switch

    .line 2369
    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_112
        :pswitch_115
        :pswitch_118
        :pswitch_115
        :pswitch_115
        :pswitch_10f
        :pswitch_112
        :pswitch_10f
        :pswitch_115
    .end packed-switch
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1694
    const-string v0, "KeyguardViewMediator"

    const-string v1, "resetStateLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1696
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1697
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .registers 4

    .prologue
    .line 2259
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2260
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2261
    return-void
.end method

.method private setAdbModeEnabled(Z)V
    .registers 5

    .prologue
    .line 2926
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_14

    .line 2927
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2929
    :cond_14
    return-void

    .line 2927
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1735
    const-string v0, "KeyguardViewMediator"

    const-string v1, "showLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1738
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1739
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1740
    return-void
.end method

.method private updateActivityLockScreenState()V
    .registers 3

    .prologue
    .line 2405
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_13

    .line 2408
    :goto_10
    return-void

    .line 2405
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 2406
    :catch_13
    move-exception v0

    goto :goto_10
.end method

.method private userActivity()V
    .registers 3

    .prologue
    .line 782
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 783
    return-void
.end method

.method private verifyUnlockLocked()V
    .registers 3

    .prologue
    .line 1704
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1706
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1686
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2619
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2620
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2621
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 1519
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1520
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1521
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1522
    return-void
.end method

.method public handleDismiss()V
    .registers 2

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_19

    .line 1677
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->dismiss()V

    .line 1678
    sget-boolean v0, Lcom/android/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v0, :cond_19

    .line 1679
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 1682
    :cond_19
    return-void
.end method

.method protected handleDispatchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewManager;->dispatch(Landroid/view/MotionEvent;)V

    .line 2256
    return-void
.end method

.method protected handleLaunchCamera()V
    .registers 2

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->launchCamera()V

    .line 2252
    return-void
.end method

.method public handleShowAssistant()V
    .registers 2

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager;->showAssistant()V

    .line 2607
    return-void
.end method

.method public isDismissable()Z
    .registers 2

    .prologue
    .line 2597
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInCallScreenTopActivity()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2284
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2285
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2d

    .line 2287
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2288
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.phone.InCallScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 2292
    :goto_2c
    return v0

    :cond_2d
    move v0, v2

    goto :goto_2c
.end method

.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isKeyguardHidden()Z
    .registers 2

    .prologue
    .line 1534
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    return v0
.end method

.method isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1664
    const-string v0, "keyguard.no_require_sim"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    .line 1666
    :goto_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_19

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_1c

    :cond_19
    if-eqz v0, :cond_1c

    :cond_1b
    move v2, v1

    :cond_1c
    return v2

    :cond_1d
    move v0, v2

    .line 1664
    goto :goto_b
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_18

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .prologue
    .line 1484
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keyguardDone(ZZ)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2091
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyguardDone("

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

    .line 2092
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2093
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2094
    invoke-static {v1}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 2097
    :cond_35
    const v2, 0x11170

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2098
    monitor-enter p0

    .line 2099
    const/4 v2, 0x0

    :try_start_3e
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2100
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_54

    .line 2101
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    if-eqz p1, :cond_57

    move v2, v0

    :goto_48
    if-eqz p2, :cond_59

    :goto_4a
    invoke-virtual {v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2102
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2103
    return-void

    .line 2100
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    :cond_57
    move v2, v1

    .line 2101
    goto :goto_48

    :cond_59
    move v0, v1

    goto :goto_4a
.end method

.method public launchCamera()V
    .registers 4

    .prologue
    .line 2624
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2625
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2626
    return-void
.end method

.method public onBootCompleted()V
    .registers 4

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2631
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->clearLockoutDeadline()V

    .line 2632
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->checkUnlockEffectVarification()V

    .line 2635
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V

    .line 2637
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    if-eqz v0, :cond_1e

    .line 2638
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->setupOngoingNotification()V

    .line 2639
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardMum:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    .line 2642
    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedSKTPasswordExists()Z

    move-result v0

    if-nez v0, :cond_43

    .line 2643
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onBootCompleted() SKTPassword NOT exist!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.FindingLostPhonePlus.SAVELOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2645
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2648
    :cond_43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->handleAirplaneMode()V

    .line 2649
    return-void
.end method

.method public onDreamingStarted()V
    .registers 2

    .prologue
    .line 1346
    monitor-enter p0

    .line 1347
    :try_start_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1350
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    .line 1352
    :cond_11
    monitor-exit p0

    .line 1353
    return-void

    .line 1352
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onDreamingStopped()V
    .registers 2

    .prologue
    .line 1359
    monitor-enter p0

    .line 1360
    :try_start_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_8

    .line 1361
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1363
    :cond_8
    monitor-exit p0

    .line 1364
    return-void

    .line 1363
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1066
    monitor-enter p0

    .line 1068
    :try_start_4
    invoke-static {}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->resetListVariable()V

    .line 1071
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1072
    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1073
    if-ne p1, v5, :cond_3e

    .line 1074
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 1075
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1076
    invoke-virtual {v0, v3}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1077
    invoke-virtual {v0, v3}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v4

    if-eq v4, v2, :cond_9e

    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 1078
    invoke-virtual {v0, v3}, Landroid/os/PersonaManager;->rollUpToParent(I)V

    .line 1087
    :cond_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 1088
    const-string v0, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnedOff("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1095
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_a3

    move v0, v1

    .line 1098
    :goto_67
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_c0

    .line 1099
    const-string v0, "KeyguardViewMediator"

    const-string v1, "pending exit secure callback cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_4 .. :try_end_72} :catchall_a0

    .line 1101
    :try_start_72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_78} :catch_b7
    .catchall {:try_start_72 .. :try_end_78} :catchall_a0

    .line 1105
    :goto_78
    const/4 v0, 0x0

    :try_start_79
    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1106
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v0, :cond_82

    .line 1107
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1122
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_93

    .line 1123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mAirplaneConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1125
    :cond_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_79 .. :try_end_94} :catchall_a0

    .line 1126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurndOff(I)V

    .line 1127
    :goto_9d
    return-void

    .line 1080
    :cond_9e
    :try_start_9e
    monitor-exit p0

    goto :goto_9d

    .line 1125
    :catchall_a0
    move-exception v0

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a0

    throw v0

    .line 1095
    :cond_a3
    :try_start_a3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_b5

    :cond_b3
    move v0, v2

    goto :goto_67

    :cond_b5
    move v0, v1

    goto :goto_67

    .line 1102
    :catch_b7
    move-exception v0

    .line 1103
    const-string v1, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78

    .line 1109
    :cond_c0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_d0

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v1, :cond_d0

    .line 1110
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 1111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_82

    .line 1112
    :cond_d0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_d7

    if-ne p1, v5, :cond_db

    if-nez v0, :cond_db

    .line 1114
    :cond_d7
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    goto :goto_82

    .line 1115
    :cond_db
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e2

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    goto :goto_82

    .line 1119
    :cond_e2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    :try_end_e6
    .catchall {:try_start_a3 .. :try_end_e6} :catchall_a0

    goto :goto_82
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .registers 5

    .prologue
    .line 1310
    monitor-enter p0

    .line 1312
    :try_start_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1313
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->requestBluetoothRSSI()V

    .line 1316
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 1317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 1318
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1319
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    if-eqz p1, :cond_38

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 1323
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_55

    .line 1324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1325
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1327
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1328
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1329
    :cond_54
    return-void

    .line 1323
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public onSystemReady()V
    .registers 4

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 1026
    monitor-enter p0

    .line 1027
    :try_start_d
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1030
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SIM_MANAGE_DONE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1032
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 1033
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1044
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1046
    const-string v0, "KeyguardViewMediator"

    const-string v1, "suppressing biometric unlock during boot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1052
    :goto_53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1053
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_63

    .line 1056
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1057
    return-void

    .line 1049
    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_53

    .line 1053
    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_63

    throw v0
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 2674
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    .line 2662
    return-void
.end method

.method public requestBluetoothRSSI()V
    .registers 4

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_27

    .line 2774
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->readRawRssi()Z

    .line 2775
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBluetoothRSSI mWearabledevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_27
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2670
    return-void
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 2658
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1766
    return-void
.end method

.method public setHidden(Z)V
    .registers 8

    .prologue
    const/16 v5, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1491
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_22

    .line 1492
    if-eqz p1, :cond_22

    const-string v0, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHidden "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_22
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_3d

    move v0, v1

    :goto_27
    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 1495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1496
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3f

    :goto_33
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1497
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1498
    return-void

    :cond_3d
    move v0, v2

    .line 1494
    goto :goto_27

    :cond_3f
    move v1, v2

    .line 1496
    goto :goto_33
.end method

.method public setKeyguardEnabled(Z)V
    .registers 6

    .prologue
    .line 1372
    monitor-enter p0

    .line 1373
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_2b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1378
    :cond_37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1379
    monitor-exit p0

    .line 1433
    :goto_3b
    return-void

    .line 1382
    :cond_3c
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1384
    if-nez p1, :cond_63

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_63

    .line 1385
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v0, :cond_54

    .line 1386
    const-string v0, "KeyguardViewMediator"

    const-string v1, "in process of verifyUnlock request, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    monitor-exit p0

    goto :goto_3b

    .line 1432
    :catchall_51
    move-exception v0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_51

    throw v0

    .line 1393
    :cond_54
    :try_start_54
    const-string v0, "KeyguardViewMediator"

    const-string v1, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1396
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1432
    :cond_61
    :goto_61
    monitor-exit p0

    goto :goto_3b

    .line 1397
    :cond_63
    if-eqz p1, :cond_61

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v0, :cond_61

    .line 1399
    const-string v0, "KeyguardViewMediator"

    const-string v1, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v0, :cond_95

    .line 1404
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onKeyguardExitResult(false), resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_54 .. :try_end_7e} :catchall_51

    .line 1406
    :try_start_7e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_84} :catch_8c
    .catchall {:try_start_7e .. :try_end_84} :catchall_51

    .line 1410
    :goto_84
    const/4 v0, 0x0

    :try_start_85
    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_61

    .line 1407
    :catch_8c
    move-exception v0

    .line 1408
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    .line 1413
    :cond_95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1414
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1421
    const-string v0, "KeyguardViewMediator"

    const-string v1, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_af
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_b1
    .catchall {:try_start_85 .. :try_end_b1} :catchall_51

    if-eqz v0, :cond_c0

    .line 1424
    :try_start_b3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_51

    goto :goto_af

    .line 1425
    :catch_b7
    move-exception v0

    .line 1426
    :try_start_b8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_af

    .line 1429
    :cond_c0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_51

    goto :goto_61
.end method

.method public showAssistant()V
    .registers 4

    .prologue
    .line 2601
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2602
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2603
    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2678
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 2666
    return-void
.end method

.method public userActivity(J)V
    .registers 8
    .param p1, "holdMs"    # J

    .prologue
    const/4 v4, 0x0

    .line 788
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 789
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JIZ)V

    .line 797
    :goto_11
    return-void

    .line 793
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/os/PowerManager;->userActivity(JIZ)V

    goto :goto_11
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .registers 5

    .prologue
    .line 1439
    monitor-enter p0

    .line 1440
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1443
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    .line 1445
    const/4 v0, 0x0

    :try_start_18
    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d
    .catchall {:try_start_18 .. :try_end_1b} :catchall_26

    .line 1470
    :goto_1b
    :try_start_1b
    monitor-exit p0

    .line 1471
    return-void

    .line 1446
    :catch_1d
    move-exception v0

    .line 1447
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1470
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0

    .line 1449
    :cond_29
    :try_start_29
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_42

    .line 1453
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_26

    .line 1455
    const/4 v0, 0x0

    :try_start_35
    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_26

    goto :goto_1b

    .line 1456
    :catch_39
    move-exception v0

    .line 1457
    :try_start_3a
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1459
    :cond_42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_26

    if-eqz v0, :cond_54

    .line 1462
    const/4 v0, 0x0

    :try_start_47
    invoke-interface {p1, v0}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_26

    goto :goto_1b

    .line 1463
    :catch_4b
    move-exception v0

    .line 1464
    :try_start_4c
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1467
    :cond_54
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1468
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_26

    goto :goto_1b
.end method
