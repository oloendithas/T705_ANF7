.class public final Lcom/visionobjects/textwidget/e/b;
.super Ljava/lang/Object;
.source "LayoutController.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/e/a;

.field private b:Lcom/visionobjects/textwidget/f/b/a;

.field private c:Lcom/visionobjects/textwidget/f/a/b;

.field private d:Lcom/visionobjects/textwidget/c/m;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/e/a;Lcom/visionobjects/textwidget/f/b/a;Lcom/visionobjects/textwidget/f/a/b;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    .line 41
    iput-object p2, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    .line 42
    iput-object p3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    .line 43
    return-void
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 965
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    .line 967
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    .line 968
    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    .line 971
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;
    .locals 3

    .prologue
    .line 949
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 951
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 953
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 954
    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    .line 957
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1005
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->d(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 1006
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->c(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 1008
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lcom/visionobjects/textwidget/f/c;->a(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1009
    iget-object v6, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v3

    new-instance v7, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v7, v0}, Lcom/visionobjects/stylus/core/Segment;-><init>(Lcom/visionobjects/stylus/core/Segment;)V

    invoke-virtual {v7, v3, v2}, Lcom/visionobjects/stylus/core/Segment;->grafted(Lcom/visionobjects/stylus/core/Segment;I)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v0

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/c;->a(B)V

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v3

    .line 1011
    :goto_2
    invoke-direct {p0, v4}, Lcom/visionobjects/textwidget/e/b;->f(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    .line 1012
    invoke-direct {p0, v5, v0}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    .line 1014
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1009
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v3}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V
    .locals 2

    .prologue
    .line 854
    if-nez p2, :cond_0

    .line 855
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    neg-float v0, v0

    .line 864
    :goto_0
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/b;->c(F)V

    .line 865
    return-void

    .line 857
    :cond_0
    invoke-virtual {p0, p2}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/visionobjects/textwidget/f/c;Z)V
    .locals 3

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    .line 994
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 995
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Lcom/visionobjects/textwidget/f/b;->b(Z)V

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_0
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    .line 1000
    return-void
.end method

.method private a([Lcom/visionobjects/textwidget/f/c;IIFF)V
    .locals 5

    .prologue
    .line 198
    if-ne p2, p3, :cond_1

    .line 217
    :cond_0
    return-void

    .line 203
    :cond_1
    sub-float v0, p5, p4

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float v1, v0, v1

    move v0, p2

    .line 207
    :goto_0
    if-ge v0, p3, :cond_0

    .line 208
    sub-int v2, v0, p2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, p4

    .line 209
    sub-int v3, v0, p2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, p4

    .line 211
    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    aget-object v4, p1, v0

    invoke-virtual {v4, v3, v2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    .line 207
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    aget-object v4, p1, v0

    invoke-virtual {v4, v2, v3}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    goto :goto_1
.end method

.method private a([Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;FF)V
    .locals 3

    .prologue
    .line 978
    const/4 v0, 0x0

    .line 979
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    if-eq p2, v1, :cond_0

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 987
    :cond_1
    return-void
.end method

.method private a(Lcom/visionobjects/textwidget/f/c;F)Z
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/visionobjects/textwidget/f/c;F)Lcom/visionobjects/textwidget/f/c;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1, v0, p2}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    .line 943
    :goto_0
    return-object p1

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Lcom/visionobjects/textwidget/f/c;->a(FF)V

    goto :goto_0
.end method

.method private b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    .line 928
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 929
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    .line 931
    return-object p2
.end method

.method private c(F)V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v0

    add-float/2addr v0, p1

    .line 846
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->g(F)V

    .line 848
    :cond_0
    return-void
.end method

.method private static c(Lcom/visionobjects/textwidget/f/c;)Z
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/visionobjects/textwidget/f/c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 812
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    if-nez v2, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v0

    .line 815
    :cond_1
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    .line 816
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 817
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 819
    :cond_2
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private e(Lcom/visionobjects/textwidget/f/c;)F
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v0, v0

    .line 889
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_0
.end method

.method private f(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    .line 919
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method private p()[Lcom/visionobjects/textwidget/f/c;
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v1

    .line 317
    new-array v2, v1, [Lcom/visionobjects/textwidget/f/c;

    .line 319
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 320
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    aput-object v3, v2, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-object v2
.end method

.method private q()Lcom/visionobjects/textwidget/f/c;
    .locals 5

    .prologue
    .line 827
    const/4 v1, 0x0

    .line 829
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    .line 831
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 832
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 833
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/b;->d(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 831
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 838
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/visionobjects/textwidget/e/b;)F
    .locals 12

    .prologue
    .line 715
    iget-object v7, p2, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    .line 720
    invoke-virtual {v7}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    const-string v0, "LayoutController"

    const-string v1, "Unable to split the current model by adding to a non-empty side model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x0

    .line 763
    :cond_0
    return v0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v0

    .line 727
    invoke-virtual {p2}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    sub-float v8, v1, v0

    .line 729
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v5

    .line 730
    const/4 v4, 0x0

    .line 731
    const/4 v3, 0x0

    .line 732
    const/4 v2, 0x0

    .line 734
    const/4 v1, 0x0

    move v11, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v11

    .line 735
    :goto_0
    if-eqz v1, :cond_2

    if-ge v4, p1, :cond_2

    .line 736
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    .line 738
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    .line 735
    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v6

    move v11, v4

    move v4, v5

    move v5, v11

    goto :goto_0

    .line 741
    :cond_2
    if-ge v5, p1, :cond_3

    if-ge p1, v4, :cond_3

    .line 742
    iget-object v6, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v9, 0x0

    sub-int v10, p1, v5

    invoke-virtual {v6, v3, v9, v10}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    .line 743
    iget-object v9, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v10, p1, v5

    sub-int/2addr v4, v5

    invoke-virtual {v9, v3, v10, v4}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 744
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v8, v9}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 745
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 746
    invoke-virtual {v7, v4}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;)V

    .line 747
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    .line 748
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v6}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 749
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5, v3, v6}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    .line 750
    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    .line 753
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 754
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    .line 755
    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v8, v5}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 756
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 757
    invoke-virtual {v7, v4}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;)V

    .line 758
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    .line 759
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5, v3}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    .line 760
    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    .line 753
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)F
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 899
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public final a()Lcom/visionobjects/textwidget/f/a/b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    .line 82
    return-void
