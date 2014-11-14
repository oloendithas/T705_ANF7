.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_SCALE_Y:F = 1.0f

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_GLOW_HEIGHT:F = 6.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MIN_WIDTH:I = 0xdc

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x10

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0xc


# instance fields
.field private customAPI:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mDuration:F

.field private mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeHeight:I

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowHeight:I

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mGlowWidth:I

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxEffectHeight:I

.field private final mMinWidth:I

.field private mOffsetX:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40c00000

    const/high16 v3, 0x3f000000

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v1, p0, Landroid/widget/EdgeEffect;->customAPI:Z

    .line 133
    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1080631

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 151
    const v1, 0x1080632

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    .line 154
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    .line 155
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    .line 157
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    .line 161
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x435c0000

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    .line 162
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 163
    return-void
.end method

.method private update()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a0000

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    .line 423
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 424
    .local v3, "time":J
    iget-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 426
    .local v2, "t":F
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 428
    .local v1, "interp":F
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 429
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 430
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 431
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 433
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_54

    .line 434
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_c0

    .line 483
    :cond_54
    :goto_54
    return-void

    .line 436
    :pswitch_55
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 437
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 438
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 440
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 441
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 442
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 443
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 446
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 447
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 448
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 449
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    .line 452
    :pswitch_78
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 453
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 454
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 456
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 457
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 458
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 459
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 462
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 463
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 464
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 465
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    .line 470
    :pswitch_9c
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_b8

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 473
    .local v0, "factor":F
    :goto_a9
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 476
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_54

    .line 470
    .end local v0    # "factor":F
    :cond_b8
    const v0, 0x7f7fffff

    goto :goto_a9

    .line 479
    :pswitch_bc
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_54

    .line 434
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_55
        :pswitch_bc
        :pswitch_9c
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x437f0000

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 366
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    .line 368
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 370
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40c00000

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v2, v5

    .line 373
    .local v2, "glowBottom":I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_9d

    .line 375
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 376
    .local v3, "glowLeft":I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v3

    invoke-virtual {v5, v3, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    .end local v3    # "glowLeft":I
    :goto_4c
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 386
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 387
    .local v0, "edgeBottom":I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_a5

    .line 389
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 390
    .local v1, "edgeLeft":I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v1

    invoke-virtual {v5, v1, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 394
    iput v1, p0, Landroid/widget/EdgeEffect;->mOffsetX:I

    .line 400
    .end local v1    # "edgeLeft":I
    :goto_87
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_97

    if-nez v2, :cond_97

    if-nez v0, :cond_97

    .line 403
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 406
    :cond_97
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eqz v5, :cond_9c

    const/4 v4, 0x1

    :cond_9c
    return v4

    .line 379
    .end local v0    # "edgeBottom":I
    :cond_9d
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4c

    .line 397
    .restart local v0    # "edgeBottom":I
    :cond_a5
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 398
    iput v4, p0, Landroid/widget/EdgeEffect;->mOffsetX:I

    goto :goto_87
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 205
    return-void
.end method

.method public getBounds(Z)Landroid/graphics/Rect;
    .registers 6
    .param p1, "reverse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 417
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mX:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mOffsetX:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/EdgeEffect;->mY:I

    if-eqz p1, :cond_17

    iget v0, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    :cond_17
    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 419
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAbsorb(I)V
    .registers 7
    .param p1, "velocity"    # I

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 318
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 319
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 321
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 322
    const v0, 0x3e19999a

    int-to-float v1, p1

    const v2, 0x3ca3d70a

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 326
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 327
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 330
    const v0, 0x3e99999a

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 331
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 335
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 337
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 347
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 351
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0xc

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 353
    return-void
.end method

.method public onPull(F)V
    .registers 11
    .param p1, "deltaDistance"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000

    .line 218
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 219
    .local v2, "now":J
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_19

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_19

    .line 263
    :goto_18
    return-void

    .line 222
    :cond_19
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_1f

    .line 223
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 225
    :cond_1f
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 227
    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 228
    const/high16 v4, 0x43270000

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 230
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 231
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 233
    .local v0, "distance":F
    const v4, 0x3f19999a

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 234
    const/high16 v4, 0x40e00000

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 237
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 241
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 242
    .local v1, "glowChange":F
    cmpl-float v4, p1, v8

    if-lez v4, :cond_72

    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_72

    .line 243
    neg-float v1, v1

    .line 245
    :cond_72
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_7a

    .line 246
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 250
    :cond_7a
    const/high16 v4, 0x40c00000

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const/high16 v6, 0x41800000

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 256
    iget-boolean v4, p0, Landroid/widget/EdgeEffect;->customAPI:Z

    if-nez v4, :cond_96

    .line 257
    iput v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 259
    :cond_96
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 260
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 261
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 262
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_18
.end method

.method public onRelease()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 286
    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 288
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 305
    :goto_d
    return-void

    .line 292
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 293
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 294
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 295
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 296
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 298
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 299
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 300
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 301
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 303
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 304
    const/high16 v0, 0x447a0000

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_d
.end method

.method setPosition(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 184
    iput p1, p0, Landroid/widget/EdgeEffect;->mX:I

    .line 185
    iput p2, p0, Landroid/widget/EdgeEffect;->mY:I

    .line 186
    return-void
.end method

.method public setSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 172
    iput p1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 173
    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:I

    .line 174
    return-void
.end method

.method public setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "edgeeffectEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EdgeEffect;->customAPI:Z

    .line 272
    iput-object p1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 273
    iput-object p2, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    .line 275
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    .line 276
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    .line 277
    return-void
.end method
