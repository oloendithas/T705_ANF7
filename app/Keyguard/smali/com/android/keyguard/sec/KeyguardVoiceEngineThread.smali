.class public Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
.super Ljava/lang/Thread;
.source "KeyguardVoiceEngineThread.java"

# interfaces
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# instance fields
.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_LAUNCH_CMD:I

.field private final MSG_QUIT_LOOPER:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private final STATUS_AUTO_UNLOCK_ENABLED:I

.field private final STATUS_DRIVING_MODE_ENABLED:I

.field private final STATUS_PACKAGE_ENABLE:I

.field private final STATUS_TALKBACK_SERVICE_ENABLED:I

.field private final STATUS_VOICE_ENGINE_SUPPORT:I

.field private final STATUS_WAKE_UP_SETTINGS:I

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIsAvailable:Z

.field private mIsRunning:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mVEPowerManager:Landroid/os/PowerManager;

.field private mVThreadHandler:Landroid/os/Handler;

.field private mVoiceVerifyStarted:Z

.field private mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeUpCallback"    # Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    const-string v0, "KeyguardVoiceEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, "KeyguardVoiceEngineThread"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->TAG:Ljava/lang/String;

    .line 35
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_INIT_WAKEUP_CMD:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_START_VERIFY_CMD:I

    .line 37
    const/16 v0, 0x82

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_TERMINATE_VERIFY_CMD:I

    .line 38
    const/16 v0, 0x8c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_DESTROY_WAKEUP_CMD:I

    .line 39
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_QUIT_LOOPER:I

    .line 40
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_LAUNCH_CMD:I

    .line 41
    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

    .line 43
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_WAKE_UP_SETTINGS:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_PACKAGE_ENABLE:I

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_TALKBACK_SERVICE_ENABLED:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_DRIVING_MODE_ENABLED:I

    .line 47
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_VOICE_ENGINE_SUPPORT:I

    .line 48
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->STATUS_AUTO_UNLOCK_ENABLED:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 61
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 72
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 74
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 79
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->checkCondition()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1, "x1"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->dismissLockScreen()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->updateNotification(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUpVariables()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkCondition()V
    .registers 16

    .prologue
    const/4 v14, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 88
    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 89
    const/4 v6, 0x0

    .line 92
    .local v6, "statusCheck":I
    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wake_up_lock_screen"

    invoke-static {v11, v12, v10, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v9, :cond_c8

    move v4, v9

    .line 94
    .local v4, "isMultipleWakeUpOn":Z
    :goto_15
    if-eqz v4, :cond_2f

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 97
    :try_start_19
    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 98
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v11, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v11, :cond_cb

    .line 99
    add-int/lit8 v6, v6, 0x2

    .line 100
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_2f} :catch_d0

    .line 111
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2f
    :goto_2f
    iget-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_3f

    .line 112
    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 113
    add-int/lit8 v6, v6, 0x20

    .line 114
    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 119
    :cond_3f
    iget-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_5d

    .line 120
    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_accessibility_services"

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_5d

    .line 123
    const-string v11, "(?i).*talkback.*"

    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    .line 124
    .local v7, "talkbackEnabled":Z
    if-eqz v7, :cond_5d

    .line 125
    add-int/lit8 v6, v6, 0x4

    .line 126
    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 132
    .end local v0    # "accesibilityService":Ljava/lang/String;
    .end local v7    # "talkbackEnabled":Z
    :cond_5d
    iget-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v11, :cond_81

    .line 133
    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "driving_mode_on"

    invoke-static {v11, v12, v10, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 134
    .local v1, "drivingMode":I
    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "driving_mode_unlock_screen_contents"

    invoke-static {v11, v12, v10, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 137
    .local v8, "unlockDrivingMode":I
    if-ne v1, v9, :cond_81

    if-ne v8, v9, :cond_81

    .line 138
    add-int/lit8 v6, v6, 0x8

    .line 139
    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 144
    .end local v1    # "drivingMode":I
    .end local v8    # "unlockDrivingMode":I
    :cond_81
    iget-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v9, :cond_ab

    .line 146
    :try_start_85
    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Create WakeUpCmdRecognizer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {v9, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .line 148
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setContext(Landroid/content/Context;)V

    .line 149
    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Create WakeUpCmdRecognizer - finished"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->getEnableWakeUp()Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a6} :catch_e0

    move-result v5

    .line 153
    .local v5, "isSupportMultipleWakeUp":Z
    if-eqz v5, :cond_dc

    .line 154
    add-int/lit8 v6, v6, 0x10

    .line 166
    .end local v5    # "isSupportMultipleWakeUp":Z
    :cond_ab
    :goto_ab
    const-string v9, "KeyguardVoiceEngineThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "condition = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .end local v4    # "isMultipleWakeUpOn":Z
    :cond_c8
    move v4, v10

    .line 92
    goto/16 :goto_15

    .line 102
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "isMultipleWakeUpOn":Z
    :cond_cb
    const/4 v11, 0x0

    :try_start_cc
    iput-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cc .. :try_end_ce} :catch_d0

    goto/16 :goto_2f

    .line 104
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_d0
    move-exception v2

    .line 105
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    .line 106
    const-string v11, "KeyguardVoiceEngineThread"

    const-string v12, "package not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 156
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "isSupportMultipleWakeUp":Z
    :cond_dc
    const/4 v9, 0x0

    :try_start_dd
    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_df} :catch_e0

    goto :goto_ab

    .line 157
    .end local v5    # "isSupportMultipleWakeUp":Z
    :catch_e0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "KeyguardVoiceEngineThread"

    const-string v10, "Error while initializing WakeUpCmdRecognizer"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ab
.end method

.method private cleanUpVariables()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    .line 332
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    .line 333
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 334
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    .line 335
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 336
    return-void
.end method

.method private dismissLockScreen()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->unlock()V

    .line 354
    :cond_9
    return-void
.end method

.method private isActiveStreamExist()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 377
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_d

    .line 378
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "mAudioManager null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_c
    return v0

    .line 382
    :cond_d
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 383
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 385
    :cond_1d
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 386
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 388
    :cond_2d
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 389
    const-string v1, "KeyguardVoiceEngineThread"

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 393
    :cond_3d
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isSecure()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_6

    .line 373
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_14
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private isSimPinSecure()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 358
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    if-nez v0, :cond_a

    .line 362
    :cond_9
    :goto_9
    return v2

    .line 361
    :cond_a
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 362
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_22

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_22

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_22

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v3, :cond_22

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_9

    :cond_22
    const/4 v2, 0x1

    goto :goto_9
.end method

.method private launch(S)V
    .registers 5
    .param p1, "cmd"    # S

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 341
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    return-void
.end method

.method private updateNotification(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 399
    .local v0, "service":Landroid/app/StatusBarManager;
    const-string v1, "keyguard_wakeup"

    const v2, 0x7f0201ff

    const-string v3, "Keyguard wakeup"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 401
    if-eqz p1, :cond_1e

    .line 402
    const-string v1, "keyguard_wakeup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 405
    :goto_1d
    return-void

    .line 404
    :cond_1e
    const-string v1, "keyguard_wakeup"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1d
.end method

.method private wakeUpInit()V
    .registers 3

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_b

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    :cond_b
    return-void
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .registers 4
    .param p1, "job"    # I
    .param p2, "count"    # I
    .param p3, "check"    # I

    .prologue
    .line 434
    return-void
.end method

.method public OnRmsForWave(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 439
    return-void
.end method

.method public OnSpectrumData([I)V
    .registers 2
    .param p1, "stats"    # [I

    .prologue
    .line 443
    return-void
.end method

.method public OnVerifyResult(IS)V
    .registers 6
    .param p1, "verifyResult"    # I
    .param p2, "commandResult"    # S

    .prologue
    .line 409
    const-string v0, "KeyguardVoiceEngineThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsRunning:Z

    if-nez v0, :cond_24

    .line 412
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "mIsRunning is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_23
    :goto_23
    return-void

    .line 416
    :cond_24
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    .line 419
    const/4 v0, -0x3

    if-ne p1, v0, :cond_32

    .line 420
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 421
    :cond_32
    const/16 v0, -0xa

    if-eq p1, v0, :cond_3a

    const/16 v0, -0xb

    if-ne p1, v0, :cond_42

    .line 422
    :cond_3a
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 423
    :cond_42
    const/16 v0, -0xc

    if-ne p1, v0, :cond_51

    .line 424
    const-string v0, "KeyguardVoiceEngineThread"

    const-string v1, "OnVerifyResult() voice recognition failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto :goto_23

    .line 426
    :cond_51
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 427
    invoke-direct {p0, p2}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->launch(S)V

    goto :goto_23
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_1a

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    :goto_19
    return-void

    .line 326
    :cond_1a
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUpVariables()V

    goto :goto_19
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_29

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    :cond_29
    return-void
.end method

.method protected removeAllMsgs()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mIsAvailable:Z

    if-nez v0, :cond_5

    .line 282
    :goto_4
    return-void

    .line 174
    :cond_5
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 176
    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    .line 280
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->wakeUpInit()V

    .line 281
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_4
.end method

.method public setVoiceRecognitionFailCue()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    if-eqz v0, :cond_9

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;->setVoiceRecognitionFailCue()V

    .line 348
    :cond_9
    return-void
.end method
