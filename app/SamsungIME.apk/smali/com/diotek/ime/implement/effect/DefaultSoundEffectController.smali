.class public Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;
.super Ljava/lang/Object;
.source "DefaultSoundEffectController.java"

# interfaces
.implements Lcom/diotek/ime/framework/effect/SoundEffectController;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mLastStreamId:I

.field private mSilentMode:Z

.field private mSoundEffectOn:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mLastStreamId:I

    .line 33
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 34
    return-void
.end method

.method private initSounds()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 92
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000d

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000c

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000a

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000b

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->updateRingerMode()V

    .line 114
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key sound load fail!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->initSounds()V

    .line 39
    return-void
.end method

.method public isHeadsetConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 135
    :cond_1
    return v0
.end method

.method public playKeySound(I)V
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundEffectOn:Z

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->updateRingerMode()V

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSilentMode:Z

    if-nez v0, :cond_1

    .line 56
    const/4 v7, 0x5

    .line 57
    .local v7, "sound":I
    sparse-switch p1, :sswitch_data_0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 69
    const/high16 v2, 0x3f000000

    .line 75
    .local v2, "streamVolume":F
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mLastStreamId:I

    .line 79
    .end local v2    # "streamVolume":F
    .end local v7    # "sound":I
    :cond_1
    return-void

    .line 59
    .restart local v7    # "sound":I
    :sswitch_0
    const/4 v7, 0x7

    .line 60
    goto :goto_0

    .line 62
    :sswitch_1
    const/16 v7, 0x8

    .line 63
    goto :goto_0

    .line 65
    :sswitch_2
    const/4 v7, 0x6

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public playKeySound(IZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "up"    # Z

    .prologue
    .line 83
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    :cond_0
    return-void
.end method

.method public setSoundEffectOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSoundEffectOn:Z

    .line 89
    return-void
.end method

.method public updateKeyTonesFromSystemSettings()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public updateRingerMode()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;->mSilentMode:Z

    .line 124
    :cond_1
    return-void

    .line 122
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
