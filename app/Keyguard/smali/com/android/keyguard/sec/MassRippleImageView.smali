.class public Lcom/android/keyguard/sec/MassRippleImageView;
.super Landroid/widget/ImageView;
.source "MassRippleImageView.java"


# instance fields
.field INTERVAL_STROKE:F

.field IntrinsicHeight:I

.field IntrinsicWidth:I

.field WORKING_GAP:F

.field mPath:Landroid/graphics/Path;

.field originalStroke:F

.field oval:Landroid/graphics/RectF;

.field prevTime:J

.field rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

.field stroke:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xc8

    const v0, 0x41d4cccd

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    .line 31
    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    .line 32
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    .line 34
    iput v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    .line 35
    iput v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    .line 113
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    const-string v0, "MassRippleImageView"

    const-string v1, "MassRippleImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FIIF)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stroke"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "duration"    # F

    .prologue
    const/high16 v2, 0x41a00000

    .line 122
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/MassRippleImageView;-><init>(Landroid/content/Context;)V

    .line 124
    const-string v0, "MassRippleImageView"

    const-string v1, "MassRippleImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, p2}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    .line 127
    int-to-float v0, p4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    .line 128
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    .line 130
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    div-float/2addr v0, p5

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    .line 131
    div-float v0, p5, v2

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->WORKING_GAP:F

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassRippleImageView;->getAnimation()Landroid/view/animation/Animation;

    .line 134
    return-void
.end method

.method private isTooEarly()Z
    .registers 5

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->prevTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->WORKING_GAP:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 141
    iput-wide v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->prevTime:J

    .line 142
    const/4 v2, 0x0

    .line 144
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x1

    goto :goto_12
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .registers 7

    .prologue
    const/high16 v2, 0x3f800000

    .line 76
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    .line 77
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_11

    .line 78
    iput v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    .line 80
    :cond_11
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleImageView;->isTooEarly()Z

    move-result v0

    if-nez v0, :cond_88

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->mPath:Landroid/graphics/Path;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->oval:Landroid/graphics/RectF;

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->oval:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 86
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/PathShape;

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_88
    invoke-super {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected onAnimationEnd()V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 66
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    .line 67
    return-void
.end method

.method protected onAnimationStart()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 57
    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    .line 60
    return-void
.end method

.method public setPivotX(F)V
    .registers 2
    .param p1, "pivotX"    # F

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 44
    return-void
.end method

.method public setPivotY(F)V
    .registers 2
    .param p1, "pivotY"    # F

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 50
    return-void
.end method

.method public translatedFromDPToPixel(F)F
    .registers 8
    .param p1, "dp"    # F

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "ret":F
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 103
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v3

    .line 104
    .local v0, "dpi":F
    const/high16 v3, 0x43200000

    div-float v3, v0, v3

    mul-float v2, p1, v3

    .line 105
    const-string v3, "MassRippleImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to Pixel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v2
.end method
