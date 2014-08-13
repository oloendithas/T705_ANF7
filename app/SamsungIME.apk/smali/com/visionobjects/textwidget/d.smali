.class final Lcom/visionobjects/textwidget/d;
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
    .line 1524
    iput-object p1, p0, Lcom/visionobjects/textwidget/d;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1527
    iget-object v0, p0, Lcom/visionobjects/textwidget/d;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->f(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidget$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/visionobjects/textwidget/d;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->f(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidget$a;

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 1531
    iget-object v0, p0, Lcom/visionobjects/textwidget/d;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->h(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->e()V

    .line 1532
    iget-object v0, p0, Lcom/visionobjects/textwidget/d;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1533
    iget-object v0, p0, Lcom/visionobjects/textwidget/d;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/TextWidget;Z)Z

    .line 1534
    return-void
.end method
