.class public final Lcom/visionobjects/a/a/a;
.super Ljava/lang/Object;
.source "MarkerStroker.java"

# interfaces
.implements Lcom/visionobjects/a/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/a/a/a$a;
    }
.end annotation


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
            "Lcom/visionobjects/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Lcom/visionobjects/a/a/a$a;

.field private r:Lcom/visionobjects/a/a/a$a;

.field private s:Lcom/visionobjects/a/a/a$a;

.field private t:Landroid/graphics/Matrix;

.field private u:Landroid/graphics/Matrix;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 86
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->h:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->i:Landroid/graphics/Path;

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->j:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    .line 95
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->m:Landroid/graphics/RectF;

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    .line 100
    iput-object v2, p0, Lcom/visionobjects/a/a/a;->t:Landroid/graphics/Matrix;

    .line 101
    iput-object v2, p0, Lcom/visionobjects/a/a/a;->u:Landroid/graphics/Matrix;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->x:Landroid/graphics/Paint;

    .line 104
    iput-object v2, p0, Lcom/visionobjects/a/a/a;->v:Landroid/graphics/Bitmap;

    .line 105
    iput-object v2, p0, Lcom/visionobjects/a/a/a;->w:Landroid/graphics/Bitmap;

    .line 106
    return-void
.end method

