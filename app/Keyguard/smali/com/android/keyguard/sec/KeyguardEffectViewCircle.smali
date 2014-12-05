.class public Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewCircle.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final ARR0W_FADE_IN_OFFSET:I

.field private final ARR0W_FADE_OUT_OFFSET:I

.field private final ARROW_FADE_IN_DURATION:I

.field private final ARROW_FADE_OUT_DURATION:I

.field private final CIRCLE_CENTER_DOWN_DURATION:I

.field private final CIRCLE_CENTER_UP_DURATION:I

.field private final CIRCLE_LOOP_DURATION:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_OUT_DURATION:I

.field private final FIRST_MOVE_DURATION:I

.field private final INIT_ANGLE_CIRCLE_1:I

.field private final INIT_ANGLE_CIRCLE_2:I

.field private final INIT_ANGLE_CIRCLE_3:I

.field private final LOOP_HANDLER_WHAT:I

.field private final SHORT_TAP_FIRST_DURATION:I

.field private final SHORT_TAP_FIRST_STARTOFF:I

.field private final SHORT_TAP_SECOND_DURATION:I

.field private final SHORT_TAP_SECOND_STARTOFF:I

.field protected TAG:Ljava/lang/String;

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private arrow:Landroid/widget/ImageView;

.field private arrowContainer:Landroid/widget/LinearLayout;

.field private arrowFadeIn:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeOut:Landroid/view/animation/AlphaAnimation;

.field private arrowFadeSet:Landroid/view/animation/AnimationSet;

.field private circleAlphaIn1:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn2:Landroid/animation/ObjectAnimator;

.field private circleAlphaIn3:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut1:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut2:Landroid/animation/ObjectAnimator;

.field private circleAlphaOut3:Landroid/animation/ObjectAnimator;

.field private circleSet1:Landroid/animation/AnimatorSet;

.field private circleSet2:Landroid/animation/AnimatorSet;

.field private circleSet3:Landroid/animation/AnimatorSet;

.field private circleUpSet:Landroid/animation/AnimatorSet;

.field private circle_1:Landroid/widget/ImageView;

.field private circle_2:Landroid/widget/ImageView;

.field private circle_3:Landroid/widget/ImageView;

.field private firstMoveSet:Landroid/animation/AnimatorSet;

.field private isAffordanceLoop:Z

.field private isAnimationOn:Z

.field private isIgnoreTouch:Z

.field private isPlayAffordance:Z

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

.field private mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

.field private mCircleInPress:Landroid/widget/ImageView;

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field protected mCircleRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mDownFirst:Z

.field private mHandlerForRepeat:Landroid/os/Handler;

.field protected mX:F

.field protected mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private radian:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x258

    const/16 v6, 0x12c

    const/16 v5, 0x10b

    const/16 v4, 0x320

    const/4 v3, 0x0

    .line 187
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v1, "CircleLockScreen"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    .line 66
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_MAX_ALPHA:I

    .line 68
    const-wide v1, 0x3fe99999a0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->UNLOCK_RELEASE_THRESHOLD:D

    .line 70
    const-wide v1, 0x3ff4ccccc0000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->UNLOCK_DRAG_THRESHOLD:D

    .line 80
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARROW_FADE_IN_DURATION:I

    .line 82
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARROW_FADE_OUT_DURATION:I

    .line 84
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARR0W_FADE_IN_OFFSET:I

    .line 86
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->ARR0W_FADE_OUT_OFFSET:I

    .line 88
    const/16 v1, 0x52

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->INIT_ANGLE_CIRCLE_1:I

    .line 90
    const/16 v1, 0x139

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->INIT_ANGLE_CIRCLE_2:I

    .line 92
    const/16 v1, 0x41

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->INIT_ANGLE_CIRCLE_3:I

    .line 94
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_CENTER_DOWN_DURATION:I

    .line 96
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_CENTER_UP_DURATION:I

    .line 98
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_FIRST_DURATION:I

    .line 100
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_FIRST_STARTOFF:I

    .line 102
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_SECOND_DURATION:I

    .line 104
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->SHORT_TAP_SECOND_STARTOFF:I

    .line 106
    const/16 v1, 0x514

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_LOOP_DURATION:I

    .line 108
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->CIRCLE_OUT_DURATION:I

    .line 110
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->FIRST_MOVE_DURATION:I

    .line 112
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->LOOP_HANDLER_WHAT:I

    .line 172
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    .line 174
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    .line 178
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    .line 182
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    .line 188
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mContext:Landroid/content/Context;

    .line 189
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 190
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030009

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setLayout()V

    .line 193
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setHandler()V

    .line 194
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setAnimation()V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)Landroid/view/animation/AnimationSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private clearAllViews()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearCircleAnimation()V

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 688
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 689
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 690
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 691
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 692
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 693
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    return-void
.end method

