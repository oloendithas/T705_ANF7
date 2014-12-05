.class public Lcom/android/keyguard/sec/SPassUnlock;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/android/keyguard/BiometricSensorUnlock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    }
.end annotation


# static fields
.field private static mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

.field private static mStatusImage:Landroid/widget/ImageView;

.field private static mStatusText:Landroid/widget/TextView;


# instance fields
.field private final FAILED_STATUS:I

.field private final FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

.field private final IDLE_ANIM_STATUS:I

.field private final IDLE_STATUS:I

.field private final MSG_CANCEL:I

.field private final MSG_IDENTIFY:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_READY:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_UNLOCK:I

.field private final PASSED_STATUS:I

.field private final SCANNING_STATUS:I

.field private final SCREEN_TIMEOUT:I

.field private final SUCCEED_STATUS:I

.field private final WAITING_STATUS:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastRegistered:Z

.field private mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

.field private final mContext:Landroid/content/Context;

.field private mErrorIcon:I

.field private mExpiredTime:J

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mImageQuality:I

.field private mIsCaptured:Z

.field private mIsIdentifyFinished:Z

.field private mIsPassed:Z

.field private mIsRegisteredClient:Z

.field private volatile mIsRunning:Z

.field private mIsScanningAnimationFinished:Z

.field private mIsTalkbackModeOn:Z

