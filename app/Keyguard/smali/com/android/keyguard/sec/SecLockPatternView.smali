.class public Lcom/android/keyguard/sec/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "SecLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecLockPatternView$1;,
        Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field private followingLineX:F

.field private followingLineY:F

.field private guidelinePaint:Landroid/graphics/Paint;

.field private guidelinePath:Landroid/graphics/Path;

.field private mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

.field private mCircleDefaultForPattern:Landroid/graphics/Bitmap;

.field private mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleGreenForMorphing:Landroid/graphics/Bitmap;

.field private mCircleGreenForPattern:Landroid/graphics/Bitmap;

.field private mCircleRedForCandy:Landroid/graphics/Bitmap;

.field private mCircleRedForMorphing:Landroid/graphics/Bitmap;

.field private mCircleRedForPattern:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private morphAnimationCount:I

.field private final morphAnimationLife:I

.field private final morphAnimationStartThreshold:F

.field private final morphColor:I

.field private morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

.field private final morphEffectScale:F

.field private final morphLineRatio:F

.field private morphPaint:Landroid/graphics/Paint;

.field private final offsetForCircleLineInvalidateRect:I

.field private pathTotal:I

.field private patternType:I

.field private final useGuideLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v0, "SecLockPatternView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    .line 50
    const v0, 0x7f0200d0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    .line 51
    const v0, 0x7f0200db

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    .line 52
    const v0, 0x7f0200de

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    .line 55
    const v0, 0x7f0200cf

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    .line 56
    const v0, 0x7f0200da

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    .line 57
    const v0, 0x7f0200dd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    .line 60
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f020002

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f020003

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f020004

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f020005

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f020006

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f020007

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f020008

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f020009

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f02000a

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    .line 77
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f0200c6

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200c7

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0200c8

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f0200c9

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200ca

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0200cb

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f0200cc

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200cd

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0200ce

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    .line 94
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f0200d1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200d2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0200d3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f0200d4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200d5

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0200d6

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    const v2, 0x7f0200d7

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0200d8

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0200d9

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    .line 111
    const v0, 0x7f0200dc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    .line 120
    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    .line 121
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphColor:I

    .line 124
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->offsetForCircleLineInvalidateRect:I

    .line 125
    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationStartThreshold:F

    .line 126
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphLineRatio:F

    .line 127
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->useGuideLine:Z

    .line 128
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationLife:I

    .line 129
    const v0, 0x3ea24dd3

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    .line 137
    iput-object p1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_pattern_type"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patternType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    if-ne v0, v5, :cond_1c1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->setForMorphing()V

    .line 143
    :cond_1c1
    return-void
.end method

