.class public Lcom/diotek/ime/implement/effect/HapticSoundEffectController;
.super Ljava/lang/Object;
.source "HapticSoundEffectController.java"

# interfaces
.implements Lcom/diotek/ime/framework/effect/SoundEffectController;


# static fields
.field private static final TEST_FUNCTION_PRESS:I = 0x3

.field private static final TEST_FUNCTION_RELEASE:I = 0x4

.field private static final TEST_NUMBER_PRESS:I = 0x5

.field private static final TEST_NUMBER_RELEASE:I = 0x6

.field private static final TEST_QWERTY_PRESS:I = 0x1

.field private static final TEST_QWERTY_RELEASE:I = 0x2

.field private static final TEST_SPACEBAR_PRESS:I = 0x7

.field private static final TEST_SPACEBAR_RELEASE:I = 0x8


# instance fields
.field private final SECTION_FUNCTION:I

.field private final SECTION_NUMBER:I

.field private final SECTION_QWERTY:I

.field private final SECTION_SPACEBAR:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mLastStreamId:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_QWERTY:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_FUNCTION:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_NUMBER:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->SECTION_SPACEBAR:I

    .line 48
    iput-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 51
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 52
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 53
    return-void
.end method

.method private initSounds()V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 161
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060004

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060005

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v5, 0x7f060000

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060001

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060002

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f060003

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000e

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v2, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f06000f

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->updateRingerMode()V

    .line 185
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_1

    .line 179
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

    .line 180
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isFunctionKey(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    .line 238
    .local v0, "isTabletMode":Z
    iget-object v4, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 239
    .local v1, "range":I
    if-nez v1, :cond_0

    .line 240
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 386
    :goto_0
    :sswitch_0
    return v2

    .line 315
    :cond_0
    sparse-switch p1, :sswitch_data_1

    move v2, v3

    .line 386
    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        -0x3ee -> :sswitch_0
        -0x3ed -> :sswitch_0
        -0x3ec -> :sswitch_0
        -0x3ea -> :sswitch_0
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe5 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 315
    :sswitch_data_1
    .sparse-switch
        -0x3ee -> :sswitch_0
        -0x3ed -> :sswitch_0
        -0x3ec -> :sswitch_0
        -0x3ea -> :sswitch_0
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe5 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getKeySection(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->isFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x2

    .line 231
    :goto_0
    return v0

    .line 215
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 229
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3eb -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
    .end sparse-switch
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->initSounds()V

    .line 58
    return-void
.end method

.method public isHeadsetConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 206
    :cond_1
    return v0
.end method

.method public playKeySound(I)V
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundEffectOn:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->updateRingerMode()V

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSilentMode:Z

    if-nez v0, :cond_1

    .line 75
    const/4 v7, 0x5

    .line 76
    .local v7, "sound":I
    sparse-switch p1, :sswitch_data_0

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 88
    const/high16 v2, 0x3f000000

    .line 94
    .local v2, "streamVolume":F
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

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

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mLastStreamId:I

    .line 98
    .end local v2    # "streamVolume":F
    .end local v7    # "sound":I
    :cond_1
    return-void

    .line 78
    .restart local v7    # "sound":I
    :sswitch_0
    const/4 v7, 0x7

    .line 79
    goto :goto_0

    .line 81
    :sswitch_1
    const/16 v7, 0x8

    .line 82
    goto :goto_0

    .line 84
    :sswitch_2
    const/4 v7, 0x6

    goto :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public playKeySound(IZ)V
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "up"    # Z

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundEffectOn:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->updateRingerMode()V

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSilentMode:Z

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->getKeySection(I)I

    move-result v7

    .line 109
    .local v7, "section":I
    if-nez p2, :cond_2

    .line 110
    packed-switch v7, :pswitch_data_0

    .line 124
    const/4 v8, 0x1

    .line 146
    .local v8, "sound":I
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 147
    const/high16 v2, 0x3f000000

    .line 148
    .local v2, "streamVolume":F
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    iput v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mLastStreamId:I

    .line 153
    .end local v2    # "streamVolume":F
    .end local v7    # "section":I
    .end local v8    # "sound":I
    :cond_1
    return-void

    .line 112
    .restart local v7    # "section":I
    :pswitch_0
    const/4 v8, 0x1

    .line 113
    .restart local v8    # "sound":I
    goto :goto_0

    .line 115
    .end local v8    # "sound":I
    :pswitch_1
    const/4 v8, 0x3

    .line 116
    .restart local v8    # "sound":I
    goto :goto_0

    .line 118
    .end local v8    # "sound":I
    :pswitch_2
    const/4 v8, 0x5

    .line 119
    .restart local v8    # "sound":I
    goto :goto_0

    .line 121
    .end local v8    # "sound":I
    :pswitch_3
    const/4 v8, 0x7

    .line 122
    .restart local v8    # "sound":I
    goto :goto_0

    .line 128
    .end local v8    # "sound":I
    :cond_2
    packed-switch v7, :pswitch_data_1

    .line 142
    const/4 v8, 0x2

    .restart local v8    # "sound":I
    goto :goto_0

    .line 130
    .end local v8    # "sound":I
    :pswitch_4
    const/4 v8, 0x2

    .line 131
    .restart local v8    # "sound":I
    goto :goto_0

    .line 133
    .end local v8    # "sound":I
    :pswitch_5
    const/4 v8, 0x4

    .line 134
    .restart local v8    # "sound":I
    goto :goto_0

    .line 136
    .end local v8    # "sound":I
    :pswitch_6
    const/4 v8, 0x6

    .line 137
    .restart local v8    # "sound":I
    goto :goto_0

    .line 139
    .end local v8    # "sound":I
    :pswitch_7
    const/16 v8, 0x8

    .line 140
    .restart local v8    # "sound":I
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundPool:Landroid/media/SoundPool;

    .line 66
    :cond_0
    return-void
.end method

.method public setSoundEffectOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSoundEffectOn:Z

    .line 158
    return-void
.end method

.method public updateKeyTonesFromSystemSettings()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public updateRingerMode()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/implement/effect/HapticSoundEffectController;->mSilentMode:Z

    .line 195
    :cond_1
    return-void

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
