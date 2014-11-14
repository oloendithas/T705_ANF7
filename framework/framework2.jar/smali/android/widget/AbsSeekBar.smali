.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static final SLIDING_DURATION:I = 0x190

.field private static final SLIDING_FOR_MUTE_DURATION:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private animationAllowdedMax:I

.field private animationTargetLevel:I

.field private currentDrawbleResource:I

.field private currentProgressLevel:I

.field private isAnimationAllowdedMax:Z

.field private isDraggingForSliding:Z

.field private isFirstSetProgress:Z

.field private isMuteNow:Z

.field private isThumbChanged:Z

.field private mDisabledAlpha:F

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mMuteAnimation:Z

.field private mScaledTouchSlop:I

.field private mSlidingAnimation:Z

.field protected mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F

.field private misCurrentThumbInit:Z

.field private misSeebarAnimationAvailable:Z

.field private mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

.field private muteAnimationSet:Landroid/animation/AnimatorSet;

.field private muteVibrateDistanceLevel:I

.field private muteVibrateDuration:I

.field private muteVibrateTotal:I

.field private slidingAnimation:Landroid/animation/ValueAnimator;

.field private thumbScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 69
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 78
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    .line 90
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 91
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 92
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 93
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 94
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    .line 98
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    .line 100
    const/16 v0, 0x190

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 103
    const-string v0, "AbsSeekBar"

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misCurrentThumbInit:Z

    .line 107
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 69
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 78
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    .line 90
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 91
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 92
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 93
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 94
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    .line 98
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    .line 100
    const/16 v0, 0x190

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 103
    const-string v0, "AbsSeekBar"

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misCurrentThumbInit:Z

    .line 107
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 69
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 78
    iput v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 89
    iput v6, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    .line 90
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 91
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 92
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 93
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 94
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    .line 98
    const/16 v3, 0x1f4

    iput v3, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    .line 99
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    .line 100
    const/16 v3, 0x190

    iput v3, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 103
    const-string v3, "AbsSeekBar"

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    .line 104
    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->misCurrentThumbInit:Z

    .line 107
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 120
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 127
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    const/high16 v3, 0x3f000000

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 136
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 139
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsSeekBar Constructor: misSeebarAnimationAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AbsSeekBar;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/AbsSeekBar;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/AbsSeekBar;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->isMuteNow:Z

    return v0
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 628
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 630
    :cond_a
    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 749
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 750
    :cond_22
    return-void
.end method

