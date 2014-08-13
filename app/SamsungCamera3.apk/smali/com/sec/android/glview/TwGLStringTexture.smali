.class public Lcom/sec/android/glview/TwGLStringTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLStringTexture.java"


# static fields
.field private static final DEFAULT_FADING_EDGE_WIDTH_DIP:F = 20.0f

.field private static DEFAULT_LINE_SPACE:I = 0x0

.field private static DEFAULT_PADDING:I = 0x0

.field private static final DEFAULT_SHADOW_COLOR:I

.field private static final DEFAULT_SHADOW_OFFSET_X_DIP:F = 1.0f

.field private static final DEFAULT_SHADOW_OFFSET_Y_DIP:F = 1.0f

.field private static final DEFAULT_SHADOW_RADIUS_DIP:F = 1.0f

.field private static final DEFAULT_STROKE_COLOR:I

.field private static final DEFAULT_STROKE_WIDTH:F = 1.0f

.field private static final DEFAULT_TEXT_COLOR:I

.field private static NUM_OF_ELLIPSIS_CHARACTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLStringTexture"


# instance fields
.field private mBold:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColor:I

.field private mFadingEdge:Z

.field private mFadingEdgeWidth:F

.field private mHAlign:I

.field private mHeight:I

.field private mLineSpace:I

.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadow:Z

.field private mShadowColor:I

.field private mShadowOffsetX:F

.field private mShadowOffsetY:F

.field private mShadowRadius:F

.field private mSize:F

.field private mStringHeight:I

.field private mStringWidth:I

.field private mStroke:Z

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f080007

    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    .line 52
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    .line 54
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    .line 66
    const v0, 0x7f080005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_TEXT_COLOR:I

    .line 68
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_SHADOW_COLOR:I

    .line 70
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_STROKE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V
    .locals 4
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "hAlign"    # I
    .param p7, "vAlign"    # I
    .param p8, "text"    # Ljava/lang/String;
    .param p9, "textSize"    # F
    .param p10, "color"    # I
    .param p11, "shadow"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 85
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 88
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 91
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 94
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 97
    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 100
    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 103
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 105
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 112
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 114
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdgeWidth:F

    .line 116
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    .line 119
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_SHADOW_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 124
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 125
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_STROKE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 127
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    .line 185
    iput-object p8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 186
    iput p9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 187
    iput p10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 188
    iput-boolean p11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 190
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 191
    iput p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 194
    cmpl-float v0, p9, v2

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 201
    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 202
    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 204
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v0, :cond_2

    .line 205
    :cond_1
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwGLStringTexture - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 209
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 210
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 211
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLStringTexture;->init()V

    .line 212
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;FIZ)V
    .locals 4
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "textSize"    # F
    .param p6, "color"    # I
    .param p7, "shadow"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 85
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 88
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 91
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 94
    iput v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 97
    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 100
    iput v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 103
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 105
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 112
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 114
    iput v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdgeWidth:F

    .line 116
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    .line 119
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_SHADOW_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 124
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 125
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_STROKE_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 127
    sget v0, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    .line 142
    iput-object p4, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 143
    iput p5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 144
    iput p6, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 145
    iput-boolean p7, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    .line 148
    cmpl-float v0, p5, v2

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 154
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 155
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 157
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 158
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 160
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v0, :cond_2

    .line 161
    :cond_1
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwGLStringTexture - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 165
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLStringTexture;->init()V

    .line 166
    return-void
.end method

.method private getBreakIndex(Ljava/lang/String;I)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "fieldWidth"    # I

    .prologue
    .line 893
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 894
    .local v0, "end":I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 895
    .local v1, "stringWidth":I
    const/4 v2, 0x0

    .line 897
    .local v2, "subString":Ljava/lang/String;
    if-ge v1, p2, :cond_0

    .line 898
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 907
    :goto_0
    return v3

    .line 902
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 903
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 904
    iget-object v3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 905
    if-gt v1, p2, :cond_0

    move v3, v0

    .line 907
    goto :goto_0
.end method

