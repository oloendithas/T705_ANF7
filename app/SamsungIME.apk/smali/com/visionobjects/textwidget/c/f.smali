.class public final Lcom/visionobjects/textwidget/c/f;
.super Ljava/lang/Object;
.source "CursorViewController.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Z

.field private e:F

.field private f:F

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x15e

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    .line 37
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 38
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 39
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/visionobjects/textwidget/c/g;

    invoke-direct {v1, p0}, Lcom/visionobjects/textwidget/c/g;-><init>(Lcom/visionobjects/textwidget/c/f;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 53
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    new-instance v1, Lcom/visionobjects/textwidget/c/h;

    invoke-direct {v1, p0}, Lcom/visionobjects/textwidget/c/h;-><init>(Lcom/visionobjects/textwidget/c/f;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    const/high16 v1, 0x40000000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/c/f;->e:F

    .line 72
    const/high16 v1, 0x41700000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->f:F

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/f;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/c/f;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/c/f;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->b:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/visionobjects/textwidget/c/f;->h:I

    return v0
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 192
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/visionobjects/textwidget/c/f;->e:F

    .line 94
    iput p2, p0, Lcom/visionobjects/textwidget/c/f;->f:F

    .line 95
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_1

    .line 130
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 132
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    .line 141
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 3

    .prologue
    .line 100
    add-float v0, p1, p2

    iget v1, p0, Lcom/visionobjects/textwidget/c/f;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->g:I

    .line 101
    iget v0, p0, Lcom/visionobjects/textwidget/c/f;->f:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/f;->h:I

    .line 105
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    iget v1, p0, Lcom/visionobjects/textwidget/c/f;->g:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 107
    iget v1, p0, Lcom/visionobjects/textwidget/c/f;->h:I

    iget v2, p0, Lcom/visionobjects/textwidget/c/f;->g:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 155
    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/c/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 159
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/f;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/f;->d:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