.method private checkDistance(FFFF)V
    .registers 15
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "targetX"    # F
    .param p4, "targetY"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L

    .line 551
    sub-float v0, p1, p3

    .line 552
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 553
    .local v1, "diffY":F
    float-to-double v4, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 554
    .local v2, "distance":D
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const v5, 0x3ea8f5c3

    mul-float/2addr v4, v5

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_28

    .line 555
    sget-object v4, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->Morph:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    .line 556
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    .line 558
    :cond_28
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .registers 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z
    .param p5, "i"    # I
    .param p6, "j"    # I

    .prologue
    .line 400
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getImagesForCircle(II)V

    .line 405
    if-eqz p4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_155

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_155

    .line 407
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 408
    .local v13, "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 426
    .local v9, "innerCircle":Landroid/graphics/Bitmap;
    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v19, v0

    .line 427
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 429
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v16, v0

    .line 430
    .local v16, "squareWidth":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 432
    .local v15, "squareHeight":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v16, v20

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v11, v0

    .line 433
    .local v11, "offsetX":I
    int-to-float v0, v8

    move/from16 v20, v0

    sub-float v20, v15, v20

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v12, v0

    .line 436
    .local v12, "offsetY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f800000

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 437
    .local v17, "sx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f800000

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 439
    .local v18, "sy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    add-int v21, p2, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-int v22, p3, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 444
    if-eqz v9, :cond_116

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 446
    :cond_116
    if-eqz v13, :cond_12d

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 452
    :cond_12d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_154

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_154

    .line 453
    sget-object v20, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_2a2

    .line 476
    :cond_154
    :goto_154
    return-void

    .line 409
    .end local v8    # "height":I
    .end local v9    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    .end local v13    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v15    # "squareHeight":F
    .end local v16    # "squareWidth":F
    .end local v17    # "sx":F
    .end local v18    # "sy":F
    .end local v19    # "width":I
    :cond_155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_167

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 412
    .restart local v13    # "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .restart local v9    # "innerCircle":Landroid/graphics/Bitmap;
    goto/16 :goto_29

    .line 413
    .end local v9    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v13    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_17f

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 416
    .restart local v13    # "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v9    # "innerCircle":Landroid/graphics/Bitmap;
    goto/16 :goto_29

    .line 417
    .end local v9    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v13    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_19b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a5

    .line 420
    :cond_19b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 421
    .restart local v13    # "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v9    # "innerCircle":Landroid/graphics/Bitmap;
    goto/16 :goto_29

    .line 423
    .end local v9    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v13    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_1a5
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unknown display mode "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 455
    .restart local v8    # "height":I
    .restart local v9    # "innerCircle":Landroid/graphics/Bitmap;
    .restart local v11    # "offsetX":I
    .restart local v12    # "offsetY":I
    .restart local v13    # "outerCircle":Landroid/graphics/Bitmap;
    .restart local v15    # "squareHeight":F
    .restart local v16    # "squareWidth":F
    .restart local v17    # "sx":F
    .restart local v18    # "sy":F
    .restart local v19    # "width":I
    :pswitch_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 456
    .local v7, "count":I
    if-lez v7, :cond_230

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 458
    .local v10, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v20

    move/from16 v0, p5

    move/from16 v1, v20

    if-ne v0, v1, :cond_230

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v20

    move/from16 v0, p6

    move/from16 v1, v20

    if-ne v0, v1, :cond_230

    .line 459
    add-int v20, p2, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v5, v0

    .line 460
    .local v5, "centerX":F
    add-int v20, p3, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v6, v0

    .line 461
    .local v6, "centerY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/keyguard/sec/SecLockPatternView;->getDegree(FFFF)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v14, v0

    .line 462
    .local v14, "rotation":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v14}, Lcom/android/keyguard/sec/SecLockPatternView;->drawMorph(Landroid/graphics/Canvas;FFF)V

    .line 465
    .end local v5    # "centerX":F
    .end local v6    # "centerY":F
    .end local v10    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "rotation":F
    :cond_230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->drawSmallCircle(Landroid/graphics/Canvas;FFZ)V

    goto/16 :goto_154

    .line 468
    .end local v7    # "count":I
    :pswitch_24d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->drawSmallCircle(Landroid/graphics/Canvas;FFZ)V

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->followingLineX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->followingLineY:F

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->drawSmallCircle(Landroid/graphics/Canvas;FFZ)V

    goto/16 :goto_154

    .line 472
    :pswitch_285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->drawSmallCircle(Landroid/graphics/Canvas;FFZ)V

    goto/16 :goto_154

    .line 453
    :pswitch_data_2a2
    .packed-switch 0x1
        :pswitch_1c4
        :pswitch_24d
        :pswitch_285
    .end packed-switch
.end method

.method private drawLastLine(Landroid/graphics/Path;FFFF)V
    .registers 9
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    .line 528
    sget-object v1, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 548
    :goto_d
    :pswitch_d
    return-void

    .line 530
    :pswitch_e
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/keyguard/sec/SecLockPatternView;->checkDistance(FFFF)V

    goto :goto_d

    .line 537
    :pswitch_12
    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    int-to-float v1, v1

    const/high16 v2, 0x428c0000

    div-float v0, v1, v2

    .line 538
    .local v0, "ratio":F
    new-instance v1, Landroid/view/animation/interpolator/CubicEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/CubicEaseInOut;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/interpolator/CubicEaseInOut;->getInterpolation(F)F

    move-result v0

    .line 539
    sub-float v1, p4, p2

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->followingLineX:F

    .line 540
    sub-float v1, p5, p3

    mul-float/2addr v1, v0

    add-float/2addr v1, p3

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->followingLineY:F

    .line 541
    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->followingLineX:F

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->followingLineY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_d

    .line 545
    .end local v0    # "ratio":F
    :pswitch_36
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_d

    .line 528
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_36
        :pswitch_e
    .end packed-switch
.end method

.method private drawMorph(Landroid/graphics/Canvas;FFF)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "rotation"    # F

    .prologue
    .line 561
    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    if-le v2, v3, :cond_26

    .line 562
    const/high16 v2, 0x42b40000

    add-float v1, p4, v2

    .line 563
    .local v1, "tRotation":F
    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    .line 564
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 565
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 566
    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 567
    neg-float v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 568
    neg-float v2, p2

    neg-float v3, p3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 570
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "tRotation":F
    :cond_26
    return-void
.end method

