.class public Lcom/android/keyguard/FaceVoiceUnlock;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/keyguard/BiometricSensorUnlock;
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private callingUserId:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field protected mFaceUnlocked:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mIsVoiceUnlockOn:Z

.field mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;

.field private mTalkbackEnabled:Z

.field mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

.field private mVoiceVerifyStarted:Z

.field protected mWakeUnlocked:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

.field private mWakeUpHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "voiceUnlockViewCallback"    # Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 56
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    .line 58
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 60
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    .line 75
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 79
    const/16 v5, 0x1388

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 85
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 91
    const/16 v5, 0xa

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_INIT_WAKEUP_CMD:I

    .line 92
    const/16 v5, 0xb

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_START_VERIFY_CMD:I

    .line 93
    const/16 v5, 0xc

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_TERMINATE_VERIFY_CMD:I

    .line 94
    const/16 v5, 0xd

    iput v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->MSG_DESTROY_WAKEUP_CMD:I

    .line 608
    new-instance v5, Lcom/android/keyguard/FaceVoiceUnlock$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/FaceVoiceUnlock$2;-><init>(Lcom/android/keyguard/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 681
    new-instance v5, Lcom/android/keyguard/FaceVoiceUnlock$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/FaceVoiceUnlock$3;-><init>(Lcom/android/keyguard/FaceVoiceUnlock;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 101
    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    .line 102
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 103
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_73

    .line 109
    const-string v5, "(?i).*talkback.*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 110
    iget-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-eqz v5, :cond_e5

    .line 111
    const-string v5, "FULLockscreen"

    const-string v6, "tb on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_73
    :goto_73
    iget-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v5, :cond_9c

    .line 118
    iget-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 120
    .local v1, "drivingMode":I
    iget-object v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_unlock_screen_contents"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 123
    .local v2, "unlockDrivingMode":I
    if-ne v1, v4, :cond_ed

    if-ne v2, v4, :cond_ed

    .line 124
    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    .line 125
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "drivingMode":I
    .end local v2    # "unlockDrivingMode":I
    :cond_9c
    :goto_9c
    const-string v5, "FULLockscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTalkbackEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_face_with_voice"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_c3

    move v3, v4

    :cond_c3
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 135
    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    .line 136
    const-string v3, "FULLockscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsVoiceUnlockOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->initWakeUpHandler()V

    .line 139
    return-void

    .line 113
    :cond_e5
    const-string v5, "FULLockscreen"

    const-string v6, "tb off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 127
    .restart local v1    # "drivingMode":I
    .restart local v2    # "unlockDrivingMode":I
    :cond_ed
    const-string v5, "FULLockscreen"

    const-string v6, "drv mode off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c
.end method

.method static synthetic access$000(Lcom/android/keyguard/FaceVoiceUnlock;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/FaceVoiceUnlock;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1, "x1"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/FaceVoiceUnlock;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/FaceVoiceUnlock;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/FaceVoiceUnlock;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/keyguard/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1, "x1"    # Lcom/android/internal/policy/IFaceLockInterface;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/FaceVoiceUnlock;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/FaceVoiceUnlock;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/FaceVoiceUnlock;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/FaceVoiceUnlock;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    return p1
.end method

.method private checkIfVoiceUnlockErrorShowed()Z
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->isErrorShowed()Z

    move-result v0

    return v0
.end method

.method private displayPrepareMsg()V
    .registers 5

    .prologue
    .line 205
    const-string v0, "FULLockscreen"

    const-string v1, "displayPrepareMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayPrepareMsg()V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    return-void
.end method

.method private displayVerifyFailMsg()V
    .registers 4

    .prologue
    .line 230
    const-string v0, "FULLockscreen"

    const-string v1, "displayVerifyFailMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v0, :cond_16

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayVerifyFailMsg()V

    .line 236
    return-void
.end method

.method private displayVerifySuccessMsg()V
    .registers 6

    .prologue
    .line 240
    const-string v1, "FULLockscreen"

    const-string v2, "displayVerifySuccessMsg()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->displayVerifySuccessMsg()V

    .line 244
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->callingUserId:I

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 246
    return-void
.end method

.method private hideVoiceLayout()V
    .registers 3

    .prologue
    .line 250
    const-string v0, "FULLockscreen"

    const-string v1, "hideVoiceLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->hideVoiceLayout()V

    .line 252
    return-void
.end method

.method private initWakeUpHandler()V
    .registers 3

    .prologue
    .line 143
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/FaceVoiceUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/FaceVoiceUnlock$1;-><init>(Lcom/android/keyguard/FaceVoiceUnlock;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    return-void
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .registers 15
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 631
    const-string v0, "FULLockscreen"

    const-string v1, "startUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v8, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    .line 633
    :try_start_a
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_53

    .line 634
    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_50

    .line 636
    :try_start_15
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V

    .line 640
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2c} :catch_31
    .catchall {:try_start_15 .. :try_end_2c} :catchall_50

    .line 645
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 649
    :goto_2f
    monitor-exit v8

    .line 650
    :goto_30
    return-void

    .line 641
    :catch_31
    move-exception v7

    .line 642
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    monitor-exit v8

    goto :goto_30

    .line 649
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_50
    move-exception v0

    monitor-exit v8
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_50

    throw v0

    .line 647
    :cond_53
    :try_start_53
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_50

    goto :goto_2f
.end method

.method private stopUi()V
    .registers 6

    .prologue
    .line 656
    const-string v1, "FULLockscreen"

    const-string v2, "stopUi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 661
    :try_start_a
    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_40

    .line 662
    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_3d

    .line 664
    :try_start_15
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1f
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3d

    .line 668
    :goto_1a
    const/4 v1, 0x0

    :try_start_1b
    iput-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 675
    :goto_1d
    monitor-exit v2

    .line 676
    return-void

    .line 665
    :catch_1f
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_3d

    throw v1

    .line 673
    :cond_40
    :try_start_40
    const-string v1, "FULLockscreen"

    const-string v3, "stopUi() attempted while not running"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    goto :goto_1d
.end method

.method private updateVolume(I)V
    .registers 4
    .param p1, "rmsVolume"    # I

    .prologue
    .line 256
    const-string v0, "FULLockscreen"

    const-string v1, "updateVolume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mVoiceUnlockViewCallback:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;->updateVolume(I)V

    .line 258
    return-void
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .registers 4
    .param p1, "job"    # I
    .param p2, "count"    # I
    .param p3, "check"    # I

    .prologue
    .line 766
    return-void
.end method

.method public OnRmsForWave(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/android/keyguard/FaceVoiceUnlock;->updateVolume(I)V

    .line 771
    return-void
.end method

.method public OnSpectrumData([I)V
    .registers 2
    .param p1, "stats"    # [I

    .prologue
    .line 775
    return-void
.end method

.method public OnVerifyResult(IS)V
    .registers 7
    .param p1, "verifyResult"    # I
    .param p2, "commandResult"    # S

    .prologue
    const/4 v3, 0x1

    .line 723
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-ne p1, v3, :cond_34

    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 743
    :cond_1d
    if-ne p1, v3, :cond_57

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_57

    .line 744
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 745
    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup + Face Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayVerifySuccessMsg()V

    .line 761
    :cond_33
    :goto_33
    return-void

    .line 727
    :cond_34
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3f

    .line 728
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 730
    :cond_3f
    const/16 v0, -0xa

    if-eq p1, v0, :cond_47

    const/16 v0, -0xb

    if-ne p1, v0, :cond_1d

    .line 731
    :cond_47
    const-string v0, "FULLockscreen"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 748
    :cond_4f
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 751
    :cond_57
    if-eq p1, v3, :cond_33

    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    if-eqz v0, :cond_33

    .line 752
    const-string v0, "FULLockscreen"

    const-string v1, "Wakeup Fail after FaceLock recognition successed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->checkIfVoiceUnlockErrorShowed()Z

    move-result v0

    if-nez v0, :cond_76

    .line 754
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayVerifyFailMsg()V

    .line 756
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_33

    .line 758
    :cond_76
    const-string v0, "FULLockscreen"

    const-string v1, "Error already has showed due to timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    .line 407
    const-string v0, "FULLockscreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->hideVoiceLayout()V

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_22

    .line 414
    :try_start_15
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_23

    .line 418
    :goto_1c
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopUi()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 421
    :cond_22
    return-void

    .line 415
    :catch_23
    move-exception v0

    goto :goto_1c
.end method

.method handleCancel()V
    .registers 4

    .prologue
    .line 565
    const-string v0, "FULLockscreen"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 571
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stop()Z

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 573
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 436
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 459
    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_d
    return v0

    .line 438
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleServiceConnected()V

    .line 462
    :goto_11
    const/4 v0, 0x1

    goto :goto_d

    .line 441
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleServiceDisconnected()V

    goto :goto_11

    .line 444
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleUnlock(I)V

    goto :goto_11

    .line 447
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleCancel()V

    goto :goto_11

    .line 450
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleReportFailedAttempt()V

    goto :goto_11

    .line 453
    :pswitch_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FaceVoiceUnlock;->handlePokeWakelock(I)V

    goto :goto_11

    .line 456
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->handleTimeout()V

    goto :goto_11

    .line 436
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_e
        :pswitch_13
        :pswitch_17
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .registers 6
    .param p1, "millis"    # I

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 593
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 594
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 596
    :cond_16
    return-void
.end method

.method handleReportFailedAttempt()V
    .registers 3

    .prologue
    .line 579
    const-string v0, "FULLockscreen"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 585
    return-void
.end method

.method handleServiceConnected()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 470
    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_14

    .line 478
    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_13
    :goto_13
    return-void

    .line 483
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_4c

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 494
    .local v1, "windowToken":Landroid/os/IBinder;
    if-eqz v1, :cond_71

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 501
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 502
    .local v7, "position":[I
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 503
    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/FaceVoiceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_13

    .line 484
    .end local v1    # "windowToken":Landroid/os/IBinder;
    .end local v7    # "position":[I
    :catch_4c
    move-exception v6

    .line 485
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 487
    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 488
    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    goto :goto_13

    .line 506
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v1    # "windowToken":Landroid/os/IBinder;
    :cond_71
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method handleServiceDisconnected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 516
    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mServiceRunning:Z

    .line 522
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_17

    .line 523
    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 524
    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 525
    return-void

    .line 522
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method handleTimeout()V
    .registers 5

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v0, :cond_f

    .line 600
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayVerifyFailMsg()V

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 603
    :cond_f
    return-void
.end method

.method handleUnlock(I)V
    .registers 7
    .param p1, "authenticatedUserId"    # I

    .prologue
    const/4 v4, 0x1

    .line 531
    const-string v1, "FULLockscreen"

    const-string v2, "handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_64

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_64

    .line 533
    iput-boolean v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 534
    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    if-nez v1, :cond_36

    .line 535
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopFaceLock()Z

    .line 536
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v1, :cond_2e

    .line 537
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    :goto_23
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 542
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->displayPrepareMsg()V

    .line 559
    :goto_2d
    return-void

    .line 539
    :cond_2e
    const-string v1, "FULLockscreen"

    const-string v2, "mFaceUnlockView is null in handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 545
    :cond_36
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stop()Z

    .line 550
    :goto_39
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 551
    .local v0, "currentUserId":I
    if-ne p1, v0, :cond_68

    .line 552
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 554
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_2d

    .line 548
    .end local v0    # "currentUserId":I
    :cond_64
    invoke-virtual {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stop()Z

    goto :goto_39

    .line 556
    .restart local v0    # "currentUserId":I
    :cond_68
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unlock for authenticated user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because the current user is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public initializeView(Landroid/view/View;)V
    .registers 4
    .param p1, "biometricUnlockView"    # Landroid/view/View;

    .prologue
    .line 270
    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockView:Landroid/view/View;

    .line 272
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "keyguardScreenCallback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 262
    return-void
.end method

.method public start()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 295
    const-string v0, "FULLockscreen"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 297
    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1c
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_27

    .line 301
    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_27
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_2f

    .line 305
    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlocked:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUnlocked:Z

    .line 309
    :cond_2f
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-nez v0, :cond_73

    .line 310
    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to Face Unlock service for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 316
    iput-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 321
    :goto_70
    iput-boolean v5, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 322
    return v5

    .line 318
    :cond_73
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public stop()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 329
    const-string v1, "FULLockscreen"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1b

    .line 331
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1b
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsVoiceUnlockOn:Z

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mTalkbackEnabled:Z

    if-nez v1, :cond_38

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->hideVoiceLayout()V

    .line 341
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mWakeUpHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 344
    :cond_38
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 346
    .local v0, "mWasRunning":Z
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopUi()V

    .line 348
    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_5f

    .line 349
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_4c

    .line 351
    :try_start_45
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_67

    .line 356
    :cond_4c
    :goto_4c
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 358
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 365
    :goto_5c
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 366
    return v0

    .line 363
    :cond_5f
    const-string v1, "FULLockscreen"

    const-string v2, "Attempt to unbind from Face Unlock when not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 352
    :catch_67
    move-exception v1

    goto :goto_4c
.end method

.method public stopAndShowBackup()V
    .registers 3

    .prologue
    .line 285
    const-string v0, "FULLockscreen"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    return-void
.end method

.method public stopFaceLock()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 373
    const-string v1, "FULLockscreen"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1b

    .line 375
    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1b
    iget-boolean v0, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 380
    .local v0, "mWasRunning":Z
    invoke-direct {p0}, Lcom/android/keyguard/FaceVoiceUnlock;->stopUi()V

    .line 382
    iget-boolean v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_42

    .line 383
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_2f

    .line 385
    :try_start_28
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_4a

    .line 390
    :cond_2f
    :goto_2f
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 392
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mBoundToService:Z

    .line 399
    :goto_3f
    iput-boolean v3, p0, Lcom/android/keyguard/FaceVoiceUnlock;->mIsRunning:Z

    .line 400
    return v0

    .line 397
    :cond_42
    const-string v1, "FULLockscreen"

    const-string v2, "Attempt to unbind from Face Unlock when not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 386
    :catch_4a
    move-exception v1

    goto :goto_2f
.end method
