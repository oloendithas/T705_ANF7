.class public final Lcom/visionobjects/textwidget/f/c;
.super Ljava/lang/Object;
.source "VOWord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/f/c$a;,
        Lcom/visionobjects/textwidget/f/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/visionobjects/stylus/core/Segment;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:[Lcom/visionobjects/textwidget/f/b;

.field private i:[Landroid/graphics/RectF;

.field private j:[F

.field private k:[F

.field private l:[C

.field private m:F

.field private n:F

.field private o:Landroid/graphics/RectF;

.field private p:J

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/textwidget/f/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:B

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/visionobjects/textwidget/f/c$b;


# direct methods
.method public constructor <init>(Lcom/visionobjects/stylus/core/Segment;Landroid/graphics/Paint;IIII[Ljava/lang/String;[Lcom/visionobjects/textwidget/f/b;[Landroid/graphics/RectF;[F[F[CFFLandroid/graphics/RectF;J)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/c;->a:Lcom/visionobjects/stylus/core/Segment;

    .line 90
    iput-object p2, p0, Lcom/visionobjects/textwidget/f/c;->b:Landroid/graphics/Paint;

    .line 91
    iput p3, p0, Lcom/visionobjects/textwidget/f/c;->c:I

    .line 92
    iput p4, p0, Lcom/visionobjects/textwidget/f/c;->d:I

    .line 93
    iput p5, p0, Lcom/visionobjects/textwidget/f/c;->e:I

    .line 94
    iput p6, p0, Lcom/visionobjects/textwidget/f/c;->f:I

    .line 95
    iput-object p7, p0, Lcom/visionobjects/textwidget/f/c;->g:[Ljava/lang/String;

    .line 96
    iput-object p8, p0, Lcom/visionobjects/textwidget/f/c;->h:[Lcom/visionobjects/textwidget/f/b;

    .line 97
    iput-object p9, p0, Lcom/visionobjects/textwidget/f/c;->i:[Landroid/graphics/RectF;

    .line 98
    iput-object p10, p0, Lcom/visionobjects/textwidget/f/c;->j:[F

    .line 99
    iput-object p11, p0, Lcom/visionobjects/textwidget/f/c;->k:[F

    .line 100
    iput-object p12, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    .line 101
    iput p13, p0, Lcom/visionobjects/textwidget/f/c;->m:F

    .line 102
    move/from16 v0, p14

    iput v0, p0, Lcom/visionobjects/textwidget/f/c;->n:F

    .line 103
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/c;->o:Landroid/graphics/RectF;

    .line 104
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/visionobjects/textwidget/f/c;->p:J

    .line 106
    invoke-direct {p0}, Lcom/visionobjects/textwidget/f/c;->v()V

    .line 107
    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/textwidget/f/c$a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 441
    move v2, v3

    move v4, v3

    move v5, v3

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/c$a;

    .line 450
    const/4 v1, 0x0

    .line 451
    iget v7, v0, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v8, v0, Lcom/visionobjects/textwidget/f/c$a;->c:I

    add-int/2addr v7, v8

    .line 453
    iget-object v8, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    array-length v8, v8

    if-ge v7, v8, :cond_1

    iget-object v8, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    add-int/lit8 v9, v7, -0x1

    aget-char v8, v8, v9

    invoke-static {v8}, Lcom/visionobjects/textwidget/g/a;->b(C)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    aget-char v7, v8, v7

    const/16 v8, 0xe33

    if-ne v7, v8, :cond_1

    .line 456
    iget v1, v0, Lcom/visionobjects/textwidget/f/c$a;->a:F

    iget v5, v0, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v0, v0, Lcom/visionobjects/textwidget/f/c$a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v5, v0}, Lcom/visionobjects/textwidget/f/c;->a(FII)Lcom/visionobjects/textwidget/f/c$a;

    move-result-object v0

    .line 457
    add-int/lit8 v4, v4, 0x1

    move v1, v4

    move v4, v6

    .line 470
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v5, v4

    move v4, v1

    goto :goto_0

    .line 461
    :cond_1
    if-ne v5, v6, :cond_2

    .line 463
    iget v5, v0, Lcom/visionobjects/textwidget/f/c$a;->c:I

    if-le v5, v6, :cond_4

    iget v1, v0, Lcom/visionobjects/textwidget/f/c$a;->a:F

    iget v5, v0, Lcom/visionobjects/textwidget/f/c$a;->b:I

    add-int/lit8 v5, v5, 0x1

    iget v0, v0, Lcom/visionobjects/textwidget/f/c$a;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v5, v0}, Lcom/visionobjects/textwidget/f/c;->a(FII)Lcom/visionobjects/textwidget/f/c$a;

    move-result-object v0

    :goto_2
    move v1, v4

    move v4, v3

    .line 465
    goto :goto_1

    .line 468
    :cond_2
    iget v1, v0, Lcom/visionobjects/textwidget/f/c$a;->a:F

    iget v7, v0, Lcom/visionobjects/textwidget/f/c$a;->b:I

    iget v0, v0, Lcom/visionobjects/textwidget/f/c$a;->c:I

    invoke-direct {p0, v1, v7, v0}, Lcom/visionobjects/textwidget/f/c;->a(FII)Lcom/visionobjects/textwidget/f/c$a;

    move-result-object v0

    move v1, v4

    move v4, v5

    goto :goto_1

    .line 472
    :cond_3
    return v4

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private a(FII)Lcom/visionobjects/textwidget/f/c$a;
    .locals 1

    .prologue
    .line 491
    new-instance v0, Lcom/visionobjects/textwidget/f/c$a;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/f/c$a;-><init>(Lcom/visionobjects/textwidget/f/c;)V

    .line 492
    iput p1, v0, Lcom/visionobjects/textwidget/f/c$a;->a:F

    .line 493
    iput p2, v0, Lcom/visionobjects/textwidget/f/c$a;->b:I

    .line 494
    iput p3, v0, Lcom/visionobjects/textwidget/f/c$a;->c:I

    .line 495
    return-object v0
.end method

.method private v()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->a:Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/a/e;->b(Lcom/visionobjects/stylus/core/Candidate;)Ljava/util/List;

    move-result-object v9

    move v1, v2

    move v3, v2

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    array-length v0, v0

    if-ge v3, v0, :cond_4

    move v4, v2

    move v5, v2

    move v6, v2

    .line 132
    :goto_1
    add-int v0, v3, v6

    iget-object v10, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    array-length v10, v10

    if-ge v0, v10, :cond_2

    add-int v0, v1, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    .line 133
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    add-int v10, v3, v6

    aget-char v0, v0, v10

    .line 135
    if-lez v6, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/visionobjects/textwidget/g/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->i:[Landroid/graphics/RectF;

    add-int v10, v1, v5

    aget-object v10, v0, v10

    .line 142
    add-int v0, v1, v5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    .line 144
    invoke-virtual {v10}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    move v4, v7

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v6, v0

    .line 151
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    .line 152
    goto :goto_1

    .line 155
    :cond_2
    if-nez v4, :cond_3

    .line 156
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    iget-object v4, p0, Lcom/visionobjects/textwidget/f/c;->j:[F

    aget v4, v4, v3

    invoke-direct {p0, v4, v3, v6}, Lcom/visionobjects/textwidget/f/c;->a(FII)Lcom/visionobjects/textwidget/f/c$a;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_3
    add-int/2addr v3, v6

    .line 161
    add-int v0, v1, v5

    move v1, v0

    .line 162
    goto :goto_0

    .line 164
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 168
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    array-length v0, v0

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    aget-char v0, v0, v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    aget-char v3, v3, v7

    iget-object v4, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    aget-char v4, v4, v11

    invoke-static {v0, v3, v4}, Lcom/visionobjects/textwidget/g/a;->a(CCC)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/c$a;

    iget v0, v0, Lcom/visionobjects/textwidget/f/c$a;->a:F

    invoke-direct {p0, v0, v2, v8}, Lcom/visionobjects/textwidget/f/c;->a(FII)Lcom/visionobjects/textwidget/f/c$a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v0, v3, :cond_6

    if-nez v2, :cond_6

    .line 172
    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/f/c;->a(Ljava/util/List;)I

    move-result v2

    .line 174
    :cond_6
    if-lez v2, :cond_7

    .line 175
    iput-object v1, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    .line 176
    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/c;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/c;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :goto_1
    return v0

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/textwidget/f/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->q:Ljava/util/List;

    return-object v0
.end method

.method public final a(B)V
    .locals 0

    .prologue
    .line 301
    iput-byte p1, p0, Lcom/visionobjects/textwidget/f/c;->r:B

    .line 302
    return-void
.end method

.method public final a(FF)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const-string v0, "VOWord"

    const-string v1, "Unable to set bounds of a non-space word"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->j:[F

    aput p1, v0, v1

    .line 425
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->k:[F

    aput p2, v0, v1

    .line 426
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/visionobjects/textwidget/f/c;->m:F

    iget v2, p0, Lcom/visionobjects/textwidget/f/c;->m:F

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/c;->o:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c$b;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/c;->w:Lcom/visionobjects/textwidget/f/c$b;

    .line 317
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/c;->s:Z

    if-eq v0, p1, :cond_0

    .line 322
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/c;->s:Z

    .line 324
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->w:Lcom/visionobjects/textwidget/f/c$b;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->w:Lcom/visionobjects/textwidget/f/c$b;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/f/c$b;->a(Lcom/visionobjects/textwidget/f/c;)V

    .line 328
    :cond_0
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 416
    :goto_0
    return v0

    .line 394
    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/VoString;

    iget-object v2, p0, Lcom/visionobjects/textwidget/f/c;->a:Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/VoString;->lastChar()Lcom/visionobjects/stylus/core/Char;

    move-result-object v0

    .line 395
    new-instance v2, Lcom/visionobjects/stylus/core/VoString;

    iget-object v3, p1, Lcom/visionobjects/textwidget/f/c;->a:Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v3}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/VoString;->firstChar()Lcom/visionobjects/stylus/core/Char;

    move-result-object v2

    .line 397
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Char;->isCJKFullSizeCharacter()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Char;->isCJKFullSizeCharacter()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    .line 398
    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Char;->isThaiLetter()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Char;->isThaiLetter()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 401
    goto :goto_0

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->a:Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    .line 405
    iget-object v2, p1, Lcom/visionobjects/textwidget/f/c;->a:Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v2

    .line 407
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v0, v1

    .line 408
    goto :goto_0

    .line 412
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v3

    .line 414
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v0

    .line 416
    invoke-virtual {v3, v0}, Lcom/visionobjects/stylus/core/Candidate;->seamlesslyGraftsTo(Lcom/visionobjects/stylus/core/Candidate;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final b()Lcom/visionobjects/stylus/core/Segment;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->a:Lcom/visionobjects/stylus/core/Segment;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/c;->u:Z

    .line 338
    return-void
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/c;->v:Z

    .line 349
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/c;->t:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/visionobjects/textwidget/f/c;->e:I

    .line 200
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/c;->s:Z

    if-eqz v0, :cond_1

    .line 198
    iget v0, p0, Lcom/visionobjects/textwidget/f/c;->d:I

    goto :goto_0

    .line 200
    :cond_1
    iget v0, p0, Lcom/visionobjects/textwidget/f/c;->c:I

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/f/c;->t:Z

    .line 360
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/visionobjects/textwidget/f/c;->f:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->g:[Ljava/lang/String;

    iget v1, p0, Lcom/visionobjects/textwidget/f/c;->f:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public final h()[Lcom/visionobjects/textwidget/f/b;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->h:[Lcom/visionobjects/textwidget/f/b;

    return-object v0
.end method

.method public final i()[F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->j:[F

    return-object v0
.end method

.method public final j()[F
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->k:[F

    return-object v0
.end method

.method public final k()[C
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->l:[C

    return-object v0
.end method

.method public final l()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/visionobjects/textwidget/f/c;->m:F

    return v0
.end method

.method public final m()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/visionobjects/textwidget/f/c;->n:F

    return v0
.end method

.method public final n()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->o:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final o()B
    .locals 1

    .prologue
    .line 306
    iget-byte v0, p0, Lcom/visionobjects/textwidget/f/c;->r:B

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 311
    iget-byte v1, p0, Lcom/visionobjects/textwidget/f/c;->r:B

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/c;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/c;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/f/c;->t:Z

    return v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 433
    const/4 v0, 0x0

    const-string v1, "\"%s\" [%.1f-%.1f] (level %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/visionobjects/textwidget/f/c;->o:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/visionobjects/textwidget/f/c;->o:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-byte v4, p0, Lcom/visionobjects/textwidget/f/c;->r:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/c;->h:[Lcom/visionobjects/textwidget/f/b;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