.method private drawSmallCircle(Landroid/graphics/Canvas;FFZ)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "isForGuideCircle"    # Z

    .prologue
    .line 573
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 578
    :goto_4
    return-void

    .line 574
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v1, p2, v3

    .line 575
    .local v1, "tx":F
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v2, p3, v3

    .line 576
    .local v2, "ty":F
    if-eqz p4, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    .line 577
    .local v0, "paint":Landroid/graphics/Paint;
    :goto_1f
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 576
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    goto :goto_1f
.end method

.method private getDegree(FFFF)D
    .registers 13
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 598
    const-wide/16 v0, 0x0

    .line 599
    .local v0, "degree":D
    sub-float v6, p3, p1

    float-to-double v2, v6

    .line 600
    .local v2, "dx":D
    sub-float v6, p4, p2

    float-to-double v4, v6

    .line 601
    .local v4, "dy":D
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 602
    return-wide v0
.end method

.method private getImagesForCircle(II)V
    .registers 13
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 479
    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    packed-switch v7, :pswitch_data_8c

    .line 508
    :goto_7
    :pswitch_7
    const/4 v6, 0x0

    .line 509
    .local v6, "maxWidth":I
    const/4 v5, 0x0

    .line 510
    .local v5, "maxHeight":I
    const/4 v7, 0x5

    new-array v2, v7, [Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v7, v2, v8

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v9, v2, v7

    const/4 v7, 0x2

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v9, v2, v7

    const/4 v7, 0x3

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v9, v2, v7

    const/4 v7, 0x4

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v9, v2, v7

    .line 514
    .local v2, "bitmaps":[Landroid/graphics/Bitmap;
    move-object v0, v2

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_27
    if-ge v3, v4, :cond_87

    aget-object v1, v0, v3

    .line 515
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_7d

    move v7, v8

    :goto_2e
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 516
    if-nez v1, :cond_82

    move v7, v8

    :goto_35
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 514
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 483
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmaps":[Landroid/graphics/Bitmap;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "maxHeight":I
    .end local v6    # "maxWidth":I
    :pswitch_3c
    iput-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 484
    iput-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 485
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 486
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 487
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 490
    :pswitch_4d
    iput-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 491
    iput-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 492
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 493
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 494
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 497
    :pswitch_5e
    iput-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 498
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    aget-object v7, v7, p1

    aget-object v7, v7, p2

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 499
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    aget-object v7, v7, p1

    aget-object v7, v7, p2

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 500
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    aget-object v7, v7, p1

    aget-object v7, v7, p2

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 501
    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 515
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmaps":[Landroid/graphics/Bitmap;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "maxHeight":I
    .restart local v6    # "maxWidth":I
    :cond_7d
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    goto :goto_2e

    .line 516
    :cond_82
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    goto :goto_35

    .line 518
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_87
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 519
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 520
    return-void

    .line 479
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3c
        :pswitch_4d
        :pswitch_5e
    .end packed-switch
.end method

.method private getLineRadius()F
    .registers 6

    .prologue
    .line 606
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 607
    .local v1, "strokeWidthRatio":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 609
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    mul-float v0, v2, v3

    .line 610
    .local v0, "radius":F
    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    const v2, 0x3f19999a

    mul-float/2addr v0, v2

    .line 611
    :cond_24
    return v0
.end method

.method private morphAnimationUpdate()V
    .registers 3

    .prologue
    .line 586
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    .line 589
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    if-ne v0, v1, :cond_11

    .line 590
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->FollowingLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    .line 592
    :cond_11
    const/16 v0, 0x46

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationCount:I

    if-gt v0, v1, :cond_1c

    .line 593
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->StuckLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    .line 595
    :cond_1c
    return-void
.end method

.method private setForMorphing()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 146
    new-instance v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    const v1, 0x3ea24dd3

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePath:Landroid/graphics/Path;

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 163
    return-void
.end method

.method private setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V
    .registers 5
    .param p1, "status"    # Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Morphing current status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 4
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 174
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    .line 175
    :cond_d
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .registers 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v19

    .line 182
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 183
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 184
    const/4 v12, 0x0

    .line 185
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_13
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_158

    .line 186
    if-ge v11, v7, :cond_14c

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 187
    .local v23, "x":F
    :goto_21
    if-ge v11, v7, :cond_152

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 188
    .local v24, "y":F
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 189
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 190
    .local v18, "patternSize":I
    if-eqz v8, :cond_52

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_52

    .line 191
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 195
    :cond_52
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 196
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 197
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_76

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_77

    .line 198
    :cond_76
    const/4 v12, 0x1

    .line 201
    :cond_77
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_148

    if-lez v18, :cond_148

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 203
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 204
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 205
    .local v14, "lastCellCenterX":F
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 208
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000

    sub-float v16, v25, v26

    .line 209
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000

    add-float v20, v25, v26

    .line 210
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000

    sub-float v21, v25, v26

    .line 211
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000

    add-float v3, v25, v26

    .line 214
    .local v3, "bottom":F
    if-eqz v8, :cond_12f

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000

    mul-float v22, v25, v26

    .line 216
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000

    mul-float v6, v25, v26

    .line 217
    .local v6, "height":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 218
    .local v9, "hitCellCenterX":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 220
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 221
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 222
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 223
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 227
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .line 185
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_148
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 186
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_14c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_21

    .line 187
    .restart local v23    # "x":F
    :cond_152
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_29

    .line 231
    .end local v23    # "x":F
    :cond_158
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 235
    if-eqz v12, :cond_199

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 240
    :cond_199
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    .line 245
    .local v35, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 246
    .local v22, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v24, v0

    .line 248
    .local v24, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_bd

    .line 253
    add-int/lit8 v2, v22, 0x1

    mul-int/lit16 v0, v2, 0x2bc

    move/from16 v32, v0

    .line 254
    .local v32, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v2, v12

    long-to-int v2, v2

    rem-int v38, v2, v32

    .line 255
    .local v38, "spotInCycle":I
    move/from16 v0, v38

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v30, v0

    .line 257
    .local v30, "numCircles":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 258
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_35
    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_55

    .line 259
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 260
    .local v6, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v24, v2

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v8, 0x1

    aput-boolean v8, v2, v3

    .line 258
    add-int/lit8 v17, v17, 0x1

    goto :goto_35

    .line 265
    .end local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_55
    if-lez v30, :cond_1ea

    move/from16 v0, v30

    move/from16 v1, v22

    if-ge v0, v1, :cond_1ea

    const/16 v28, 0x1

    .line 268
    .local v28, "needToUpdateInProgressPoint":Z
    :goto_5f
    if-eqz v28, :cond_ba

    .line 269
    move/from16 v0, v38

    rem-int/lit16 v2, v0, 0x2bc

    int-to-float v2, v2

    const/high16 v3, 0x442f0000

    div-float v36, v2, v3

    .line 273
    .local v36, "percentageOfNextCircle":F
    add-int/lit8 v2, v30, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 274
    .local v23, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 275
    .local v20, "centerX":F
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 277
    .local v21, "centerY":F
    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 278
    .local v29, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    sub-float v2, v2, v20

    mul-float v26, v36, v2

    .line 280
    .local v26, "dx":F
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float v2, v2, v21

    mul-float v27, v36, v2

    .line 282
    .local v27, "dy":F
    add-float v2, v20, v26

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 283
    add-float v2, v21, v27

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 286
    .end local v20    # "centerX":F
    .end local v21    # "centerY":F
    .end local v23    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v26    # "dx":F
    .end local v27    # "dy":F
    .end local v29    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v36    # "percentageOfNextCircle":F
    :cond_ba
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 289
    .end local v17    # "i":I
    .end local v28    # "needToUpdateInProgressPoint":Z
    .end local v30    # "numCircles":I
    .end local v32    # "oneCycle":I
    .end local v38    # "spotInCycle":I
    :cond_bd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v40, v0

    .line 290
    .local v40, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v39, v0

    .line 292
    .local v39, "squareHeight":F
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v37

    .line 293
    .local v37, "radius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 296
    .local v9, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v34, v0

    .line 300
    .local v34, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v33, v0

    .line 306
    .local v33, "paddingLeft":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_f7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_1ee

    :cond_f7
    const/16 v25, 0x1

    .line 310
    .local v25, "drawPath":Z
    :goto_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1f2

    const/16 v31, 0x1

    .line 311
    .local v31, "oldFlag":Z
    :goto_107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 312
    if-eqz v25, :cond_13b

    .line 313
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_113
    add-int/lit8 v2, v22, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_13b

    .line 314
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 315
    .restart local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 320
    .local v7, "next":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v24, v2

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_1f6

    .line 331
    .end local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "next":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v17    # "i":I
    :cond_13b
    if-eqz v25, :cond_1b8

    .line 332
    const/16 v19, 0x0

    .line 333
    .local v19, "anyCircles":Z
    const/4 v10, 0x0

    .line 334
    .local v10, "lastCellCenterX":F
    const/4 v11, 0x0

    .line 335
    .local v11, "lastCellCenterY":F
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_143
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_161

    .line 336
    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 341
    .restart local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v24, v2

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_219

    .line 360
    .end local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_161
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_16f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_1af

    :cond_16f
    if-eqz v19, :cond_1af

    .line 362
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24e

    .line 363
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/keyguard/sec/SecLockPatternView;->drawLastLine(Landroid/graphics/Path;FFFF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 374
    :cond_1af
    :goto_1af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 377
    .end local v10    # "lastCellCenterX":F
    .end local v11    # "lastCellCenterY":F
    .end local v17    # "i":I
    .end local v19    # "anyCircles":Z
    :cond_1b8
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_1ba
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ge v0, v2, :cond_25f

    .line 378
    move/from16 v0, v34

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v3, v3, v39

    add-float v5, v2, v3

    .line 380
    .local v5, "topY":F
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1cb
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ge v0, v2, :cond_25b

    .line 381
    move/from16 v0, v33

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    mul-float v3, v3, v40

    add-float v4, v2, v3

    .line 382
    .local v4, "leftX":F
    float-to-int v14, v4

    float-to-int v15, v5

    aget-object v2, v24, v17

    aget-boolean v16, v2, v18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v18}, Lcom/android/keyguard/sec/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    .line 380
    add-int/lit8 v18, v18, 0x1

    goto :goto_1cb

    .line 265
    .end local v4    # "leftX":F
    .end local v5    # "topY":F
    .end local v9    # "currentPath":Landroid/graphics/Path;
    .end local v18    # "j":I
    .end local v25    # "drawPath":Z
    .end local v31    # "oldFlag":Z
    .end local v33    # "paddingLeft":I
    .end local v34    # "paddingTop":I
    .end local v37    # "radius":F
    .end local v39    # "squareHeight":F
    .end local v40    # "squareWidth":F
    .restart local v30    # "numCircles":I
    .restart local v32    # "oneCycle":I
    .restart local v38    # "spotInCycle":I
    :cond_1ea
    const/16 v28, 0x0

    goto/16 :goto_5f

    .line 306
    .end local v17    # "i":I
    .end local v30    # "numCircles":I
    .end local v32    # "oneCycle":I
    .end local v38    # "spotInCycle":I
    .restart local v9    # "currentPath":Landroid/graphics/Path;
    .restart local v33    # "paddingLeft":I
    .restart local v34    # "paddingTop":I
    .restart local v37    # "radius":F
    .restart local v39    # "squareHeight":F
    .restart local v40    # "squareWidth":F
    :cond_1ee
    const/16 v25, 0x0

    goto/16 :goto_f9

    .line 310
    .restart local v25    # "drawPath":Z
    :cond_1f2
    const/16 v31, 0x0

    goto/16 :goto_107

    .line 324
    .restart local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7    # "next":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v17    # "i":I
    .restart local v31    # "oldFlag":Z
    :cond_1f6
    move/from16 v0, v33

    int-to-float v2, v0

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v40

    add-float v4, v2, v3

    .line 325
    .restart local v4    # "leftX":F
    move/from16 v0, v34

    int-to-float v2, v0

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v39

    add-float v5, v2, v3

    .restart local v5    # "topY":F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 327
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 313
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_113

    .line 344
    .end local v4    # "leftX":F
    .end local v5    # "topY":F
    .end local v7    # "next":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v10    # "lastCellCenterX":F
    .restart local v11    # "lastCellCenterY":F
    .restart local v19    # "anyCircles":Z
    :cond_219
    const/16 v19, 0x1

    .line 346
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 347
    .restart local v20    # "centerX":F
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 348
    .restart local v21    # "centerY":F
    if-nez v17, :cond_246

    .line 349
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 353
    :goto_238
    add-int/lit8 v2, v22, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_242

    .line 354
    move/from16 v10, v20

    .line 355
    move/from16 v11, v21

    .line 335
    :cond_242
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_143

    .line 351
    :cond_246
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_238

    .line 371
    .end local v6    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v20    # "centerX":F
    .end local v21    # "centerY":F
    :cond_24e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1af

    .line 377
    .end local v10    # "lastCellCenterX":F
    .end local v11    # "lastCellCenterY":F
    .end local v19    # "anyCircles":Z
    .restart local v5    # "topY":F
    .restart local v18    # "j":I
    :cond_25b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1ba

    .line 386
    .end local v5    # "topY":F
    .end local v18    # "j":I
    :cond_25f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 388
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27e

    .line 389
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_286

    .line 397
    :cond_27e
    :goto_27e
    return-void

    .line 392
    :pswitch_27f
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationUpdate()V

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_27e

    .line 389
    :pswitch_data_286
    .packed-switch 0x1
        :pswitch_27f
        :pswitch_27f
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternView;->onSizeChanged(IIII)V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePath:Landroid/graphics/Path;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->guidelinePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    :cond_10
    return-void
.end method
