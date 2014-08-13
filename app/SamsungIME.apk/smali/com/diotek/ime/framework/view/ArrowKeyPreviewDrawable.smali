.class public Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ArrowKeyPreviewDrawable.java"


# instance fields
.field private mArrowPositionY:I

.field private mHeight:I

.field private mLeftArrow:Landroid/graphics/drawable/Drawable;

.field private mLeftArrowPositionX:I

.field private mPadding:Landroid/graphics/Rect;

.field private mPageText:Ljava/lang/String;

.field private mRightArrow:Landroid/graphics/drawable/Drawable;

.field private mRightArrowPositionX:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextPositionY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILjava/lang/String;IILandroid/graphics/Paint;)V
    .locals 6
    .param p1, "leftArrow"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rightArrow"    # Landroid/graphics/drawable/Drawable;
    .param p3, "arrowPadding"    # I
    .param p4, "pageText"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v5, 0x40000000

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    const/4 v0, 0x0

    .line 39
    .local v0, "leftArrowIntrinsicHeight":I
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    iput p3, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrowPositionX:I

    .line 45
    :cond_0
    if-eqz p2, :cond_1

    .line 46
    iput-object p2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    sub-int v1, p5, p3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrowPositionX:I

    .line 50
    :cond_1
    iput-object p4, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPageText:Ljava/lang/String;

    .line 51
    iput p5, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mWidth:I

    .line 52
    iput p6, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mHeight:I

    .line 54
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, p7}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 55
    iget-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 56
    iget-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    iget-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPadding:Landroid/graphics/Rect;

    .line 61
    iget-object v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 62
    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mHeight:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mArrowPositionY:I

    .line 63
    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mHeight:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p7}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mTextPositionY:I

    .line 65
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    iget v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 71
    iget-object v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrowPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mArrowPositionY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    iget v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mLeftArrowPositionX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mArrowPositionY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 77
    iget v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrowPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mArrowPositionY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    iget-object v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    iget v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mRightArrowPositionX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mArrowPositionY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPageText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mPageText:Ljava/lang/String;

    iget v1, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mTextPositionY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 85
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/diotek/ime/framework/view/ArrowKeyPreviewDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 95
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 100
    return-void
.end method
