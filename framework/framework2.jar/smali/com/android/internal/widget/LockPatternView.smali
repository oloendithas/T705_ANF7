.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$1;,
        Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field protected static final DRAG_THRESHHOLD:F = 0.0f

.field protected static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z


# instance fields
.field protected mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field protected mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field protected mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field protected mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field protected mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field protected mBitmapCircleRed:Landroid/graphics/Bitmap;

.field protected mBitmapHeight:I

.field protected mBitmapWidth:I

.field protected final mCircleMatrix:Landroid/graphics/Matrix;

.field protected final mCurrentPath:Landroid/graphics/Path;

.field protected mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field protected mInProgressX:F

.field protected mInProgressY:F

.field protected mInStealthMode:Z

.field private mInputEnabled:Z

.field protected final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPathPaint:Landroid/graphics/Paint;

.field protected mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field protected mPatternDrawLookup:[[Z

.field protected mPatternInProgress:Z

.field protected mSquareHeight:F

.field protected mSquareWidth:F

.field private final mStrokeAlpha:I

.field protected final mTmpInvalidateRect:Landroid/graphics/Rect;

.field private mTouchEventHandlerForKeyguardEffect:Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 61
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 86
    const/4 v7, 0x3

    const/4 v8, 0x3

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 93
    const/high16 v7, -0x40800000

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 94
    const/high16 v7, -0x40800000

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 98
    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 99
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 100
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 101
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 102
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 104
    const v7, 0x3e4ccccd

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    .line 105
    const/16 v7, 0x80

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mStrokeAlpha:I

    .line 106
    const v7, 0x3f19999a

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    .line 120
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 121
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 122
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 128
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 129
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 1125
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mTouchEventHandlerForKeyguardEffect:Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;

    .line 245
    sget-object v7, Lcom/android/internal/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "aspect":Ljava/lang/String;
    const-string/jumbo v7, "square"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 250
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 259
    :goto_90
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 261
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 262
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 263
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 267
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 270
    const v7, 0x10801a3

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 271
    const v7, 0x10801a5

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 272
    const v7, 0x108052f

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 273
    const v7, 0x1080531

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 274
    const v7, 0x1080533

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 276
    const v7, 0x108052b

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 277
    const v7, 0x108052c

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 280
    const/4 v7, 0x5

    new-array v4, v7, [Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    .line 283
    .local v4, "bitmaps":[Landroid/graphics/Bitmap;
    move-object v1, v4

    .local v1, "arr$":[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_120
    if-ge v5, v6, :cond_15e

    aget-object v3, v1, v5

    .line 284
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 285
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_120

    .line 251
    .end local v1    # "arr$":[Landroid/graphics/Bitmap;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bitmaps":[Landroid/graphics/Bitmap;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_13f
    const-string v7, "lock_width"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 252
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_90

    .line 253
    :cond_14c
    const-string v7, "lock_height"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_159

    .line 254
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_90

    .line 256
    :cond_159
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_90

    .line 288
    .restart local v1    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v4    # "bitmaps":[Landroid/graphics/Bitmap;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_15e
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result v1

    .line 566
    .local v1, "rowHit":I
    if-gez v1, :cond_8

    .line 577
    :cond_7
    :goto_7
    return-object v2

    .line 569
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    .line 570
    .local v0, "columnHit":I
    if-ltz v0, :cond_7

    .line 574
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_7

    .line 577
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_7
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z

    .prologue
    .line 981
    if-eqz p4, :cond_c

    iget-boolean v10, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v10, :cond_7d

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_7d

    .line 983
    :cond_c
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 984
    .local v4, "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 1002
    .local v1, "innerCircle":Landroid/graphics/Bitmap;
    :goto_10
    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 1003
    .local v9, "width":I
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 1005
    .local v0, "height":I
    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 1006
    .local v6, "squareWidth":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 1008
    .local v5, "squareHeight":F
    int-to-float v10, v9

    sub-float v10, v6, v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    float-to-int v2, v10

    .line 1009
    .local v2, "offsetX":I
    int-to-float v10, v0

    sub-float v10, v5, v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 1012
    .local v3, "offsetY":I
    iget v10, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1013
    .local v7, "sx":F
    iget v10, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1015
    .local v8, "sy":F
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v11, p2, v2

    int-to-float v11, v11

    add-int v12, p3, v3

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1016
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1017
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1018
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1020
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1021
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1022
    return-void

    .line 985
    .end local v0    # "height":I
    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v2    # "offsetX":I
    .end local v3    # "offsetY":I
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v5    # "squareHeight":F
    .end local v6    # "squareWidth":F
    .end local v7    # "sx":F
    .end local v8    # "sy":F
    .end local v9    # "width":I
    :cond_7d
    iget-boolean v10, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v10, :cond_86

    .line 987
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 988
    .restart local v4    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .restart local v1    # "innerCircle":Landroid/graphics/Bitmap;
    goto :goto_10

    .line 989
    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_86
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_91

    .line 991
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 992
    .restart local v4    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1    # "innerCircle":Landroid/graphics/Bitmap;
    goto :goto_10

    .line 993
    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_91
    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_9d

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v11, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_a3

    .line 996
    :cond_9d
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 997
    .restart local v4    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1    # "innerCircle":Landroid/graphics/Bitmap;
    goto/16 :goto_10

    .line 999
    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_a3
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unknown display mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getColumnHit(F)I
    .registers 10
    .param p1, "x"    # F

    .prologue
    .line 607
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 608
    .local v4, "squareWidth":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 610
    .local v1, "hitSize":F
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 611
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_26

    .line 613
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 614
    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_23

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_23

    .line 618
    .end local v0    # "hitLeft":F
    .end local v2    # "i":I
    :goto_22
    return v2

    .line 611
    .restart local v0    # "hitLeft":F
    .restart local v2    # "i":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 618
    .end local v0    # "hitLeft":F
    :cond_26
    const/4 v2, -0x1

    goto :goto_22
.end method

.method private getRowHit(F)I
    .registers 10
    .param p1, "y"    # F

    .prologue
    .line 587
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 588
    .local v4, "squareHeight":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 590
    .local v0, "hitSize":F
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 591
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_26

    .line 593
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 594
    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_23

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_23

    .line 598
    .end local v1    # "hitTop":F
    .end local v2    # "i":I
    :goto_22
    return v2

    .line 591
    .restart local v1    # "hitTop":F
    .restart local v2    # "i":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 598
    .end local v1    # "hitTop":F
    :cond_26
    const/4 v2, -0x1

    goto :goto_22
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000

    .line 763
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 765
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 766
    .local v6, "y":F
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 767
    .local v1, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_47

    .line 768
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 769
    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 770
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 775
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_42

    .line 776
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 777
    .local v2, "startX":F
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 779
    .local v3, "startY":F
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 780
    .local v4, "widthOffset":F
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 782
    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/view/View;->invalidate(IIII)V

    .line 785
    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_42
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 786
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 793
    return-void

    .line 771
    :cond_47
    iget-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_1d

    .line 772
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 773
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_1d
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 751
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    .line 752
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 760
    :cond_11
    return-void
.end method

.method private notifyPatternCleared()V
    .registers 2

    .prologue
    .line 398
    const v0, 0x10405bd

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_f

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 402
    :cond_f
    return-void
.end method

.method private notifyPatternDetected()V
    .registers 3

    .prologue
    .line 391
    const v0, 0x10405bf

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_11

    .line 393
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 395
    :cond_11
    return-void
.end method

.method private resetPattern()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 417
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 419
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 460
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 469
    move v0, v1

    .line 471
    :goto_d
    return v0

    .line 462
    :sswitch_e
    move v0, p2

    .line 463
    goto :goto_d

    .line 465
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 466
    goto :goto_d

    .line 460
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 744
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 745
    return-void
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 5
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 558
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    .line 560
    return-void
.end method

.method public clearPattern()V
    .registers 1

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 409
    return-void
.end method

.method protected clearPatternDrawLookup()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_14

    .line 426
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v4, :cond_11

    .line 427
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 425
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 430
    .end local v1    # "j":I
    :cond_14
    return-void
.end method

.method protected detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 517
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_77

    .line 520
    const/4 v4, 0x0

    .line 521
    .local v4, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 522
    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_58

    .line 523
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 524
    .local v6, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 525
    .local v2, "dRow":I
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 527
    .local v1, "dColumn":I
    iget v5, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 528
    .local v5, "fillInRow":I
    iget v3, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 530
    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_41

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_41

    .line 531
    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v2, :cond_75

    move v8, v9

    :goto_3f
    add-int v5, v11, v8

    .line 534
    :cond_41
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_54

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_54

    .line 535
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v1, :cond_52

    move v10, v9

    :cond_52
    add-int v3, v8, v10

    .line 538
    :cond_54
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 541
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_58
    if-eqz v4, :cond_69

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_69

    .line 543
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 545
    :cond_69
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 546
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_74

    .line 547
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 553
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_74
    :goto_74
    return-object v0

    .restart local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_75
    move v8, v10

    .line 531
    goto :goto_3f

    .line 553
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_77
    const/4 v0, 0x0

    goto :goto_74
.end method

.method public disableInput()V
    .registers 2

    .prologue
    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 438
    return-void
.end method

.method protected drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # F
    .param p3, "topY"    # F
    .param p4, "start"    # Lcom/android/internal/widget/LockPatternView$Cell;
    .param p5, "end"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_16d

    const/4 v9, 0x1

    .line 938
    .local v9, "green":Z
    :goto_f
    move-object/from16 v0, p5

    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 939
    .local v8, "endRow":I
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 940
    .local v13, "startRow":I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 941
    .local v7, "endColumn":I
    move-object/from16 v0, p4

    iget v12, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 944
    .local v12, "startColumn":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v10, v17, 0x2

    .line 945
    .local v10, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x2

    .line 950
    .local v11, "offsetY":I
    if-eqz v9, :cond_170

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 951
    .local v4, "arrow":Landroid/graphics/Bitmap;
    :goto_4f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 952
    .local v6, "cellWidth":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 955
    .local v5, "cellHeight":I
    sub-int v17, v8, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-int v19, v7, v12

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 957
    .local v16, "theta":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42b40000

    add-float v3, v17, v18

    .line 960
    .local v3, "angle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f800000

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 961
    .local v14, "sx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f800000

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 962
    .local v15, "sy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, p2

    int-to-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, p3

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    int-to-float v0, v5

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 969
    return-void

    .line 936
    .end local v3    # "angle":F
    .end local v4    # "arrow":Landroid/graphics/Bitmap;
    .end local v5    # "cellHeight":I
    .end local v6    # "cellWidth":I
    .end local v7    # "endColumn":I
    .end local v8    # "endRow":I
    .end local v9    # "green":Z
    .end local v10    # "offsetX":I
    .end local v11    # "offsetY":I
    .end local v12    # "startColumn":I
    .end local v13    # "startRow":I
    .end local v14    # "sx":F
    .end local v15    # "sy":F
    .end local v16    # "theta":F
    :cond_16d
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 950
    .restart local v7    # "endColumn":I
    .restart local v8    # "endRow":I
    .restart local v9    # "green":Z
    .restart local v10    # "offsetX":I
    .restart local v11    # "offsetY":I
    .restart local v12    # "startColumn":I
    .restart local v13    # "startRow":I
    :cond_170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_4f
.end method

.method public enableInput()V
    .registers 2

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 445
    return-void
.end method

.method protected getBitmapFor(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getCenterXForColumn(I)F
    .registers 5
    .param p1, "column"    # I

    .prologue
    .line 796
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected getCenterYForRow(I)F
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 800
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 2

    .prologue
    .line 483
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 2

    .prologue
    .line 477
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .registers 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x3f000000

    mul-float v19, v25, v26

    .line 683
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 684
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 685
    const/4 v12, 0x0

    .line 686
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_21
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_156

    .line 687
    if-ge v11, v7, :cond_14a

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 688
    .local v23, "x":F
    :goto_2f
    if-ge v11, v7, :cond_150

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 689
    .local v24, "y":F
    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 690
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 691
    .local v18, "patternSize":I
    if-eqz v8, :cond_60

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_60

    .line 692
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 696
    :cond_60
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 697
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 698
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_84

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_85

    .line 699
    :cond_84
    const/4 v12, 0x1

    .line 702
    :cond_85
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_146

    if-lez v18, :cond_146

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 704
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 705
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 706
    .local v14, "lastCellCenterX":F
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 709
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v16, v25, v19

    .line 710
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v20, v25, v19

    .line 711
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v21, v25, v19

    .line 712
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v3, v25, v19

    .line 715
    .local v3, "bottom":F
    if-eqz v8, :cond_12d

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000

    mul-float v22, v25, v26

    .line 717
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000

    mul-float v6, v25, v26

    .line 718
    .local v6, "height":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 719
    .local v9, "hitCellCenterX":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 721
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 722
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 723
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 724
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 728
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_12d
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

    .line 686
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_146
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_21

    .line 687
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_14a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_2f

    .line 688
    .restart local v23    # "x":F
    :cond_150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_37

    .line 732
    .end local v23    # "x":F
    :cond_156
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 736
    if-eqz v12, :cond_18d

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 738
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 741
    :cond_18d
    return-void
.end method

.method public isInStealthMode()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected notifyCellAdded()V
    .registers 3

    .prologue
    .line 377
    const v0, 0x10405be

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_11

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 381
    :cond_11
    return-void
.end method

.method protected notifyPatternStarted()V
    .registers 2

    .prologue
    .line 384
    const v0, 0x10405bc

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_f

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 388
    :cond_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 806
    .local v28, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 807
    .local v12, "count":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 809
    .local v15, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_b7

    .line 814
    add-int/lit8 v3, v12, 0x1

    mul-int/lit16 v0, v3, 0x2bc

    move/from16 v25, v0

    .line 815
    .local v25, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v34, v0

    sub-long v3, v3, v34

    long-to-int v3, v3

    rem-int v31, v3, v25

    .line 817
    .local v31, "spotInCycle":I
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v23, v0

    .line 819
    .local v23, "numCircles":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 820
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_36
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_57

    .line 821
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 822
    .local v7, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    const/16 v34, 0x1

    aput-boolean v34, v3, v4

    .line 820
    add-int/lit8 v19, v19, 0x1

    goto :goto_36

    .line 827
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_57
    if-lez v23, :cond_16e

    move/from16 v0, v23

    if-ge v0, v12, :cond_16e

    const/16 v21, 0x1

    .line 830
    .local v21, "needToUpdateInProgressPoint":Z
    :goto_5f
    if-eqz v21, :cond_b4

    .line 831
    move/from16 v0, v31

    rem-int/lit16 v3, v0, 0x2bc

    int-to-float v3, v3

    const/high16 v4, 0x442f0000

    div-float v29, v3, v4

    .line 835
    .local v29, "percentageOfNextCircle":F
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 836
    .local v13, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v3, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 837
    .local v10, "centerX":F
    iget v3, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 839
    .local v11, "centerY":F
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 840
    .local v22, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    sub-float/2addr v3, v10

    mul-float v17, v29, v3

    .line 842
    .local v17, "dx":F
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v11

    mul-float v18, v29, v3

    .line 844
    .local v18, "dy":F
    add-float v3, v10, v17

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 845
    add-float v3, v11, v18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 848
    .end local v10    # "centerX":F
    .end local v11    # "centerY":F
    .end local v13    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v17    # "dx":F
    .end local v18    # "dy":F
    .end local v22    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v29    # "percentageOfNextCircle":F
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 851
    .end local v19    # "i":I
    .end local v21    # "needToUpdateInProgressPoint":Z
    .end local v23    # "numCircles":I
    .end local v25    # "oneCycle":I
    .end local v31    # "spotInCycle":I
    :cond_b7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v33, v0

    .line 852
    .local v33, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v32, v0

    .line 854
    .local v32, "squareHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    mul-float v3, v3, v33

    const/high16 v4, 0x3f000000

    mul-float v30, v3, v4

    .line 855
    .local v30, "radius":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 857
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 858
    .local v14, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 864
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v3, :cond_eb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_172

    :cond_eb
    const/16 v16, 0x1

    .line 866
    .local v16, "drawPath":Z
    :goto_ed
    if-eqz v16, :cond_12e

    .line 867
    const/4 v9, 0x0

    .line 868
    .local v9, "anyCircles":Z
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_f2
    move/from16 v0, v19

    if-ge v0, v12, :cond_10a

    .line 869
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 874
    .restart local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v3, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_176

    .line 889
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_10a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_118

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_125

    :cond_118
    if-eqz v9, :cond_125

    .line 891
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 893
    :cond_125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 897
    .end local v9    # "anyCircles":Z
    .end local v19    # "i":I
    :cond_12e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v27, v0

    .line 898
    .local v27, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .line 900
    .local v26, "paddingLeft":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_13c
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ge v0, v3, :cond_197

    .line 901
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .line 903
    .local v6, "topY":F
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_14d
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ge v0, v3, :cond_194

    .line 904
    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 905
    .local v5, "leftX":F
    float-to-int v3, v5

    float-to-int v4, v6

    aget-object v34, v15, v19

    aget-boolean v34, v34, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 903
    add-int/lit8 v20, v20, 0x1

    goto :goto_14d

    .line 827
    .end local v5    # "leftX":F
    .end local v6    # "topY":F
    .end local v14    # "currentPath":Landroid/graphics/Path;
    .end local v16    # "drawPath":Z
    .end local v20    # "j":I
    .end local v26    # "paddingLeft":I
    .end local v27    # "paddingTop":I
    .end local v30    # "radius":F
    .end local v32    # "squareHeight":F
    .end local v33    # "squareWidth":F
    .restart local v23    # "numCircles":I
    .restart local v25    # "oneCycle":I
    .restart local v31    # "spotInCycle":I
    :cond_16e
    const/16 v21, 0x0

    goto/16 :goto_5f

    .line 864
    .end local v19    # "i":I
    .end local v23    # "numCircles":I
    .end local v25    # "oneCycle":I
    .end local v31    # "spotInCycle":I
    .restart local v14    # "currentPath":Landroid/graphics/Path;
    .restart local v30    # "radius":F
    .restart local v32    # "squareHeight":F
    .restart local v33    # "squareWidth":F
    :cond_172
    const/16 v16, 0x0

    goto/16 :goto_ed

    .line 877
    .restart local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v9    # "anyCircles":Z
    .restart local v16    # "drawPath":Z
    .restart local v19    # "i":I
    :cond_176
    const/4 v9, 0x1

    .line 879
    iget v3, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 880
    .restart local v10    # "centerX":F
    iget v3, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 881
    .restart local v11    # "centerY":F
    if-nez v19, :cond_190

    .line 882
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 868
    :goto_18c
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_f2

    .line 884
    :cond_190
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_18c

    .line 900
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v9    # "anyCircles":Z
    .end local v10    # "centerX":F
    .end local v11    # "centerY":F
    .restart local v6    # "topY":F
    .restart local v20    # "j":I
    .restart local v26    # "paddingLeft":I
    .restart local v27    # "paddingTop":I
    :cond_194
    add-int/lit8 v19, v19, 0x1

    goto :goto_13c

    .line 911
    .end local v6    # "topY":F
    .end local v20    # "j":I
    :cond_197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1df

    const/16 v24, 0x1

    .line 912
    .local v24, "oldFlag":Z
    :goto_1a5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 913
    if-eqz v16, :cond_1d5

    .line 914
    const/16 v19, 0x0

    :goto_1b1
    add-int/lit8 v3, v12, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_1d5

    .line 915
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 916
    .restart local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 921
    .local v8, "next":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v3, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1e2

    .line 932
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v8    # "next":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 933
    return-void

    .line 911
    .end local v24    # "oldFlag":Z
    :cond_1df
    const/16 v24, 0x0

    goto :goto_1a5

    .line 925
    .restart local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v8    # "next":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v24    # "oldFlag":Z
    :cond_1e2
    move/from16 v0, v26

    int-to-float v3, v0

    iget v4, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    int-to-float v4, v4

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 926
    .restart local v5    # "leftX":F
    move/from16 v0, v27

    int-to-float v3, v0

    iget v4, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    int-to-float v4, v4

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .restart local v6    # "topY":F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 928
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 914
    add-int/lit8 v19, v19, 0x1

    goto :goto_1b1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 623
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 625
    .local v0, "action":I
    packed-switch v0, :pswitch_data_2e

    .line 636
    :goto_13
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 637
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 639
    .end local v0    # "action":I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 627
    .restart local v0    # "action":I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 630
    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 633
    :pswitch_28
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 625
    nop

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_23
        :pswitch_13
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 489
    .local v1, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 490
    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 491
    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 493
    .local v2, "viewHeight":I
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_2a

    .line 505
    :goto_15
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 506
    return-void

    .line 495
    :pswitch_19
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 496
    goto :goto_15

    .line 498
    :pswitch_1f
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 499
    goto :goto_15

    .line 501
    :pswitch_24
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_15

    .line 493
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1035
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 1036
    .local v0, "ss":Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1037
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1040
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1041
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 1042
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 1043
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 1044
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .prologue
    .line 1026
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1027
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v4, 0x40400000

    .line 449
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 450
    .local v1, "width":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 452
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 453
    .local v0, "height":I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 454
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 644
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 676
    :cond_d
    :goto_d
    return v0

    .line 649
    :cond_e
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mTouchEventHandlerForKeyguardEffect:Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;

    if-eqz v2, :cond_17

    .line 650
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mTouchEventHandlerForKeyguardEffect:Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 652
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    move v0, v1

    .line 676
    goto :goto_d

    .line 654
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 657
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 660
    :pswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 663
    :pswitch_2c
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_d

    .line 664
    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 665
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 666
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_d

    .line 652
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .registers 5
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 362
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_3d

    .line 363
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 364
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 368
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 369
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 370
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 373
    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 374
    return-void
.end method

.method public setInStealthMode(Z)V
    .registers 2
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 316
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .registers 2
    .param p1, "onPatternListener"    # Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 335
    return-void
.end method

.method public setOnTouchEventHandlerForKeyguardEffect(Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mTouchEventHandlerForKeyguardEffect:Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;

    .line 1133
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .registers 8
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 347
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 348
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_11

    .line 351
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 352
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 326
    return-void
.end method
