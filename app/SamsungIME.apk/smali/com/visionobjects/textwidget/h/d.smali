.class public final Lcom/visionobjects/textwidget/h/d;
.super Landroid/widget/FrameLayout;
.source "VOModelView.java"

# interfaces
.implements Lcom/visionobjects/textwidget/f/a$a;


# instance fields
.field private a:Lcom/visionobjects/textwidget/h/g;

.field private b:Lcom/visionobjects/textwidget/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/visionobjects/textwidget/h/g;

    invoke-direct {v0, p1}, Lcom/visionobjects/textwidget/h/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    .line 25
    new-instance v0, Lcom/visionobjects/textwidget/h/e;

    invoke-direct {v0, p1}, Lcom/visionobjects/textwidget/h/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    .line 27
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->a(F)V

    .line 38
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->a(F)V

    .line 39
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->b(Lcom/visionobjects/textwidget/f/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->c(Lcom/visionobjects/textwidget/f/b;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->b(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->c(Lcom/visionobjects/textwidget/f/c;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/b;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->b(Lcom/visionobjects/textwidget/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->b:Lcom/visionobjects/textwidget/h/e;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/e;->d(Lcom/visionobjects/textwidget/f/b;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/f/c;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->b(Lcom/visionobjects/textwidget/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/d;->a:Lcom/visionobjects/textwidget/h/g;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/g;->d(Lcom/visionobjects/textwidget/f/c;)V

    .line 70
    :cond_0
    return-void
.end method
