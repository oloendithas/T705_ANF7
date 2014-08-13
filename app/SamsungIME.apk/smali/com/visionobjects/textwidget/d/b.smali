.class public final Lcom/visionobjects/textwidget/d/b;
.super Ljava/lang/Object;
.source "RecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/d/b$b;,
        Lcom/visionobjects/textwidget/d/b$a;,
        Lcom/visionobjects/textwidget/d/b$d;,
        Lcom/visionobjects/textwidget/d/b$e;,
        Lcom/visionobjects/textwidget/d/b$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/visionobjects/stylus/core/InputMethod;

.field private c:Lcom/visionobjects/stylus/core/InputMethodListener;

.field private d:Z

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[B

.field private h:F

.field private i:Ljava/lang/String;

.field private j:F

.field private k:Lcom/visionobjects/stylus/core/InkField;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Runnable;

.field private n:Z

.field private o:Z

.field private p:Lcom/visionobjects/textwidget/d/b$a;

.field private q:Landroid/graphics/RectF;

.field private r:Lcom/visionobjects/textwidget/d/b$c;

.field private s:Lcom/visionobjects/textwidget/d/b$e;

.field private t:Lcom/visionobjects/textwidget/d/b$d;


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    .line 142
    iput p2, p0, Lcom/visionobjects/textwidget/d/b;->h:F

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/d/b;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->l()V

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/visionobjects/textwidget/d/b;->b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/d/b;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/d/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 251
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_3

    .line 252
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v2

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-direct {v0, v1}, Lcom/visionobjects/stylus/core/InkField;-><init>(Lcom/visionobjects/stylus/core/InkField;)V

    new-instance v1, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    .line 254
    iget-boolean v1, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 255
    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->setPendingStrokes(Ljava/util/List;)V

    .line 262
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/InputMethod;->setField(Lcom/visionobjects/stylus/core/InkField;)V

    .line 264
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    :goto_0
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    .line 271
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/d/b$c;->a(Z)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    .line 279
    :cond_2
    return-void

    .line 266
    :cond_3
    const-string v0, "RecognizerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error configuring handwriting recognition engine ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/stylus/core/InputMethod;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    return-object v0
.end method

.method private b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    if-eqz p3, :cond_0

    .line 305
    iput-object p3, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    .line 306
    :cond_0
    if-eqz p4, :cond_1

    .line 307
    iput-object p4, p0, Lcom/visionobjects/textwidget/d/b;->f:[Ljava/lang/String;

    .line 308
    :cond_1
    if-eqz p5, :cond_2

    .line 309
    iput-object p5, p0, Lcom/visionobjects/textwidget/d/b;->g:[B

    .line 311
    :cond_2
    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    if-eqz v4, :cond_5

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    const-string v7, "ak-iso"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v1

    .line 316
    :goto_1
    iget-boolean v4, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eq v0, v4, :cond_6

    .line 317
    iput-boolean v1, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    .line 323
    :goto_2
    invoke-virtual {v3, p1, v0}, Lcom/visionobjects/textwidget/d/a;->a(IZ)Lcom/visionobjects/stylus/core/InputMethod;

    move-result-object v4

    iput-object v4, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    .line 326
    iget-object v4, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v4, :cond_7

    .line 327
    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->l()V

    .line 328
    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/d/b;->a(Z)V

    .line 452
    :cond_3
    :goto_3
    return-void

    .line 313
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 319
    :cond_6
    iput-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    goto :goto_2

    .line 332
    :cond_7
    iput p1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    .line 333
    iput-object p2, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    .line 334
    iput-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    .line 336
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    if-nez v0, :cond_8

    .line 338
    iget v0, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/visionobjects/textwidget/d/a/a;->a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    .line 340
    :cond_8
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    .line 345
    :cond_9
    new-instance v0, Lcom/visionobjects/textwidget/d/b$b;

    iget-boolean v4, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-direct {v0, p0, v4}, Lcom/visionobjects/textwidget/d/b$b;-><init>(Lcom/visionobjects/textwidget/d/b;Z)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    .line 350
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    iget-boolean v4, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v3, p1, v0, v4}, Lcom/visionobjects/textwidget/d/a;->a(ILcom/visionobjects/stylus/core/InputMethodListener;Z)V

    .line 353
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    const/16 v3, 0xfff

    invoke-virtual {v0, v3}, Lcom/visionobjects/stylus/core/InputMethod;->disableGestures(I)V

    .line 356
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v0, :cond_d

    .line 357
    const/4 v0, 0x4

    .line 371
    :goto_4
    iget-object v3, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v3, v0}, Lcom/visionobjects/stylus/core/InputMethod;->enableGestures(I)V

    .line 374
    new-instance v5, Lcom/visionobjects/stylus/core/InputMethodConfig;

    invoke-direct {v5}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>()V

    .line 376
    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v2

    .line 379
    const-string v0, "zh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ja"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 380
    :cond_a
    const/4 v0, 0x5

    .line 386
    :goto_5
    const-string v3, "zh"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "ja"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 387
    :cond_b
    const/16 v3, 0xa28

    invoke-static {v3, p6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 393
    :goto_6
    const-string v6, "zh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "ja"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "ko"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 394
    :cond_c
    const/4 v4, 0x3

    .line 400
    :goto_7
    const v6, 0x2dde304

    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setProductID(I)V

    .line 402
    invoke-virtual {v5, p2}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setLocale(Ljava/lang/String;)V

    .line 404
    const/16 v6, 0xdd

    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setSpeedQualityCompromise(I)V

    .line 406
    const-wide/16 v6, 0x5

    invoke-virtual {v5, v1, v6, v7}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCandidateListSize(IJ)V

    .line 408
    const/4 v6, 0x2

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCandidateListSize(IJ)V

    .line 410
    invoke-virtual {v5, v3}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setFreezeTimeout(I)V

    .line 412
    invoke-virtual {v5, v4}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setUnfreezeWordCount(I)V

    .line 414
    iget v0, p0, Lcom/visionobjects/textwidget/d/b;->h:F

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCoordinateResolution(F)V

    .line 416
    invoke-virtual {v5, v1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setStrictAlienCharacters(Z)V

    .line 419
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 420
    iget-object v3, p0, Lcom/visionobjects/textwidget/d/b;->e:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_8
    if-ge v0, v4, :cond_11

    aget-object v6, v3, v0

    .line 421
    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->addResource(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 360
    :cond_d
    const/16 v0, 0x5fc

    goto/16 :goto_4

    :cond_e
    move v0, v1

    .line 382
    goto :goto_5

    .line 389
    :cond_f
    const/16 v3, 0x28a

    invoke-static {v3, p6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_10
    move v4, v1

    .line 396
    goto :goto_7

    .line 425
    :cond_11
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->f:[Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 426
    iget-object v3, p0, Lcom/visionobjects/textwidget/d/b;->f:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_9
    if-ge v0, v4, :cond_12

    aget-object v6, v3, v0

    .line 427
    invoke-virtual {v5, v6}, Lcom/visionobjects/stylus/core/InputMethodConfig;->addLexiconEntry(Ljava/lang/String;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 431
    :cond_12
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->g:[B

    if-eqz v0, :cond_13

    .line 432
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->g:[B

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->setCertificate([B)V

    .line 436
    :cond_13
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->config()Lcom/visionobjects/stylus/core/InputMethodConfig;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/InputMethodConfig;->equals(Lcom/visionobjects/stylus/core/InputMethodConfig;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    .line 438
    :goto_a
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->failed()Z

    move-result v0

    if-nez v0, :cond_15

    .line 442
    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 443
    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->l()V

    .line 444
    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/d/b;->a(Z)V

    goto/16 :goto_3

    :cond_14
    move v0, v2

    .line 436
    goto :goto_a

    .line 450
    :cond_15
    new-instance v0, Lcom/visionobjects/textwidget/d/b$a;

    invoke-direct {v0, p0, v2}, Lcom/visionobjects/textwidget/d/b$a;-><init>(Lcom/visionobjects/textwidget/d/b;B)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    .line 451
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    new-array v1, v1, [Lcom/visionobjects/stylus/core/InputMethodConfig;

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/d/b;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->s:Lcom/visionobjects/textwidget/d/b$e;

    return-object v0
.end method

.method static synthetic e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->t:Lcom/visionobjects/textwidget/d/b$d;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    if-eqz v0, :cond_2

    .line 235
    iget v0, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/a;->a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    .line 240
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->n:Z

    .line 242
    iput-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    .line 244
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/d/b$c;->d()V

    .line 247
    :cond_1
    return-void

    .line 236
    :cond_2
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 469
    :cond_0
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    :cond_0
    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/visionobjects/textwidget/d/b;->a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    .line 463
    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V
    .locals 8

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/visionobjects/textwidget/d/c;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/visionobjects/textwidget/d/c;-><init>(Lcom/visionobjects/textwidget/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    .line 300
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    .line 298
    invoke-direct/range {p0 .. p6}, Lcom/visionobjects/textwidget/d/b;->b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    if-eqz v0, :cond_1

    .line 165
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    .line 166
    :goto_0
    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->j:F

    invoke-static {v0, v1, p1}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/stylus/core/InkField;)V

    .line 170
    :cond_1
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->q:Landroid/graphics/RectF;

    .line 171
    return-void

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_1

    .line 534
    :cond_0
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0, p1}, Lcom/visionobjects/stylus/core/InputMethod;->setField(Lcom/visionobjects/stylus/core/InkField;)V

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/d/b$c;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->r:Lcom/visionobjects/textwidget/d/b$c;

    .line 149
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/d/b$d;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->t:Lcom/visionobjects/textwidget/d/b$d;

    .line 157
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/d/b$e;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b;->s:Lcom/visionobjects/textwidget/d/b$e;

    .line 153
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    .line 545
    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_2

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InputMethod;->addStroke(Lcom/visionobjects/stylus/core/InkItem;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x2

    .line 215
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->errorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 201
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 203
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 205
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 207
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 209
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 211
    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 213
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "StylusCore library is not loaded"

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->errorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 478
    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a;->b(IZ)Lcom/visionobjects/stylus/core/InputMethodListener;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 483
    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->m:Ljava/lang/Runnable;

    .line 485
    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b$a;->a()V

    .line 487
    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->p:Lcom/visionobjects/textwidget/d/b$a;

    .line 490
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    .line 492
    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->k:Lcom/visionobjects/stylus/core/InkField;

    .line 493
    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    .line 495
    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    .line 496
    iput-object v1, p0, Lcom/visionobjects/textwidget/d/b;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    .line 498
    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a;->c(IZ)V

    .line 499
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->penDown()V

    .line 556
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->penUp()V

    .line 562
    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/d/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->b:Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/a/e;->c(Lcom/visionobjects/stylus/core/InkField;)Z

    move-result v0

    .line 568
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/visionobjects/stylus/core/InputMethodConfig;
    .locals 3

    .prologue
    .line 743
    invoke-static {}, Lcom/visionobjects/textwidget/d/a;->a()Lcom/visionobjects/textwidget/d/a;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b;->a:I

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/d/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a;->a(IZ)Lcom/visionobjects/stylus/core/InputMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InputMethod;->config()Lcom/visionobjects/stylus/core/InputMethodConfig;

    move-result-object v0

    return-object v0
.end method