.method private getDynamicHeight()I
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 923
    const/4 v6, 0x0

    .line 924
    .local v6, "subString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 925
    .local v5, "stringLength":I
    const/4 v4, 0x0

    .line 926
    .local v4, "start":I
    const/4 v0, 0x0

    .line 927
    .local v0, "end":I
    const/4 v3, 0x1

    .line 928
    .local v3, "row":I
    const/4 v1, 0x0

    .line 929
    .local v1, "index":I
    const/4 v2, 0x0

    .line 933
    .local v2, "isDone":Z
    :cond_0
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 935
    if-eq v0, v11, :cond_2

    .line 936
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 937
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v5, v8

    .line 945
    :goto_0
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 947
    if-eq v1, v11, :cond_3

    .line 948
    add-int/lit8 v3, v3, 0x1

    .line 949
    add-int/lit8 v8, v1, 0x1

    add-int/2addr v4, v8

    .line 975
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    .line 977
    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v8, v3

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    add-int/lit8 v10, v3, -0x1

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    return v8

    .line 939
    :cond_2
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 940
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 941
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v5, v8

    goto :goto_0

    .line 950
    :cond_3
    iget v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-le v5, v8, :cond_8

    .line 951
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_6

    .line 952
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 954
    if-eq v0, v11, :cond_4

    add-int/lit8 v8, v0, 0x1

    if-lt v4, v8, :cond_5

    .line 955
    :cond_4
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v8

    add-int v0, v4, v8

    .line 956
    add-int/lit8 v0, v0, -0x1

    .line 970
    :cond_5
    :goto_2
    add-int/lit8 v4, v0, 0x1

    .line 971
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 959
    :cond_6
    move v7, v0

    .line 961
    .local v7, "tempEnd":I
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 963
    if-eq v0, v11, :cond_7

    add-int/lit8 v8, v0, 0x1

    if-lt v4, v8, :cond_5

    .line 964
    :cond_7
    move v0, v7

    .line 965
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v8

    add-int v0, v4, v8

    .line 966
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 972
    .end local v7    # "tempEnd":I
    :cond_8
    iget-object v8, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_1

    .line 973
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private getNumOfNewLineChar(Ljava/lang/String;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, "numOfNewLine":I
    const/4 v1, 0x0

    .line 845
    .local v1, "start":I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 846
    if-eq v1, v4, :cond_1

    .line 847
    add-int/lit8 v0, v0, 0x1

    .line 848
    add-int/lit8 v1, v1, 0x1

    .line 850
    :cond_1
    if-ne v1, v4, :cond_0

    .line 851
    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41a00000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdgeWidth:F

    .line 219
    return-void
.end method

.method private insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "fieldWidth"    # I

    .prologue
    .line 862
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    sub-int v1, v5, v6

    .line 863
    .local v1, "end":I
    const/4 v4, 0x0

    .line 864
    .local v4, "stringWidth":I
    const-string v0, ""

    .line 865
    .local v0, "concatString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 867
    .local v3, "resultString":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-lt v5, p2, :cond_0

    if-gez v1, :cond_1

    .line 885
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 871
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget v5, Lcom/sec/android/glview/TwGLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    if-ge v2, v5, :cond_2

    .line 872
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 876
    :cond_2
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-lt v5, p2, :cond_3

    move-object p1, v0

    .line 877
    goto :goto_0

    .line 881
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    iget-object v5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 883
    add-int/lit8 v1, v1, -0x1

    .line 884
    if-lt p2, v4, :cond_3

    move-object p1, v3

    .line 885
    goto :goto_0
.end method

.method private isFadingNeeded(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "fieldWidth"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-double v2, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 856
    const/4 v0, 0x1

    .line 858
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wordBreak(I)Ljava/util/List;
    .locals 13
    .param p1, "availableRows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v4, "resultStringArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 709
    .local v8, "subString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 710
    .local v7, "stringLength":I
    const/4 v6, 0x0

    .line 711
    .local v6, "start":I
    const/4 v0, 0x0

    .line 712
    .local v0, "end":I
    const/4 v5, 0x0

    .line 713
    .local v5, "row":I
    const/4 v1, 0x0

    .line 714
    .local v1, "index":I
    const/4 v2, 0x0

    .line 715
    .local v2, "isDone":Z
    const/4 v3, 0x0

    .line 718
    .local v3, "numOfNewLineChar":I
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v3

    .line 719
    const/4 v6, 0x0

    .line 720
    add-int/lit8 v10, v3, 0x1

    if-ne p1, v10, :cond_3

    .line 722
    :cond_0
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    const/16 v11, 0xa

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 723
    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    .line 724
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v6, v0, 0x1

    .line 727
    :cond_1
    const/4 v10, -0x1

    if-ne v0, v10, :cond_0

    .line 728
    iget-boolean v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_2

    .line 729
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    :goto_0
    return-object v4

    .line 731
    :cond_2
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 735
    :cond_3
    const/4 v6, 0x0

    .line 736
    const/4 v0, 0x0

    .line 740
    :cond_4
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-static {v10, v11}, Lcom/sec/android/glview/TwGLText;->getIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 741
    const/4 v10, -0x1

    if-eq v0, v10, :cond_a

    .line 742
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 743
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 744
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_5

    .line 745
    add-int/lit8 v0, v0, -0x1

    .line 754
    :cond_5
    :goto_1
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 755
    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    .line 756
    add-int v0, v6, v1

    .line 757
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 758
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 761
    :cond_6
    iget v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-le v7, v10, :cond_17

    .line 762
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_10

    .line 763
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Lcom/sec/android/glview/TwGLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 764
    const/4 v10, -0x1

    if-eq v0, v10, :cond_7

    add-int/lit8 v10, v0, 0x1

    if-lt v6, v10, :cond_d

    .line 765
    :cond_7
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_b

    .line 766
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/glview/TwGLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v10

    add-int v0, v6, v10

    .line 767
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    add-int/lit8 v0, v0, -0x1

    .line 826
    :cond_8
    :goto_2
    add-int/lit8 v6, v0, 0x1

    .line 827
    add-int/lit8 v5, v5, 0x1

    .line 836
    :cond_9
    :goto_3
    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 748
    :cond_a
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    .line 749
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 750
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    goto :goto_1

    .line 770
    :cond_b
    iget-boolean v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_c

    .line 771
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :goto_4
    const/4 v2, 0x1

    goto :goto_2

    .line 773
    :cond_c
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 777
    :cond_d
    add-int/lit8 v10, v0, 0x1

    if-eq v6, v10, :cond_8

    .line 778
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_e

    .line 779
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_8

    .line 781
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 784
    :cond_e
    iget-boolean v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_f

    .line 785
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    :goto_5
    const/4 v2, 0x1

    goto :goto_2

    .line 787
    :cond_f
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 793
    :cond_10
    move v9, v0

    .line 794
    .local v9, "tempEnd":I
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Lcom/sec/android/glview/TwGLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    .line 795
    const/4 v10, -0x1

    if-eq v0, v10, :cond_11

    add-int/lit8 v10, v0, 0x1

    if-lt v6, v10, :cond_14

    .line 796
    :cond_11
    move v0, v9

    .line 797
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_12

    .line 798
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/glview/TwGLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v10

    add-int v0, v6, v10

    .line 799
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 802
    :cond_12
    iget-boolean v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_13

    .line 803
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 805
    :cond_13
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 810
    :cond_14
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_15

    .line 811
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_8

    .line 813
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 816
    :cond_15
    iget-boolean v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_16

    .line 817
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 819
    :cond_16
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/glview/TwGLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 828
    .end local v9    # "tempEnd":I
    :cond_17
    const/4 v10, -0x1

    if-eq v1, v10, :cond_18

    .line 829
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    add-int v11, v6, v1

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    add-int/lit8 v10, v1, 0x1

    add-int/2addr v6, v10

    .line 831
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 832
    :cond_18
    iget-object v10, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_9

    .line 833
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    const/4 v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public getAvailableRows()I
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getStringHeight()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    return v0
.end method

.method public getStringWidth()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 18

    .prologue
    .line 238
    const/4 v15, 0x0

    .line 239
    .local v15, "top":I
    const/4 v11, 0x0

    .line 241
    .local v11, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 244
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eqz v2, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v2, :cond_2

    .line 249
    :cond_1
    const-string v2, "TwGLStringTexture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBitmap - mWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 253
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 254
    const/4 v14, 0x0

    .line 256
    .local v14, "resultString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    if-lt v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/glview/TwGLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_f

    .line 257
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLStringTexture;->getAvailableRows()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/glview/TwGLStringTexture;->wordBreak(I)Ljava/util/List;

    move-result-object v14

    .line 259
    if-eqz v14, :cond_10

    .line 260
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int v17, v2, v3

    .line 261
    .local v17, "totalStringHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    sub-int v2, v2, v17

    div-int/lit8 v16, v2, 0x2

    .line 262
    .local v16, "topPadding":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int v12, v2, v3

    .line 264
    .local v12, "lineSpace":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_10

    .line 265
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v2, :pswitch_data_0

    .line 291
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v10, v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    if-eqz v2, :cond_4

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/glview/TwGLStringTexture;->isFadingNeeded(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    new-instance v1, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdgeWidth:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    const v8, 0xffffff

    and-int/2addr v7, v8

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 293
    .local v1, "shader":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 297
    .end local v1    # "shader":Landroid/graphics/Shader;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v2, :pswitch_data_1

    .line 264
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 267
    :pswitch_0
    if-nez v10, :cond_5

    .line 268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v15, v2, v3

    goto :goto_1

    .line 270
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v2, v10

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v4, v10, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v15, v2, v3

    .line 272
    goto/16 :goto_1

    .line 274
    :pswitch_1
    sget v2, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    if-le v12, v2, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v2, v10

    add-int v2, v2, v16

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    mul-int/2addr v3, v10

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v15, v2, v3

    goto/16 :goto_1

    .line 277
    :cond_6
    add-int/lit8 v2, v10, 0x1

    mul-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    mul-int/2addr v3, v10

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v15, v2, v3

    .line 279
    goto/16 :goto_1

    .line 281
    :pswitch_2
    if-nez v10, :cond_7

    .line 282
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v10

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v15, v2, v3

    goto/16 :goto_1

    .line 284
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v10

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v4, v10, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int v15, v2, v3

    .line 287
    goto/16 :goto_1

    .line 299
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 301
    sget v2, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v11, v2, v3

    .line 305
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v2, :cond_8

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 308
    .local v13, "originalStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    .end local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 303
    :cond_9
    sget v2, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v11, v2

    goto :goto_3

    .line 317
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 318
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    sget v4, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_c

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 320
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    .line 321
    sget v2, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v11, v2, v3

    .line 328
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v2, :cond_a

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 331
    .restart local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    .end local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 323
    :cond_b
    sget v2, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v11, v2

    goto :goto_4

    .line 326
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v11, v2

    goto :goto_4

    .line 340
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 341
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 342
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    sub-float v11, v2, v3

    .line 346
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v2, :cond_d

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 349
    .restart local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    .end local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 344
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    goto :goto_5

    .line 363
    .end local v10    # "i":I
    .end local v12    # "lineSpace":I
    .end local v16    # "topPadding":I
    .end local v17    # "totalStringHeight":I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    packed-switch v2, :pswitch_data_2

    .line 377
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    packed-switch v2, :pswitch_data_3

    .line 431
    :cond_10
    :goto_7
    return-object v9

    .line 365
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v15, v2

    .line 366
    goto :goto_6

    .line 368
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v15, v2, v3

    .line 369
    goto :goto_6

    .line 371
    :pswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v15, v2, v3

    .line 372
    goto :goto_6

    .line 379
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 381
    sget v2, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v11, v2, v3

    .line 385
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v2, :cond_11

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 388
    .restart local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    .end local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 383
    :cond_12
    sget v2, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    int-to-float v11, v2

    goto :goto_8

    .line 397
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 398
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v2, :cond_13

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 401
    .restart local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    .end local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 410
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 411
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    .line 412
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    sub-float v11, v2, v3

    .line 416
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eqz v2, :cond_14

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 419
    .restart local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    .end local v13    # "originalStyle":Landroid/graphics/Paint$Style;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 414
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    sget v3, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    goto :goto_9

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 297
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 363
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 377
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setAlign(II)V
    .locals 0
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 673
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 674
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 676
    return-void
.end method

.method public setBold(Z)V
    .locals 0
    .param p1, "bold"    # Z

    .prologue
    .line 657
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 659
    return-void
.end method

.method public setBoldColor(ZI)V
    .locals 0
    .param p1, "bold"    # Z
    .param p2, "color"    # I

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mBold:Z

    .line 668
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 670
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 662
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 664
    return-void
.end method

.method public setDynamicHeight(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 911
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 912
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLStringTexture;->getDynamicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 913
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    .line 914
    :cond_0
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicHeight - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    int-to-float v0, v0

    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 919
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 920
    return-void
.end method

.method public setFadingEdge(Z)V
    .locals 0
    .param p1, "fading"    # Z

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdge:Z

    .line 690
    return-void
.end method

.method public setFadingEdgeWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 684
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mFadingEdgeWidth:F

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 686
    return-void
.end method

.method public setFontSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 536
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 537
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 541
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 542
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 544
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 546
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 547
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    .line 548
    :cond_0
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFontSize - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 552
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 461
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 463
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v0, :cond_0

    .line 464
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeight - mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLayout(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 477
    packed-switch p1, :pswitch_data_0

    .line 484
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    .line 487
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 494
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    .line 497
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 498
    return-void

    .line 481
    :pswitch_0
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHAlign:I

    goto :goto_0

    .line 491
    :pswitch_1
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mVAlign:I

    goto :goto_1

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLineSpace(I)V
    .locals 0
    .param p1, "linespace"    # I

    .prologue
    .line 889
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mLineSpace:I

    .line 890
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 582
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    if-eq v0, p1, :cond_0

    .line 583
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 586
    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 2
    .param p1, "visibility"    # Z
    .param p2, "radius"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "color"    # I

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    if-eq v1, p1, :cond_0

    .line 591
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 592
    const/4 v0, 0x1

    .line 594
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 595
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    .line 596
    const/4 v0, 0x1

    .line 598
    :cond_1
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_2

    .line 599
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    .line 600
    const/4 v0, 0x1

    .line 602
    :cond_2
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_3

    .line 603
    iput p4, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    .line 604
    const/4 v0, 0x1

    .line 606
    :cond_3
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    if-eq v1, p5, :cond_4

    .line 607
    iput p5, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowColor:I

    .line 608
    const/4 v0, 0x1

    .line 610
    :cond_4
    if-eqz v0, :cond_5

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 613
    :cond_5
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 2
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "result":Z
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 569
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetX:F

    .line 570
    const/4 v0, 0x1

    .line 572
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 573
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowOffsetY:F

    .line 574
    const/4 v0, 0x1

    .line 576
    :cond_1
    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 579
    :cond_2
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 560
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 561
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadowRadius:F

    .line 562
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 564
    :cond_0
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mShadow:Z

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 557
    return-void
.end method

.method public setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 436
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 437
    float-to-int v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 439
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    .line 440
    :cond_0
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSize - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 444
    return-void
.end method

.method public setStroke(ZFI)V
    .locals 2
    .param p1, "visibility"    # Z
    .param p2, "width"    # F
    .param p3, "color"    # I

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eq v1, p1, :cond_0

    .line 640
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 641
    const/4 v0, 0x1

    .line 643
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 644
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 645
    const/4 v0, 0x1

    .line 647
    :cond_1
    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    if-eq v1, p3, :cond_2

    .line 648
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 649
    const/4 v0, 0x1

    .line 651
    :cond_2
    if-eqz v0, :cond_3

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 654
    :cond_3
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 630
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 631
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeColor:I

    .line 632
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 634
    :cond_0
    return-void
.end method

.method public setStrokeVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    if-eq v0, p1, :cond_0

    .line 617
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStroke:Z

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 620
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 623
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 624
    iput p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStrokeWidth:F

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 627
    :cond_0
    return-void
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getSizeGiven()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 505
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-gtz v0, :cond_0

    .line 506
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    int-to-float v1, v1

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    .line 515
    iput p2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    .line 516
    iput p3, p0, Lcom/sec/android/glview/TwGLStringTexture;->mColor:I

    .line 518
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 522
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    .line 523
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/glview/TwGLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 527
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    .line 528
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    .line 529
    :cond_0
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 533
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    .line 681
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 982
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 449
    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    .line 451
    iget v0, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    if-gtz v0, :cond_0

    .line 452
    const-string v0, "TwGLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidth - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
