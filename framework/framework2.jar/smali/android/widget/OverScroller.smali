.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static final THRESHOLD_RATIO_X:I = 0x30

.field private static final THRESHOLD_RATIO_Y:I = 0x50


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private final mFlywheel:Z

.field private mHapticFlingXFinished:Z

.field private mHapticFlingYFinished:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHapticView:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsListViewClient:Z

.field private mLastHapticScrollX:I

.field private mLastHapticScrollY:I

.field private mMode:I

.field private mPixelThresholdX:I

.field protected mPixelThresholdY:I

.field private final mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 59
    iput-boolean v1, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    .line 60
    iput-boolean v1, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    .line 70
    iput-boolean v0, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    .line 110
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 111
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    .line 112
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    .line 113
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    .line 117
    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_3f

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x30

    iput v0, p0, Landroid/widget/OverScroller;->mPixelThresholdX:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x50

    iput v0, p0, Landroid/widget/OverScroller;->mPixelThresholdY:I

    .line 124
    :cond_3f
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .registers 3

    .prologue
    .line 704
    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_17

    .line 705
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v0, :cond_17

    :cond_c
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 706
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x5226

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 710
    :cond_17
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 711
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 712
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 13

    .prologue
    const/16 v11, 0x5221

    const/16 v10, 0x521c

    const/16 v9, 0x5212

    const/4 v6, 0x1

    .line 360
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 361
    const/4 v6, 0x0

    .line 499
    :cond_e
    :goto_e
    return v6

    .line 364
    :cond_f
    iget v7, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v7, :pswitch_data_160

    goto :goto_e

    .line 366
    :pswitch_15
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 369
    .local v4, "time":J
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v7

    sub-long v1, v4, v7

    .line 371
    .local v1, "elapsedTime":J
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    .line 372
    .local v0, "duration":I
    int-to-long v7, v0

    cmp-long v7, v1, v7

    if-gez v7, :cond_5a

    .line 373
    long-to-float v7, v1

    int-to-float v8, v0

    div-float v3, v7, v8

    .line 375
    .local v3, "q":F
    iget-object v7, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_53

    .line 376
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 381
    :goto_38
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 382
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v3}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 385
    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_e

    .line 386
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    .line 387
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    goto :goto_e

    .line 378
    :cond_53
    iget-object v7, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_38

    .line 392
    .end local v3    # "q":F
    :cond_5a
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_e

    .line 397
    .end local v0    # "duration":I
    .end local v1    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_5e
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v7

    if-nez v7, :cond_98

    .line 398
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v7

    if-nez v7, :cond_de

    .line 399
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v7

    if-nez v7, :cond_98

    .line 402
    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_93

    .line 403
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-nez v7, :cond_93

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_93

    .line 404
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-eqz v7, :cond_91

    .line 405
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 406
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 413
    :cond_91
    :goto_91
    iput-boolean v6, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    .line 417
    :cond_93
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 445
    :cond_98
    :goto_98
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v7}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 446
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v7

    if-nez v7, :cond_11f

    .line 447
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v7

    if-nez v7, :cond_e

    .line 449
    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_d1

    .line 450
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v7, :cond_d1

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_d1

    .line 451
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-eqz v7, :cond_cf

    .line 452
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-nez v7, :cond_cf

    .line 453
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v7

    if-eqz v7, :cond_119

    .line 454
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 462
    :cond_cf
    :goto_cf
    iput-boolean v6, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    .line 466
    :cond_d1
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto/16 :goto_e

    .line 409
    :cond_d8
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_91

    .line 423
    :cond_de
    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_98

    .line 424
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mPixelThresholdX:I

    if-le v7, v8, :cond_98

    .line 425
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-nez v7, :cond_10c

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_10c

    .line 426
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    if-eqz v7, :cond_113

    .line 427
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v7, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v7, :cond_10c

    .line 428
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 430
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iput-boolean v6, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 438
    :cond_10c
    :goto_10c
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    goto :goto_98

    .line 434
    :cond_113
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_10c

    .line 457
    :cond_119
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_cf

    .line 471
    :cond_11f
    iget-boolean v7, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v7, :cond_e

    .line 472
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/OverScroller;->mPixelThresholdY:I

    if-le v7, v8, :cond_e

    .line 473
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v7, :cond_151

    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v7, :cond_151

    .line 474
    iget-boolean v7, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-nez v7, :cond_151

    .line 475
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    if-eqz v7, :cond_159

    .line 476
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v7, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v7, :cond_151

    .line 477
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 479
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iput-boolean v6, v7, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 489
    :cond_151
    :goto_151
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iput v7, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    goto/16 :goto_e

    .line 483
    :cond_159
    iget-object v7, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_151

    .line 364
    nop

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_15
        :pswitch_5e
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 3
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 316
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 317
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 20
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 562
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 563
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 19
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 595
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_36

    .line 596
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v6

    .line 597
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v7

    .line 598
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    .line 600
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 601
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 605
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_36
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 606
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 607
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 611
    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_72

    .line 612
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    if-eq p1, v0, :cond_63

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_63

    .line 613
    iput p1, p0, Landroid/widget/OverScroller;->mLastHapticScrollX:I

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    .line 617
    :cond_63
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-eq p2, v0, :cond_72

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_72

    .line 618
    iput p2, p0, Landroid/widget/OverScroller;->mLastHapticScrollY:I

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    .line 623
    :cond_72
    return-void
