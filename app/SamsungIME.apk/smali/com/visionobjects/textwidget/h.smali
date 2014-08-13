.class final Lcom/visionobjects/textwidget/h;
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
    .line 1633
    iput-object p1, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/visionobjects/textwidget/g/b;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1636
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->l(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 1705
    :goto_0
    return-void

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/g/b;->a()V

    goto :goto_0

    .line 1652
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->l(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->j()Z

    move-result v3

    .line 1656
    if-nez v3, :cond_d

    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->m(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1657
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->i(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    move v0, v2

    .line 1659
    :goto_1
    iget-object v4, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v4}, Lcom/visionobjects/textwidget/TextWidget;->o(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1661
    if-eqz v0, :cond_8

    .line 1662
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->p(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1663
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->q(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1664
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    iget-object v4, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v4}, Lcom/visionobjects/textwidget/TextWidget;->m(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/visionobjects/textwidget/e/b;->b(Z)V

    .line 1672
    :goto_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->r(Lcom/visionobjects/textwidget/TextWidget;)V

    move v0, v2

    .line 1676
    :goto_3
    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->m(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/b;->l()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1677
    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->i(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 1679
    :goto_4
    iget-object v3, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->o(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1681
    if-eqz v0, :cond_a

    .line 1682
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    iget-object v3, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->m(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/e/b;->b(Z)V

    .line 1690
    :goto_5
    if-eqz v2, :cond_6

    .line 1691
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1692
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->c(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1696
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->c(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1697
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 1698
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->k(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 1699
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1700
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1704
    :cond_6
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/g/b;->e()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1657
    goto/16 :goto_1

    .line 1666
    :cond_8
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->p(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1667
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    iget-object v4, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v4}, Lcom/visionobjects/textwidget/TextWidget;->m(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/visionobjects/textwidget/e/b;->a(Z)V

    goto/16 :goto_2

    :cond_9
    move v0, v1

    .line 1677
    goto :goto_4

    .line 1684
    :cond_a
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;

    move-result-object v0

    iget-object v3, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v3}, Lcom/visionobjects/textwidget/TextWidget;->m(Lcom/visionobjects/textwidget/TextWidget;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/e/b;->a(Z)V

    goto :goto_5

    .line 1693
    :cond_b
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->t(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1694
    iget-object v0, p0, Lcom/visionobjects/textwidget/h;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->t(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    goto :goto_6

    :cond_c
    move v2, v0

    goto :goto_5

    :cond_d
    move v0, v1

    goto/16 :goto_3
.end method
