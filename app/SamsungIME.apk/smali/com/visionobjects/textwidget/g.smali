.class final Lcom/visionobjects/textwidget/g;
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
    .line 1599
    iput-object p1, p0, Lcom/visionobjects/textwidget/g;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/visionobjects/textwidget/g/b;)V
    .locals 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/visionobjects/textwidget/g;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 1615
    :goto_0
    return-void

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/g;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->j(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1611
    iget-object v0, p0, Lcom/visionobjects/textwidget/g;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1612
    iget-object v0, p0, Lcom/visionobjects/textwidget/g;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->k(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 1613
    iget-object v0, p0, Lcom/visionobjects/textwidget/g;->a:Lcom/visionobjects/textwidget/TextWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    goto :goto_0
.end method
