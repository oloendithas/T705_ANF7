.class public final Lcom/visionobjects/a/a/d;
.super Ljava/lang/Object;
.source "SimpleStroker.java"

# interfaces
.implements Lcom/visionobjects/a/a/e;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/RectF;

.field private n:Landroid/graphics/RectF;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 40
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iput p1, p0, Lcom/visionobjects/a/a/d;->b:F

    .line 79
    return-void
.end method

.method public final a(FFFJ)V
    .locals 7

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/visionobjects/a/a/d;->e()V

    .line 122
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    iget-object v6, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/visionobjects/a/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/a/a;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 126
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    iput p1, p0, Lcom/visionobjects/a/a/d;->c:F

    .line 132
    iput p2, p0, Lcom/visionobjects/a/a/d;->d:F

    .line 133
    iput p1, p0, Lcom/visionobjects/a/a/d;->e:F

    .line 134
    iput p2, p0, Lcom/visionobjects/a/a/d;->f:F

    .line 135
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public final b(FFFJ)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000

    .line 139
    iget v0, p0, Lcom/visionobjects/a/a/d;->c:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/visionobjects/a/a/d;->d:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    iget-object v6, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/visionobjects/a/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/a/a;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget v0, p0, Lcom/visionobjects/a/a/d;->c:F

    add-float/2addr v0, p1

    div-float/2addr v0, v7

    .line 143
    iget v1, p0, Lcom/visionobjects/a/a/d;->d:F

    add-float/2addr v1, p2

    div-float/2addr v1, v7

    .line 145
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 146
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    .line 147
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    .line 149
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 150
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    .line 151
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    .line 153
    iput p1, p0, Lcom/visionobjects/a/a/d;->c:F

    .line 154
    iput p2, p0, Lcom/visionobjects/a/a/d;->d:F

    .line 155
    iput v0, p0, Lcom/visionobjects/a/a/d;->e:F

    .line 156
    iput v1, p0, Lcom/visionobjects/a/a/d;->f:F

    .line 158
    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iput p1, p0, Lcom/visionobjects/a/a/d;->a:I

    .line 68
    return-void
.end method

.method public final c()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method public final d()[Lcom/visionobjects/a/a;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/visionobjects/a/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visionobjects/a/a;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 112
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 114
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 115
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 116
    return-void
.end method

.method public final f()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x40000000

    .line 162
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    .line 166
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/d;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    .line 170
    :cond_0
    iget v2, p0, Lcom/visionobjects/a/a/d;->b:F

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    .line 171
    iget v0, p0, Lcom/visionobjects/a/a/d;->b:F

    div-float v2, v0, v5

    iget-object v0, p0, Lcom/visionobjects/a/a/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/a/a;

    iget v1, v0, Lcom/visionobjects/a/a;->a:F

    iget v0, v0, Lcom/visionobjects/a/a;->b:F

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->i:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    sub-float v4, v1, v2

    sub-float v5, v0, v2

    add-float v6, v1, v2

    add-float v7, v0, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    sub-float v4, v1, v2

    sub-float v5, v0, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 170
    goto :goto_0
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 214
    iget v0, p0, Lcom/visionobjects/a/a/d;->b:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    .line 215
    iget-object v1, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 216
    iget-object v1, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 217
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 222
    iget v0, p0, Lcom/visionobjects/a/a/d;->b:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    .line 223
    iget-object v1, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 224
    iget-object v1, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 225
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->m:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final i()V
    .locals 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 231
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->l:Landroid/graphics/Path;

    iget v1, p0, Lcom/visionobjects/a/a/d;->e:F

    iget v2, p0, Lcom/visionobjects/a/a/d;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 232
    iget-object v0, p0, Lcom/visionobjects/a/a/d;->n:Landroid/graphics/RectF;

    iget v1, p0, Lcom/visionobjects/a/a/d;->e:F

    iget v2, p0, Lcom/visionobjects/a/a/d;->f:F

    iget v3, p0, Lcom/visionobjects/a/a/d;->e:F

    iget v4, p0, Lcom/visionobjects/a/a/d;->f:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 233
    return-void
.end method

.method public final j()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method
