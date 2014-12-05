.class public Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private dragSreamID:I

.field private imageType:I

.field private isLoadCompleted:Z

.field private isSystemSoundChecked:Z

.field private isTablet:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field mLongPressTime:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

.field private mWallpaperPath:Ljava/lang/String;

.field private phoneMode:I

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x2

    const/high16 v4, 0x3f800000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->DBG:Z

    .line 52
    const-string v3, "BrilliantCutEffect_KeyguardEffectView"

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->TAG:Ljava/lang/String;

    .line 58
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mWallpaperPath:Ljava/lang/String;

    .line 59
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->imageType:I

    .line 63
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    .line 64
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    .line 65
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    .line 66
    const-wide/16 v3, 0x7d0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->UNLOCK_SOUND_PLAY_TIME:J

    .line 67
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 68
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isSystemSoundChecked:Z

    .line 69
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->sounds:[I

    .line 70
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->SOUND_ID_TAB:I

    .line 71
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->SOUND_ID_DRAG:I

    .line 72
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->SOUND_ID_UNLOC:I

    .line 73
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    .line 74
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    .line 75
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    .line 76
    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isLoadCompleted:Z

    .line 77
    const-wide/16 v3, 0x19b

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mLongPressTime:J

    .line 81
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->prevOrientation:I

    .line 82
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowWidth:I

    .line 83
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowHeight:I

    .line 84
    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isTablet:Z

    .line 85
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->phoneMode:I

    .line 87
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    .line 93
    const-string v3, "BrilliantCutEffect_KeyguardEffectView"

    const-string v4, "KeyguardEffectViewBrilliantRing Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    .line 96
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->keyguardManager:Landroid/app/KeyguardManager;

    .line 97
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 99
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowWidth:I

    .line 101
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowHeight:I

    .line 103
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_89

    .line 105
    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isTablet:Z

    .line 108
    :cond_89
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isTablet:Z

    if-eqz v3, :cond_9e

    .line 110
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowHeight:I

    if-le v3, v4, :cond_d2

    .line 112
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->prevOrientation:I

    .line 119
    :goto_95
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->phoneMode:I

    .line 120
    const-string v3, "BrilliantCutEffect_KeyguardEffectView"

    const-string v4, "isTablet is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_9e
    new-instance v3, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->phoneMode:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowWidth:I

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->windowHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;-><init>(Landroid/content/Context;III)V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    .line 124
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    const v4, 0x7f020001

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->setBackground(Landroid/graphics/Bitmap;)V

    .line 127
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->sounds:[I

    .line 129
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->addView(Landroid/view/View;)V

    .line 133
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v3, v8}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->settingsForImageType(I)V

    .line 134
    return-void

    .line 116
    :cond_d2
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->prevOrientation:I

    goto :goto_95
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isLoadCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 302
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 306
    .local v2, "result":I
    :try_start_8
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    move-result v2

    .line 314
    :goto_f
    if-ne v2, v5, :cond_19

    .line 315
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isSystemSoundChecked:Z

    .line 319
    :goto_13
    return-void

    .line 308
    :catch_14
    move-exception v1

    .line 310
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 317
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isSystemSoundChecked:Z

    goto :goto_13
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "res"    # I

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 185
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 186
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 187
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 188
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    .line 193
    :goto_13
    return-object v2

    .line 189
    :catch_14
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private makeSound()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 198
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->stopReleaseSound()V

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5d

    .line 204
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "BrilliantRing sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const v3, 0x7f050003

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    const v4, 0x7f050004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 217
    :cond_5d
    return-void
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v4, 0x0

    .line 244
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->checkSound()V

    .line 245
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLoadCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isLoadCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isSystemSoundChecked:Z

    if-eqz v0, :cond_79

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isLoadCompleted:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_79

    .line 249
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7a

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->sendDragSoundInfo(Landroid/media/SoundPool;I)V

    .line 262
    :cond_79
    :goto_79
    return-void

    .line 259
    :cond_7a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_79
.end method

.method private releaseSound()V
    .registers 4

    .prologue
    .line 221
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 155
    const-string v2, "BrilliantCutEffect_KeyguardEffectView"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 159
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_49

    .line 161
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_41

    .line 165
    const-string v2, "BrilliantCutEffect_KeyguardEffectView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pBitmap.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pBitmap.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_40
    return-object v1

    .line 169
    :cond_41
    const-string v2, "BrilliantCutEffect_KeyguardEffectView"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 174
    :cond_49
    const-string v2, "BrilliantCutEffect_KeyguardEffectView"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private stopReleaseSound()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 241
    :cond_c
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->cleanUp()V

    .line 340
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->stopReleaseSound()V

    .line 341
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSound()V

    .line 342
    return-void
.end method

.method public getUnlockDelay()J
    .registers 5

    .prologue
    .line 372
    const-string v1, "BrilliantCutEffect_KeyguardEffectView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnlockDelay, imageType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->imageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v0, 0x190

    .line 374
    .local v0, "returnValue":I
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->imageType:I

    if-nez v1, :cond_22

    .line 375
    const/16 v0, 0xc8

    .line 376
    :cond_22
    int-to-long v1, v0

    return-wide v1
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0, p2}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 410
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_34

    .line 412
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->stopReleaseSound()V

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_27

    .line 417
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->makeSound()V

    .line 419
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->checkSound()V

    .line 422
    :cond_27
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->playSound(I)V

    .line 424
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    .line 448
    :cond_33
    :goto_33
    return v4

    .line 426
    :cond_34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_76

    .line 428
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    if-nez v0, :cond_33

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    .line 431
    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mLongPressTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    .line 433
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->touchMoveDiffTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->playSound(I)V

    goto :goto_33

    .line 439
    :cond_76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_33

    .line 441
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    if-eqz v0, :cond_33

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->sendDragSoundFadeOutForTouchUp()V

    .line 444
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    goto :goto_33
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 453
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "SOUND PLAY SOUND_ID_UNLOC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->playSound(I)V

    .line 383
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    if-eqz v0, :cond_14

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->sendDragSoundFadeOutForUnlock()V

    .line 386
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->dragSreamID:I

    .line 388
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->imageType:I

    if-nez v0, :cond_23

    .line 390
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "handleUnlock, but return because imageType is Normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_22
    return-void

    .line 395
    :cond_23
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "handleUnlock, do it because imageType is Special"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->unlockEffect()V

    goto :goto_22
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isTablet:Z

    if-eqz v0, :cond_45

    .line 271
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 275
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_46

    .line 277
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->prevOrientation:I

    if-eq v0, v4, :cond_45

    .line 281
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->prevOrientation:I

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->onConfigurationChanged()V

    .line 297
    :cond_45
    :goto_45
    return-void

    .line 285
    :cond_46
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_45

    .line 287
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->prevOrientation:I

    if-eq v0, v3, :cond_45

    .line 291
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->prevOrientation:I

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->onConfigurationChanged()V

    goto :goto_45
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 403
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->reset()V

    .line 335
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 362
    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->screenTurnedOn()V

    .line 358
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 457
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    if-nez v0, :cond_7

    .line 461
    :cond_6
    :goto_6
    return-void

    .line 460
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->changeBackground(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 466
    return-void
.end method

.method public settingsForImageType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 149
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "settingsForImageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->settingsForImageType(I)V

    .line 151
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->imageType:I

    .line 152
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 327
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->makeSound()V

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->show()V

    .line 330
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 366
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 368
    return-void
.end method

.method public update()V
    .registers 3

    .prologue
    .line 347
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    if-eqz v0, :cond_1b

    .line 350
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mView:Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/brilliantcuteffect/BrilliantCutView;->changeBackground(Landroid/graphics/Bitmap;)V

    .line 353
    :cond_1b
    return-void
.end method
