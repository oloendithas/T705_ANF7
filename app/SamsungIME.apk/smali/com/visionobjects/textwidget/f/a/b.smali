.class public final Lcom/visionobjects/textwidget/f/a/b;
.super Ljava/lang/Object;
.source "VOModelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/f/a/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/visionobjects/textwidget/f/a;

.field private b:Lcom/visionobjects/textwidget/f/c;

.field private c:Lcom/visionobjects/textwidget/f/a/b$a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/f/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    .line 25
    return-void
.end method

.method private static a(Lcom/visionobjects/textwidget/f/c;Z)V
    .locals 3

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    .line 570
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 571
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Lcom/visionobjects/textwidget/f/b;->a(Z)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/f/c;->a(Z)V

    .line 575
    return-void
.end method

.method private b(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->b(Lcom/visionobjects/textwidget/f/b;)V

    .line 51
    return-void
.end method

.method private g(I)F
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/f/a/b;->c(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v1

    .line 235
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->i()[F

    move-result-object v0

    sub-int v1, p1, v1

    aget v0, v0, v1

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(I)F
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/f/a/b;->c(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v1

    .line 246
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->j()[F

    move-result-object v0

    sub-int v1, p1, v1

    aget v0, v0, v1

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(F)I
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 434
    invoke-virtual {p0, p1, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(FZ)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 436
    if-nez v4, :cond_0

    move v0, v1

    .line 491
    :goto_0
    return v0

    .line 440
    :cond_0
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 442
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/f/a/b;->d(Lcom/visionobjects/textwidget/f/c;)I

    move-result v0

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v0

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 451
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v0

    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/f/a/b;->d(Lcom/visionobjects/textwidget/f/c;)I

    move-result v0

    goto :goto_0

    .line 458
    :cond_4
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->i()[F

    move-result-object v5

    .line 459
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->j()[F

    move-result-object v6

    .line 461
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v1

    .line 464
    :goto_1
    if-ge v0, v7, :cond_a

    .line 465
    aget v8, v5, v0

    .line 466
    aget v9, v6, v0

    move v2, v3

    .line 472
    :goto_2
    add-int v10, v0, v2

    if-ge v10, v7, :cond_5

    .line 473
    add-int v10, v0, v2

    aget v10, v5, v10

    cmpl-float v10, v10, v8

    if-nez v10, :cond_5

    add-int v10, v0, v2

    aget v10, v6, v10

    cmpl-float v10, v10, v9

    if-nez v10, :cond_5

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 480
    :cond_5
    add-float v10, v8, v9

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    .line 481
    cmpg-float v8, v8, p1

    if-gez v8, :cond_7

    cmpg-float v8, p1, v10

    if-gez v8, :cond_7

    .line 482
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v1

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/2addr v0, v2

    :cond_6
    add-int/2addr v0, v1

    goto :goto_0

    .line 484
    :cond_7
    cmpg-float v8, v10, p1

    if-gez v8, :cond_9

    cmpg-float v8, p1, v9

    if-gez v8, :cond_9

    .line 485
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v1

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_3
    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_8
    add-int/2addr v0, v2

    goto :goto_3

    .line 488
    :cond_9
    add-int/2addr v0, v2

    .line 489
    goto :goto_1

    :cond_a
    move v0, v1

    .line 491
    goto/16 :goto_0
.end method

.method public final a(I)Lcom/visionobjects/textwidget/f/b;
    .locals 1

    .prologue
    .line 151
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(FZ)Lcom/visionobjects/textwidget/f/c;
    .locals 8

    .prologue
    .line 398
    const/4 v2, 0x0

    .line 399
    const v1, 0x7f7fffff

    .line 401
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v5

    .line 402
    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    :goto_0
    if-ge v4, v5, :cond_2

    .line 403
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1, v4}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    .line 404
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_4

    .line 406
    :cond_0
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 407
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 410
    cmpg-float v7, p1, v1

    if-gez v7, :cond_1

    .line 412
    sub-float/2addr v1, p1

    .line 421
    :goto_1
    cmpg-float v6, v1, v0

    if-gez v6, :cond_4

    move v0, v1

    move-object v1, v3

    .line 402
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_0

    .line 413
    :cond_1
    cmpl-float v1, p1, v6

    if-lez v1, :cond_3

    .line 415
    sub-float v1, p1, v6

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 428
    :cond_3
    return-object v3

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method public final a(II)Lcom/visionobjects/textwidget/f/c;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 316
    :goto_0
    if-ge v1, v3, :cond_1

    .line 317
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 319
    if-ne v2, p1, :cond_0

    add-int v5, v2, v4

    if-ne v5, p2, :cond_0

    .line 324
    :goto_1
    return-object v0

    .line 322
    :cond_0
    add-int/2addr v2, v4

    .line 316
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/b;)V

    goto :goto_0

    .line 36
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/a$a;)V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->a(Lcom/visionobjects/textwidget/f/a$a;)V

    .line 584
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/a/b$a;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/a/b;->c:Lcom/visionobjects/textwidget/f/a/b$a;

    .line 528
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->a(Lcom/visionobjects/textwidget/f/b;)V

    .line 45
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->a(Lcom/visionobjects/textwidget/f/c;)V

    .line 63
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/visionobjects/textwidget/f/a;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 57
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v0

    .line 81
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1, p1}, Lcom/visionobjects/textwidget/f/a;->b(Lcom/visionobjects/textwidget/f/c;)V

    .line 83
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1, p2, v0}, Lcom/visionobjects/textwidget/f/a;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    if-ne p1, v0, :cond_1

    .line 87
    invoke-virtual {p0, p2}, Lcom/visionobjects/textwidget/f/a/b;->e(Lcom/visionobjects/textwidget/f/c;)V

    .line 89
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/textwidget/f/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/b;

    .line 103
    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/b;)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public final a([Lcom/visionobjects/textwidget/f/b;)V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 95
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/b;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public final b(I)Lcom/visionobjects/textwidget/f/c;
    .locals 1

    .prologue
    .line 161
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a;->b(Lcom/visionobjects/textwidget/f/c;)V

    .line 70
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    if-ne p1, v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->e(Lcom/visionobjects/textwidget/f/c;)V

    .line 73
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/textwidget/f/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/b;

    .line 119
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/b;)V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public final b([Lcom/visionobjects/textwidget/f/b;)V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 111
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/b;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/visionobjects/textwidget/f/c;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v4

    move v2, v1

    move v0, v1

    .line 256
    :goto_0
    if-ge v2, v4, :cond_1

    .line 257
    iget-object v3, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 258
    iget-object v5, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v5, v2}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 263
    :goto_1
    return v0

    .line 261
    :cond_0
    add-int/2addr v3, v0

    .line 256
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 263
    goto :goto_1
.end method

.method public final c()Lcom/visionobjects/textwidget/f/c;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(I)Lcom/visionobjects/textwidget/f/c;
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v2

    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 286
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 288
    if-ge p1, v3, :cond_0

    .line 293
    :goto_1
    return-object v0

    .line 291
    :cond_0
    sub-int/2addr p1, v3

    .line 285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/textwidget/f/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/textwidget/f/c;

    .line 135
    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->a()I

    move-result v0

    return v0
.end method

.method public final d(Lcom/visionobjects/textwidget/f/c;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 271
    :goto_0
    if-ge v1, v3, :cond_0

    .line 272
    iget-object v4, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v4, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 273
    iget-object v5, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v5, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 274
    add-int v0, v2, v4

    .line 278
    :cond_0
    return v0

    .line 276
    :cond_1
    add-int/2addr v2, v4

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final d(I)Lcom/visionobjects/textwidget/f/c;
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v2

    .line 300
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 301
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 303
    if-gt p1, v3, :cond_0

    .line 308
    :goto_1
    return-object v0

    .line 306
    :cond_0
    sub-int/2addr p1, v3

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final e(I)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v1

    .line 362
    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 370
    if-ne p1, v1, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/a/b;->c()Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 376
    :goto_1
    if-ne p1, v1, :cond_4

    .line 377
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->g(I)F

    move-result v0

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/f/a/b;->c(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    goto :goto_1

    .line 380
    :cond_3
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->h(I)F

    move-result v0

    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/f/a/b;->h(I)F

    move-result v0

    goto :goto_0

    .line 386
    :cond_5
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/f/a/b;->g(I)F

    move-result v0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v0

    return v0
.end method

.method public final e(Lcom/visionobjects/textwidget/f/c;)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    if-ne v0, p1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    .line 554
    :cond_2
    if-eqz p1, :cond_3

    .line 555
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    .line 558
    :cond_3
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    .line 560
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->c:Lcom/visionobjects/textwidget/f/a/b$a;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->c:Lcom/visionobjects/textwidget/f/a/b$a;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/f/a/b$a;->a(Lcom/visionobjects/textwidget/f/c;)V

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v1

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 210
    iget-object v3, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/f/a/b;->d(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 541
    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/a/b;->e(Lcom/visionobjects/textwidget/f/c;)V

    .line 542
    return-void
.end method

.method public final g()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v2

    move v1, v0

    .line 222
    :goto_0
    if-ge v0, v2, :cond_0

    .line 223
    iget-object v3, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return v1
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 336
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v2

    move v1, v0

    .line 337
    :goto_0
    if-ge v1, v2, :cond_1

    .line 338
    iget-object v3, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v3, v1}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    :goto_1
    return v0

    .line 337
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final j()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v1

    .line 349
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method public final k()I
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a;->b()I

    move-result v1

    .line 513
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 514
    iget-object v2, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/a;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    :goto_1
    return v0

    .line 513
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 518
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    if-nez v0, :cond_0

    .line 594
    const-string v0, "none"

    .line 598
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/visionobjects/textwidget/f/a/b;->a:Lcom/visionobjects/textwidget/f/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/a/b;->b:Lcom/visionobjects/textwidget/f/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
