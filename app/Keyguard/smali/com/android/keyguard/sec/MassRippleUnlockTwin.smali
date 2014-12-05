.class public Lcom/android/keyguard/sec/MassRippleUnlockTwin;
.super Landroid/widget/FrameLayout;
.source "MassRippleUnlockTwin.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;
    }
.end annotation


# instance fields
.field protected final ANIMATION_DURATION:F

.field final CIRCLE_AFFORDANCE_ROUND_SIZE:F

.field final CIRCLE_ROUND_SIZE:F

.field private final COUNT_ANIMATION:I

.field private DEBUG:Z

.field final MAX_RIPPLE_COUNT:I

.field final MSG_AFFORDANCE_TOUCH:I

.field final MSG_FIRST_TOUCH:I

.field final MSG_TIME_TICK:I

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private diffPressTime:J

.field drawRippleCount:I

.field firstTouch_X:I

.field firstTouch_Y:I

.field private indexAni:I

.field private isPlayAffordance:Z

.field private isStartUnlock:Z

.field private isSystemSoundChecked:Z

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field mHandler:Landroid/os/Handler;

.field mMovingRippleCount:I

.field private mRDownId:I

.field private mRUpId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private massRipple:[Landroid/widget/ImageView;

.field prevMovingDistance:F

.field private prevPressTime:J

.field scale:[Landroid/view/animation/Animation;

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field touchedEventX:F

.field touchedEventY:F

.field typeStorke:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    .line 48
    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    .line 49
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->COUNT_ANIMATION:I

    .line 51
    new-array v1, v6, [Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    .line 53
    const-wide v1, 0x3fe99999a0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->UNLOCK_RELEASE_THRESHOLD:D

    .line 54
    const-wide v1, 0x3ff4ccccc0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->UNLOCK_DRAG_THRESHOLD:D

    .line 56
    const v1, 0x44a28000

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->ANIMATION_DURATION:F

    .line 60
    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    .line 61
    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    .line 71
    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    .line 76
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_8c

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->typeStorke:[F

    .line 79
    const/high16 v1, 0x43910000

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CIRCLE_ROUND_SIZE:F

    .line 80
    const/high16 v1, 0x43600000

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->CIRCLE_AFFORDANCE_ROUND_SIZE:F

    .line 82
    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_FIRST_TOUCH:I

    .line 83
    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_AFFORDANCE_TOUCH:I

    .line 85
    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MSG_TIME_TICK:I

    .line 86
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->MAX_RIPPLE_COUNT:I

    .line 88
    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    .line 91
    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    .line 130
    new-instance v1, Lcom/android/keyguard/sec/MassRippleUnlockTwin$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$1;-><init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    .line 457
    iput-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    .line 458
    iput-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    .line 459
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    .line 460
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    .line 461
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I

    .line 462
    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundTime:I

    .line 463
    iput v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->SOUND_ID_DOWN:I

    .line 464
    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->SOUND_ID_UP:I

    .line 465
    const v1, 0x7f05000d

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    .line 466
    const v1, 0x7f05000e

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    .line 470
    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 100
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030018

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    new-array v1, v6, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->setLayout()V

    .line 105
    return-void

    .line 76
    :array_8c
    .array-data 4
        0x42440000
        0x41d4cccd
        0x42140000
        0x41f00000
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 475
    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 480
    .local v2, "result":I
    :try_start_8
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v2

    .line 488
    :goto_e
    if-ne v2, v4, :cond_18

    .line 489
    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    .line 493
    :goto_12
    return-void

    .line 482
    :catch_13
    move-exception v1

    .line 484
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 491
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_18
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    goto :goto_12
.end method

.method private clearAllViews()V
    .registers 4

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_30

    .line 368
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 369
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 371
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 366
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 374
    :cond_33
    return-void
.end method

.method private playDragSound(I)V
    .registers 11
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 529
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    if-eqz v0, :cond_8

    .line 538
    :cond_7
    :goto_7
    return-void

    .line 532
    :cond_8
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_7

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 534
    .local v8, "streanID":I
    add-int/lit8 v8, v8, -0x1

    .line 535
    new-instance v7, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;-><init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;I)V

    .line 536
    .local v7, "soundpoolThread":Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->run()V

    goto :goto_7
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 519
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    if-eqz v0, :cond_8

    .line 525
    :cond_7
    :goto_7
    return-void

    .line 522
    :cond_8
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_7

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_7
.end method

.method private setSound()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 496
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_51

    .line 498
    const-string v2, "MassRippleUnlockTwin"

    const-string v3, "show mSoundPool is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    .line 500
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    .line 502
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "checkDownFile":Ljava/io/File;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 504
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v7

    .line 509
    :goto_36
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    .local v1, "checkUpFile":Ljava/io/File;
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 511
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    .line 516
    .end local v0    # "checkDownFile":Ljava/io/File;
    .end local v1    # "checkUpFile":Ljava/io/File;
    :cond_51
    :goto_51
    return-void

    .line 506
    .restart local v0    # "checkDownFile":Ljava/io/File;
    :cond_52
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v7

    goto :goto_36

    .line 513
    .restart local v1    # "checkUpFile":Ljava/io/File;
    :cond_61
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v6

    goto :goto_51
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_11

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 398
    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    .line 399
    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    .line 402
    :cond_11
    return-void
.end method

.method public getCircleSize(IZ)F
    .registers 6
    .param p1, "lineStorke"    # I
    .param p2, "isAffordance"    # Z

    .prologue
    const/high16 v2, 0x43910000

    .line 293
    if-eqz p2, :cond_7

    .line 294
    const/high16 v0, 0x43600000

    .line 296
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x41a00000

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_6
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 425
    const-wide/16 v0, 0x385

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 149
    .local v2, "insdieViewTouchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 152
    .local v3, "insdieViewTouchedEventY":F
    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v5, :cond_33

    .line 153
    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insdieViewTouchedEventX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "insdieViewTouchedEventY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_f4

    .line 157
    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    if-ne v5, v8, :cond_cb

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    if-ne v5, v8, :cond_cb

    .line 160
    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_DOWN First Touch"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    float-to-int v5, v2

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    .line 162
    float-to-int v5, v3

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    .line 171
    :goto_55
    iput v9, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    .line 172
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    if-nez v5, :cond_9e

    .line 174
    new-instance v5, Landroid/media/SoundPool;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v10, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    .line 175
    new-array v5, v11, [I

    iput-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    .line 177
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "checkDownFile":Ljava/io/File;
    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 179
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v6, v7, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v9

    .line 184
    :goto_83
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "checkUpFile":Ljava/io/File;
    if-eqz v1, :cond_e5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 186
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v6, v7, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v10

    .line 191
    .end local v0    # "checkDownFile":Ljava/io/File;
    .end local v1    # "checkUpFile":Ljava/io/File;
    :cond_9e
    :goto_9e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    .line 192
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    .line 194
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {p0, v5, v6, v9, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    .line 195
    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playSound(I)V

    .line 198
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 199
    .local v4, "message":Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 200
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 201
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 202
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 246
    .end local v4    # "message":Landroid/os/Message;
    :cond_ca
    :goto_ca
    return v10

    .line 165
    :cond_cb
    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    .line 166
    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    .line 167
    iput v12, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    .line 168
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    goto :goto_55

    .line 181
    .restart local v0    # "checkDownFile":Ljava/io/File;
    :cond_d6
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRDownId:I

    invoke-virtual {v6, v7, v8, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v9

    goto :goto_83

    .line 188
    .restart local v1    # "checkUpFile":Ljava/io/File;
    :cond_e5
    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mRUpId:I

    invoke-virtual {v6, v7, v8, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v10

    goto :goto_9e

    .line 204
    .end local v0    # "checkDownFile":Ljava/io/File;
    .end local v1    # "checkUpFile":Ljava/io/File;
    :cond_f4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v11, :cond_155

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-nez v5, :cond_155

    .line 207
    iget-boolean v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v5, :cond_10b

    .line 208
    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_10b
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->moveToDistanceIs20percent(FF)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 212
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_150

    .line 213
    invoke-virtual {p0, v2, v3, v11, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    .line 217
    :goto_11a
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->drawRippleCount:I

    .line 218
    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    .line 219
    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playDragSound(I)V

    .line 223
    :cond_129
    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v7, 0x3ff4ccccc0000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_ca

    .line 224
    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove DRAG threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    .line 215
    :cond_150
    const/4 v5, 0x3

    invoke-virtual {p0, v2, v3, v5, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    goto :goto_11a

    .line 226
    :cond_155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v10, :cond_162

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_ca

    .line 229
    :cond_162
    const-string v5, "MassRippleUnlockTwin"

    const-string v6, "ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    .line 232
    iput v8, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    .line 233
    iput v12, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevPressTime:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    .line 237
    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->diffPressTime:J

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-lez v5, :cond_183

    .line 238
    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->playSound(I)V

    .line 241
    :cond_183
    iget-wide v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v7, 0x3fe99999a0000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_ca

    .line 242
    const-string v5, "MassRippleUnlockTwin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove RELEASE threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    .line 380
    return-void
.end method

.method public moveToDistanceIs20percent(FF)Z
    .registers 19
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    .line 315
    const/4 v10, 0x0

    .line 344
    :goto_f
    return v10

    .line 318
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_X:I

    move/from16 v0, p1

    float-to-int v11, v0

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 319
    .local v1, "diffX":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->firstTouch_Y:I

    move/from16 v0, p2

    float-to-int v11, v0

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 321
    .local v2, "diffY":I
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v10, :cond_50

    .line 322
    const-string v10, "MassRippleUnlockTwin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTouchEvent() : diffX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",diffY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_50
    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-double v12, v2

    const-wide/high16 v14, 0x4000000000000000L

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double v5, v10, v12

    .line 325
    .local v5, "distance_square":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 326
    .local v3, "distance":D
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_bf

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 328
    .local v7, "min":I
    :goto_7e
    int-to-double v10, v7

    const-wide/high16 v12, 0x4000000000000000L

    div-double v8, v10, v12

    .line 329
    .local v8, "threshold":D
    div-double v10, v3, v8

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    .line 332
    const-string v10, "MassRippleUnlockTwin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTouchEvent() : threshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",mDistanceRatio="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    const-wide v12, 0x3fdccccccccccccdL

    cmpg-double v10, v10, v12

    if-gez v10, :cond_c8

    .line 335
    const/4 v10, 0x0

    goto/16 :goto_f

    .line 326
    .end local v7    # "min":I
    .end local v8    # "threshold":D
    :cond_bf
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_7e

    .line 337
    .restart local v7    # "min":I
    .restart local v8    # "threshold":D
    :cond_c8
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fdccccccccccccdL

    cmpl-double v10, v10, v12

    if-lez v10, :cond_eb

    .line 339
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mDistanceRatio:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->prevMovingDistance:F

    .line 340
    const/4 v10, 0x1

    goto/16 :goto_f

    .line 344
    :cond_eb
    const/4 v10, 0x0

    goto/16 :goto_f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 351
    .local v0, "originalCircleX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 353
    .local v1, "originalCircleY":F
    iget-boolean v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->DEBUG:Z

    if-eqz v2, :cond_54

    .line 354
    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " originalCircleX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originalCircleY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " touchedEventX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", touchedEventY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_54
    iput v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    .line 358
    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    .line 360
    const/4 v2, 0x0

    return v2
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 455
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 407
    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    .line 410
    return-void
.end method

.method public rippeDown(FFIZ)V
    .registers 20
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lineStroke"    # I
    .param p4, "isAffordance"    # Z

    .prologue
    .line 254
    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_6

    .line 289
    :goto_5
    return-void

    .line 257
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_34

    .line 258
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 259
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 264
    :cond_34
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->getCircleSize(IZ)F

    move-result v8

    .line 266
    .local v8, "CIRCLE_MAX_SIZE":F
    iget-object v13, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v14, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    new-instance v2, Lcom/android/keyguard/sec/MassRippleImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->typeStorke:[F

    aget v4, v4, p3

    float-to-int v5, v8

    float-to-int v6, v8

    const v7, 0x44a28000

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/sec/MassRippleImageView;-><init>(Landroid/content/Context;FIIF)V

    aput-object v2, v13, v14

    .line 268
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v9, "addViewParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    move/from16 v0, p1

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v10, v2, v3

    .line 272
    .local v10, "moveX":I
    move/from16 v0, p2

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v11, v2, v3

    .line 273
    .local v11, "moveY":I
    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveX X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "moveY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 278
    iput v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 279
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 280
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    rem-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    .line 287
    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineStroke = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v2, "MassRippleUnlockTwin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indexAni = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->indexAni:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->clearAllViews()V

    .line 594
    return-void
.end method

.method public screenTurnedOn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 415
    const-string v0, "MassRippleUnlockTwin"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    .line 418
    iput-boolean v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isStartUnlock:Z

    .line 420
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 605
    return-void
.end method

.method public setLayout()V
    .registers 6

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 111
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f04000f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 114
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f040010

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 115
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mContext:Landroid/content/Context;

    const v4, 0x7f040011

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    array-length v1, v1

    if-ge v0, v1, :cond_66

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->scale:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 122
    :cond_66
    const v1, 0x7f0b0038

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    .line 125
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mCircleMain:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->checkSound()V

    .line 388
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->setSound()V

    .line 389
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 10
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 431
    const-string v1, "MassRippleUnlockTwin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnlockAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startDelay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mMovingRippleCount:I

    .line 435
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    .line 436
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    .line 438
    iget-boolean v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    if-eqz v1, :cond_8b

    .line 439
    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->rippeDown(FFIZ)V

    .line 440
    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isPlayAffordance:Z

    .line 442
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 443
    .local v0, "message":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 444
    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 445
    iget v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->touchedEventY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 446
    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 449
    .end local v0    # "message":Landroid/os/Message;
    :cond_8b
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 588
    return-void
.end method
