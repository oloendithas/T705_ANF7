.class public Lcom/android/keyguard/sec/MassTensionUnlockView;
.super Landroid/widget/FrameLayout;
.source "MassTensionUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_MAX_ALPHA_FACTOR:F

.field private final CIRCLE_MIN_ALPHA:I

.field protected TAG:Ljava/lang/String;

.field private final TENSION_BETWEEN_FACTOR:I

.field private final TENSION_CIRCLE_PLACE_ADJUST:I

.field private final TENSION_LINE_DELETE:I

.field private final TENSION_LINE_MIN:F

.field private final TENSION_RELEASE_FACTOR:F

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field protected final UNLOCK_TEMP_THRESHOLD:D

.field private betweenLineX:I

.field private betweenLineY:I

.field private degree:D

.field private diffPressTime:J

.field private isIgnoreTouch:Z

.field private isSystemSoundChecked:Z

.field private lineSize:F

.field private mCircleCenterDot:Landroid/widget/ImageView;

.field private mCircleCenterDotAfter:Landroid/widget/ImageView;

.field private mCircleCenterDotAnim:Landroid/view/animation/Animation;

.field mCircleCenterDotFromPoint:Landroid/graphics/Point;

.field private mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

.field mCircleCenterDotToPoint:Landroid/graphics/Point;

.field private mCircleFinger:Landroid/widget/ImageView;

.field private mCircleFingerAfter:Landroid/widget/ImageView;

.field private mCircleFingerAnim:Landroid/view/animation/Animation;

.field private mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleFingerRoot:Landroid/widget/RelativeLayout;

.field private mCircleLine:Landroid/widget/ImageView;

.field private mCircleLineAfter:Landroid/widget/ImageView;

.field protected mCircleLineRoot:Landroid/widget/RelativeLayout;

.field private mCircleOuter:Landroid/widget/ImageView;

.field private mCircleOuterAfter:Landroid/widget/ImageView;

.field private mCircleOuterAnim:Landroid/view/animation/Animation;

.field protected mCircleOuterRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mLineAnim:Landroid/view/animation/ScaleAnimation;

.field private final mLockSoundVolume:F

.field private mSoundPool:Landroid/media/SoundPool;

.field protected mX:F

.field protected mY:F

.field private outerTensionFactorX:D

.field private outerTensionFactorY:D

.field private prevPressTime:J

.field private radian:D

.field private sounds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const v5, 0x3f4ccccd

    const/4 v4, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v2, "TensionLockScreen"

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    .line 64
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->CIRCLE_MAX_ALPHA:I

    .line 65
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->CIRCLE_MIN_ALPHA:I

    .line 66
    const-wide v2, 0x3ff3333340000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_TEMP_THRESHOLD:D

    .line 67
    const-wide v2, 0x3ff6666660000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    .line 68
    const-wide v2, 0x4000ccccc0000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    .line 70
    iput v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_RELEASE_FACTOR:F

    .line 71
    iput v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->CIRCLE_MAX_ALPHA_FACTOR:F

    .line 72
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_BETWEEN_FACTOR:I

    .line 73
    iput v4, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_MIN:F

    .line 75
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_CIRCLE_PLACE_ADJUST:I

    .line 94
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isIgnoreTouch:Z

    .line 113
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_SOUND_PLAY_TIME:J

    .line 118
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    .line 119
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    .line 576
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    .line 578
    iput-wide v7, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    .line 579
    iput-wide v7, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->prevPressTime:J

    .line 580
    iput-boolean v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    .line 123
    iput-object p1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    .line 124
    iget-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030019

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_DELETE:I

    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLayout()V

    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setAnimation()V

    .line 131
    invoke-direct {p0, v4, v4}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 135
    .local v1, "lockSoundDefaultAttenuation":I
    const-wide/high16 v2, 0x4024000000000000L

    int-to-float v4, v1

    const/high16 v5, 0x41a00000

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLockSoundVolume:F

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/MassTensionUnlockView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/view/animation/AnimationSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/MassTensionUnlockView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->createBouncerAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private checkSound()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 585
    iget-object v3, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 586
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 589
    .local v2, "result":I
    :try_start_8
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v2

    .line 594
    :goto_e
    if-ne v2, v4, :cond_18

    .line 595
    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    .line 598
    :goto_12
    return-void

    .line 590
    :catch_13
    move-exception v1

    .line 591
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 597
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_18
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    goto :goto_12
.end method

.method private clearAllViews()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 490
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    return-void
.end method

