.class final Lcom/visionobjects/textwidget/c;
.super Ljava/lang/Object;
.source "TextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/TextWidget;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1505
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->f(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidget$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->f(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidget$a;

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 1509
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->c(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1510
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->h(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->e()V

    .line 1511
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->i(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->c()V

    .line 1512
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1513
    iget-object v0, p0, Lcom/visionobjects/textwidget/c;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v2}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1514
    return-void
.end method
