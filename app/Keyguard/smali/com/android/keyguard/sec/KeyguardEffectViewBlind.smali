.class public Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewBlind.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final DRAG_SOUNT_DISTANCE_THRESHOLD:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private affordanceDelay:J

.field private affordanceRect:Landroid/graphics/Rect;

.field private blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

.field private initBlind:Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

.field private isAsyncPostExecuted:Z

.field private isCleanUp:Z

.field private isHandleUnlock:Z

.field private isOnConfigurationChanged:Z

.field private isShow:Z

.field private isShowUnlockAffordance:Z

.field private isSystemSoundChecked:Z

.field private isUpdate:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    .line 31
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DBG:Z

    .line 36
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    .line 41
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->leftVolumeMax:F

    .line 43
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->rightVolumeMax:F

    .line 44
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    .line 45
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 46
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    .line 47
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    .line 48
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    .line 49
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    .line 51
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    .line 52
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->SOUND_ID_UNLOC:I

    .line 54
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    .line 55
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    .line 56
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    .line 57
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    .line 58
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    .line 59
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    .line 65
    const-string v0, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : Constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mWindowManager:Landroid/view/WindowManager;

    .line 69
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    .line 70
    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)V

    new-array v3, v5, [Ljava/lang/Void;

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceDelay:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Lcom/sec/android/visualeffect/blind/BlindEffect;)Lcom/sec/android/visualeffect/blind/BlindEffect;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    return p1
.end method

.method private checkSound()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 158
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 162
    .local v2, "result":I
    :try_start_8
    const-string v4, "lockscreen_sounds_enabled"

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    move-result v2

    .line 168
    :goto_f
    if-ne v2, v3, :cond_19

    :goto_11
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    .line 169
    return-void

    .line 165
    :catch_14
    move-exception v1

    .line 166
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 168
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_19
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private makeSound()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_47

    .line 117
    const-string v0, "BlindEffect"

    const-string v1, "new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    .line 119
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f050000

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const v3, 0x7f050001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 124
    :cond_47
    return-void
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->checkSound()V

    .line 151
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1c

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->rightVolumeMax:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 154
    :cond_1c
    return-void
.end method

.method private releaseSound()V
    .registers 4

    .prologue
    .line 128
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v12, 0x2

    .line 81
    const-string v9, "BlindEffect"

    const-string v10, "setBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v6, 0x0

    .line 85
    .local v6, "pBitmap":Landroid/graphics/Bitmap;
    :try_start_9
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 87
    .local v5, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_bb

    .line 88
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 89
    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_40
    if-gt v3, v12, :cond_bb

    .line 91
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_43
    if-gt v4, v12, :cond_b4

    .line 92
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/2addr v9, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    mul-int/2addr v10, v4

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 93
    .local v7, "pixel":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 94
    .local v8, "redValue":I
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 95
    .local v0, "blueValue":I
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 96
    .local v2, "greenValue":I
    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.getPixel("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b1} :catch_b7

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 90
    .end local v0    # "blueValue":I
    .end local v2    # "greenValue":I
    .end local v7    # "pixel":I
    .end local v8    # "redValue":I
    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 100
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_b7
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_bb
    return-object v6
.end method

.method private stopReleaseSound()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 147
    :cond_c
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 198
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_17

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    .line 203
    :goto_10
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 204
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSound()V

    .line 205
    return-void

    .line 202
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    goto :goto_10
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 281
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_d

    .line 282
    const-string v0, "BlindEffect"

    const-string v1, "isAsyncPostExecuted=false (handleTouchEvent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_c
    :goto_c
    return v2

    .line 286
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_c

    .line 289
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_29

    .line 291
    const-string v0, "BlindEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->makeSound()V

    .line 294
    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->playSound(I)V

    goto :goto_c
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 250
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : handleUnlock (exit xml animation removed)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_15

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockEffect()V

    .line 271
    :goto_11
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->playSound(I)V

    .line 272
    return-void

    .line 269
    :cond_15
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    goto :goto_11
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_14

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->resetOrientation()V

    .line 179
    :goto_13
    return-void

    .line 178
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    goto :goto_13
.end method

.method public playLockSound()V
    .registers 3

    .prologue
    .line 276
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 193
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .prologue
    .line 223
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_15

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->initAnimationValue()V

    .line 228
    :cond_15
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 218
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 374
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 183
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_14

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->show()V

    .line 188
    :goto_10
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->makeSound()V

    .line 189
    return-void

    .line 187
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    goto :goto_10
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 6
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 232
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_11

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/blind/BlindEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 241
    :goto_10
    return-void

    .line 237
    :cond_11
    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceDelay:J

    .line 238
    iput-object p3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    goto :goto_10
.end method

.method public update()V
    .registers 3

    .prologue
    .line 209
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_15

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 214
    :goto_14
    return-void

    .line 213
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    goto :goto_14
.end method
