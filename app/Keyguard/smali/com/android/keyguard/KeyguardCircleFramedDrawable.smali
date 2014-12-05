.class Lcom/android/keyguard/KeyguardCircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardCircleFramedDrawable.java"


# instance fields
.field private final mAvatarShadowY:F

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private mFrameAlpha:I

.field private final mFrameColor:I

.field private mFramePath:Landroid/graphics/Path;

.field private mFramePath_shadow:Landroid/graphics/Path;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mFrameShadowColor:I

.field private final mHighlightColor:I

.field private mIsActive:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mScale:F

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mShadowRadius:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFIFIF)V
    .registers 22
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I
    .param p3, "frameColor"    # I
    .param p4, "strokeWidth"    # F
    .param p5, "frameShadowColor"    # I
    .param p6, "shadowRadius"    # F
    .param p7, "highlightColor"    # I
    .param p8, "shadowY"    # F

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mIsActive:Z

    .line 58
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameAlpha:I

    .line 68
    iput p2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    .line 69
    move/from16 v0, p6

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    .line 70
    move/from16 v0, p3

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    .line 71
    move/from16 v0, p5

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    .line 72
    move/from16 v0, p4

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    .line 73
    move/from16 v0, p7

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    .line 74
    move/from16 v0, p8

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mAvatarShadowY:F

    .line 75
    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 79
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 80
    .local v5, "height":I
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 82
    .local v6, "square":I
    new-instance v3, Landroid/graphics/Rect;

    sub-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v6

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v3, v8, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .local v3, "cropRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 84
    .local v2, "circleRect":Landroid/graphics/RectF;
    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 85
    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 87
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 88
    .local v4, "fillPath":Landroid/graphics/Path;
    const/4 v8, 0x0

    const/high16 v9, 0x43b40000

    invoke-virtual {v4, v2, v8, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 90
    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 93
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    const/high16 v8, 0x3f800000

    iput v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    .line 114
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    iget v12, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 115
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 116
    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    .line 117
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    .line 118
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath_shadow:Landroid/graphics/Path;

    .line 119
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40000000

    const/4 v9, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v2, v4

    .line 130
    .local v2, "outside":F
    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    mul-float v1, v4, v2

    .line 131
    .local v1, "inside":F
    sub-float v4, v2, v1

    div-float v3, v4, v10

    .line 133
    .local v3, "pad":F
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    sub-float v5, v2, v3

    sub-float v6, v2, v3

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mIsActive:Z

    if-nez v4, :cond_11a

    .line 136
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mAvatarShadowY:F

    iget v7, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mAvatarShadowY:F

    const/high16 v8, 0x40400000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 142
    :goto_4d
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 143
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v5, v10

    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 144
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 146
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 147
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    const/high16 v6, 0x43b40000

    invoke-virtual {v4, v5, v9, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 148
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 153
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    if-eqz v4, :cond_b6

    .line 154
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x54

    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    :cond_b6
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    .line 164
    .local v0, "adjustedFrameColor":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v4

    if-nez v4, :cond_c4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v4

    if-nez v4, :cond_dc

    .line 165
    :cond_c4
    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameAlpha:I

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 167
    :cond_dc
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v4

    if-nez v4, :cond_106

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v4

    if-nez v4, :cond_127

    .line 174
    :cond_106
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    .end local v0    # "adjustedFrameColor":I
    :goto_10b
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    return-void

    .line 140
    :cond_11a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mAvatarShadowY:F

    iget v7, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_4d

    .line 176
    .restart local v0    # "adjustedFrameColor":I
    :cond_127
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    if-eqz v5, :cond_12f

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    .end local v0    # "adjustedFrameColor":I
    :cond_12f
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_10b
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 196
    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 122
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    .line 124
    return-void
.end method

.method public setActive(Z)V
    .registers 3
    .param p1, "isActive"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mIsActive:Z

    .line 221
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mIsActive:Z

    if-eqz v0, :cond_e

    .line 222
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameAlpha:I

    .line 226
    :goto_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 227
    return-void

    .line 224
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameAlpha:I

    goto :goto_a
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 201
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 205
    return-void
.end method

.method public setPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    .line 192
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    .line 184
    return-void
.end method

.method public verifyParams(FIFIFI)Z
    .registers 8
    .param p1, "iconSize"    # F
    .param p2, "frameColor"    # I
    .param p3, "stroke"    # F
    .param p4, "frameShadowColor"    # I
    .param p5, "shadowRadius"    # F
    .param p6, "highlightColor"    # I

    .prologue
    .line 209
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    if-ne v0, p2, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    if-ne v0, p4, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    cmpl-float v0, v0, p5

    if-nez v0, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    if-ne v0, p6, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