.method private createArrowAnimation()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const-wide/16 v3, 0x320

    .line 299
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 303
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 307
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 326
    return-void
.end method

.method private createCircleAnimation()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x12c

    const-wide/16 v9, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_14c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_154

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 257
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_15c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_164

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 267
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_16c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_174

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 278
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 282
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    .line 283
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    return-void

    .line 250
    :array_14c
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 253
    :array_154
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 260
    :array_15c
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 263
    :array_164
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 271
    :array_16c
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 274
    :array_174
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private createCircleCenterAnimation()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x10b

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 240
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 244
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 247
    return-void
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .registers 7
    .param p1, "value"    # D

    .prologue
    .line 583
    const/16 v2, 0x1c

    new-array v1, v2, [I

    fill-array-data v1, :array_26

    .line 600
    .local v1, "unlockscreen_lock_drawables":[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_14

    .line 601
    const/4 v0, 0x0

    .line 607
    .local v0, "index":I
    :goto_11
    aget v2, v1, v0

    return v2

    .line 602
    .end local v0    # "index":I
    :cond_14
    const-wide/high16 v2, 0x3ff0000000000000L

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1e

    .line 603
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "index":I
    goto :goto_11

    .line 605
    .end local v0    # "index":I
    :cond_1e
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "index":I
    goto :goto_11

    .line 583
    nop

    :array_26
    .array-data 4
        0x7f020172
        0x7f020173
        0x7f020174
        0x7f020175
        0x7f020176
        0x7f020177
        0x7f020178
        0x7f020179
        0x7f02017a
        0x7f02017b
        0x7f02017c
        0x7f02017d
        0x7f02017e
        0x7f02017f
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
        0x7f020185
        0x7f020186
        0x7f020187
        0x7f020188
        0x7f020189
        0x7f02018a
        0x7f02018b
        0x7f02018c
        0x7f02018d
    .end array-data
.end method

.method private playUnlockAffordance()V
    .registers 7

    .prologue
    const/16 v2, 0xff

    .line 729
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "-------------------------------- affordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    .line 733
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    .line 734
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    .line 736
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 737
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 740
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 741
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 745
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    .line 746
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    .line 748
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    .line 749
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    .line 754
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 755
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    .line 757
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    .line 760
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v2, v0

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;)V

    .line 766
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 767
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 768
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    .line 769
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 770
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 771
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 772
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 773
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 776
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->startCircleAnimation()V

    .line 777
    return-void
.end method

.method private setAnimation()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createCircleCenterAnimation()V

    .line 235
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createCircleAnimation()V

    .line 236
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->createArrowAnimation()V

    .line 237
    return-void
.end method

.method private setHandler()V
    .registers 2

    .prologue
    .line 210
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mHandlerForRepeat:Landroid/os/Handler;

    .line 231
    return-void
.end method

.method private setInnerCircle(Landroid/view/View;D)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "value"    # D

    .prologue
    .line 329
    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, p2

    double-to-int v0, v1

    .line 330
    .local v0, "alpha":I
    const/16 v1, 0xff

    if-le v0, v1, :cond_17

    const/4 v0, 0x0

    .line 331
    :goto_c
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 332
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 333
    return-void

    .line 330
    :cond_17
    rsub-int v0, v0, 0xff

    goto :goto_c
.end method

.method private startCircleAnimation()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 615
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 616
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 623
    return-void
.end method

.method private stopUnlockAffordance()V
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 781
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    .line 784
    :cond_c
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    .line 660
    return-void
.end method

.method public clearCircleAnimation()V
    .registers 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 628
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 629
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 630
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaIn3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 631
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleAlphaOut3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 633
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 635
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 636
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 638
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3b

    .line 639
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 640
    :cond_3b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mHandlerForRepeat:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 679
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 41
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 354
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    .line 356
    :cond_1c
    const/16 v30, 0x0

    .line 560
    :goto_1e
    return v30

    .line 359
    :cond_1f
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    .line 364
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    .line 365
    .local v26, "touchedEventX":F
    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 367
    .local v27, "touchedEventY":F
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v30, v0

    if-eqz v30, :cond_4f

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v30

    sub-float v26, v26, v30

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v30

    sub-float v27, v27, v30

    .line 372
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "touchedEventX = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    if-nez v30, :cond_85

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v30, 0x0

    goto :goto_1e

    .line 378
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v30

    if-nez v30, :cond_9f

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/16 v30, 0x0

    goto :goto_1e

    .line 382
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v30

    if-nez v30, :cond_ba

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v30, 0x0

    goto/16 :goto_1e

    .line 388
    :cond_ba
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    packed-switch v30, :pswitch_data_626

    .line 560
    :cond_c1
    :goto_c1
    :pswitch_c1
    const/16 v30, 0x1

    goto/16 :goto_1e

    .line 391
    :pswitch_c5
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    .line 392
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    .line 394
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAffordanceLoop:Z

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0xff

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 399
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->clearAnimation()V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 406
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    .line 407
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    .line 409
    if-nez p1, :cond_1e7

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "handleTouchEvent : view = default circleunlock"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 413
    .local v28, "xOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 431
    .local v29, "yOffset":I
    :goto_162
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimDown:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 437
    .local v16, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v20, v30, v28

    .line 439
    .local v20, "rightMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    sub-int v8, v30, v29

    .line 441
    .local v8, "bottomMargin":I
    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 442
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 443
    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 444
    move-object/from16 v0, v16

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowFadeSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->startCircleAnimation()V

    goto/16 :goto_c1

    .line 415
    .end local v8    # "bottomMargin":I
    .end local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "rightMargin":I
    .end local v28    # "xOffset":I
    .end local v29    # "yOffset":I
    :cond_1e7
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v30, v0

    if-eqz v30, :cond_266

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "handleTouchEvent : view = Image Button"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 421
    .restart local v28    # "xOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .restart local v29    # "yOffset":I
    goto/16 :goto_162

    .line 424
    .end local v28    # "xOffset":I
    .end local v29    # "yOffset":I
    :cond_266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "handleTouchEvent : view = Shortcut"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    move/from16 v30, v0

    sub-float v30, v30, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    .line 426
    .restart local v28    # "xOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    move/from16 v30, v0

    sub-float v30, v30, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .restart local v29    # "yOffset":I
    goto/16 :goto_162

    .line 453
    .end local v28    # "xOffset":I
    .end local v29    # "yOffset":I
    :pswitch_2cd
    const/4 v10, 0x0

    .line 454
    .local v10, "diffX":I
    const/4 v11, 0x0

    .line 455
    .local v11, "diffY":I
    if-eqz p1, :cond_39c

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v17, v30, 0x2

    .line 459
    .local v17, "mCircleCenterX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    div-int/lit8 v18, v30, 0x2

    .line 460
    .local v18, "mCircleCenterY":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 461
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    .line 472
    .end local v17    # "mCircleCenterX":I
    .end local v18    # "mCircleCenterY":I
    :goto_30b
    int-to-double v0, v10

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    int-to-double v0, v11

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4000000000000000L

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    add-double v14, v30, v32

    .line 473
    .local v14, "distance_square":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 474
    .local v12, "distance":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_3ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 476
    .local v19, "min":I
    :goto_347
    div-int/lit8 v30, v19, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 477
    .local v24, "threshold":D
    div-double v30, v12, v24

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    .line 483
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;D)V

    .line 484
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setInnerCircle(Landroid/view/View;D)V

    .line 486
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpg-double v30, v30, v32

    if-gez v30, :cond_3da

    .line 487
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    .line 532
    :cond_38b
    :goto_38b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_c1

    goto/16 :goto_c1

    .line 467
    .end local v12    # "distance":D
    .end local v14    # "distance_square":D
    .end local v19    # "min":I
    .end local v24    # "threshold":D
    :cond_39c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mX:F

    move/from16 v30, v0

    sub-float v30, v26, v30

    move/from16 v0, v30

    float-to-int v10, v0

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mY:F

    move/from16 v30, v0

    sub-float v30, v27, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    mul-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getHeight()I

    move-result v31

    div-int v11, v30, v31

    goto/16 :goto_30b

    .line 474
    .restart local v12    # "distance":D
    .restart local v14    # "distance_square":D
    :cond_3ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v19

    goto/16 :goto_347

    .line 489
    .restart local v19    # "min":I
    .restart local v24    # "threshold":D
    :cond_3da
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL

    cmpl-double v30, v30, v32

    if-lez v30, :cond_593

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpg-double v30, v30, v32

    if-gez v30, :cond_593

    .line 490
    int-to-double v4, v10

    .line 491
    .local v4, "absX":D
    mul-int/lit8 v30, v11, -0x1

    move/from16 v0, v30

    int-to-double v6, v0

    .line 492
    .local v6, "absY":D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->radian:D

    .line 493
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->radian:D

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x400921fb54442d18L

    div-double v30, v30, v32

    const-wide v32, 0x4066800000000000L

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x42b40000

    add-float v9, v30, v31

    .line 494
    .local v9, "degree":F
    const/high16 v30, 0x42a40000

    sub-float v21, v9, v30

    .line 495
    .local v21, "targetDegree1":F
    const v30, 0x439c8000

    sub-float v22, v9, v30

    .line 496
    .local v22, "targetDegree2":F
    const/high16 v30, 0x42820000

    sub-float v23, v9, v30

    .line 498
    .local v23, "targetDegree3":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    move/from16 v30, v0

    if-eqz v30, :cond_556

    .line 499
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearCircleAnimation()V

    .line 503
    const/16 v30, 0x0

    cmpg-float v30, v21, v30

    if-gez v30, :cond_454

    .line 504
    const/high16 v30, 0x43b40000

    add-float v21, v21, v30

    .line 505
    :cond_454
    const/16 v30, 0x0

    cmpg-float v30, v22, v30

    if-gez v30, :cond_45e

    .line 506
    const/high16 v30, 0x43b40000

    add-float v22, v22, v30

    .line 507
    :cond_45e
    const/16 v30, 0x0

    cmpg-float v30, v23, v30

    if-gez v30, :cond_468

    .line 508
    const/high16 v30, 0x43b40000

    add-float v23, v23, v30

    .line 510
    :cond_468
    new-instance v30, Landroid/animation/AnimatorSet;

    invoke-direct/range {v30 .. v30}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3e99999a

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v21, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/high16 v37, 0x3f000000

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v22, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "alpha"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const v37, 0x3f333333

    aput v37, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const-string v34, "rotation"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput v23, v35, v36

    invoke-static/range {v33 .. v35}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x258

    invoke-virtual/range {v30 .. v32}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    new-instance v31, Landroid/view/animation/interpolator/CubicEaseInOut;

    invoke-direct/range {v31 .. v31}, Landroid/view/animation/interpolator/CubicEaseInOut;-><init>()V

    invoke-virtual/range {v30 .. v31}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 522
    :cond_556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    if-eqz v30, :cond_38b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->firstMoveSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v30

    if-nez v30, :cond_38b

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_38b

    .line 528
    .end local v4    # "absX":D
    .end local v6    # "absY":D
    .end local v9    # "degree":F
    .end local v21    # "targetDegree1":F
    .end local v22    # "targetDegree2":F
    .end local v23    # "targetDegree3":F
    :cond_593
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_38b

    .line 529
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDownFirst:Z

    goto/16 :goto_38b

    .line 537
    .end local v10    # "diffX":I
    .end local v11    # "diffY":I
    .end local v12    # "distance":D
    .end local v14    # "distance_square":D
    .end local v19    # "min":I
    .end local v24    # "threshold":D
    :pswitch_5ac
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    .line 543
    :pswitch_5b4
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isAnimationOn:Z

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->clearAnimation()V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearCircleAnimation()V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circleUpSet:Landroid/animation/AnimatorSet;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/animation/AnimatorSet;->start()V

    .line 554
    const-wide v30, 0x3fe99999a0000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v32, v0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_614

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff4ccccc0000000L

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_c1

    .line 556
    :cond_614
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mDistanceRatio:D

    move-wide/from16 v30, v0

    const-wide v32, 0x3fe99999a0000000L

    cmpg-double v30, v30, v32

    if-gez v30, :cond_c1

    goto/16 :goto_c1

    .line 388
    nop

    :pswitch_data_626
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_5b4
        :pswitch_2cd
        :pswitch_5b4
        :pswitch_c1
        :pswitch_c1
        :pswitch_5ac
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 647
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 698
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 699
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->getUnlockscreenLockImageIdAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleX:F

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->originalCircleY:F

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 684
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->clearAllViews()V

    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    .line 667
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    .line 668
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 796
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isIgnoreTouch:Z

    .line 675
    return-void
.end method

.method public setCenterImage(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 567
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->setCenterImage(Landroid/view/View;D)V

    .line 568
    return-void
.end method

.method protected setCenterImage(Landroid/view/View;D)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "value"    # D

    .prologue
    const/4 v2, 0x1

    .line 571
    if-eqz p1, :cond_7

    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_11

    .line 573
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 580
    :goto_10
    return-void

    .line 575
    :cond_11
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 576
    invoke-virtual {p1, v2}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 577
    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 578
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 801
    return-void
.end method

.method public setLayout()V
    .registers 2

    .prologue
    .line 198
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 199
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleMain:Landroid/widget/FrameLayout;

    .line 200
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleInPress:Landroid/widget/ImageView;

    .line 201
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_1:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_2:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->circle_3:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->mCircleCenter:Landroid/widget/ImageView;

    .line 205
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrow:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->arrowContainer:Landroid/widget/LinearLayout;

    .line 207
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    .line 653
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 8

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->isPlayAffordance:Z

    if-eqz v0, :cond_77

    .line 712
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->stopUnlockAffordance()V

    .line 713
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 714
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 716
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewCircle;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    .line 724
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 726
    :cond_77
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 790
    return-void
.end method