.method private static a(Lcom/visionobjects/a/a/a$a;)F
    .locals 5

    .prologue
    const/high16 v4, 0x42b40000

    const/4 v3, 0x0

    .line 394
    iget v0, p0, Lcom/visionobjects/a/a/a$a;->g:F

    iget v1, p0, Lcom/visionobjects/a/a/a$a;->f:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 395
    sub-float v0, v4, v1

    .line 396
    iget v2, p0, Lcom/visionobjects/a/a/a$a;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/visionobjects/a/a/a$a;->f:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 397
    neg-float v0, v0

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    iget v2, p0, Lcom/visionobjects/a/a/a$a;->g:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/visionobjects/a/a/a$a;->f:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 400
    const/high16 v0, -0x3d4c0000

    sub-float/2addr v0, v1

    goto :goto_0

    .line 402
    :cond_2
    iget v2, p0, Lcom/visionobjects/a/a/a$a;->g:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, p0, Lcom/visionobjects/a/a/a$a;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 403
    add-float v0, v4, v1

    goto :goto_0

    .line 405
    :cond_3
    iget v1, p0, Lcom/visionobjects/a/a/a$a;->g:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/visionobjects/a/a/a$a;->f:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 127
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 129
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 131
    add-int v0, v7, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v5, v2

    .line 133
    :goto_0
    if-ge v5, v3, :cond_1

    move v4, v2

    .line 134
    :goto_1
    if-ge v4, v3, :cond_0

    .line 135
    const/4 v6, -0x1

    invoke-virtual {v0, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v2

    move v5, v3

    move v6, v3

    .line 139
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 141
    return-object v0
.end method

.method private a(Lcom/visionobjects/a/a/a$a;Landroid/graphics/Bitmap;)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 424
    if-eqz p2, :cond_0

    .line 425
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/visionobjects/a/a/a$a;->a:F

    iget v2, p0, Lcom/visionobjects/a/a/a;->b:F

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/visionobjects/a/a/a$a;->b:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 427
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 415
    if-eqz p1, :cond_0

    .line 416
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/visionobjects/a/a/a;->b:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 418
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->x:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 170
    const/high16 v0, 0x40400000

    add-float/2addr v0, p1

    iput v0, p0, Lcom/visionobjects/a/a/a;->b:F

    .line 171
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/visionobjects/a/a/a;->b:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    return-void
.end method

.method public final a(FFFJ)V
    .locals 7

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/visionobjects/a/a/a;->e()V

    .line 227
    new-instance v0, Lcom/visionobjects/a/a/a$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/visionobjects/a/a/a$a;-><init>(Lcom/visionobjects/a/a/a;FFFJ)V

    .line 229
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->i:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 233
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 234
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
    iput p1, p0, Lcom/visionobjects/a/a/a;->c:F

    .line 237
    iput p2, p0, Lcom/visionobjects/a/a/a;->d:F

    .line 238
    iput p1, p0, Lcom/visionobjects/a/a/a;->e:F

    .line 239
    iput p2, p0, Lcom/visionobjects/a/a/a;->f:F

    .line 241
    iput-object v0, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    .line 242
    iput-object v0, p0, Lcom/visionobjects/a/a/a;->s:Lcom/visionobjects/a/a/a$a;

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lcom/visionobjects/a/a/a;->p:I

    .line 245
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Lcom/visionobjects/a/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->v:Landroid/graphics/Bitmap;

    .line 115
    invoke-static {p2}, Lcom/visionobjects/a/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->w:Landroid/graphics/Bitmap;

    .line 116
    return-void
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->h:Landroid/graphics/Paint;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public final b(FFFJ)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000

    .line 249
    new-instance v0, Lcom/visionobjects/a/a/a$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/visionobjects/a/a/a$a;-><init>(Lcom/visionobjects/a/a/a;FFFJ)V

    .line 251
    iget v1, p0, Lcom/visionobjects/a/a/a;->c:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/visionobjects/a/a/a;->d:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->s:Lcom/visionobjects/a/a/a$a;

    iget v1, v1, Lcom/visionobjects/a/a/a$a;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/a/a/a;->s:Lcom/visionobjects/a/a/a$a;

    iget v2, v2, Lcom/visionobjects/a/a/a$a;->b:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 253
    iget v1, p0, Lcom/visionobjects/a/a/a;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 254
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/visionobjects/a/a/a;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    invoke-virtual {v0, v1}, Lcom/visionobjects/a/a/a$a;->a(Lcom/visionobjects/a/a/a$a;)V

    iget-object v1, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v2, v0, Lcom/visionobjects/a/a/a$a;->f:F

    neg-float v2, v2

    iput v2, v1, Lcom/visionobjects/a/a/a$a;->f:F

    iget-object v1, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v2, v0, Lcom/visionobjects/a/a/a$a;->g:F

    neg-float v2, v2

    iput v2, v1, Lcom/visionobjects/a/a/a$a;->g:F

    iget-object v1, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v2, v0, Lcom/visionobjects/a/a/a$a;->e:F

    iput v2, v1, Lcom/visionobjects/a/a/a$a;->e:F

    iget-object v1, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    invoke-static {v1}, Lcom/visionobjects/a/a/a;->a(Lcom/visionobjects/a/a/a$a;)F

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/a/a/a;->v:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/visionobjects/a/a/a;->b(Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->v:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4}, Lcom/visionobjects/a/a/a;->a(Lcom/visionobjects/a/a/a$a;Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->t:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->t:Landroid/graphics/Matrix;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lcom/visionobjects/a/a/a;->t:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v3, v3, Lcom/visionobjects/a/a/a$a;->a:F

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v4, v4, Lcom/visionobjects/a/a/a$a;->b:F

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, p0, Lcom/visionobjects/a/a/a;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/a/a/a;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v2, v2, Lcom/visionobjects/a/a/a$a;->a:F

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v3, v3, Lcom/visionobjects/a/a/a$a;->b:F

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v4, v4, Lcom/visionobjects/a/a/a$a;->a:F

    add-float/2addr v4, v1

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->q:Lcom/visionobjects/a/a/a$a;

    iget v5, v5, Lcom/visionobjects/a/a/a$a;->b:F

    add-float/2addr v1, v5

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/graphics/RectF;->union(FFFF)V

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/graphics/RectF;->union(FFFF)V

    .line 257
    :cond_1
    iget-object v8, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    new-instance v1, Lcom/visionobjects/a/a/a$a;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/visionobjects/a/a/a$a;-><init>(Lcom/visionobjects/a/a/a;FFFJ)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget v1, p0, Lcom/visionobjects/a/a/a;->c:F

    add-float/2addr v1, p1

    div-float/2addr v1, v9

    .line 260
    iget v2, p0, Lcom/visionobjects/a/a/a;->d:F

    add-float/2addr v2, p2

    div-float/2addr v2, v9

    .line 262
    iget-object v3, p0, Lcom/visionobjects/a/a/a;->i:Landroid/graphics/Path;

    iget v4, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v5, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 263
    iget-object v3, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->union(FF)V

    .line 264
    iget-object v3, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    iget v4, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v5, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->union(FF)V

    .line 266
    iget-object v3, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    iget v4, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v5, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 267
    iget-object v3, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->union(FF)V

    .line 268
    iget-object v3, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    iget v4, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v5, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->union(FF)V

    .line 270
    iput p1, p0, Lcom/visionobjects/a/a/a;->c:F

    .line 271
    iput p2, p0, Lcom/visionobjects/a/a/a;->d:F

    .line 272
    iput v1, p0, Lcom/visionobjects/a/a/a;->e:F

    .line 273
    iput v2, p0, Lcom/visionobjects/a/a/a;->f:F

    .line 275
    iput-object v0, p0, Lcom/visionobjects/a/a/a;->s:Lcom/visionobjects/a/a/a$a;

    .line 277
    iget v0, p0, Lcom/visionobjects/a/a/a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/visionobjects/a/a/a;->p:I

    .line 280
    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->x:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    iput p1, p0, Lcom/visionobjects/a/a/a;->a:I

    .line 161
    return-void
.end method

.method public final c()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method public final d()[Lcom/visionobjects/a/a;
    .locals 8

    .prologue
    .line 195
    iget v0, p0, Lcom/visionobjects/a/a/a;->p:I

    new-array v7, v0, [Lcom/visionobjects/a/a;

    .line 197
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/visionobjects/a/a/a;->p:I

    if-ge v6, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/visionobjects/a/a/a$a;

    .line 199
    new-instance v0, Lcom/visionobjects/a/a;

    iget v1, v4, Lcom/visionobjects/a/a/a$a;->a:F

    iget v2, v4, Lcom/visionobjects/a/a/a$a;->b:F

    iget v3, v4, Lcom/visionobjects/a/a/a$a;->c:F

    iget-wide v4, v4, Lcom/visionobjects/a/a/a$a;->d:J

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/a/a;-><init>(FFFJ)V

    aput-object v0, v7, v6

    .line 197
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 202
    :cond_0
    return-object v7
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 212
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 214
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 215
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/a/a/a;->p:I

    .line 219
    iput-object v1, p0, Lcom/visionobjects/a/a/a;->u:Landroid/graphics/Matrix;

    .line 220
    iput-object v1, p0, Lcom/visionobjects/a/a/a;->t:Landroid/graphics/Matrix;

    .line 221
    return-void
.end method

.method public final f()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/high16 v8, 0x40000000

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->i:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    .line 288
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    iget v3, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    iget v3, p0, Lcom/visionobjects/a/a/a;->c:F

    iget v4, p0, Lcom/visionobjects/a/a/a;->d:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->union(FF)V

    .line 290
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/a/a/a;->u:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/visionobjects/a/a/a;->p:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/a/a/a$a;

    :goto_0
    iget-object v3, p0, Lcom/visionobjects/a/a/a;->s:Lcom/visionobjects/a/a/a$a;

    iput-object v3, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    invoke-virtual {v3, v0}, Lcom/visionobjects/a/a/a$a;->a(Lcom/visionobjects/a/a/a$a;)V

    iget-object v0, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    invoke-static {v0}, Lcom/visionobjects/a/a/a;->a(Lcom/visionobjects/a/a/a$a;)F

    move-result v0

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/visionobjects/a/a/a;->b(Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v3

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v5}, Lcom/visionobjects/a/a/a;->a(Lcom/visionobjects/a/a/a$a;Landroid/graphics/Bitmap;)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->u:Landroid/graphics/Matrix;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->u:Landroid/graphics/Matrix;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->u:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget v4, v4, Lcom/visionobjects/a/a/a$a;->a:F

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget v5, v5, Lcom/visionobjects/a/a/a$a;->b:F

    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/visionobjects/a/a/a;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget v3, v3, Lcom/visionobjects/a/a/a$a;->a:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget v4, v4, Lcom/visionobjects/a/a/a$a;->b:F

    sub-float/2addr v4, v0

    iget-object v5, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget v5, v5, Lcom/visionobjects/a/a/a$a;->a:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/visionobjects/a/a/a;->r:Lcom/visionobjects/a/a/a$a;

    iget v6, v6, Lcom/visionobjects/a/a/a$a;->b:F

    add-float/2addr v0, v6

    iget-object v6, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v4, v5, v0}, Landroid/graphics/RectF;->union(FFFF)V

    iget-object v6, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v4, v5, v0}, Landroid/graphics/RectF;->union(FFFF)V

    .line 293
    :cond_0
    iget v0, p0, Lcom/visionobjects/a/a/a;->b:F

    div-float/2addr v0, v8

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 294
    iget v0, p0, Lcom/visionobjects/a/a/a;->b:F

    div-float v1, v0, v8

    iget-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/a/a/a$a;

    iget v2, v0, Lcom/visionobjects/a/a/a$a;->a:F

    iget v0, v0, Lcom/visionobjects/a/a/a$a;->b:F

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    sub-float v4, v2, v1

    sub-float v5, v0, v1

    add-float v6, v2, v1

    add-float v7, v0, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    sub-float v4, v2, v1

    sub-float v5, v0, v1

    add-float/2addr v2, v1

    add-float/2addr v0, v1

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 296
    :cond_1
    return-void

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->o:Ljava/util/ArrayList;

    iget v3, p0, Lcom/visionobjects/a/a/a;->p:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/a/a/a$a;

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 293
    goto :goto_1
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 436
    iget v0, p0, Lcom/visionobjects/a/a/a;->b:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    .line 437
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/visionobjects/a/a/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 438
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->j:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 439
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 444
    iget v0, p0, Lcom/visionobjects/a/a/a;->b:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    .line 445
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 446
    iget-object v1, p0, Lcom/visionobjects/a/a/a;->m:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 447
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->m:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final i()V
    .locals 5

    .prologue
    .line 452
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 453
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->l:Landroid/graphics/Path;

    iget v1, p0, Lcom/visionobjects/a/a/a;->e:F

    iget v2, p0, Lcom/visionobjects/a/a/a;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 454
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->n:Landroid/graphics/RectF;

    iget v1, p0, Lcom/visionobjects/a/a/a;->e:F

    iget v2, p0, Lcom/visionobjects/a/a/a;->f:F

    iget v3, p0, Lcom/visionobjects/a/a/a;->e:F

    iget v4, p0, Lcom/visionobjects/a/a/a;->f:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 455
    return-void
.end method

.method public final j()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final k()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->t:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->w:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final m()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/visionobjects/a/a/a;->u:Landroid/graphics/Matrix;

    return-object v0
.end method
