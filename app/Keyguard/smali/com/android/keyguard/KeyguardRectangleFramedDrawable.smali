.class Lcom/android/keyguard/KeyguardRectangleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardRectangleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private mFrameAlpha:I

.field private final mFrameColor:I

.field private mFramePath:Landroid/graphics/Path;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mFrameShadowColor:I

.field private final mHighlightColor:I

.field private mIsActive:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mScale:F

.field private final mShadowRadius:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFIFI)V
    .registers 21
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I
    .param p3, "frameColor"    # I
    .param p4, "strokeWidth"    # F
    .param p5, "frameShadowColor"    # I
    .param p6, "shadowRadius"    # F
    .param p7, "highlightColor"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mIsActive:Z

    .line 68
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameAlpha:I

    .line 73
    iput p2, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    .line 74
    move/from16 v0, p6

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mShadowRadius:F

    .line 75
    move/from16 v0, p3

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameColor:I

    .line 76
    move/from16 v0, p5

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameShadowColor:I

    .line 77
    move/from16 v0, p4

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mStrokeWidth:F

    .line 78
    move/from16 v0, p7

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mHighlightColor:I

    .line 80
    iget v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    iget v9, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 81
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 84
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 85
    .local v5, "height":I
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 87
    .local v6, "square":I
    new-instance v3, Landroid/graphics/Rect;

    sub-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    add-int v10, v7, v6

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v3, v8, v9, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .local v3, "cropRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    int-to-float v11, v11

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    .local v2, "circleRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 94
    .local v4, "fillPath":Landroid/graphics/Path;
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 96
    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 99
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    const/high16 v8, 0x3f800000

    iput v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mScale:F

    .line 114
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    iget v12, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 115
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 116
    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    .line 117
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    .line 118
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x40000000

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v1, v3

    .line 130
    .local v1, "outside":F
    iget v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mScale:F

    mul-float v0, v3, v1

    .line 131
    .local v0, "inside":F
    sub-float v3, v1, v0

    div-float v2, v3, v7

    .line 132
    .local v2, "pad":F
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    iget v5, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    sub-float v4, v1, v2

    mul-float v5, v7, v2

    sub-float v5, v1, v5

    invoke-virtual {v3, v2, v8, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 134
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 136
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 137
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 140
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 142
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 145
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPressed:Z

    if-eqz v3, :cond_86

    .line 146
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x54

    iget v5, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mHighlightColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mHighlightColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mHighlightColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    :cond_86
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPressed:Z

    if-eqz v3, :cond_b0

    iget v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mHighlightColor:I

    :goto_9c
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mShadowRadius:F

    iget v5, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameShadowColor:I

    invoke-virtual {v3, v4, v8, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 155
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    return-void

    .line 153
    :cond_b0
    iget v3, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameColor:I

    goto :goto_9c
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 176
    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mScale:F

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 122
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mScale:F

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPressed:Z

    .line 124
    return-void
.end method

.method public setActive(Z)V
    .registers 3
    .param p1, "isActive"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mIsActive:Z

    .line 202
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mIsActive:Z

    if-eqz v0, :cond_e

    .line 203
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameAlpha:I

    .line 207
    :goto_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 208
    return-void

    .line 205
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameAlpha:I

    goto :goto_a
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 181
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 185
    return-void
.end method

.method public setPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mPressed:Z

    .line 172
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 159
    iput p1, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mScale:F

    .line 160
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
    .line 189
    iget v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mSize:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameColor:I

    if-ne v0, p2, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mStrokeWidth:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mFrameShadowColor:I

    if-ne v0, p4, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mShadowRadius:F

    cmpl-float v0, v0, p5

    if-nez v0, :cond_21

    iget v0, p0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->mHighlightColor:I

    if-ne v0, p6, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
