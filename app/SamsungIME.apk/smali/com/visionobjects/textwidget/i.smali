.class final Lcom/visionobjects/textwidget/i;
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
    .line 1711
    iput-object p1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/visionobjects/textwidget/g/b;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1714
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->l(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/d/b;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1718
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 1784
    :goto_0
    return-void

    .line 1722
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1726
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/g/b;->a()V

    goto :goto_0

    .line 1730
    :cond_1
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->l(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/d/b;->j()Z

    move-result v3

    .line 1734
    if-nez v3, :cond_c

    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->m()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1735
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->h(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/g/b;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    .line 1737
    :goto_1
    if-eqz v1, :cond_2

    .line 1738
    iget-object v4, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v4}, Lcom/visionobjects/textwidget/TextWidget;->o(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1740
    :cond_2
    if-eqz v1, :cond_7

    .line 1741
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->p(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1742
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->q(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1743
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/e/b;->b(Z)V

    .line 1751
    :goto_2
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->r(Lcom/visionobjects/textwidget/TextWidget;)V

    move v1, v0

    .line 1755
    :goto_3
    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/b;->m()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1756
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->h(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/g/b;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    .line 1758
    :goto_4
    if-eqz v1, :cond_3

    .line 1759
    iget-object v3, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->o(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1761
    :cond_3
    if-eqz v1, :cond_9

    .line 1762
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/e/b;->b(Z)V

    .line 1770
    :goto_5
    if-eqz v0, :cond_5

    .line 1771
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1772
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->c(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1776
    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 1777
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->k(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 1778
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1779
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1783
    :cond_5
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/g/b;->e()V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 1735
    goto/16 :goto_1

    .line 1745
    :cond_7
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->q(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1746
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->n()V

    goto :goto_2

    :cond_8
    move v1, v2

    .line 1756
    goto :goto_4

    .line 1764
    :cond_9
    iget-object v1, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v1}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->n()V

    goto :goto_5

    .line 1773
    :cond_a
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->t(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1774
    iget-object v0, p0, Lcom/visionobjects/textwidget/i;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->t(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    goto :goto_6

    :cond_b
    move v0, v1

    goto :goto_5

    :cond_c
    move v1, v2

    goto/16 :goto_3
.end method