.field mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSPassUnlockView:Landroid/view/View;

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v1, 0x458

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_UNLOCK:I

    .line 79
    const/16 v1, 0x459

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_CANCEL:I

    .line 80
    const/16 v1, 0x45a

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 81
    const/16 v1, 0x45b

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_POKE_WAKELOCK:I

    .line 82
    const/16 v1, 0x45c

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_READY:I

    .line 83
    const/16 v1, 0x45d

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_IDENTIFY:I

    .line 85
    iput v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->IDLE_STATUS:I

    .line 86
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->SCANNING_STATUS:I

    .line 87
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->FAILED_STATUS:I

    .line 88
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->PASSED_STATUS:I

    .line 89
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->WAITING_STATUS:I

    .line 90
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->SUCCEED_STATUS:I

    .line 91
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->IDLE_ANIM_STATUS:I

    .line 97
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    .line 102
    const/16 v1, 0x7530

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->SCREEN_TIMEOUT:I

    .line 104
    new-instance v1, Lcom/android/keyguard/sec/SPassUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SPassUnlock$1;-><init>(Lcom/android/keyguard/sec/SPassUnlock;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 550
    new-instance v1, Lcom/android/keyguard/sec/SPassUnlock$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SPassUnlock$2;-><init>(Lcom/android/keyguard/sec/SPassUnlock;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    .line 621
    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

    .line 625
    new-instance v1, Lcom/android/keyguard/sec/SPassUnlock$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SPassUnlock$3;-><init>(Lcom/android/keyguard/sec/SPassUnlock;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    .line 121
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_7d

    .line 128
    const-string v1, "(?i).*talkback.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsTalkbackModeOn:Z

    .line 130
    :cond_7d
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SPassUnlock;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SPassUnlock;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SPassUnlock;->startIdleAnimation(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/SPassUnlock;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SPassUnlock;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SPassUnlock;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SPassUnlock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SPassUnlock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SPassUnlock;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    return-void
.end method

.method private pokeWakelock()V
    .registers 4

    .prologue
    .line 472
    const-string v1, "SPassUnlock"

    const-string v2, "pokeWakelock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .prologue
    .line 635
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    if-nez v1, :cond_1f

    .line 636
    const-string v1, "SPassUnlock"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 638
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    .line 642
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1f
    return-void
.end method

.method private registerClient()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 444
    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 445
    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_16

    .line 446
    const-string v1, "SPassUnlock"

    const-string v3, "registerClient() : FingerPrintManager is not possilbe"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_15
    return v2

    .line 450
    :cond_16
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "builder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    if-eqz v0, :cond_55

    .line 452
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 453
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 454
    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    .line 455
    const-string v3, "SPassUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerClient() mToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_53

    :goto_51
    move v2, v1

    goto :goto_15

    :cond_53
    move v1, v2

    goto :goto_51

    .line 458
    :cond_55
    const-string v1, "SPassUnlock"

    const-string v3, "registerClient() : FingerprintClientSpecBuilder is not possible"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private setErrorCaseText(I)V
    .registers 6
    .param p1, "quality"    # I

    .prologue
    const/4 v3, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 606
    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedback(I)I

    move-result v0

    if-nez v0, :cond_14

    .line 607
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_13
    :goto_13
    return-void

    .line 609
    :cond_14
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedback(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mErrorIcon:I

    .line 611
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsTalkbackModeOn:Z

    if-eqz v0, :cond_41

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 614
    :cond_41
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 615
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mErrorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13
.end method

.method private startFailedAnimation()V
    .registers 5

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    if-eqz v0, :cond_7

    .line 495
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->stopIdentify()V

    .line 498
    :cond_7
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 499
    iget v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    .line 502
    :cond_10
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_29

    .line 503
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    .line 504
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v1, 0x190

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    .line 505
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    .line 507
    :cond_29
    return-void
.end method

.method private startIdentify()V
    .registers 7

    .prologue
    .line 204
    iget-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    if-eqz v2, :cond_55

    .line 205
    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_55

    .line 206
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 207
    .local v0, "currentUserId":I
    const-string v2, "SPassUnlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdentify currentUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "result":I
    if-nez v1, :cond_56

    .line 211
    const-string v2, "SPassUnlock"

    const-string v3, "identify OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v2, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v2, :cond_55

    .line 213
    sget-object v2, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v3, 0x459

    const/16 v5, 0x22

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    .line 214
    sget-object v2, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    .line 222
    .end local v0    # "currentUserId":I
    .end local v1    # "result":I
    :cond_55
    :goto_55
    return-void

    .line 218
    .restart local v0    # "currentUserId":I
    .restart local v1    # "result":I
    :cond_56
    const-string v2, "SPassUnlock"

    const-string v3, "identify request failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private startIdleAnimation(Z)V
    .registers 6
    .param p1, "failed"    # Z

    .prologue
    .line 512
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    if-eqz v1, :cond_9

    .line 513
    if-eqz p1, :cond_a

    .line 514
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startIdentify()V

    .line 520
    :cond_9
    :goto_9
    return-void

    .line 516
    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 517
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9
.end method

.method private startScanningAnimation()V
    .registers 5

    .prologue
    .line 480
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 481
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_b
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_24

    .line 485
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    .line 486
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v1, 0x12c

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    .line 487
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    .line 489
    :cond_24
    return-void
.end method

.method private startSucceedAnimation()V
    .registers 6

    .prologue
    .line 537
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v1, :cond_19

    .line 538
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    .line 539
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v2, 0x12c

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    .line 540
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    .line 542
    :cond_19
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    if-eqz v1, :cond_2b

    .line 543
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const v2, 0x7f0600e9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 544
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    :cond_2b
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x458

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 547
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 548
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .registers 3

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    if-eqz v0, :cond_15

    .line 646
    const-string v0, "SPassUnlock"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    .line 650
    :cond_15
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    const/16 v2, 0x458

    .line 255
    const-string v0, "SPassUnlock"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_15

    .line 257
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SPassAnimationView;->cleanUp()V

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    .line 260
    :cond_15
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    :cond_22
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_30

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 267
    :cond_30
    return-void
.end method

.method handleCancel()V
    .registers 4

    .prologue
    .line 412
    const-string v0, "SPassUnlock"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 419
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, "speed":I
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_166

    .line 388
    const-string v3, "SPassUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_22
    return v2

    .line 287
    :sswitch_23
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->handleUnlock()V

    :cond_26
    :goto_26
    move v2, v3

    .line 392
    goto :goto_22

    .line 290
    :sswitch_28
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->handleCancel()V

    goto :goto_26

    .line 293
    :sswitch_2c
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->handleReportFailedAttempt()V

    goto :goto_26

    .line 296
    :sswitch_30
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SPassUnlock;->handlePokeWakelock(I)V

    goto :goto_26

    .line 300
    :sswitch_36
    const-string v4, "SPassUnlock"

    const-string v5, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 303
    iget-wide v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4c

    .line 304
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->pokeWakelock()V

    .line 307
    :cond_4c
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    .line 308
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    .line 309
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    .line 310
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    .line 312
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startScanningAnimation()V

    goto :goto_26

    .line 316
    :sswitch_58
    const-string v2, "SPassUnlock"

    const-string v4, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 321
    :sswitch_60
    const-string v2, "SPassUnlock"

    const-string v4, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 326
    :sswitch_68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 327
    .local v0, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v4, :cond_81

    .line 328
    const-string v2, "SPassUnlock"

    const-string v4, "handleMessage : RESULT_SUCCESS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    .line 331
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    .line 332
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    goto :goto_26

    .line 336
    :cond_81
    iget v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_26

    .line 337
    const-string v4, "SPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_aa

    .line 340
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startIdentify()V

    goto/16 :goto_26

    .line 341
    :cond_aa
    iget v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_26

    .line 342
    iget v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_d6

    .line 343
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 344
    const-string v4, "SPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quality = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_d6
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    .line 348
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    .line 350
    iget-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    if-eqz v2, :cond_26

    .line 351
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_26

    .line 358
    .end local v0    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_e5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 360
    .restart local v0    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    const-string v4, "SPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage : EVENT_IDENTIFY_STATUS eventStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 363
    const-string v4, "SPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quality = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v4, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_26

    .line 366
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    .line 368
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    .line 370
    iget-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    if-eqz v2, :cond_26

    .line 371
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_26

    .line 377
    .end local v0    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_138
    const-string v2, "SPassUnlock"

    const-string v4, "handleMessage : EVENT_FINGER_SWIPE_SPEED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 379
    .restart local v0    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getSwipeSpeed()I

    move-result v1

    .line 380
    const-string v2, "SPassUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 384
    .end local v0    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_161
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startIdentify()V

    goto/16 :goto_26

    .line 285
    :sswitch_data_166
    .sparse-switch
        0xb -> :sswitch_60
        0xc -> :sswitch_36
        0xd -> :sswitch_68
        0xe -> :sswitch_e5
        0x3f3 -> :sswitch_58
        0x3f5 -> :sswitch_138
        0x458 -> :sswitch_23
        0x459 -> :sswitch_28
        0x45a -> :sswitch_2c
        0x45b -> :sswitch_30
        0x45d -> :sswitch_161
    .end sparse-switch
.end method

.method handlePokeWakelock(I)V
    .registers 6
    .param p1, "millis"    # I

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 438
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 439
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 441
    :cond_18
    return-void
.end method

.method handleReportFailedAttempt()V
    .registers 3

    .prologue
    .line 425
    const-string v0, "SPassUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 430
    return-void
.end method

.method handleUnlock()V
    .registers 3

    .prologue
    .line 399
    const-string v0, "SPassUnlock"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    if-eqz v0, :cond_13

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;->resetSpass()V

    .line 404
    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 406
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .registers 4
    .param p1, "biometricUnlockView"    # Landroid/view/View;

    .prologue
    .line 137
    const-string v0, "SPassUnlock"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mSPassUnlockView:Landroid/view/View;

    .line 139
    return-void
.end method

.method public initializeViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p1, "status"    # Landroid/view/View;
    .param p2, "statusimage"    # Landroid/view/View;
    .param p3, "animation"    # Landroid/view/View;

    .prologue
    .line 142
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "status":Landroid/view/View;
    sput-object p1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    .line 143
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "statusimage":Landroid/view/View;
    sput-object p2, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    .line 144
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    check-cast p3, Lcom/android/keyguard/sec/SPassAnimationView;

    .end local p3    # "animation":Landroid/view/View;
    sput-object p3, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    .line 146
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->setSPassAnimationListener(Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;)V

    .line 147
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRunning:Z

    return v0
.end method

.method public onInit(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 654
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    .line 666
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "keyguardScreenCallback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 134
    return-void
.end method

.method public start()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    iget-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRunning:Z

    if-eqz v4, :cond_7

    .line 200
    :goto_6
    return v2

    .line 173
    :cond_7
    const-string v4, "SPassUnlock"

    const-string v5, "start()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_45

    .line 183
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mExpiredTime:J

    .line 185
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->registerClient()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    .line 186
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRunning:Z

    .line 188
    iget-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    if-eqz v4, :cond_4e

    .line 190
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->unregisterBroadcastReceiver()V

    .line 191
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    .line 192
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SPassUnlock;->startIdleAnimation(Z)V

    .line 194
    sget-object v2, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 195
    goto :goto_6

    .line 179
    :catch_45
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SPassUnlock"

    const-string v5, "Failed to call FingerprintServiceStarter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4e
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->registerBroadcastReceiver()V

    goto :goto_6
.end method

.method public stop()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    const-string v0, "SPassUnlock"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    if-eqz v0, :cond_26

    .line 235
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->unregisterClient()V

    .line 236
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    .line 238
    :cond_26
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_2f

    .line 239
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    .line 241
    :cond_2f
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRunning:Z

    .line 242
    return v3
.end method

.method public stopAndShowBackup()V
    .registers 3

    .prologue
    .line 160
    const-string v0, "SPassUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method

.method public stopIdentify()V
    .registers 3

    .prologue
    .line 246
    const-string v0, "SPassUnlock"

    const-string v1, "stopIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 249
    return-void
.end method

.method public unregisterCallback()V
    .registers 2

    .prologue
    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    .line 670
    return-void
.end method

.method public unregisterClient()V
    .registers 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_2c

    .line 465
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 466
    const-string v0, "SPassUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    .line 469
    :cond_2c
    return-void
.end method