.end method

.method public final forceFinished(Z)V
    .registers 4
    .param p1, "finished"    # Z

    .prologue
    .line 198
    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_19

    .line 199
    if-eqz p1, :cond_19

    .line 200
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v0, :cond_19

    :cond_e
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 201
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x5226

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 206
    :cond_19
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    .line 207
    return-void
.end method

.method public getCurrVelocity()F
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 234
    .local v0, "squaredNorm":F
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 235
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public getCurrVelocity(Z)F
    .registers 3
    .param p1, "isYVelocity"    # Z

    .prologue
    .line 242
    if-eqz p1, :cond_9

    .line 243
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    .line 245
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    goto :goto_8
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isOverScrolled()Z
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isScrollingInDirection(FF)Z
    .registers 7
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 747
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 748
    .local v0, "dx":I
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 749
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 6
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 640
    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1a

    .line 641
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-eqz v0, :cond_1a

    .line 642
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x4ea2

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingXFinished:Z

    .line 647
    :cond_1a
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 648
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 6
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 665
    iget-boolean v0, p0, Landroid/widget/OverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1a

    .line 666
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    if-eqz v0, :cond_1a

    .line 667
    iget-object v0, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    const/16 v1, 0x4ea2

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller;->mHapticFlingYFinished:Z

    .line 672
    :cond_1a
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 673
    return-void
.end method

.method public setFinalX(I)V
    .registers 3
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 335
    return-void
.end method

.method public setFinalY(I)V
    .registers 3
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 353
    return-void
.end method

.method public final setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .prologue
    .line 173
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 174
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 175
    return-void
.end method

.method public setHapticView(Landroid/view/View;Landroid/view/HapticPreDrawListener;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hapticPreDrawListener"    # Landroid/view/HapticPreDrawListener;

    .prologue
    .line 719
    iput-object p1, p0, Landroid/widget/OverScroller;->mHapticView:Landroid/view/View;

    .line 720
    iput-object p2, p0, Landroid/widget/OverScroller;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 721
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 162
    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 163
    return-void
.end method

.method public setIsListViewClient(Z)V
    .registers 2
    .param p1, "isListViewClient"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Landroid/widget/OverScroller;->mIsListViewClient:Z

    .line 728
    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 552
    iput v2, p0, Landroid/widget/OverScroller;->mMode:I

    .line 555
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 556
    .local v0, "spingbackX":Z
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 557
    .local v1, "spingbackY":Z
    if-nez v0, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public startScroll(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 517
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 518
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 534
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 535
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 536
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 537
    return-void
.end method

.method public timePassed()I
    .registers 9

    .prologue
    .line 738
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 739
    .local v2, "time":J
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 740
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
