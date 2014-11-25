.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;
.super Ljava/lang/Thread;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungVolumeControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:J

.field private final DURATION_REPEAT:J

.field private mKeyCode:I

.field private mNeedControlCallVolume:Z

.field private mNeedControlMusicVolume:Z

.field private mNeedControlRadioVolume:Z

.field private mNeedToRun:Z

.field private mSleepDuration:J

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3237
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3243
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 3244
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 3245
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 3247
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    .line 3248
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_REPEAT:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 3237
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method controlCallAndRingingVolume()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 3379
    const/4 v2, 0x0

    .line 3380
    .local v2, "needControlTelephonyVolume":Z
    const/4 v1, 0x0

    .line 3381
    .local v1, "needControlTelephony2Volume":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 3383
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_31

    .line 3385
    :try_start_9
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isVoipCallActive()Z

    move-result v5

    if-eqz v5, :cond_69

    :cond_15
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_69

    .line 3387
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_2a

    const-string v5, "SamsungVolumeControl"

    const-string v6, "in run(), now adjust call volume."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    :cond_2a
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_30} :catch_6b

    .line 3389
    const/4 v2, 0x1

    .line 3399
    :cond_31
    :goto_31
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 3400
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 3402
    .local v4, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_61

    .line 3404
    :try_start_3d
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isVoipCallActive()Z

    move-result v5

    if-eqz v5, :cond_79

    :cond_49
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_79

    .line 3406
    const-string v5, "SamsungVolumeControl"

    const-string v6, "in run(), now adjust call 2 volume."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_60} :catch_7b

    .line 3408
    const/4 v1, 0x1

    .line 3419
    .end local v4    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_61
    :goto_61
    if-nez v2, :cond_65

    if-eqz v1, :cond_85

    .line 3420
    :cond_65
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 3424
    :goto_68
    return-void

    .line 3391
    :cond_69
    const/4 v2, 0x0

    goto :goto_31

    .line 3393
    :catch_6b
    move-exception v0

    .line 3394
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_77

    const-string v5, "SamsungVolumeControl"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3395
    :cond_77
    const/4 v2, 0x0

    goto :goto_31

    .line 3410
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_79
    const/4 v1, 0x0

    goto :goto_61

    .line 3412
    :catch_7b
    move-exception v0

    .line 3413
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v5, "SamsungVolumeControl"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3414
    const/4 v1, 0x0

    goto :goto_61

    .line 3422
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v4    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_85
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    goto :goto_68
.end method

.method controlFMRadioVolume()V
    .registers 3

    .prologue
    .line 3369
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_26

    .line 3370
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust FM radio volume."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    :cond_1b
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V

    .line 3372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 3376
    :goto_25
    return-void

    .line 3374
    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    goto :goto_25
.end method

.method controlMusicVolume()V
    .registers 3

    .prologue
    .line 3359
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3360
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust music volume."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    :cond_1b
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V

    .line 3362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 3366
    :goto_24
    return-void

    .line 3364
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    goto :goto_24
.end method

.method handleVolume(II)V
    .registers 10
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    .line 3319
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 3320
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-nez v1, :cond_9

    .line 3356
    :goto_8
    return-void

    .line 3324
    :cond_9
    :try_start_9
    invoke-virtual {v1}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 3325
    sparse-switch p2, :sswitch_data_52

    goto :goto_8

    .line 3341
    :sswitch_10
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_8

    .line 3353
    :catch_16
    move-exception v2

    .line 3354
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVolume() threw Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3327
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_30
    :try_start_30
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0xa4

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3329
    .local v3, "muteEvent":Landroid/view/KeyEvent;
    const/high16 v4, -0x80000000

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_8

    .line 3333
    .end local v3    # "muteEvent":Landroid/view/KeyEvent;
    :sswitch_3e
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0xf4

    invoke-direct {v0, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3335
    .local v0, "JogEvent":Landroid/view/KeyEvent;
    const/high16 v4, -0x80000000

    invoke-virtual {v1, v0, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_8

    .line 3347
    .end local v0    # "JogEvent":Landroid/view/KeyEvent;
    :sswitch_4c
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_51} :catch_16

    goto :goto_8

    .line 3325
    :sswitch_data_52
    .sparse-switch
        0x18 -> :sswitch_10
        0x19 -> :sswitch_4c
        0xa4 -> :sswitch_30
        0xa8 -> :sswitch_10
        0xa9 -> :sswitch_4c
        0xf2 -> :sswitch_4c
        0xf3 -> :sswitch_10
        0xf4 -> :sswitch_3e
    .end sparse-switch
.end method

.method isAdjustableVolumeKey(I)Z
    .registers 3
    .param p1, "keycode"    # I

    .prologue
    .line 3305
    sparse-switch p1, :sswitch_data_8

    .line 3314
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 3312
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 3305
    nop

    :sswitch_data_8
    .sparse-switch
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0xa8 -> :sswitch_5
        0xa9 -> :sswitch_5
        0xf2 -> :sswitch_5
        0xf3 -> :sswitch_5
    .end sparse-switch
.end method

.method isFMActive()Z
    .registers 4

    .prologue
    .line 3442
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3443
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_11

    .line 3444
    const-string v1, "SamsungWindowManager"

    const-string v2, "isFMActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    const/4 v1, 0x0

    .line 3447
    :goto_10
    return v1

    :cond_11
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    goto :goto_10
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 3430
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3431
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_11

    .line 3432
    const-string v1, "SamsungWindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    const/4 v1, 0x0

    .line 3435
    :goto_10
    return v1

    :cond_11
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_10
.end method

.method isVoipCallActive()Z
    .registers 5

    .prologue
    .line 3451
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3452
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_11

    .line 3453
    const-string v1, "SamsungWindowManager"

    const-string v2, "isVoipCallActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    const/4 v1, 0x0

    .line 3458
    :goto_10
    return v1

    .line 3456
    :cond_11
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice stream active = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", record thread active = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v1

    goto :goto_10
.end method

.method public run()V
    .registers 5

    .prologue
    .line 3266
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3269
    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlMusicVolume()V

    .line 3272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlFMRadioVolume()V

    .line 3275
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlCallAndRingingVolume()V

    .line 3280
    :try_start_10
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_42

    .line 3284
    :goto_15
    monitor-enter p0

    .line 3285
    :try_start_16
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    if-nez v0, :cond_2b

    .line 3288
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_31

    .line 3300
    :goto_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3302
    return-void

    .line 3291
    :cond_2b
    :try_start_2b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    if-nez v0, :cond_34

    .line 3292
    monitor-exit p0

    goto :goto_23

    .line 3298
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v0

    .line 3295
    :cond_34
    :try_start_34
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    .line 3296
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 3298
    :cond_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_31

    goto :goto_7

    .line 3281
    :catch_42
    move-exception v0

    goto :goto_15
.end method

.method public updateInfo(IZZ)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "canceled"    # Z

    .prologue
    .line 3251
    monitor-enter p0

    .line 3254
    :try_start_1
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    .line 3255
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 3256
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 3258
    if-nez p3, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isAdjustableVolumeKey(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3259
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 3261
    :cond_14
    monitor-exit p0

    .line 3262
    return-void

    .line 3261
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method
