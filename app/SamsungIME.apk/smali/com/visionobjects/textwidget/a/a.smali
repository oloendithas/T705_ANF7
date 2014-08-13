.class public final Lcom/visionobjects/textwidget/a/a;
.super Landroid/view/animation/Animation;
.source "InsertWindowAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/a/a$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/visionobjects/textwidget/a/a$a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/a/a$a;FFFF)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/visionobjects/textwidget/a/a;->e:Lcom/visionobjects/textwidget/a/a$a;

    .line 26
    iput p2, p0, Lcom/visionobjects/textwidget/a/a;->a:F

    .line 27
    iput p4, p0, Lcom/visionobjects/textwidget/a/a;->b:F

    .line 28
    iput p3, p0, Lcom/visionobjects/textwidget/a/a;->c:F

    .line 29
    iput p5, p0, Lcom/visionobjects/textwidget/a/a;->d:F

    .line 30
    invoke-virtual {p0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 36
    iget v0, p0, Lcom/visionobjects/textwidget/a/a;->c:F

    iget v1, p0, Lcom/visionobjects/textwidget/a/a;->a:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/visionobjects/textwidget/a/a;->a:F

    add-float/2addr v0, v1

    .line 37
    iget v1, p0, Lcom/visionobjects/textwidget/a/a;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/a/a;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/visionobjects/textwidget/a/a;->b:F

    add-float/2addr v1, v2

    .line 38
    iget-object v2, p0, Lcom/visionobjects/textwidget/a/a;->e:Lcom/visionobjects/textwidget/a/a$a;

    invoke-interface {v2, v0, v1}, Lcom/visionobjects/textwidget/a/a$a;->a(FF)V

    .line 39
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/visionobjects/textwidget/a/a;->e:Lcom/visionobjects/textwidget/a/a$a;

    iget v1, p0, Lcom/visionobjects/textwidget/a/a;->c:F

    iget v2, p0, Lcom/visionobjects/textwidget/a/a;->d:F

    invoke-interface {v0, v1, v2}, Lcom/visionobjects/textwidget/a/a$a;->c(FF)V

    .line 48
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/visionobjects/textwidget/a/a;->e:Lcom/visionobjects/textwidget/a/a$a;

    iget v1, p0, Lcom/visionobjects/textwidget/a/a;->a:F

    iget v2, p0, Lcom/visionobjects/textwidget/a/a;->b:F

    invoke-interface {v0, v1, v2}, Lcom/visionobjects/textwidget/a/a$a;->b(FF)V

    .line 44
    return-void
.end method
