.class public final Lcom/visionobjects/textwidget/h/a;
.super Landroid/view/View;
.source "BaselineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/h/a$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:F

.field private c:Landroid/graphics/Paint;

.field private d:[F

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:[F

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/BitmapShader;

.field private k:Lcom/visionobjects/textwidget/e/b;

.field private l:Lcom/visionobjects/textwidget/e/b;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/textwidget/h/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/textwidget/h/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/visionobjects/textwidget/h/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x1

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->c:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    sget-object v0, Lcom/visionobjects/textwidget/h/a;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/visionobjects/textwidget/h/a;->a:[I

    aget v1, v1, v4

    add-int/2addr v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->i:Landroid/graphics/Bitmap;

    .line 69
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/a;->i:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->j:Landroid/graphics/BitmapShader;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->f:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/a;->j:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 76
    const v0, -0x6b6b6c

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/h/a;->a(I)V

    .line 77
    const/high16 v0, 0x40000000

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/h/a;->a(F)V

    .line 79
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->d:[F

    .line 80
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->g:[F

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->m:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->n:Ljava/util/ArrayList;

    .line 84
    iput-boolean v4, p0, Lcom/visionobjects/textwidget/h/a;->s:Z

    .line 85
    return-void
.end method

.method private a(Lcom/visionobjects/textwidget/e/b;Ljava/util/ArrayList;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/textwidget/e/b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/textwidget/h/a$a;",
            ">;F)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 203
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    move v0, v1

    .line 205
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 206
    aget-object v3, v2, v0

    .line 208
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    new-instance v4, Lcom/visionobjects/textwidget/h/a$a;

    invoke-direct {v4, p0, v1}, Lcom/visionobjects/textwidget/h/a$a;-><init>(Lcom/visionobjects/textwidget/h/a;B)V

    .line 210
    invoke-virtual {p1, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v5

    add-float/2addr v5, p3

    iput v5, v4, Lcom/visionobjects/textwidget/h/a$a;->a:F

    .line 211
    invoke-virtual {p1, v3}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v3

    add-float/2addr v3, p3

    iput v3, v4, Lcom/visionobjects/textwidget/h/a$a;->b:F

    .line 212
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/textwidget/h/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/high16 v6, 0x40000000

    const/high16 v2, 0x3f000000

    .line 273
    iget v0, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    div-float/2addr v0, v6

    sub-float v3, v0, v2

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    sub-float v4, v0, v2

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 277
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    neg-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    move v1, v0

    .line 279
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 280
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_1

    .line 281
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/h/a$a;

    .line 283
    iget v7, v0, Lcom/visionobjects/textwidget/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v3}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    .line 284
    iget v7, v0, Lcom/visionobjects/textwidget/h/a$a;->b:F

    sub-float/2addr v7, v1

    invoke-direct {p0, v7, v3}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    .line 286
    iget v7, v0, Lcom/visionobjects/textwidget/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v8}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    .line 287
    iget v7, v0, Lcom/visionobjects/textwidget/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v5}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    .line 288
    iget v7, v0, Lcom/visionobjects/textwidget/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v4}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    .line 289
    iget v7, v0, Lcom/visionobjects/textwidget/h/a$a;->b:F

    sub-float/2addr v7, v1

    invoke-direct {p0, v7, v4}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    .line 290
    iget v7, v0, Lcom/visionobjects/textwidget/h/a$a;->b:F

    sub-float/2addr v7, v1

    invoke-direct {p0, v7, v5}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    .line 291
    iget v0, v0, Lcom/visionobjects/textwidget/h/a$a;->b:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0, v8}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    .line 280
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 277
    :cond_0
    iget v0, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    div-float/2addr v0, v6

    sub-float/2addr v0, v2

    move v1, v0

    goto :goto_0

    .line 293
    :cond_1
    return-void
.end method

.method private b(FF)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->d:[F

    iget v1, p0, Lcom/visionobjects/textwidget/h/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/visionobjects/textwidget/h/a;->e:I

    aput p1, v0, v1

    .line 246
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->d:[F

    iget v1, p0, Lcom/visionobjects/textwidget/h/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/visionobjects/textwidget/h/a;->e:I

    aput p2, v0, v1

    .line 247
    return-void
.end method

.method private c(FF)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->g:[F

    iget v1, p0, Lcom/visionobjects/textwidget/h/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/visionobjects/textwidget/h/a;->h:I

    aput p1, v0, v1

    .line 253
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->g:[F

    iget v1, p0, Lcom/visionobjects/textwidget/h/a;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/visionobjects/textwidget/h/a;->h:I

    aput p2, v0, v1

    .line 254
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/h/a;->s:Z

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 326
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    .line 146
    iput v0, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/h/a;->r:Z

    .line 148
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/a;->d()V

    .line 149
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 106
    iput p1, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    .line 107
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/a;->d()V

    .line 110
    return-void
.end method

.method public final a(FF)V
    .locals 1

    .prologue
    .line 136
    iput p1, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    .line 137
    iput p2, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/h/a;->r:Z

    .line 139
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/a;->d()V

    .line 140
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move v0, v1

    .line 96
    :goto_0
    sget-object v2, Lcom/visionobjects/textwidget/h/a;->a:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v1, p1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 101
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/e/b;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    .line 116
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/a;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/textwidget/h/a;->a(Lcom/visionobjects/textwidget/e/b;Ljava/util/ArrayList;F)V

    .line 187
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->l:Lcom/visionobjects/textwidget/e/b;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/a;->n:Ljava/util/ArrayList;

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->o:F

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/textwidget/h/a;->a(Lcom/visionobjects/textwidget/e/b;Ljava/util/ArrayList;F)V

    .line 188
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/a;->d()V

    .line 189
    return-void
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/visionobjects/textwidget/h/a;->o:F

    .line 128
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/e/b;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/a;->l:Lcom/visionobjects/textwidget/e/b;

    .line 122
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->l:Lcom/visionobjects/textwidget/e/b;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/a;->n:Ljava/util/ArrayList;

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->o:F

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/textwidget/h/a;->a(Lcom/visionobjects/textwidget/e/b;Ljava/util/ArrayList;F)V

    .line 195
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/a;->d()V

    .line 196
    return-void
.end method

.method public final c(F)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    iget-boolean v2, p0, Lcom/visionobjects/textwidget/h/a;->r:Z

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 160
    :cond_2
    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final d(F)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    iget-boolean v2, p0, Lcom/visionobjects/textwidget/h/a;->r:Z

    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 175
    :cond_2
    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x40000000

    const/high16 v5, 0x3f000000

    .line 331
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/a;->s:Z

    if-eqz v0, :cond_3

    .line 332
    iput-boolean v7, p0, Lcom/visionobjects/textwidget/h/a;->s:Z

    .line 333
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/a;->d:[F

    array-length v2, v2

    if-ge v2, v1, :cond_0

    add-int/lit16 v2, v1, 0x190

    rem-int/lit16 v1, v1, 0x190

    sub-int v1, v2, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/visionobjects/textwidget/h/a;->d:[F

    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/a;->g:[F

    array-length v1, v1

    if-ge v1, v0, :cond_1

    add-int/lit16 v1, v0, 0x190

    rem-int/lit16 v0, v0, 0x190

    sub-int v0, v1, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/a;->g:[F

    :cond_1
    iput v7, p0, Lcom/visionobjects/textwidget/h/a;->e:I

    iput v7, p0, Lcom/visionobjects/textwidget/h/a;->h:I

    iget v0, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    div-float/2addr v0, v6

    sub-float v1, v0, v5

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->c()F

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->m:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/h/a;->a(Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/a;->r:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    div-float/2addr v0, v6

    sub-float v2, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    div-float/2addr v3, v6

    sub-float/2addr v0, v3

    sub-float v3, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    neg-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v5

    :goto_0
    iget v5, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    add-float/2addr v5, v0

    invoke-direct {p0, v5, v2}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    iget v5, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    add-float/2addr v5, v0

    invoke-direct {p0, v5, v3}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    iget v5, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    sub-float/2addr v5, v0

    invoke-direct {p0, v5, v3}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    iget v3, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    sub-float/2addr v3, v0

    invoke-direct {p0, v3, v2}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    add-float/2addr v2, v0

    invoke-direct {p0, v2, v8}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->p:F

    add-float/2addr v2, v0

    invoke-direct {p0, v2, v4}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    sub-float/2addr v2, v0

    invoke-direct {p0, v2, v4}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    iget v2, p0, Lcom/visionobjects/textwidget/h/a;->q:F

    sub-float v0, v2, v0

    invoke-direct {p0, v0, v8}, Lcom/visionobjects/textwidget/h/a;->b(FF)V

    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->n:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/h/a;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->k:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->d()F

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/visionobjects/textwidget/h/a;->c(FF)V

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->d:[F

    iget v1, p0, Lcom/visionobjects/textwidget/h/a;->e:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 336
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/a;->g:[F

    iget v1, p0, Lcom/visionobjects/textwidget/h/a;->h:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 337
    return-void

    .line 333
    :cond_4
    iget v0, p0, Lcom/visionobjects/textwidget/h/a;->b:F

    div-float/2addr v0, v6

    sub-float/2addr v0, v5

    goto :goto_0
.end method
