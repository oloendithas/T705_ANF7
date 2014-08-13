.class public final Lcom/visionobjects/textwidget/h/h;
.super Ljava/lang/Object;
.source "VOWordView.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/f/c;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/f/c;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/h;->b:Landroid/graphics/Rect;

    .line 29
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    .line 30
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/h;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 51
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->c()Landroid/graphics/Paint;

    move-result-object v6

    .line 52
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->d()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->a()Ljava/util/List;

    move-result-object v2

    .line 56
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->k()[C

    move-result-object v3

    .line 59
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 60
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 61
    aget-char v4, v3, v0

    aput-char v4, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/visionobjects/textwidget/f/c$a;

    .line 65
    if-eqz v1, :cond_1

    .line 66
    iget v0, v7, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v2, v7, Lcom/visionobjects/textwidget/f/c$a;->c:I

    add-int/2addr v0, v2

    aget-char v8, v1, v0

    .line 67
    iget v0, v7, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v2, v7, Lcom/visionobjects/textwidget/f/c$a;->c:I

    add-int/2addr v0, v2

    const/16 v2, 0x200f

    aput-char v2, v1, v0

    .line 68
    iget v2, v7, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v0, v7, Lcom/visionobjects/textwidget/f/c$a;->c:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v7, Lcom/visionobjects/textwidget/f/c$a;->a:F

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 69
    iget v0, v7, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v2, v7, Lcom/visionobjects/textwidget/f/c$a;->c:I

    add-int/2addr v0, v2

    aput-char v8, v1, v0

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->k()[C

    move-result-object v8

    iget v9, v7, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v10, v7, Lcom/visionobjects/textwidget/f/c$a;->c:I

    iget v11, v7, Lcom/visionobjects/textwidget/f/c$a;->a:F

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/h;->a:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v12

    move-object/from16 v7, p1

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 89
    :cond_2
    return-void
.end method
