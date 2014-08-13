.class public final Lcom/visionobjects/textwidget/c/i;
.super Ljava/lang/Object;
.source "HandleViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/c/i$c;,
        Lcom/visionobjects/textwidget/c/i$b;,
        Lcom/visionobjects/textwidget/c/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:Z

.field private j:I

.field private k:Landroid/view/animation/Animation;

.field private l:[I

.field private m:I

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:I

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/visionobjects/textwidget/c/i$a;

.field private v:Lcom/visionobjects/textwidget/c/i$b;

.field private w:Lcom/visionobjects/textwidget/c/i$c;

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/lang/Runnable;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Lcom/visionobjects/textwidget/c/j;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/j;-><init>(Lcom/visionobjects/textwidget/c/i;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->x:Ljava/lang/Runnable;

    .line 402
    new-instance v0, Lcom/visionobjects/textwidget/c/k;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/k;-><init>(Lcom/visionobjects/textwidget/c/i;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->y:Ljava/lang/Runnable;

    .line 433
    new-instance v0, Lcom/visionobjects/textwidget/c/l;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c/l;-><init>(Lcom/visionobjects/textwidget/c/i;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->z:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->a:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 102
    const/high16 v1, 0x41a00000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->e:F

    .line 104
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->j:I

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->k:Landroid/view/animation/Animation;

    .line 109
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->k:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 110
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->k:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 111
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/i;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->p:I

    return v0
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/i;F)V
    .locals 1

    .prologue
    .line 22
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v0, p0, p1}, Lcom/visionobjects/textwidget/c/i$b;->c(Lcom/visionobjects/textwidget/c/i;F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/c/i;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/c/i;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    return v0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/c/i;F)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->f(F)V

    return-void
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/c/i;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/visionobjects/textwidget/c/i;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    return v0
.end method

.method private d(F)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 241
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 242
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private d(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 324
    :goto_0
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->p:I

    .line 325
    return-void

    .line 292
    :pswitch_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->f()V

    .line 293
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->g()V

    .line 294
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 295
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->x:Ljava/lang/Runnable;

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->g()V

    .line 301
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 302
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 307
    :pswitch_2
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->f()V

    .line 308
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->g()V

    .line 309
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 310
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 315
    :pswitch_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 319
    :pswitch_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method private e(F)V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    .line 535
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/c/i$b;->a(Lcom/visionobjects/textwidget/c/i;)V

    .line 538
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    if-eq v0, p1, :cond_0

    .line 486
    sget-object v0, Lcom/visionobjects/textwidget/b/a;->b:[I

    iput-object v0, p0, Lcom/visionobjects/textwidget/c/i;->l:[I

    .line 487
    iput v3, p0, Lcom/visionobjects/textwidget/c/i;->m:I

    .line 488
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    .line 489
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 490
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->z:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/visionobjects/textwidget/c/i;->l:[I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/visionobjects/textwidget/c/i;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/visionobjects/textwidget/c/i;)I
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/visionobjects/textwidget/c/i;->m:I

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method private f(F)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 543
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->r:F

    .line 545
    iget-object v2, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v2, :cond_0

    .line 546
    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->f:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->f:F

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    .line 548
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(I)V

    .line 560
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 546
    goto :goto_0

    .line 550
    :cond_2
    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->g:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->g:F

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    .line 552
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 550
    goto :goto_2

    .line 555
    :cond_4
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    .line 556
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->h()V

    .line 557
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v0, p0, p1}, Lcom/visionobjects/textwidget/c/i$b;->b(Lcom/visionobjects/textwidget/c/i;F)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/visionobjects/textwidget/c/i;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->m:I

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    if-eqz v0, :cond_0

    .line 503
    iput v1, p0, Lcom/visionobjects/textwidget/c/i;->m:I

    .line 504
    iput v1, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    .line 505
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/visionobjects/textwidget/c/i;)[I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->l:[I

    return-object v0
.end method

.method static synthetic i(Lcom/visionobjects/textwidget/c/i;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->w:Lcom/visionobjects/textwidget/c/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->w:Lcom/visionobjects/textwidget/c/i$c;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/i$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->w:Lcom/visionobjects/textwidget/c/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->w:Lcom/visionobjects/textwidget/c/i$c;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/c/i$c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->e()I

    move-result v1

    .line 188
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->c:F

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->f:F

    .line 145
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->d:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->g:F

    .line 146
    return-void
.end method

.method public final a(FF)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->c:F

    .line 210
    iput p2, p0, Lcom/visionobjects/textwidget/c/i;->d:F

    .line 211
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->h:I

    .line 152
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i$a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->u:Lcom/visionobjects/textwidget/c/i$a;

    .line 126
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i$b;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    .line 131
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i$c;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/visionobjects/textwidget/c/i;->w:Lcom/visionobjects/textwidget/c/i$c;

    .line 136
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 330
    if-eqz p1, :cond_1

    .line 331
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->p:I

    if-eq v0, v1, :cond_0

    .line 332
    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->p:I

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->q:F

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    .line 272
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 274
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->q:F

    sub-float/2addr v0, v2

    invoke-direct {v1, v0, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 276
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 279
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 280
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    return-void
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 248
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->q:F

    .line 250
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    .line 253
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->e()I

    move-result v0

    .line 171
    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->h:I

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_0

    .line 172
    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->h:I

    sub-int p1, v1, v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 179
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/c/i;->i:Z

    .line 373
    return-void
.end method

.method public final c(F)V
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->q:F

    sub-float v0, p1, v0

    .line 260
    iput p1, p0, Lcom/visionobjects/textwidget/c/i;->q:F

    .line 262
    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->k:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 379
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    return v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/visionobjects/textwidget/c/i;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 394
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    .line 396
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 589
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 591
    packed-switch v0, :pswitch_data_0

    .line 603
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->u:Lcom/visionobjects/textwidget/c/i$a;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(F)V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/visionobjects/textwidget/c/i;->s:F

    goto :goto_0

    .line 596
    :pswitch_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/visionobjects/textwidget/c/i;->s:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/visionobjects/textwidget/c/i;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->e(F)V

    :cond_2
    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->f(F)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/c/i;->d(F)V

    goto :goto_0

    .line 599
    :pswitch_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/visionobjects/textwidget/c/i;->d(I)V

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/c/i;->t:Z

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/visionobjects/textwidget/c/i;->h()V

    iget-object v1, p0, Lcom/visionobjects/textwidget/c/i;->v:Lcom/visionobjects/textwidget/c/i$b;

    invoke-interface {v1, p0, v0}, Lcom/visionobjects/textwidget/c/i$b;->a(Lcom/visionobjects/textwidget/c/i;F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->u:Lcom/visionobjects/textwidget/c/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/c/i;->u:Lcom/visionobjects/textwidget/c/i$a;

    invoke-interface {v0, p0}, Lcom/visionobjects/textwidget/c/i$a;->b(Lcom/visionobjects/textwidget/c/i;)V

    goto :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