.end method

.method public final a(II)V
    .locals 12

    .prologue
    .line 614
    if-le p1, p2, :cond_0

    .line 615
    const-string v0, "LayoutController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete characters in invalid range "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->q()Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    .line 621
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    .line 623
    const/4 v2, 0x0

    .line 625
    const/4 v1, 0x0

    .line 627
    const/4 v0, 0x0

    move v4, v3

    .line 628
    :goto_1
    if-ge v0, v4, :cond_8

    .line 629
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 631
    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 634
    if-le v3, p1, :cond_6

    .line 637
    if-lt v2, p2, :cond_2

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_2

    .line 643
    const/4 v2, 0x0

    invoke-direct {p0, v5, v1, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 644
    add-int/lit8 v0, v0, 0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    .line 685
    :goto_2
    if-nez v4, :cond_7

    .line 686
    invoke-direct {p0, v5}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v7

    sub-float/2addr v1, v7

    .line 691
    :goto_3
    if-ne v5, v6, :cond_1

    .line 692
    invoke-direct {p0, v5, v4}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    :cond_1
    move v4, v2

    move v2, v3

    .line 694
    goto :goto_1

    .line 646
    :cond_2
    if-gt p1, v2, :cond_3

    if-gt v3, p2, :cond_3

    .line 649
    invoke-direct {p0, v5}, Lcom/visionobjects/textwidget/e/b;->f(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 650
    add-int/lit8 v4, v4, -0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto :goto_2

    .line 652
    :cond_3
    if-ge v2, p1, :cond_4

    if-ge p2, v3, :cond_4

    .line 655
    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v8, 0x0

    sub-int v9, p1, v2

    invoke-virtual {v7, v5, v8, v9}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v7

    .line 656
    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v9, p2, v2

    sub-int v2, v3, v2

    invoke-virtual {v8, v5, v9, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 657
    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v9

    invoke-virtual {p0, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v10

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 659
    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    .line 660
    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v7}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 661
    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 663
    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v8, v5}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    .line 664
    iget-object v8, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v8, v7, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 665
    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v2, v8}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 666
    add-int/lit8 v0, v0, 0x2

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    .line 667
    goto :goto_2

    .line 668
    :cond_4
    if-ge v2, p2, :cond_5

    if-ge p2, v3, :cond_5

    .line 671
    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v8, p2, v2

    sub-int v2, v3, v2

    invoke-virtual {v7, v5, v8, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 672
    add-int/lit8 v0, v0, 0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto/16 :goto_2

    .line 674
    :cond_5
    if-ge v2, p1, :cond_6

    if-ge p1, v3, :cond_6

    .line 677
    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v8, 0x0

    sub-int v2, p1, v2

    invoke-virtual {v7, v5, v8, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 678
    add-int/lit8 v0, v0, 0x1

    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto/16 :goto_2

    .line 682
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    move-object v4, v5

    goto/16 :goto_2

    .line 688
    :cond_7
    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v1

    invoke-virtual {p0, v5}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v7

    sub-float/2addr v1, v7

    goto/16 :goto_3

    .line 697
    :cond_8
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    .line 700
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->j()V

    .line 702
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->h()V

    goto/16 :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 534
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 535
    :cond_0
    const-string v0, "LayoutController"

    const-string v1, "Insert text requested with empty text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v6

    .line 543
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0, p2, p3, v6}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;Ljava/lang/String;F)[Landroid/graphics/RectF;

    move-result-object v4

    .line 544
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v3

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/textwidget/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->segments()Ljava/util/List;

    move-result-object v4

    .line 548
    const/4 v3, 0x0

    .line 549
    const/4 v2, 0x0

    .line 551
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->p()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 552
    const/4 v1, 0x0

    .line 554
    const/4 v0, 0x0

    .line 555
    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_3

    if-ge v2, p1, :cond_3

    .line 556
    aget-object v1, v5, v0

    .line 558
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 555
    add-int/lit8 v0, v0, 0x1

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_1

    .line 562
    :cond_3
    if-ge v3, p1, :cond_4

    if-ge p1, v2, :cond_4

    .line 563
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v7, 0x0

    sub-int v8, p1, v3

    invoke-virtual {v5, v1, v7, v8}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 564
    iget-object v7, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    sub-int v8, p1, v3

    sub-int/2addr v2, v3

    invoke-virtual {v7, v1, v8, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 566
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    .line 567
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 568
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 570
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v1}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    .line 571
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v3, v5, v7}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 572
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v2, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 576
    :cond_4
    const/4 v2, 0x0

    .line 577
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    .line 578
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 579
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    .line 580
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    .line 581
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v2, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    .line 582
    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 583
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v0

    add-float/2addr v0, v3

    .line 587
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move-object v0, v2

    .line 588
    goto :goto_2

    .line 585
    :cond_5
    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v0

    add-float/2addr v0, v3

    goto :goto_3

    .line 591
    :cond_6
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->p()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/visionobjects/textwidget/e/b;->a([Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;FF)V

    .line 594
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    .line 595
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    .line 598
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->j()V

    .line 600
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->h()V

    .line 603
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_1

    .line 604
    invoke-direct {p0, v3}, Lcom/visionobjects/textwidget/e/b;->c(F)V

    goto/16 :goto_0

    .line 603
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final a(Lcom/visionobjects/textwidget/c/m;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    .line 73
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/a/b;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 773
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v0

    .line 775
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->c()F

    move-result v2

    sub-float/2addr v1, v2

    .line 777
    :goto_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    invoke-virtual {p1, v5}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 779
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    .line 780
    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/visionobjects/textwidget/f/a/b;->b([Lcom/visionobjects/textwidget/f/b;)V

    .line 781
    invoke-virtual {p1, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(Lcom/visionobjects/textwidget/f/c;)V

    .line 782
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/visionobjects/textwidget/f/a/b;->a([Lcom/visionobjects/textwidget/f/b;)V

    .line 783
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;)V

    .line 784
    invoke-static {v3, v5}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Z)V

    goto :goto_0

    .line 787
    :cond_0
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/e/b;->a(I)V

    .line 789
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->h()V

    .line 790
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;I)V
    .locals 5

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset space character"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset unfrozen word"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 370
    invoke-virtual {p0, p1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    .line 372
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    .line 373
    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v3

    .line 374
    cmpl-float v4, v3, v2

    if-eqz v4, :cond_3

    .line 375
    sub-float v2, v3, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/visionobjects/textwidget/e/b;->a([Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;FF)V

    .line 378
    :cond_3
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/e/b;->d(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0, p1, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->q()Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 391
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    .line 395
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    array-length v3, v6

    if-ge v0, v3, :cond_4

    .line 396
    aget-object v4, v6, v0

    .line 399
    if-nez p1, :cond_0

    invoke-static {v4}, Lcom/visionobjects/textwidget/e/b;->c(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    :cond_0
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->e()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v3

    invoke-direct {p0, v4, v1, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    move-object v3, v1

    .line 407
    :goto_1
    invoke-virtual {p0, v3}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v1

    invoke-virtual {p0, v4}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v7

    sub-float/2addr v1, v7

    .line 409
    if-ne v4, v5, :cond_1

    .line 410
    invoke-direct {p0, v4, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    .line 395
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_2
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    .line 402
    invoke-direct {p0, v4, v1, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 404
    goto :goto_1

    .line 413
    :cond_4
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/c;)F
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 909
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final b()Lcom/visionobjects/textwidget/c/m;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->d:Lcom/visionobjects/textwidget/c/m;

    return-object v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/visionobjects/textwidget/e/b;->e:F

    .line 108
    return-void
.end method

.method public final b(Z)V
    .locals 8

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->q()Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 496
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 499
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v6

    .line 500
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    .line 501
    const/4 v0, 0x0

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_5

    .line 502
    aget-object v3, v5, v0

    .line 505
    if-nez p1, :cond_0

    invoke-static {v3}, Lcom/visionobjects/textwidget/e/b;->c(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    :cond_0
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->e()I

    move-result v2

    invoke-direct {p0, v3, v2, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 513
    :goto_1
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 514
    invoke-direct {p0, v2, v1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;F)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 517
    :cond_1
    if-ne v3, v4, :cond_2

    .line 518
    invoke-direct {p0, v3, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    .line 521
    :cond_2
    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    add-float/2addr v1, v2

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 508
    invoke-virtual {p0, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v7

    sub-float v7, v6, v7

    invoke-direct {p0, v3, v2, v7}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 510
    goto :goto_1

    .line 523
    :cond_5
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    goto :goto_0
.end method

.method public final e()F
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->f:F

    iget v1, p0, Lcom/visionobjects/textwidget/e/b;->e:F

    sub-float/2addr v0, v1

    .line 116
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/visionobjects/textwidget/e/b;->e:F

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    return v0
.end method

.method public final g()F
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v2

    .line 139
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    .line 141
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v5

    move v3, v0

    .line 142
    :goto_0
    if-ge v3, v5, :cond_0

    .line 143
    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v3}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v6

    .line 144
    invoke-virtual {v6}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 145
    invoke-virtual {v6}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 142
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/a/b;->d()I

    move-result v4

    move v7, v0

    move v0, v2

    move v2, v7

    .line 149
    :goto_1
    if-ge v2, v4, :cond_1

    .line 150
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 152
    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 149
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final h()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v4

    .line 171
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v5

    move v6, v3

    move v2, v3

    .line 173
    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_1

    .line 174
    aget-object v7, v1, v3

    .line 176
    invoke-virtual {v7}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    add-int/lit8 v0, v6, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v6

    add-float/2addr v5, v6

    .line 173
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v5

    move-object v0, p0

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/textwidget/e/b;->a([Lcom/visionobjects/textwidget/f/c;IIFF)V

    .line 185
    add-int/lit8 v2, v3, 0x1

    .line 186
    add-int/lit8 v0, v3, 0x1

    .line 187
    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v4

    .line 188
    invoke-virtual {p0, v7}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;)F

    move-result v5

    goto :goto_1

    :cond_1
    move-object v0, p0

    move v3, v6

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/textwidget/e/b;->a([Lcom/visionobjects/textwidget/f/c;IIFF)V

    .line 193
    return-void
.end method

.method public final i()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 229
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v8

    move v6, v7

    .line 231
    :goto_0
    if-ge v6, v8, :cond_1

    .line 232
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v6}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v9

    .line 233
    invoke-virtual {v9}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v10, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {p0, v9}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3, v0, v1, v2}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;Ljava/lang/String;F)[Landroid/graphics/RectF;

    move-result-object v4

    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/textwidget/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->segments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->b:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v1, v0, v5}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    invoke-virtual {v0, v11}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    invoke-virtual {v10, v9, v0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    .line 231
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, v2, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 268
    invoke-virtual {v0}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    :cond_0
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    move v2, v1

    .line 275
    :goto_0
    if-ge v1, v3, :cond_2

    .line 276
    iget-object v4, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v1}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 277
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 278
    invoke-static {v0, v2, v5}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/text/Bidi;II)B

    move-result v6

    invoke-virtual {v4, v6}, Lcom/visionobjects/textwidget/f/c;->a(B)V

    .line 279
    add-int/2addr v2, v5

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_2
    return-void
.end method

.method public final k()[Lcom/visionobjects/textwidget/f/c;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    .line 288
    new-array v4, v3, [B

    .line 289
    new-array v1, v3, [Lcom/visionobjects/textwidget/f/c;

    move v0, v2

    .line 291
    :goto_0
    if-ge v0, v3, :cond_0

    .line 292
    iget-object v5, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 293
    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v6

    aput-byte v6, v4, v0

    .line 294
    aput-object v5, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {v4, v2, v1, v2, v3}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 299
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    new-array v0, v3, [Lcom/visionobjects/textwidget/f/c;

    .line 302
    :goto_1
    if-ge v2, v3, :cond_2

    .line 303
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    aget-object v4, v1, v4

    aput-object v4, v0, v2

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 308
    :cond_2
    return-object v0
.end method

.method public final l()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 338
    iget-object v1, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v2

    move v1, v0

    .line 341
    :goto_0
    if-ge v1, v2, :cond_0

    .line 342
    iget-object v3, p0, Lcom/visionobjects/textwidget/e/b;->c:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3, v1}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    invoke-static {v3}, Lcom/visionobjects/textwidget/e/b;->c(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    const/4 v0, 0x1

    .line 347
    :cond_0
    return v0

    .line 341
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final m()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v3

    .line 430
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v0

    move v2, v0

    move v0, v1

    .line 431
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 432
    aget-object v4, v3, v0

    .line 433
    invoke-direct {p0, v4, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 434
    const/4 v1, 0x1

    .line 443
    :cond_0
    return v1

    .line 436
    :cond_1
    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 437
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v4

    add-float/2addr v2, v4

    .line 431
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_2
    invoke-direct {p0, v4}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_1
.end method

.method public final n()V
    .locals 8

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/visionobjects/textwidget/e/b;->q()Lcom/visionobjects/textwidget/f/c;

    move-result-object v4

    .line 458
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v5

    .line 460
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v6

    .line 461
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v1

    .line 462
    const/4 v0, 0x0

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_3

    .line 463
    aget-object v3, v5, v0

    .line 466
    invoke-direct {p0, v3, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    invoke-virtual {p0, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->l()F

    move-result v7

    sub-float v7, v6, v7

    invoke-direct {p0, v3, v2, v7}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 472
    :goto_1
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->t()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 473
    invoke-direct {p0, v2, v1}, Lcom/visionobjects/textwidget/e/b;->b(Lcom/visionobjects/textwidget/f/c;F)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 476
    :cond_0
    if-ne v3, v4, :cond_1

    .line 477
    invoke-direct {p0, v3, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;Lcom/visionobjects/textwidget/f/c;)V

    .line 480
    :cond_1
    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/e/b;->e(Lcom/visionobjects/textwidget/f/c;)F

    move-result v2

    add-float/2addr v1, v2

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 469
    goto :goto_1

    .line 482
    :cond_3
    return-void
.end method

.method public final o()F
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->e()F

    move-result v0

    neg-float v0, v0

    .line 878
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/e/b;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->e()F

    move-result v0

    goto :goto_0
.end method