.method private createBouncerAnimation()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 173
    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 174
    .local v1, "fromX":I
    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 175
    .local v2, "fromY":I
    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 176
    .local v3, "toX":I
    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 178
    .local v4, "toY":I
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 180
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v6, v3, v1

    int-to-float v6, v6

    sub-int v7, v4, v2

    int-to-float v7, v7

    invoke-direct {v5, v8, v6, v8, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 181
    .local v5, "translate":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 182
    invoke-virtual {v5, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 183
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 185
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 187
    new-instance v6, Lcom/android/keyguard/sec/MassTensionUnlockView$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/MassTensionUnlockView$1;-><init>(Lcom/android/keyguard/sec/MassTensionUnlockView;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 208
    return-object v0
.end method

.method private playSound()V
    .registers 8

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_17

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->sounds:I

    iget v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLockSoundVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 616
    :cond_17
    return-void
.end method

.method private setLineAnim(FF)V
    .registers 6
    .param p1, "firstvalue"    # F
    .param p2, "lastvalue"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 213
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/keyguard/sec/MassTensionUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/MassTensionUnlockView$2;-><init>(Lcom/android/keyguard/sec/MassTensionUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 254
    return-void
.end method

.method private setOuterCircle(Landroid/view/View;D)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "value"    # D

    .prologue
    const/16 v1, 0xff

    .line 257
    const-wide/high16 v2, 0x4049000000000000L

    const-wide v4, 0x406fe00000000000L

    mul-double/2addr v4, p2

    const-wide v6, 0x3fe99999a0000000L

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 258
    .local v0, "alpha":I
    if-ge v0, v1, :cond_1a

    .line 259
    :goto_14
    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 260
    return-void

    :cond_1a
    move v0, v1

    .line 258
    goto :goto_14
.end method

.method private setSound()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 601
    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_27

    .line 602
    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v2, "show mSoundPool is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v0, "checkTapFile":Ljava/io/File;
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    .line 607
    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->sounds:I

    .line 610
    .end local v0    # "checkTapFile":Ljava/io/File;
    :cond_27
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->clearAllViews()V

    .line 515
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_f

    .line 516
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    .line 519
    :cond_f
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 534
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 29
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isIgnoreTouch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 279
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->isIgnoreTouch:Z

    .line 281
    :cond_1c
    const/16 v18, 0x0

    .line 480
    :goto_1e
    return v18

    .line 284
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_b7e

    .line 480
    :cond_26
    :goto_26
    :pswitch_26
    const/16 v18, 0x1

    goto :goto_1e

    .line 288
    :pswitch_29
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->clearAllViews()V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x32

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setScaleX(F)V

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->prevPressTime:J

    .line 318
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->playSound()V

    goto/16 :goto_26

    .line 326
    :pswitch_1de
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    .line 327
    .local v8, "diffX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    .line 328
    .local v9, "diffY":I
    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v12, v18, v20

    .line 329
    .local v12, "distance_square":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 330
    .local v10, "distance":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 331
    .local v16, "threshold":D
    div-double v18, v10, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    .line 337
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setOuterCircle(Landroid/view/View;D)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v4, v0

    .line 340
    .local v4, "absX":D
    const/high16 v18, -0x40800000

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 341
    .local v6, "absY":D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->radian:D

    .line 342
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->radian:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L

    div-double v18, v18, v20

    const-wide v20, 0x4066800000000000L

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorX:D

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorY:D

    .line 351
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L

    cmpg-double v18, v18, v20

    if-gez v18, :cond_51c

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v14, v18, v19

    .line 366
    .local v14, "lineSizebaseX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v15, v18, v19

    .line 367
    .local v15, "lineSizebaseY":F
    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_519

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    :goto_4ee
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setScaleX(F)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_26

    .line 369
    :cond_519
    const/16 v18, 0x0

    goto :goto_4ee

    .line 373
    .end local v14    # "lineSizebaseX":F
    .end local v15    # "lineSizebaseY":F
    :cond_51c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_6d7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_6d7

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorX:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorY:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    .line 387
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorX:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 388
    .restart local v14    # "lineSizebaseX":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorY:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 389
    .restart local v15    # "lineSizebaseY":F
    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6d4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    :goto_6a9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setScaleX(F)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_26

    .line 391
    :cond_6d4
    const/16 v18, 0x0

    goto :goto_6a9

    .line 397
    .end local v14    # "lineSizebaseX":F
    .end local v15    # "lineSizebaseY":F
    :cond_6d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_26

    .line 428
    .end local v4    # "absX":D
    .end local v6    # "absY":D
    .end local v8    # "diffX":I
    .end local v9    # "diffY":I
    .end local v10    # "distance":D
    .end local v12    # "distance_square":D
    .end local v16    # "threshold":D
    :pswitch_889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->prevPressTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    .line 442
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L

    cmpg-double v18, v18, v20

    if-gez v18, :cond_a36

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x258

    cmp-long v18, v18, v20

    if-lez v18, :cond_26

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->playSound()V

    goto/16 :goto_26

    .line 458
    :cond_a36
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_26

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_26

    .line 284
    :pswitch_data_b7e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_889
        :pswitch_1de
        :pswitch_26
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 502
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 540
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->clearAllViews()V

    .line 525
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 568
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method public setAnimation()V
    .registers 3

    .prologue
    const v1, 0x7f040008

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAnim:Landroid/view/animation/Animation;

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAnim:Landroid/view/animation/Animation;

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

    .line 169
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 621
    return-void
.end method

.method public setLayout()V
    .registers 2

    .prologue
    .line 145
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    .line 151
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    .line 154
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    .line 157
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    .line 160
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    .line 161
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->checkSound()V

    .line 508
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setSound()V

    .line 509
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 4
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 556
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 562
    return-void
.end method
