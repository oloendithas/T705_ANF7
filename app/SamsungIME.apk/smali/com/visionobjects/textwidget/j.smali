.class final Lcom/visionobjects/textwidget/j;
.super Ljava/lang/Object;
.source "TextWidget.java"

# interfaces
.implements Lcom/visionobjects/textwidget/g/b$a;


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/TextWidget;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/visionobjects/textwidget/g/b;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1793
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 1796
    array-length v3, v0

    if-nez v3, :cond_3

    .line 1797
    const/4 v0, 0x0

    move-object v3, v0

    .line 1803
    :goto_0
    if-eqz v3, :cond_6

    .line 1804
    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v0

    iget-object v4, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v4}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v4

    if-ne v0, v4, :cond_4

    move v0, v1

    .line 1812
    :goto_1
    new-instance v4, Lcom/visionobjects/stylus/core/VoString;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/visionobjects/stylus/core/VoString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/VoString;->lastChar()Lcom/visionobjects/stylus/core/Char;

    move-result-object v4

    .line 1813
    iget-object v5, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v5}, Lcom/visionobjects/textwidget/TextWidget;->u(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v3, v1

    :goto_2
    if-nez v3, :cond_1

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Char;->isCJCharacter()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Char;->isCJKPunctuation()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Char;->isThaiDigit()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Char;->isThaiLetter()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Lcom/visionobjects/stylus/core/Char;->isThaiPunctuation()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->u(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    .line 1825
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->v(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1826
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->d(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1837
    :goto_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->x(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1838
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v0

    .line 1839
    iget-object v1, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;

    move-result-object v1

    iget-object v3, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/b;->o()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v0, v3}, Lcom/visionobjects/textwidget/h/a;->a(FF)V

    .line 1844
    :goto_5
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->e(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1845
    return-void

    .line 1799
    :cond_3
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    move-object v3, v0

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1810
    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 1813
    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1827
    :cond_7
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->e(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1828
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    iget-object v1, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->w(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->d(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    goto :goto_4

    .line 1829
    :cond_8
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1830
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->d(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    goto :goto_4

    .line 1831
    :cond_9
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1832
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->d(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    goto :goto_4

    .line 1834
    :cond_a
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->d(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    goto :goto_4

    .line 1841
    :cond_b
    iget-object v0, p0, Lcom/visionobjects/textwidget/j;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->a()V

    goto :goto_5
.end method
