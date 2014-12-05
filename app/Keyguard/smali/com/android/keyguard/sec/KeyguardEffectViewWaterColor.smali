.class public Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewWaterColor.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private isSystemSoundChecked:Z

.field private isTablet:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSound_tap_id:I

.field private mSound_unlock_id:I

.field private mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

.field private mWallpaperPath:Ljava/lang/String;

.field private phoneMode:I

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x2

    const/high16 v1, 0x3f800000

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->DBG:Z

    .line 51
    const-string v0, "WaterColor_KeyguardEffectView"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->TAG:Ljava/lang/String;

    .line 57
    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mWallpaperPath:Ljava/lang/String;

    .line 67
    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    .line 68
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSound_tap_id:I

    .line 69
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSound_unlock_id:I

    .line 70
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    .line 71
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    .line 72
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->UNLOCK_SOUND_PLAY_TIME:J

    .line 73
    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 74
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    .line 75
    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    .line 76
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->SOUND_ID_TAB:I

    .line 77
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->SOUND_ID_UNLOC:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    .line 84
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    .line 85
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    .line 86
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    .line 87
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->phoneMode:I

    .line 89
    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    .line 93
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "KeyguardEffectViewWaterColor Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->keyguardManager:Landroid/app/KeyguardManager;

    .line 97
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v11, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 99
    .local v12, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    .line 101
    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    .line 103
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "deviceType":Ljava/lang/String;
    if-eqz v10, :cond_79

    .line 105
    const-string v0, "tablet"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    .line 108
    :cond_79
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    if-eqz v0, :cond_8e

    .line 110
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    if-le v0, v1, :cond_d9

    .line 112
    iput v13, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    .line 119
    :goto_85
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->phoneMode:I

    .line 120
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "isTablet is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_8e
    const/4 v3, 0x2

    .line 125
    .local v3, "qualityLevel":I
    new-instance v0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->phoneMode:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    .line 127
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    const v0, 0x7f020213

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    const v0, 0x7f020214

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    const v0, 0x7f020215

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v7

    const v0, 0x7f020217

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    const v0, 0x7f020216

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->setBackground(Landroid/graphics/Bitmap;)V

    .line 134
    new-array v0, v13, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->addView(Landroid/view/View;)V

    .line 138
    return-void

    .line 116
    .end local v3    # "qualityLevel":I
    :cond_d9
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    goto :goto_85
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 276
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 280
    .local v2, "result":I
    :try_start_8
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    move-result v2

    .line 288
    :goto_f
    if-ne v2, v5, :cond_19

    .line 289
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    .line 293
    :goto_13
    return-void

    .line 282
    :catch_14
    move-exception v1

    .line 284
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 291
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    goto :goto_13
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "res"    # I

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 182
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 183
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 184
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    .line 190
    :goto_13
    return-object v2

    .line 186
    :catch_14
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private makeSound()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 195
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_43

    .line 201
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "WaterColor sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const v3, 0x7f050011

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const v3, 0x7f050012

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 207
    :cond_43
    return-void
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 233
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_19

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 236
    :cond_19
    return-void
.end method

.method private releaseSound()V
    .registers 4

    .prologue
    .line 211
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 152
    const-string v2, "WaterColor_KeyguardEffectView"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 156
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_49

    .line 158
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_41

    .line 162
    const-string v2, "WaterColor_KeyguardEffectView"

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

    .line 174
    :goto_40
    return-object v1

    .line 166
    :cond_41
    const-string v2, "WaterColor_KeyguardEffectView"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 171
    :cond_49
    const-string v2, "WaterColor_KeyguardEffectView"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private stopReleaseSound()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 230
    :cond_c
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->cleanUp()V

    .line 314
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    .line 315
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSound()V

    .line 316
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 346
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p2}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 364
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->checkSound()V

    .line 366
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_28

    .line 368
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_24

    .line 372
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeSound()V

    .line 376
    :cond_24
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->playSound(I)V

    .line 384
    :cond_27
    :goto_27
    return v3

    .line 378
    :cond_28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_27

    .line 380
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->playSound(I)V

    goto :goto_27
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p2}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->handleTouchEventForPatternLock(Landroid/view/MotionEvent;)Z

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->unlockEffect()V

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->playSound(I)V

    .line 353
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 241
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    if-eqz v0, :cond_45

    .line 245
    const-string v0, "WaterColor_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 249
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_46

    .line 251
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    if-eq v0, v4, :cond_45

    .line 255
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->onConfigurationChanged()V

    .line 271
    :cond_45
    :goto_45
    return-void

    .line 259
    :cond_46
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_45

    .line 261
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    if-eq v0, v3, :cond_45

    .line 265
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->onConfigurationChanged()V

    goto :goto_45
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 357
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->reset()V

    .line 309
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 336
    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->screenTurnedOn()V

    .line 332
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 394
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    if-nez v0, :cond_7

    .line 398
    :cond_6
    :goto_6
    return-void

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->changeBackground(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 403
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 301
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeSound()V

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->show()V

    .line 304
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 340
    const-string v0, "WaterColor_KeyguardEffectView"

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

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 342
    return-void
.end method

.method public update()V
    .registers 3

    .prologue
    .line 321
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    if-eqz v0, :cond_1b

    .line 324
    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->changeBackground(Landroid/graphics/Bitmap;)V

    .line 327
    :cond_1b
    return-void
.end method