.method private initMuteAnimation()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 761
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    .line 763
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget v9, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    mul-int/lit8 v6, v9, 0x2

    .line 765
    .local v6, "total":I
    iget v9, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    div-int v1, v9, v6

    .line 766
    .local v1, "duration":I
    iget v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 767
    .local v0, "distance":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v6, :cond_5e

    .line 768
    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_51

    move v3, v7

    .line 769
    .local v3, "isGoingDirection":Z
    :goto_21
    if-eqz v3, :cond_53

    new-array v9, v13, [I

    aput v8, v9, v8

    aput v0, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 770
    .local v5, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :goto_2d
    int-to-long v9, v1

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 771
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 772
    new-instance v9, Landroid/widget/AbsSeekBar$2;

    invoke-direct {v9, p0}, Landroid/widget/AbsSeekBar$2;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 778
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    if-eqz v3, :cond_4e

    int-to-double v9, v0

    const-wide v11, 0x3fe3333333333333L

    mul-double/2addr v9, v11

    double-to-int v0, v9

    .line 767
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .end local v3    # "isGoingDirection":Z
    .end local v5    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_51
    move v3, v8

    .line 768
    goto :goto_21

    .line 769
    .restart local v3    # "isGoingDirection":Z
    :cond_53
    new-array v9, v13, [I

    aput v0, v9, v8

    aput v8, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2d

    .line 781
    .end local v3    # "isGoingDirection":Z
    :cond_5e
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 782
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 15
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 444
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 445
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 446
    .local v6, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 447
    .local v4, "thumbHeight":I
    sub-int/2addr v0, v6

    .line 450
    iget v8, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    .line 452
    int-to-float v8, v0

    mul-float/2addr v8, p3

    float-to-int v5, v8

    .line 455
    .local v5, "thumbPos":I
    const/high16 v8, -0x80000000

    if-ne p4, v8, :cond_37

    .line 456
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 457
    .local v3, "oldBounds":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 458
    .local v7, "topBound":I
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 465
    .end local v3    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_25
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_3b

    iget-boolean v8, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_3b

    sub-int v2, v0, v5

    .line 466
    .local v2, "left":I
    :goto_31
    add-int v8, v2, v6

    invoke-virtual {p2, v2, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    return-void

    .line 460
    .end local v1    # "bottomBound":I
    .end local v2    # "left":I
    .end local v7    # "topBound":I
    :cond_37
    move v7, p4

    .line 461
    .restart local v7    # "topBound":I
    add-int v1, p4, v4

    .restart local v1    # "bottomBound":I
    goto :goto_25

    :cond_3b
    move v2, v5

    .line 465
    goto :goto_31
.end method

.method private trackHoverEvent(II)V
    .registers 10
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 880
    .local v4, "width":I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 882
    .local v0, "available":I
    const/4 v1, 0x0

    .line 884
    .local v1, "hoverLevel":F
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge p1, v5, :cond_1d

    .line 885
    const/4 v3, 0x0

    .line 893
    .local v3, "scale":F
    :goto_12
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    .line 894
    .local v2, "max":I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 895
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 896
    return-void

    .line 886
    .end local v2    # "max":I
    .end local v3    # "scale":F
    :cond_1d
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_26

    .line 887
    const/high16 v3, 0x3f800000

    .restart local v3    # "scale":F
    goto :goto_12

    .line 889
    .end local v3    # "scale":F
    :cond_26
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 890
    .restart local v3    # "scale":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_12
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 589
    .local v4, "width":I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 590
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 592
    .local v5, "x":I
    const/4 v2, 0x0

    .line 593
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_57

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_57

    .line 594
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_44

    .line 595
    const/4 v3, 0x0

    .line 612
    .local v3, "scale":F
    :goto_23
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 613
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 615
    int-to-float v6, v1

    mul-float/2addr v6, v3

    float-to-int v7, v2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3e

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3e

    .line 616
    const/high16 v6, 0x3f800000

    add-float/2addr v2, v6

    .line 619
    :cond_3e
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 620
    return-void

    .line 596
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_44
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_4b

    .line 597
    const/high16 v3, 0x3f800000

    .restart local v3    # "scale":F
    goto :goto_23

    .line 599
    .end local v3    # "scale":F
    :cond_4b
    sub-int v6, v0, v5

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 600
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_23

    .line 603
    .end local v3    # "scale":F
    :cond_57
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_5d

    .line 604
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_23

    .line 605
    .end local v3    # "scale":F
    :cond_5d
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_66

    .line 606
    const/high16 v3, 0x3f800000

    .restart local v3    # "scale":F
    goto :goto_23

    .line 608
    .end local v3    # "scale":F
    :cond_66
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 609
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_23
.end method

.method private updateThumbPos(II)V
    .registers 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v8, 0x0

    .line 404
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 405
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 406
    .local v5, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_61

    move v6, v8

    .line 409
    .local v6, "thumbHeight":I
    :goto_a
    iget v9, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 411
    .local v7, "trackHeight":I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    .line 412
    .local v3, "max":I
    if-lez v3, :cond_66

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 414
    .local v4, "scale":F
    :goto_25
    if-le v6, v7, :cond_68

    .line 415
    if-eqz v5, :cond_2c

    .line 416
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 418
    :cond_2c
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 419
    .local v2, "gapForCenteringTrack":I
    if-eqz v0, :cond_44

    .line 421
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    .end local v2    # "gapForCenteringTrack":I
    :cond_44
    :goto_44
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_60

    .line 437
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    iput v8, p0, Landroid/widget/AbsSeekBar;->thumbScale:F

    .line 438
    :cond_60
    return-void

    .line 406
    .end local v3    # "max":I
    .end local v4    # "scale":F
    .end local v6    # "thumbHeight":I
    .end local v7    # "trackHeight":I
    :cond_61
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_a

    .line 412
    .restart local v3    # "max":I
    .restart local v6    # "thumbHeight":I
    .restart local v7    # "trackHeight":I
    :cond_66
    const/4 v4, 0x0

    goto :goto_25

    .line 426
    .restart local v4    # "scale":F
    :cond_68
    if-eqz v0, :cond_7b

    .line 428
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    :cond_7b
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 432
    .local v1, "gap":I
    if-eqz v5, :cond_44

    .line 433
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_44
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 5

    .prologue
    .line 299
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 301
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 302
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0xff

    :goto_11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 306
    :cond_14
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 308
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 310
    .end local v1    # "state":[I
    :cond_29
    return-void

    .line 303
    :cond_2a
    const/high16 v2, 0x437f0000

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_11
.end method

.method public getKeyProgressIncrement()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 289
    return-void
.end method

.method public isDeviceDefaultTheme()Z
    .registers 6

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "result":Z
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 149
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 152
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1b

    .line 154
    const/4 v1, 0x1

    .line 161
    :goto_1a
    return v1

    .line 158
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public isMuteAnimation()Z
    .registers 2

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    return v0
.end method

.method public isSlidingAnimation()Z
    .registers 2

    .prologue
    .line 788
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 294
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 295
    :cond_c
    return-void
.end method

.method public muteAnimationStart()V
    .registers 2

    .prologue
    .line 756
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    .line 757
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 758
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 484
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1f

    .line 485
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 488
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 492
    :cond_1f
    monitor-exit p0

    return-void

    .line 483
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onHoverChanged(III)V
    .registers 4
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 876
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 830
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v5, :cond_5f

    :cond_10
    move v1, v5

    .line 833
    .local v1, "isPossibleTooltype":Z
    :goto_11
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mouse_hovering"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_38

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mouse_hovering_progress_bar_preview"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_38

    .line 836
    if-nez v1, :cond_37

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v8, :cond_61

    :cond_37
    move v1, v5

    .line 841
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_5a

    if-eqz v1, :cond_5a

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 843
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 844
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 845
    .local v3, "y":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_63

    .line 847
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 848
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 866
    .end local v0    # "action":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_5a
    :goto_5a
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .end local v1    # "isPossibleTooltype":Z
    :cond_5f
    move v1, v4

    .line 830
    goto :goto_11

    .restart local v1    # "isPossibleTooltype":Z
    :cond_61
    move v1, v4

    .line 836
    goto :goto_38

    .line 850
    .restart local v0    # "action":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_63
    const/4 v4, 0x7

    if-ne v0, v4, :cond_8b

    .line 851
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 852
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 855
    iget v4, p0, Landroid/view/View;->mHoverPopupType:I

    if-ne v4, v8, :cond_5a

    .line 858
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAdjustedRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAdjustedRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_5a

    .line 862
    :cond_8b
    const/16 v4, 0xa

    if-ne v0, v4, :cond_5a

    .line 863
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_5a
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 677
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 678
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 679
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 683
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 684
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 687
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 688
    .local v0, "progress":I
    if-lez v0, :cond_1d

    .line 689
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 691
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 692
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 695
    .end local v0    # "progress":I
    :cond_28
    return-void
.end method

.method onKeyChange()V
    .registers 1

    .prologue
    .line 651
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 655
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 656
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 657
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_30

    .line 672
    .end local v0    # "progress":I
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_12
    return v1

    .line 659
    .restart local v0    # "progress":I
    :pswitch_13
    if-lez v0, :cond_e

    .line 660
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 661
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_12

    .line 665
    :pswitch_20
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 666
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 667
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_12

    .line 657
    :pswitch_data_30
    .packed-switch 0x15
        :pswitch_13
        :pswitch_20
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 496
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 498
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4d

    .line 499
    .local v3, "thumbHeight":I
    :goto_a
    const/4 v2, 0x0

    .line 500
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 501
    .local v1, "dh":I
    if-eqz v0, :cond_32

    .line 502
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 503
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 504
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 506
    :cond_32
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 507
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 509
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_54

    .line 511
    monitor-exit p0

    return-void

    .line 498
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_4d
    :try_start_4d
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_54

    move-result v3

    goto :goto_a

    .line 496
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .registers 13
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    const v8, 0x461c4000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 315
    mul-float v7, p1, v8

    float-to-int v3, v7

    .line 316
    .local v3, "targetLevel":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->thumbScale:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7d

    move v1, v5

    .line 324
    .local v1, "isAnimationNeeded":Z
    :goto_1c
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isSlidingAnimation()Z

    move-result v7

    if-eqz v7, :cond_7f

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-eqz v7, :cond_2a

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    if-eqz v7, :cond_7f

    :cond_2a
    if-eqz v1, :cond_7f

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    if-nez v7, :cond_7f

    move v2, v5

    .line 332
    .local v2, "isStartingAnimator":Z
    :goto_31
    if-eqz v2, :cond_95

    .line 333
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    .line 335
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    if-eqz v7, :cond_81

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-nez v7, :cond_81

    iget v7, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    if-eqz v7, :cond_81

    if-nez v3, :cond_81

    move v7, v5

    :goto_45
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->isMuteNow:Z

    .line 340
    iput v3, p0, Landroid/widget/AbsSeekBar;->animationTargetLevel:I

    .line 341
    const/4 v7, 0x2

    new-array v7, v7, [I

    iget v8, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    aput v8, v7, v6

    aput v3, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    .line 342
    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->isMuteNow:Z

    if-eqz v5, :cond_83

    .line 343
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 344
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    :goto_6d
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v6, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 384
    :cond_7c
    :goto_7c
    return-void

    .end local v1    # "isAnimationNeeded":Z
    .end local v2    # "isStartingAnimator":Z
    :cond_7d
    move v1, v6

    .line 316
    goto :goto_1c

    .restart local v1    # "isAnimationNeeded":Z
    :cond_7f
    move v2, v6

    .line 324
    goto :goto_31

    .restart local v2    # "isStartingAnimator":Z
    :cond_81
    move v7, v6

    .line 335
    goto :goto_45

    .line 346
    :cond_83
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/AbsSeekBar$QuintEaseOut;

    invoke-direct {v6}, Landroid/widget/AbsSeekBar$QuintEaseOut;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6d

    .line 358
    :cond_95
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 360
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_bc

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 361
    iget v7, p0, Landroid/widget/AbsSeekBar;->animationTargetLevel:I

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000

    div-float v0, v7, v8

    .line 362
    .local v0, "diff":F
    const/high16 v7, 0x41a00000

    cmpl-float v7, v0, v7

    if-lez v7, :cond_bc

    .line 363
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    .line 364
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 367
    .end local v0    # "diff":F
    :cond_bc
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isSlidingAnimation()Z

    move-result v7

    if-eqz v7, :cond_cf

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-nez v7, :cond_cf

    if-nez v1, :cond_cf

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v7, :cond_cf

    .line 368
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 371
    :cond_cf
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 372
    iput v3, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    .line 373
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 374
    .local v4, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_7c

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-direct {p0, v5, v4, p1, v6}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_7c
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 476
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 477
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 479
    :cond_c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 7
    .param p1, "layoutDirection"    # I

    .prologue
    .line 730
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 732
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 733
    .local v0, "max":I
    if-lez v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 735
    .local v1, "scale":F
    :goto_11
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 736
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_21

    .line 737
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, v1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 743
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 745
    :cond_21
    return-void

    .line 733
    .end local v1    # "scale":F
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_22
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 400
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 401
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .registers 6
    .param p1, "level"    # I

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    .line 389
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 390
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_19

    .line 391
    int-to-float v2, p1

    const v3, 0x461c4000

    div-float v0, v2, v3

    .line 392
    .local v0, "scale":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 395
    .end local v0    # "scale":F
    :cond_19
    return-void
.end method

.method onStartTrackingHover(III)V
    .registers 4
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 870
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 637
    return-void
.end method

.method public onStopDraggingState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 923
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopDraggingState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-eqz v0, :cond_f

    .line 926
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 928
    :cond_f
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_19

    .line 929
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 930
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 933
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 934
    return-void
.end method

.method onStopTrackingHover()V
    .registers 1

    .prologue
    .line 873
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 645
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 515
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 584
    :cond_d
    :goto_d
    return v1

    .line 519
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_b2

    goto :goto_d

    .line 521
    :pswitch_16
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_d

    .line 525
    :cond_25
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isSlidingAnimation()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 526
    :cond_2e
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3b

    .line 527
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 529
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 530
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 531
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_d

    .line 536
    :pswitch_45
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 537
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_52

    .line 538
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 539
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_d

    .line 541
    :cond_52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 542
    .local v0, "x":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 543
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 544
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_75

    .line 545
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 547
    :cond_75
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 548
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 549
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_d

    .line 555
    .end local v0    # "x":F
    :pswitch_7f
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-eqz v3, :cond_85

    .line 556
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 558
    :cond_85
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_97

    .line 559
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 560
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 561
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 572
    :goto_92
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_d

    .line 565
    :cond_97
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 566
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 567
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_92

    .line 576
    :pswitch_a1
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 577
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_ad

    .line 578
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 579
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 581
    :cond_ad
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_d

    .line 519
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_7f
        :pswitch_45
        :pswitch_a1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 699
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 725
    :goto_8
    return v2

    .line 702
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_11

    move v2, v3

    .line 703
    goto :goto_8

    .line 705
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    .line 706
    .local v1, "progress":I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 707
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_48

    move v2, v3

    .line 725
    goto :goto_8

    .line 709
    :sswitch_2a
    if-gtz v1, :cond_2e

    move v2, v3

    .line 710
    goto :goto_8

    .line 712
    :cond_2e
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 713
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_8

    .line 717
    :sswitch_37
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3f

    move v2, v3

    .line 718
    goto :goto_8

    .line 720
    :cond_3f
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 721
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_8

    .line 707
    :sswitch_data_48
    .sparse-switch
        0x1000 -> :sswitch_37
        0x2000 -> :sswitch_2a
    .end sparse-switch
.end method

.method public setHoverPopupType(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 903
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 915
    :goto_6
    return-void

    .line 906
    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2a

    .line 907
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 909
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 910
    .local v0, "contentHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 911
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 914
    .end local v0    # "contentHeight":I
    :cond_2a
    invoke-super {p0, p1}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_6
.end method

.method public setKeyProgressIncrement(I)V
    .registers 2
    .param p1, "increment"    # I

    .prologue
    .line 249
    if-gez p1, :cond_3

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_3
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 250
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 6
    .param p1, "max"    # I

    .prologue
    const/4 v0, 0x1

    .line 266
    monitor-enter p0

    :try_start_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 268
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v1, v2

    const/16 v2, 0x14

    if-le v1, v2, :cond_2b

    .line 271
    :cond_17
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41a00000

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 273
    :cond_2b
    iget v1, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    if-gt p1, v1, :cond_33

    :goto_2f
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_35

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :cond_33
    const/4 v0, 0x0

    goto :goto_2f

    .line 266
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMuteAnimation(Z)V
    .registers 3
    .param p1, "muteAnimation"    # Z

    .prologue
    .line 810
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    if-eqz v0, :cond_6

    .line 811
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 812
    :cond_6
    return-void
.end method

.method public setSlidingAnimation(Z)V
    .registers 3
    .param p1, "slidingAnimation"    # Z

    .prologue
    .line 795
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    if-eqz v0, :cond_6

    .line 796
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 797
    :cond_6
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isThumbChanged:Z

    .line 177
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_6b

    .line 178
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    const/4 v0, 0x1

    .line 183
    .local v0, "needUpdate":Z
    :goto_12
    if-eqz p1, :cond_49

    .line 184
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 192
    :cond_24
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 195
    if-eqz v0, :cond_49

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_46

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_49

    .line 198
    :cond_46
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 201
    :cond_49
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 203
    if-eqz v0, :cond_6a

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 205
    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 209
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 212
    .end local v1    # "state":[I
    :cond_6a
    return-void

    .line 181
    .end local v0    # "needUpdate":Z
    :cond_6b
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_12
.end method

.method public setThumbOffset(I)V
    .registers 2
    .param p1, "thumbOffset"    # I

    .prologue
    .line 238
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 240
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 278
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
