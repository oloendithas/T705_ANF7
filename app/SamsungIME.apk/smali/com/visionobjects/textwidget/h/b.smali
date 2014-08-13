.class public final Lcom/visionobjects/textwidget/h/b;
.super Landroid/view/View;
.source "InsertWindowView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/b;->a:Landroid/graphics/Paint;

    .line 24
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/b;->a:Landroid/graphics/Paint;

    const v1, 0x66c7e1e8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/b;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/visionobjects/textwidget/h/b;->b:F

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 38
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    return-void
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/visionobjects/textwidget/h/b;->c:F

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 44
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 49
    iget v0, p0, Lcom/visionobjects/textwidget/h/b;->b:F

    iget v1, p0, Lcom/visionobjects/textwidget/h/b;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 50
    iget v1, p0, Lcom/visionobjects/textwidget/h/b;->b:F

    iget v3, p0, Lcom/visionobjects/textwidget/h/b;->c:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/visionobjects/textwidget/h/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget v1, p0, Lcom/visionobjects/textwidget/h/b;->c:F

    iget v3, p0, Lcom/visionobjects/textwidget/h/b;->b:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/visionobjects/textwidget/h/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
