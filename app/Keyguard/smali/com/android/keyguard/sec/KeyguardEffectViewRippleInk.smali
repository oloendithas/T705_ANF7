.class public Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewRippleInk.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;
    }
.end annotation


# instance fields
.field final SOUND_ID_DOWN:I

.field final SOUND_ID_DRAG:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private isSystemSoundChecked:Z

.field private isTablet:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

.field private phoneMode:I

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field soundMsg:Landroid/os/Message;

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/high16 v4, 0x3f800000

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v3, "RippleInk_KeyguardEffect"

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->TAG:Ljava/lang/String;

    .line 39
    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    .line 45
    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    .line 46
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    .line 47
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    .line 48
    const-wide/16 v3, 0x7d0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->UNLOCK_SOUND_PLAY_TIME:J

    .line 49
    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 50
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    .line 51
    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->sounds:[I

    .line 52
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->SOUND_ID_DOWN:I

    .line 53
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->SOUND_ID_DRAG:I

    .line 60
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->prevOrientation:I

    .line 61
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    .line 62
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    .line 63
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isTablet:Z

    .line 64
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->phoneMode:I

    .line 75
    const-string v3, "RippleInk_KeyguardEffect"

    const-string v4, "KeyguardEffectViewRippleInk Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    .line 79
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->keyguardManager:Landroid/app/KeyguardManager;

    .line 80
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 82
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    .line 84
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    .line 86
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_71

    .line 89
    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isTablet:Z

    .line 92
    :cond_71
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isTablet:Z

    if-eqz v3, :cond_86

    .line 94
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    if-le v3, v4, :cond_c0

    .line 96
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->prevOrientation:I

    .line 103
    :goto_7d
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->phoneMode:I

    .line 104
    const-string v3, "RippleInk_KeyguardEffect"

    const-string v4, "isTablet is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_86
    new-instance v3, Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->phoneMode:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;-><init>(Landroid/content/Context;III)V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    .line 109
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRippleInkEffectEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->setValueOfInk(Z)V

    .line 111
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setRippleConfiguration()V

    .line 112
    new-array v3, v8, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->sounds:[I

    .line 113
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->setBackground(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    const v4, 0x7f0201be

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->addView(Landroid/view/View;)V

    .line 117
    return-void

    .line 100
    :cond_c0
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->prevOrientation:I

    goto :goto_7d
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    return-object v0
.end method

.method private checkSound()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 327
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 332
    .local v2, "result":I
    :try_start_8
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    move-result v2

    .line 340
    :goto_f
    if-ne v2, v5, :cond_19

    .line 341
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    .line 345
    :goto_13
    return-void

    .line 334
    :catch_14
    move-exception v1

    .line 336
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 343
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    goto :goto_13
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "res"    # I

    .prologue
    .line 251
    const/4 v2, 0x0

    .line 254
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 255
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 257
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    .line 262
    :goto_13
    return-object v2

    .line 258
    :catch_14
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private makeSound()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 267
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_37

    .line 271
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "WaterColor sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const v3, 0x7f050005

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const v3, 0x7f050010

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 277
    :cond_37
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    if-nez v0, :cond_49

    .line 279
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "new SoundHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    .line 282
    :cond_49
    return-void
.end method

.method private playSound(I)V
    .registers 10
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isSystemSoundChecked:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3b

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 310
    .local v7, "streanID":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3b

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    if-eqz v0, :cond_3b

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    add-int/lit8 v1, v7, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    .end local v7    # "streanID":I
    :cond_3b
    return-void
.end method

.method private releaseSound()V
    .registers 4

    .prologue
    .line 286
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 223
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v3, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 228
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_4b

    .line 230
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_43

    .line 234
    const-string v2, "RippleInk_KeyguardEffect"

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

    .line 246
    :goto_42
    return-object v1

    .line 238
    :cond_43
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 243
    :cond_4b
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private setRippleConfiguration()V
    .registers 21

    .prologue
    .line 122
    const/16 v3, 0x68

    .line 123
    .local v3, "NUM_DETAILS_WIDTH":I
    const/16 v4, 0x68

    .line 126
    .local v4, "NUM_DETAILS_HEIGHT":I
    const v5, 0x3eb33333

    .line 127
    .local v5, "intensityForLandscape":F
    const/high16 v6, 0x3f000000

    .line 130
    .local v6, "intensityForPortrait":F
    const v7, -0x3dd3cccd

    .line 131
    .local v7, "translateZForPortrait":F
    const v8, -0x3e41999a

    .line 134
    .local v8, "translateZForLandscape":F
    const/4 v9, 0x3

    .line 135
    .local v9, "spanXForLandscape":I
    const/16 v10, 0x15

    .line 136
    .local v10, "spanYForLandscape":I
    const/16 v11, 0x15

    .line 137
    .local v11, "spanXForPortrait":I
    const/4 v12, 0x3

    .line 140
    .local v12, "spanYForPortrait":I
    const/high16 v13, 0x42340000

    .line 141
    .local v13, "XRatioForLandscape":F
    const/high16 v14, 0x41c80000

    .line 142
    .local v14, "YRatioForLandscape":F
    const/high16 v15, 0x41f00000

    .line 143
    .local v15, "XRatioForPortrait":F
    const/high16 v16, 0x42380000

    .line 146
    .local v16, "YRatioForPortrait":F
    const v2, 0x3e4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v2, v2, v18

    float-to-int v0, v2

    move/from16 v17, v0

    .line 147
    .local v17, "rippleDragThreshold":I
    const-string v2, "RippleInk_KeyguardEffect"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rippleDragThreshold = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0xa00

    move/from16 v0, v18

    if-ne v2, v0, :cond_6c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x640

    move/from16 v0, v18

    if-eq v2, v0, :cond_80

    :cond_6c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x640

    move/from16 v0, v18

    if-ne v2, v0, :cond_a0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0xa00

    move/from16 v0, v18

    if-ne v2, v0, :cond_a0

    .line 152
    :cond_80
    const/16 v3, 0x4a

    .line 153
    const/16 v4, 0x4a

    .line 155
    const v5, 0x3e4ccccd

    .line 156
    const v6, 0x3eb33333

    .line 158
    const v7, -0x3dd3cccd

    .line 159
    const v8, -0x3e2ccccd

    .line 161
    const/4 v9, 0x2

    .line 162
    const/16 v10, 0xe

    .line 163
    const/16 v11, 0xe

    .line 164
    const/4 v12, 0x2

    .line 166
    const/16 v17, 0xfa

    .line 201
    :cond_98
    :goto_98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual/range {v2 .. v17}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->setRippleConfiguration(IIFFFFIIIIFFFFI)V

    .line 209
    return-void

    .line 169
    :cond_a0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-ne v2, v0, :cond_b4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-eq v2, v0, :cond_c8

    :cond_b4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-ne v2, v0, :cond_d6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-ne v2, v0, :cond_d6

    .line 171
    :cond_c8
    const v8, -0x3e388937

    .line 173
    const/4 v9, 0x3

    .line 174
    const/16 v10, 0x15

    .line 175
    const/16 v11, 0x13

    .line 176
    const/4 v12, 0x3

    .line 178
    const/high16 v13, 0x42400000

    .line 179
    const/high16 v14, 0x41d80000

    goto :goto_98

    .line 182
    :cond_d6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x2d0

    move/from16 v0, v18

    if-ne v2, v0, :cond_ea

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-eq v2, v0, :cond_98

    :cond_ea
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-ne v2, v0, :cond_fe

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x2d0

    move/from16 v0, v18

    if-eq v2, v0, :cond_98

    .line 185
    :cond_fe
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x21c

    move/from16 v0, v18

    if-ne v2, v0, :cond_112

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-eq v2, v0, :cond_98

    :cond_112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v2, v0, :cond_126

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x21c

    move/from16 v0, v18

    if-eq v2, v0, :cond_98

    .line 188
    :cond_126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x1e0

    move/from16 v0, v18

    if-ne v2, v0, :cond_13a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-eq v2, v0, :cond_14e

    :cond_13a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowWidth:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-ne v2, v0, :cond_98

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->windowHeight:I

    const/16 v18, 0x1e0

    move/from16 v0, v18

    if-ne v2, v0, :cond_98

    .line 190
    :cond_14e
    const/16 v3, 0x4a

    .line 191
    const/16 v4, 0x4a

    .line 193
    const/4 v9, 0x2

    .line 194
    const/16 v10, 0xe

    .line 195
    const/16 v11, 0xe

    .line 196
    const/4 v12, 0x2

    .line 198
    const/high16 v15, 0x41e00000

    .line 199
    const/high16 v16, 0x42340000

    goto/16 :goto_98
.end method

.method private stopReleaseSound()V
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 305
    :cond_c
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 433
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->cleanUp()V

    .line 435
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    .line 436
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSound()V

    .line 437
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 472
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 486
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v1, p2}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 488
    .local v0, "isSoundFlag":Z
    if-eqz v0, :cond_2d

    .line 490
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->checkSound()V

    .line 492
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_2e

    .line 494
    :cond_18
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    .line 496
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_29

    .line 498
    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->makeSound()V

    .line 501
    :cond_29
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->playSound(I)V

    .line 509
    :cond_2d
    :goto_2d
    return v3

    .line 503
    :cond_2e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 505
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->playSound(I)V

    goto :goto_2d
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 477
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->isTablet:Z

    if-eqz v0, :cond_45

    .line 374
    const-string v0, "RippleInk_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 378
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_46

    .line 380
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "= onConfigurationChanged = ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->prevOrientation:I

    if-eq v0, v4, :cond_45

    .line 384
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->prevOrientation:I

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->onConfigurationChanged()V

    .line 400
    :cond_45
    :goto_45
    return-void

    .line 388
    :cond_46
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_45

    .line 390
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "= onConfigurationChanged = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->prevOrientation:I

    if-eq v0, v3, :cond_45

    .line 394
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->prevOrientation:I

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->onConfigurationChanged()V

    goto :goto_45
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 520
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 521
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    if-eqz v0, :cond_17

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;->removeMessages(I)V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$SoundHandler;

    .line 527
    :cond_17
    return-void
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 481
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 427
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->reset()V

    .line 429
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .prologue
    .line 462
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 456
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->screenTurnedOn()V

    .line 458
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 403
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    if-nez v0, :cond_39

    .line 405
    :cond_6
    const-string v0, "RippleInk_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bmp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v0, "RippleInk_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "or mView is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_38
    return-void

    .line 409
    :cond_39
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "setContextualWallpaper bmp isn\'t null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->changeBackground(Landroid/graphics/Bitmap;I)V

    goto :goto_38
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 533
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 420
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->makeSound()V

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->show()V

    .line 423
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 468
    return-void
.end method

.method public update()V
    .registers 4

    .prologue
    .line 441
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->changeBackground(Landroid/graphics/Bitmap;I)V

    .line 443
    return-void
.end method

.method public update(I)V
    .registers 5
    .param p1, "updateType"    # I

    .prologue
    .line 446
    const-string v0, "RippleInk_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    if-eqz v0, :cond_2c

    .line 449
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mView:Lcom/sec/android/visualeffect/rippleink/RippleInkView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkView;->changeBackground(Landroid/graphics/Bitmap;I)V

    .line 452
    :cond_2c
    return-void
.end method
