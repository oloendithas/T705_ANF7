.class public final Lcom/visionobjects/textwidget/e/a;
.super Ljava/lang/Object;
.source "CharBoxGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/e/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:[F

.field private e:F

.field private f:F

.field private g:[F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const v3, 0xf000

    aput-char v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/visionobjects/textwidget/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    const/high16 v0, 0x42d20000

    invoke-static {v0, p1}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/e/a;->f:F

    .line 61
    invoke-static {p1}, Lcom/visionobjects/textwidget/b/a;->a(Landroid/util/DisplayMetrics;)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/e/a;->a([F)V

    .line 63
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/a;->a(I)V

    .line 64
    return-void
.end method

.method public static a(Ljava/text/Bidi;II)B
    .locals 4

    .prologue
    .line 649
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 650
    add-int v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v0

    int-to-byte v0, v0

    .line 651
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 655
    :goto_1
    return v0

    .line 649
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v0

    int-to-byte v0, v0

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Paint;)F
    .locals 2

    .prologue
    .line 76
    const-string v0, " "

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(Lcom/visionobjects/textwidget/e/a$a;F[Landroid/graphics/RectF;)F
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 391
    iget-object v1, p1, Lcom/visionobjects/textwidget/e/a$a;->b:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget v0, p1, Lcom/visionobjects/textwidget/e/a$a;->d:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, p3, v0

    .line 396
    iget v0, p0, Lcom/visionobjects/textwidget/e/a;->i:F

    .line 481
    :goto_0
    return v0

    .line 401
    :cond_0
    iget-object v1, p1, Lcom/visionobjects/textwidget/e/a$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/visionobjects/textwidget/e/a$a;->a:Ljava/util/List;

    invoke-virtual {p0, v1, v3}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;Ljava/util/List;)[C

    move-result-object v5

    .line 404
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    array-length v3, v5

    invoke-virtual {v1, v5, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v4

    .line 407
    iget-byte v1, p1, Lcom/visionobjects/textwidget/e/a$a;->c:B

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_2

    move v1, v0

    .line 411
    :goto_1
    iget-boolean v3, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 412
    sub-float/2addr p2, v4

    .line 420
    :cond_1
    :goto_2
    array-length v3, v5

    if-ne v3, v7, :cond_5

    aget-char v3, v5, v2

    aget-char v0, v5, v0

    const/4 v6, 0x2

    aget-char v6, v5, v6

    invoke-static {v3, v0, v6}, Lcom/visionobjects/textwidget/g/a;->a(CCC)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 423
    const/high16 v0, 0x40400000

    div-float v0, v4, v0

    .line 424
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v2, v7, v3}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 426
    :goto_3
    if-ge v2, v7, :cond_4

    .line 427
    new-instance v1, Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-direct {v1, v3, v5, v0, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 428
    sub-float v3, p2, v0

    iget v5, p0, Lcom/visionobjects/textwidget/e/a;->f:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 429
    iget v3, p1, Lcom/visionobjects/textwidget/e/a$a;->d:I

    add-int/2addr v3, v2

    aput-object v1, p3, v3

    .line 430
    sub-float/2addr p2, v0

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move v1, v2

    .line 407
    goto :goto_1

    .line 413
    :cond_3
    iget-boolean v3, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 414
    add-float/2addr p2, v4

    goto :goto_2

    :cond_4
    move v0, v4

    .line 433
    goto :goto_0

    :cond_5
    move v3, v2

    .line 439
    :goto_4
    iget-object v0, p1, Lcom/visionobjects/textwidget/e/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 440
    iget-object v0, p1, Lcom/visionobjects/textwidget/e/a$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 442
    aget-char v0, v5, v3

    .line 444
    if-nez v0, :cond_7

    .line 448
    if-lez v2, :cond_6

    .line 449
    iget v0, p1, Lcom/visionobjects/textwidget/e/a$a;->d:I

    add-int/2addr v0, v2

    iget v7, p1, Lcom/visionobjects/textwidget/e/a$a;->d:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p3, v7

    aput-object v7, p3, v0

    .line 478
    :goto_5
    add-int v0, v3, v6

    .line 439
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_4

    .line 451
    :cond_6
    iget v0, p1, Lcom/visionobjects/textwidget/e/a$a;->d:I

    add-int/2addr v0, v2

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    aput-object v7, p3, v0

    goto :goto_5

    .line 456
    :cond_7
    iget-object v7, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v3, v6, v8}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 460
    const/16 v7, 0xe33

    if-ne v0, v7, :cond_8

    .line 461
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 465
    :goto_6
    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 467
    if-eqz v1, :cond_9

    .line 468
    sub-float v8, p2, v0

    iget v9, p0, Lcom/visionobjects/textwidget/e/a;->f:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 469
    sub-float v0, p2, v0

    .line 475
    :goto_7
    iget v8, p1, Lcom/visionobjects/textwidget/e/a$a;->d:I

    add-int/2addr v8, v2

    aput-object v7, p3, v8

    move p2, v0

    goto :goto_5

    .line 463
    :cond_8
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v3, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_6

    .line 471
    :cond_9
    iget v8, p0, Lcom/visionobjects/textwidget/e/a;->f:F

    invoke-virtual {v7, p2, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 472
    add-float/2addr v0, p2

    goto :goto_7

    :cond_a
    move v0, v4

    .line 481
    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    aget v0, v0, p1

    iput v0, p0, Lcom/visionobjects/textwidget/e/a;->e:F

    .line 142
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    aget v0, v0, p1

    iput v0, p0, Lcom/visionobjects/textwidget/e/a;->h:F

    .line 143
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/visionobjects/textwidget/e/a;->a(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/e/a;->i:F

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/e/a;->c:Z

    .line 146
    return-void
.end method

.method public static i()C
    .locals 1

    .prologue
    .line 227
    const v0, 0xf000

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/visionobjects/textwidget/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    move v0, v1

    .line 121
    :goto_0
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    const-string v4, "x"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/e/a;->c:Z

    .line 134
    return-void
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/visionobjects/textwidget/e/a;->f:F

    .line 114
    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/a;->k()V

    .line 94
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/a;->a(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 151
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    aget v1, v0, v2

    .line 153
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    aget v0, v0, v2

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v2, " .,\'\"-_^~\u4e00"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    aget v1, v1, v0

    .line 159
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    aget v0, v2, v0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    iput v1, p0, Lcom/visionobjects/textwidget/e/a;->e:F

    .line 174
    iput v0, p0, Lcom/visionobjects/textwidget/e/a;->h:F

    .line 175
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/visionobjects/textwidget/e/a;->a(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/e/a;->i:F

    .line 177
    iput-boolean v3, p0, Lcom/visionobjects/textwidget/e/a;->c:Z

    .line 178
    return-void

    :cond_1
    move v2, v3

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    aget v4, v4, v2

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, p2, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 165
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    aget v1, v0, v2

    .line 166
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->g:[F

    aget v0, v0, v2

    .line 163
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;[Landroid/graphics/RectF;[C[F[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;[",
            "Landroid/graphics/RectF;",
            "[C[F[F)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 505
    array-length v0, p3

    if-ne v0, v5, :cond_1

    aget-char v0, p3, v2

    const/4 v1, 0x1

    aget-char v1, p3, v1

    const/4 v3, 0x2

    aget-char v3, p3, v3

    invoke-static {v0, v1, v3}, Lcom/visionobjects/textwidget/g/a;->a(CCC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :goto_0
    if-ge v2, v5, :cond_6

    .line 510
    aget-object v0, p2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkRange;->boundingRect()Lcom/visionobjects/stylus/core/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    .line 513
    iget v1, v0, Landroid/graphics/RectF;->left:F

    aput v1, p4, v2

    .line 514
    iget v0, v0, Landroid/graphics/RectF;->right:F

    aput v0, p5, v2

    .line 508
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    :cond_0
    aget-object v0, p2, v2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    aput v0, p4, v2

    .line 518
    aget-object v0, p2, v2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    aput v0, p5, v2

    goto :goto_1

    :cond_1
    move v1, v2

    move v3, v2

    .line 526
    :goto_2
    array-length v0, p2

    if-ge v1, v0, :cond_6

    .line 527
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 532
    aget-char v0, p3, v3

    .line 534
    if-nez v0, :cond_3

    .line 538
    if-lez v3, :cond_2

    .line 539
    add-int/lit8 v0, v3, -0x1

    aget v5, p4, v0

    .line 540
    add-int/lit8 v0, v3, -0x1

    aget v0, p5, v0

    :goto_3
    move v6, v2

    .line 569
    :goto_4
    if-ge v6, v7, :cond_5

    .line 570
    add-int v8, v3, v6

    aput v5, p4, v8

    .line 571
    add-int v8, v3, v6

    aput v0, p5, v8

    .line 569
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    move v0, v4

    move v5, v4

    .line 543
    goto :goto_3

    .line 546
    :cond_3
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 550
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v3, v7, v5}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 554
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, v3, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .line 556
    aget-object v5, p2, v1

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 557
    add-float/2addr v0, v5

    .line 558
    goto :goto_3

    .line 563
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkRange;->boundingRect()Lcom/visionobjects/stylus/core/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    .line 565
    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 566
    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 574
    :cond_5
    add-int/2addr v3, v7

    .line 526
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 576
    :cond_6
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    .line 86
    return-void
.end method

.method public final a([F)V
    .locals 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    .line 103
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/a;->k()V

    .line 105
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/a;->a(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)[C
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;)[C"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 590
    invoke-static {}, Lcom/visionobjects/textwidget/g/a;->a()Lcom/visionobjects/textwidget/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/g/a;->a(Ljava/lang/String;)[C

    move-result-object v4

    .line 593
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    .line 594
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 595
    if-eqz v6, :cond_0

    .line 596
    aget-char v0, v4, v1

    const v7, 0xf000

    if-ne v0, v7, :cond_1

    .line 600
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    if-eqz v0, :cond_3

    .line 601
    const/16 v0, 0x21b3

    aput-char v0, v4, v1

    .line 607
    :cond_1
    :goto_1
    aget-char v0, v4, v1

    const/16 v7, 0x200c

    if-eq v0, v7, :cond_2

    const/16 v7, 0x200d

    if-eq v0, v7, :cond_2

    const/16 v7, 0x34f

    if-eq v0, v7, :cond_2

    if-nez v0, :cond_4

    :cond_2
    move v0, v3

    :goto_2
    if-nez v0, :cond_7

    move v0, v2

    .line 608
    :goto_3
    if-ge v0, v6, :cond_7

    .line 609
    if-nez v0, :cond_6

    .line 610
    add-int v7, v1, v0

    const v8, 0xfffd

    aput-char v8, v4, v7

    .line 608
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 603
    :cond_3
    const/16 v0, 0x21b2

    aput-char v0, v4, v1

    goto :goto_1

    .line 607
    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2

    .line 612
    :cond_6
    add-int v7, v1, v0

    aput-char v2, v4, v7

    goto :goto_4

    .line 617
    :cond_7
    add-int v0, v1, v6

    move v1, v0

    .line 618
    goto :goto_0

    .line 620
    :cond_8
    return-object v4
.end method

.method public final a(Lcom/visionobjects/stylus/core/Segment;BIF)[Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/Segment;->candidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/visionobjects/stylus/core/Candidate;

    .line 377
    invoke-static {v1}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Candidate;)Ljava/lang/String;

    move-result-object v3

    .line 379
    new-instance v0, Lcom/visionobjects/textwidget/e/a$a;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/a/e;->b(Lcom/visionobjects/stylus/core/Candidate;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/textwidget/e/a$a;-><init>(Lcom/visionobjects/textwidget/e/a;Ljava/util/List;Ljava/lang/String;BI)V

    .line 381
    iget-object v1, v0, Lcom/visionobjects/textwidget/e/a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/RectF;

    .line 383
    invoke-direct {p0, v0, p4, v1}, Lcom/visionobjects/textwidget/e/a;->a(Lcom/visionobjects/textwidget/e/a$a;F[Landroid/graphics/RectF;)F

    .line 385
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;F)[Landroid/graphics/RectF;
    .locals 14

    .prologue
    .line 335
    new-instance v1, Ljava/text/Bidi;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/text/Bidi;->isMixed()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    if-eqz v2, :cond_7

    :cond_0
    new-instance v1, Ljava/text/Bidi;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    move-object v7, v1

    :goto_0
    invoke-static/range {p1 .. p2}, Lcom/visionobjects/textwidget/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v13, v12, [B

    new-array v8, v12, [Lcom/visionobjects/textwidget/e/a$a;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v9, v1

    move v10, v2

    :goto_1
    if-ge v9, v12, :cond_1

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v2

    invoke-static {v2}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Candidate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v7, v10, v1}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/text/Bidi;II)B

    move-result v5

    aput-byte v5, v13, v9

    new-instance v1, Lcom/visionobjects/textwidget/e/a$a;

    invoke-static {v2}, Lcom/visionobjects/textwidget/d/a/e;->b(Lcom/visionobjects/stylus/core/Candidate;)Ljava/util/List;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/visionobjects/textwidget/e/a$a;-><init>(Lcom/visionobjects/textwidget/e/a;Ljava/util/List;Ljava/lang/String;BI)V

    aput-object v1, v8, v9

    aget-object v1, v8, v9

    iget-object v1, v1, Lcom/visionobjects/textwidget/e/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, v10, v1

    aget-object v1, v8, v9

    iget-object v1, v1, Lcom/visionobjects/textwidget/e/a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v6, v1

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v13, v1, v8, v2, v12}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    if-eqz v1, :cond_2

    new-array v1, v12, [Lcom/visionobjects/textwidget/e/a$a;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v12, :cond_3

    add-int/lit8 v3, v12, -0x1

    sub-int/2addr v3, v2

    aget-object v3, v8, v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v8

    .line 338
    :cond_3
    const/4 v3, 0x0

    .line 339
    const/4 v2, 0x0

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 340
    aget-object v4, v1, v2

    iget-object v4, v4, Lcom/visionobjects/textwidget/e/a$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 343
    :cond_4
    new-array v4, v3, [Landroid/graphics/RectF;

    .line 346
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    array-length v2, v1

    if-ge v3, v2, :cond_6

    .line 347
    aget-object v2, v1, v3

    .line 349
    move/from16 v0, p3

    invoke-direct {p0, v2, v0, v4}, Lcom/visionobjects/textwidget/e/a;->a(Lcom/visionobjects/textwidget/e/a$a;F[Landroid/graphics/RectF;)F

    move-result v2

    .line 351
    iget-boolean v5, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    if-eqz v5, :cond_5

    .line 352
    sub-float v2, p3, v2

    .line 346
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 p3, v2

    goto :goto_4

    .line 354
    :cond_5
    add-float v2, v2, p3

    goto :goto_5

    .line 358
    :cond_6
    return-object v4

    :cond_7
    move-object v7, v1

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 183
    iget-boolean v1, p0, Lcom/visionobjects/textwidget/e/a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/a;->d:[F

    array-length v1, v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/e/a;->b:Z

    return v0
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/visionobjects/textwidget/e/a;->i:F

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/visionobjects/textwidget/e/a;->f:F

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/visionobjects/textwidget/e/a;->h:F

    return v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    return v0
.end method
