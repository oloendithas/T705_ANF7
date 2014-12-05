.class public Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewParticleSpace.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private dragSoundCount:I

.field private isSystemSoundChecked:Z

.field private isUnlocking:Z

.field private lastPlayedIdBeforeUnlock:I

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x3e99999a

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 36
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 37
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 38
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 39
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 40
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 41
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    .line 42
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 43
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 44
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 45
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 46
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 47
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->SOUND_ID_UNLOCK:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 50
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 54
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    .line 57
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->addView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 125
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 129
    .local v2, "result":I
    :try_start_8
    const-string v4, "lockscreen_sounds_enabled"

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    move-result v2

    .line 135
    :goto_f
    if-ne v2, v3, :cond_19

    :goto_11
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    .line 136
    return-void

    .line 132
    :catch_14
    move-exception v1

    .line 133
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 135
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_19
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->getWallpaperImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private makeSound()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->stopReleaseSound()V

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_58

    .line 79
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 81
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    const v3, 0x7f05000b

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    const v3, 0x7f05000c

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    const v4, 0x7f05000a

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 87
    :cond_58
    return-void
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 121
    :cond_8
    :goto_8
    return-void

    .line 114
    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->checkSound()V

    .line 115
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_8

    .line 116
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->lastPlayedIdBeforeUnlock:I

    if-eqz v0, :cond_1b

    .line 119
    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->lastPlayedIdBeforeUnlock:I

    goto :goto_8
.end method

.method private releaseSound()V
    .registers 4

    .prologue
    .line 91
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method private stopReleaseSound()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 110
    :cond_c
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 153
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->clearEffect()V

    .line 155
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->stopReleaseSound()V

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSound()V

    .line 157
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 191
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_34

    .line 226
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 227
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->stopReleaseSound()V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1d

    .line 229
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 232
    :cond_1d
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-eqz v0, :cond_2d

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setWallpaperBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 247
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_2d

    .line 238
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 239
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_2d

    .line 240
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 241
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    goto :goto_2d
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 196
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->unlock()V

    .line 213
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 214
    return-void
.end method

.method public playLockSound()V
    .registers 3

    .prologue
    .line 218
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 148
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .prologue
    .line 172
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->clearEffect()V

    .line 174
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 166
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationStart()V

    .line 168
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 258
    return-void
.end method

.method public setLayers(Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;Landroid/widget/FrameLayout;)V
    .registers 6
    .param p1, "wallpaperWidget"    # Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;
    .param p2, "widgetLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 62
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : setLayers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewParticleSpace : widgetLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewParticleSpace : wallpaperWidget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0, p2, p1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setLayers(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 67
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 140
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->clearEffect()V

    .line 143
    :cond_13
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 144
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 178
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewParticleSpace : showUnlockAffordance, startDelay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-eqz v0, :cond_25

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setWallpaperBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 183
    return-void
.end method

.method public update()V
    .registers 3

    .prologue
    .line 161
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method
