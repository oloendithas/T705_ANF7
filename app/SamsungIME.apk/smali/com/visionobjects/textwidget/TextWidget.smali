.class public Lcom/visionobjects/textwidget/TextWidget;
.super Landroid/widget/FrameLayout;
.source "TextWidget.java"

# interfaces
.implements Lcom/visionobjects/a/c$b;
.implements Lcom/visionobjects/textwidget/TextWidgetApi;
.implements Lcom/visionobjects/textwidget/a/a$a;
.implements Lcom/visionobjects/textwidget/c/i$a;
.implements Lcom/visionobjects/textwidget/c/i$b;
.implements Lcom/visionobjects/textwidget/c/i$c;
.implements Lcom/visionobjects/textwidget/c/m$a;
.implements Lcom/visionobjects/textwidget/d/b$c;
.implements Lcom/visionobjects/textwidget/d/b$d;
.implements Lcom/visionobjects/textwidget/d/b$e;
.implements Lcom/visionobjects/textwidget/f/a/b$a;
.implements Lcom/visionobjects/textwidget/h/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/TextWidget$b;,
        Lcom/visionobjects/textwidget/TextWidget$a;
    }
.end annotation


# instance fields
.field private A:Lcom/visionobjects/textwidget/h/a;

.field private B:Lcom/visionobjects/a/b;

.field private C:Lcom/visionobjects/textwidget/c/m;

.field private D:Lcom/visionobjects/textwidget/c/f;

.field private E:Lcom/visionobjects/textwidget/c/i;

.field private F:Lcom/visionobjects/textwidget/c/i;

.field private G:Lcom/visionobjects/textwidget/c/c;

.field private H:Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;

.field private I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

.field private J:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;

.field private K:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;

.field private L:Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;

.field private M:Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;

.field private N:Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;

.field private O:Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;

.field private P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:I

.field private T:I

.field private U:I

.field private V:[Ljava/lang/String;

.field private W:I

.field private Z:F

.field private a:I

.field private aa:F

.field private ab:F

.field private ac:F

.field private ad:F

.field private ae:F

.field private af:F

.field private ag:F

.field private ah:I

.field private ai:I

.field private aj:Ljava/lang/Runnable;

.field private ak:Lcom/visionobjects/textwidget/g/b;

.field private al:Lcom/visionobjects/textwidget/g/b;

.field private am:Lcom/visionobjects/textwidget/g/b;

.field private an:Lcom/visionobjects/textwidget/g/b;

.field private ao:Z

.field private ap:I

.field private aq:I

.field private ar:Lcom/visionobjects/textwidget/TextWidget$a;

.field private as:Lcom/visionobjects/textwidget/TextWidget$b;

.field private b:I

.field private c:Lcom/visionobjects/stylus/core/VoTimeStamp;

.field private d:Lcom/visionobjects/stylus/core/VoTimeStamp;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/visionobjects/textwidget/f/a/a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/visionobjects/textwidget/e/a;

.field private n:Lcom/visionobjects/textwidget/f/b/a;

.field private o:Lcom/visionobjects/textwidget/f/a/b;

.field private p:Lcom/visionobjects/textwidget/f/a/b;

.field private q:Lcom/visionobjects/textwidget/e/b;

.field private r:Lcom/visionobjects/textwidget/e/b;

.field private s:Z

.field private t:Lcom/visionobjects/textwidget/d/b;

.field private u:Z

.field private v:Lcom/visionobjects/textwidget/d/a/e;

.field private w:[F

.field private x:[I

.field private y:[I

.field private z:Lcom/visionobjects/textwidget/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1599
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto scroll"

    new-instance v2, Lcom/visionobjects/textwidget/g;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/g;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    .line 1633
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto typeset"

    new-instance v2, Lcom/visionobjects/textwidget/h;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/h;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    .line 1711
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto layout"

    new-instance v2, Lcom/visionobjects/textwidget/i;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/i;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    .line 1790
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "transient space reset"

    new-instance v2, Lcom/visionobjects/textwidget/j;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/j;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    .line 167
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/TextWidget;->a(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1599
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto scroll"

    new-instance v2, Lcom/visionobjects/textwidget/g;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/g;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    .line 1633
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto typeset"

    new-instance v2, Lcom/visionobjects/textwidget/h;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/h;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    .line 1711
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto layout"

    new-instance v2, Lcom/visionobjects/textwidget/i;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/i;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    .line 1790
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "transient space reset"

    new-instance v2, Lcom/visionobjects/textwidget/j;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/j;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    .line 173
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/TextWidget;->a(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1599
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto scroll"

    new-instance v2, Lcom/visionobjects/textwidget/g;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/g;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    .line 1633
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto typeset"

    new-instance v2, Lcom/visionobjects/textwidget/h;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/h;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    .line 1711
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "auto layout"

    new-instance v2, Lcom/visionobjects/textwidget/i;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/i;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    .line 1790
    new-instance v0, Lcom/visionobjects/textwidget/g/b;

    const-string v1, "transient space reset"

    new-instance v2, Lcom/visionobjects/textwidget/j;

    invoke-direct {v2, p0}, Lcom/visionobjects/textwidget/j;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/g/b;-><init>(Ljava/lang/String;Lcom/visionobjects/textwidget/g/b$a;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    .line 179
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/TextWidget;->a(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method static synthetic A(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->i:Lcom/visionobjects/textwidget/f/a/a;

    return-object v0
.end method

.method private A()V
    .locals 5

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2373
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v1

    .line 2375
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2376
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 2378
    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2379
    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    .line 2380
    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->m()F

    move-result v2

    .line 2381
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v4, v3, v2}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;F)V

    .line 2375
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2385
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2389
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->t()V

    .line 2392
    :cond_2
    return-void
.end method

.method static synthetic B(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/d/a/e;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->v:Lcom/visionobjects/textwidget/d/a/e;

    return-object v0
.end method

.method private B()V
    .locals 1

    .prologue
    .line 3162
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ao:Z

    if-eqz v0, :cond_0

    .line 3163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ao:Z

    .line 3164
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aq:I

    .line 3166
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ar:Lcom/visionobjects/textwidget/TextWidget$a;

    if-eqz v0, :cond_0

    .line 3167
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aq:I

    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ap:I

    .line 3168
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ar:Lcom/visionobjects/textwidget/TextWidget$a;

    .line 3174
    :cond_0
    return-void
.end method

.method static synthetic C(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->y()V

    return-void
.end method

.method static synthetic D(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    return-object v0
.end method

.method static synthetic E(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/TextWidget;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/visionobjects/textwidget/TextWidget;->ai:I

    return p1
.end method

.method private a(FZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ab:F

    add-float/2addr v0, v2

    .line 486
    :goto_0
    sub-float v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/visionobjects/textwidget/TextWidget;->aa:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move p2, v1

    .line 490
    :cond_0
    if-eqz p2, :cond_2

    .line 491
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/visionobjects/textwidget/TextWidget;->ab:F

    new-instance v0, Lcom/visionobjects/textwidget/a/a;

    move-object v1, p0

    move v2, p1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/textwidget/a/a;-><init>(Lcom/visionobjects/textwidget/a/a$a;FFFF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iput v6, p0, Lcom/visionobjects/textwidget/TextWidget;->b:I

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 499
    :goto_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, v6}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 500
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v6}, Lcom/visionobjects/textwidget/c/m;->b(Z)V

    .line 501
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v6}, Lcom/visionobjects/textwidget/c/m;->a(Z)V

    .line 503
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->h()V

    .line 511
    :goto_2
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ab:F

    sub-float/2addr v0, v2

    goto :goto_0

    .line 493
    :cond_2
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->q()V

    .line 494
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/i;->b(F)V

    .line 495
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget v1, p0, Lcom/visionobjects/textwidget/TextWidget;->ab:F

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->c(F)V

    .line 496
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/c/m;->d(F)V

    goto :goto_1

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 508
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(Z)V

    .line 509
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->a(Z)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x42480000

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 192
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 196
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    .line 197
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    const v3, 0x3e4ccccd

    aput v3, v2, v7

    .line 198
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    const v3, 0x3f4ccccd

    aput v3, v2, v9

    .line 200
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    .line 201
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    const/16 v3, 0xc80

    aput v3, v2, v7

    .line 202
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    const/16 v3, 0x258

    aput v3, v2, v9

    .line 204
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    .line 205
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    const/16 v3, 0x3e8

    aput v3, v2, v7

    .line 206
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    const/16 v3, 0xe10

    aput v3, v2, v9

    .line 210
    invoke-static {v4, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->Z:F

    .line 212
    const/high16 v2, 0x41a00000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->aa:F

    .line 214
    const v2, 0x3e4ccccd

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ab:F

    .line 215
    invoke-static {v4, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ac:F

    .line 217
    const/high16 v2, 0x42c80000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ad:F

    .line 218
    const/high16 v2, 0x42c80000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ae:F

    .line 220
    const/high16 v2, 0x3f000000

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->af:F

    .line 221
    const/high16 v2, 0x3f000000

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/visionobjects/textwidget/TextWidget;->ag:F

    .line 225
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/g/b;->a(I)V

    .line 229
    new-instance v1, Lcom/visionobjects/textwidget/h/i;

    invoke-direct {v1, p1}, Lcom/visionobjects/textwidget/h/i;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v1, p0}, Lcom/visionobjects/textwidget/h/i;->a(Lcom/visionobjects/textwidget/h/i$a;)V

    .line 232
    const/high16 v2, 0x42200000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 234
    new-instance v3, Lcom/visionobjects/textwidget/c/m;

    invoke-direct {v3, v1}, Lcom/visionobjects/textwidget/c/m;-><init>(Lcom/visionobjects/textwidget/h/i;)V

    iput-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    .line 235
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3, p0}, Lcom/visionobjects/textwidget/c/m;->a(Lcom/visionobjects/textwidget/c/m$a;)V

    .line 236
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/c/m;->e(F)V

    .line 240
    new-instance v2, Lcom/visionobjects/textwidget/e/a;

    invoke-direct {v2, v0}, Lcom/visionobjects/textwidget/e/a;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    .line 242
    new-instance v2, Lcom/visionobjects/textwidget/f/b/a;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-direct {v2, v3, v0}, Lcom/visionobjects/textwidget/f/b/a;-><init>(Lcom/visionobjects/textwidget/e/a;Landroid/util/DisplayMetrics;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    .line 244
    new-instance v2, Lcom/visionobjects/textwidget/f/a/b;

    new-instance v3, Lcom/visionobjects/textwidget/f/a;

    invoke-direct {v3}, Lcom/visionobjects/textwidget/f/a;-><init>()V

    invoke-direct {v2, v3}, Lcom/visionobjects/textwidget/f/a/b;-><init>(Lcom/visionobjects/textwidget/f/a;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    .line 245
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2, p0}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/a/b$a;)V

    .line 246
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->b()Lcom/visionobjects/textwidget/h/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/a$a;)V

    .line 248
    invoke-static {v4, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 250
    new-instance v3, Lcom/visionobjects/textwidget/e/b;

    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    iget-object v6, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-direct {v3, v4, v5, v6}, Lcom/visionobjects/textwidget/e/b;-><init>(Lcom/visionobjects/textwidget/e/a;Lcom/visionobjects/textwidget/f/b/a;Lcom/visionobjects/textwidget/f/a/b;)V

    iput-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    .line 251
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/e/b;->b(F)V

    .line 252
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-static {}, Lcom/visionobjects/textwidget/h/i;->i()I

    const/high16 v3, 0x47000000

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/e/b;->a(F)V

    .line 253
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/c/m;)V

    .line 255
    new-instance v2, Lcom/visionobjects/textwidget/c/a;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-direct {v2, v3}, Lcom/visionobjects/textwidget/c/a;-><init>(Lcom/visionobjects/textwidget/e/b;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->z:Lcom/visionobjects/textwidget/c/a;

    .line 259
    new-instance v2, Lcom/visionobjects/textwidget/f/a/b;

    new-instance v3, Lcom/visionobjects/textwidget/f/a;

    invoke-direct {v3}, Lcom/visionobjects/textwidget/f/a;-><init>()V

    invoke-direct {v2, v3}, Lcom/visionobjects/textwidget/f/a/b;-><init>(Lcom/visionobjects/textwidget/f/a;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    .line 260
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->c()Lcom/visionobjects/textwidget/h/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/a$a;)V

    .line 262
    new-instance v2, Lcom/visionobjects/textwidget/e/b;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-direct {v2, v3, v4, v5}, Lcom/visionobjects/textwidget/e/b;-><init>(Lcom/visionobjects/textwidget/e/a;Lcom/visionobjects/textwidget/f/b/a;Lcom/visionobjects/textwidget/f/a/b;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    .line 263
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    invoke-static {}, Lcom/visionobjects/textwidget/h/i;->i()I

    const/high16 v3, 0x47000000

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/e/b;->a(F)V

    .line 267
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->a()Lcom/visionobjects/textwidget/h/a;

    move-result-object v2

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    .line 268
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/h/a;->a(Lcom/visionobjects/textwidget/e/b;)V

    .line 269
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/h/a;->b(Lcom/visionobjects/textwidget/e/b;)V

    .line 273
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->e()Lcom/visionobjects/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    .line 274
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/b/a;->a()Lcom/visionobjects/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visionobjects/a/b;->a(Lcom/visionobjects/a/a/e;)V

    .line 275
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v2, p0}, Lcom/visionobjects/a/b;->a(Lcom/visionobjects/a/c$b;)V

    .line 279
    new-instance v2, Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/h/i;->d()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/visionobjects/textwidget/c/f;-><init>(Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    .line 280
    new-instance v2, Lcom/visionobjects/textwidget/c/c;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-direct {v2, v3}, Lcom/visionobjects/textwidget/c/c;-><init>(Lcom/visionobjects/textwidget/e/b;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    .line 284
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 285
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 287
    new-instance v3, Lcom/visionobjects/textwidget/c/i;

    const-string v4, "insert"

    invoke-direct {v3, v4, v2}, Lcom/visionobjects/textwidget/c/i;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    .line 288
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/c/i;->b(Z)V

    .line 289
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v3, v7}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 290
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v3, p0}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i$b;)V

    .line 291
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v3, p0}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i$a;)V

    .line 295
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 296
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 298
    new-instance v4, Lcom/visionobjects/textwidget/c/i;

    const-string v5, "cursor"

    invoke-direct {v4, v5, v3}, Lcom/visionobjects/textwidget/c/i;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    .line 299
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    iget v5, p0, Lcom/visionobjects/textwidget/TextWidget;->ad:F

    iget v6, p0, Lcom/visionobjects/textwidget/TextWidget;->ae:F

    invoke-virtual {v4, v5, v6}, Lcom/visionobjects/textwidget/c/i;->a(FF)V

    .line 300
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v4, v9}, Lcom/visionobjects/textwidget/c/i;->b(Z)V

    .line 301
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v4, v7}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 302
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v4, p0}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i$b;)V

    .line 303
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v4, p0}, Lcom/visionobjects/textwidget/c/i;->a(Lcom/visionobjects/textwidget/c/i$c;)V

    .line 307
    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 308
    invoke-virtual {p0, v2, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 309
    invoke-virtual {p0, v3, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 313
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    .line 315
    iput v7, p0, Lcom/visionobjects/textwidget/TextWidget;->ah:I

    .line 316
    iput v7, p0, Lcom/visionobjects/textwidget/TextWidget;->ai:I

    .line 318
    new-instance v1, Lcom/visionobjects/textwidget/d/b;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/visionobjects/textwidget/d/b;-><init>(FF)V

    iput-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    .line 319
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0, p0}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/d/b$c;)V

    .line 320
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0, p0}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/d/b$e;)V

    .line 321
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0, p0}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/d/b$d;)V

    .line 323
    new-instance v0, Lcom/visionobjects/textwidget/d/a/e;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-direct {v0, v1, v2}, Lcom/visionobjects/textwidget/d/a/e;-><init>(Lcom/visionobjects/textwidget/f/b/a;Lcom/visionobjects/textwidget/f/a/b;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->v:Lcom/visionobjects/textwidget/d/a/e;

    .line 324
    new-instance v0, Lcom/visionobjects/textwidget/f/a/a;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-direct {v0, v1}, Lcom/visionobjects/textwidget/f/a/a;-><init>(Lcom/visionobjects/textwidget/f/a/b;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->i:Lcom/visionobjects/textwidget/f/a/a;

    .line 328
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->s()V

    .line 329
    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->u()V

    return-void
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/TextWidget;F)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/TextWidget;->h(F)V

    return-void
.end method

.method private static a(Lcom/visionobjects/textwidget/e/b;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 790
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/e/b;->a()Lcom/visionobjects/textwidget/f/a/b;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 800
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/visionobjects/textwidget/e/b;->a(II)V

    goto :goto_0

    .line 801
    :cond_3
    if-ne p1, p2, :cond_4

    .line 802
    invoke-virtual {p0, p1, p3, p4}, Lcom/visionobjects/textwidget/e/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/visionobjects/textwidget/f/a/b;->a(II)Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 807
    if-nez v2, :cond_6

    move v0, v1

    .line 813
    :goto_1
    if-eqz v2, :cond_5

    if-ne v0, v1, :cond_7

    .line 814
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/visionobjects/textwidget/e/b;->a(II)V

    .line 815
    invoke-virtual {p0, p1, p3, p4}, Lcom/visionobjects/textwidget/e/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_6
    invoke-virtual {v2, p3}, Lcom/visionobjects/textwidget/f/c;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 816
    :cond_7
    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->e()I

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    .line 818
    invoke-virtual {p0, v2, v0}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/c;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/visionobjects/textwidget/TextWidget;Z)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->k:Z

    return v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3029
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 3045
    :cond_0
    :goto_0
    return v1

    .line 3032
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3035
    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 3039
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 3040
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3039
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 3045
    goto :goto_0
.end method

.method private static b(I)I
    .locals 4

    .prologue
    const/16 v1, 0x2710

    const/16 v0, 0xfa

    .line 2904
    if-ge p0, v0, :cond_1

    .line 2911
    :goto_0
    if-eq v0, p0, :cond_0

    .line 2912
    const-string v1, "TextWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Auto-scroll delay "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds (250"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-10000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), clamped to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_0
    return v0

    .line 2906
    :cond_1
    if-le p0, v1, :cond_2

    move v0, v1

    .line 2907
    goto :goto_0

    :cond_2
    move v0, p0

    .line 2909
    goto :goto_0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->v()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->i()C

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 830
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->Q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->R:Z

    if-eq p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 832
    :goto_0
    iput-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->Q:Ljava/lang/String;

    .line 833
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/TextWidget;->R:Z

    .line 835
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->H:Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->H:Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;

    invoke-interface {v0, v1, p1}, Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;->onTextChanged(Ljava/lang/String;Z)V

    .line 838
    :cond_1
    return-void

    .line 830
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/visionobjects/textwidget/TextWidget;Z)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->l:Z

    return v0
.end method

.method private static c(I)I
    .locals 4

    .prologue
    const/16 v1, 0x2710

    const/16 v0, 0xfa

    .line 2967
    if-ge p0, v0, :cond_1

    .line 2974
    :goto_0
    if-eq v0, p0, :cond_0

    .line 2975
    const-string v1, "TextWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Auto-typeset delay "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds (250"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-10000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), clamped to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    :cond_0
    return v0

    .line 2969
    :cond_1
    if-le p0, v1, :cond_2

    move v0, v1

    .line 2970
    goto :goto_0

    :cond_2
    move v0, p0

    .line 2972
    goto :goto_0
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->r()V

    return-void
.end method

.method static synthetic c(Lcom/visionobjects/textwidget/TextWidget;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/TextWidget;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->O:Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;

    return-object v0
.end method

.method static synthetic d(Lcom/visionobjects/textwidget/TextWidget;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/TextWidget;->e:Z

    return p1
.end method

.method static synthetic e(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/f/a/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    return-object v0
.end method

.method static synthetic e(Lcom/visionobjects/textwidget/TextWidget;Z)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/TextWidget$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ar:Lcom/visionobjects/textwidget/TextWidget$a;

    return-object v0
.end method

.method static synthetic f(Lcom/visionobjects/textwidget/TextWidget;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/visionobjects/textwidget/TextWidget;->b(Z)V

    return-void
.end method

.method static synthetic g(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/h/a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    return-object v0
.end method

.method static synthetic h(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    return-object v0
.end method

.method private h(F)V
    .locals 3

    .prologue
    .line 1152
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    new-instance v0, Lcom/visionobjects/textwidget/o;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/o;-><init>(Lcom/visionobjects/textwidget/TextWidget;F)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    .line 1169
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->f(F)V

    .line 1162
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/c/m;->i(F)F

    move-result v0

    .line 1164
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->h(F)V

    .line 1167
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/c;->b()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/i;->b(F)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    return-object v0
.end method

.method private i(F)Z
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->f(F)V

    .line 1222
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->i()F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(F)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1590
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v0, v0, v4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    aget v0, v0, v4

    .line 1595
    :goto_0
    return v0

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v0, v0, v3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    aget v0, v0, v3

    goto :goto_0

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    aget v0, v0, v4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v2, v2, v4

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->as:Lcom/visionobjects/textwidget/TextWidget$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->as:Lcom/visionobjects/textwidget/TextWidget$b;

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    return-object v0
.end method

.method static synthetic l(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/d/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    return-object v0
.end method

.method static synthetic m(Lcom/visionobjects/textwidget/TextWidget;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->s:Z

    return v0
.end method

.method static synthetic n(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    return-object v0
.end method

.method static synthetic o(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->A()V

    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/a/b;)V

    .line 440
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->z()V

    .line 442
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 443
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 445
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->r()V

    .line 446
    return-void
.end method

.method static synthetic p(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->as:Lcom/visionobjects/textwidget/TextWidget$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->as:Lcom/visionobjects/textwidget/TextWidget$b;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/textwidget/TextWidget;->b:I

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 553
    return-void
.end method

.method static synthetic q(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->as:Lcom/visionobjects/textwidget/TextWidget$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->as:Lcom/visionobjects/textwidget/TextWidget$b;

    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 918
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 920
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/c;->b()F

    move-result v1

    .line 922
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v2, v1}, Lcom/visionobjects/textwidget/c/f;->a(F)V

    .line 923
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/c/f;->b(Z)V

    .line 925
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->q()Z

    move-result v2

    if-nez v2, :cond_0

    .line 927
    :goto_0
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->n()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/visionobjects/textwidget/c/i;->b(F)V

    .line 933
    :goto_1
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 940
    :goto_2
    return-void

    .line 925
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/visionobjects/textwidget/c/i;->b(F)V

    goto :goto_1

    .line 938
    :cond_2
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->s()V

    goto :goto_2
.end method

.method static synthetic r(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->z()V

    return-void
.end method

.method static synthetic s(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/e/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/f;->b(Z)V

    .line 946
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 947
    return-void
.end method

.method static synthetic t(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/g/b;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    return-object v0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v0

    .line 953
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/a;->h()F

    move-result v1

    .line 955
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v2, v0, v1}, Lcom/visionobjects/textwidget/c/f;->b(FF)V

    .line 957
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->b(I)V

    .line 958
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    new-instance v0, Lcom/visionobjects/textwidget/p;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/p;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    .line 1185
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->f(F)V

    .line 1183
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->k()V

    goto :goto_0
.end method

.method static synthetic u(Lcom/visionobjects/textwidget/TextWidget;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->h:Z

    return v0
.end method

.method static synthetic v(Lcom/visionobjects/textwidget/TextWidget;)Lcom/visionobjects/textwidget/c/i;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    return-object v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 1190
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Lcom/visionobjects/textwidget/q;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/q;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    .line 1201
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->f(F)V

    .line 1199
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->j()V

    goto :goto_0
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->f(F)V

    .line 1207
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/visionobjects/textwidget/TextWidget;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->g:Z

    return v0
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->f(F)V

    .line 1214
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/visionobjects/textwidget/TextWidget;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->e:Z

    return v0
.end method

.method static synthetic y(Lcom/visionobjects/textwidget/TextWidget;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ah:I

    return v0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->u:Z

    if-eqz v0, :cond_0

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->u:Z

    .line 1399
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->N:Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->N:Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;->onRecognitionEnd()V

    .line 1403
    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/visionobjects/textwidget/TextWidget;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ai:I

    return v0
.end method

.method private z()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2225
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    .line 2226
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v3

    .line 2227
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/textwidget/f/a/b;FFLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v2

    .line 2230
    iget v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ah:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ah:I

    .line 2237
    iget v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ah:I

    invoke-static {v3}, Lcom/visionobjects/stylus/core/InkItem;->createFlowMarker(I)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v3

    .line 2239
    invoke-virtual {v2}, Lcom/visionobjects/stylus/core/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v4

    .line 2240
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    invoke-virtual {v2, v4}, Lcom/visionobjects/stylus/core/InkField;->setPendingStrokes(Ljava/util/List;)V

    .line 2244
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v3, v2}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/stylus/core/InkField;)V

    .line 2247
    invoke-static {v2}, Lcom/visionobjects/textwidget/d/a/e;->c(Lcom/visionobjects/stylus/core/InkField;)Z

    move-result v2

    .line 2251
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2252
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->i()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->b(Z)V

    .line 2258
    :goto_0
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2259
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->i:Lcom/visionobjects/textwidget/f/a/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/a;->a()V

    .line 2266
    :goto_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2267
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->a()V

    .line 2269
    :cond_2
    return-void

    .line 2254
    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->b(Z)V

    goto :goto_0

    .line 2264
    :cond_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->i:Lcom/visionobjects/textwidget/f/a/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/a;->b()V

    goto :goto_1
.end method


# virtual methods
.method public _setAutoLayoutDelay(I)V
    .locals 1

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/g/b;->a(I)V

    .line 3089
    return-void
.end method

.method public _setAutoLayoutEnabled(Z)V
    .locals 1

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/g/b;->a(Z)V

    .line 3084
    return-void
.end method

.method public _setAutoScrollRatios(FF)V
    .locals 2

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3094
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 3095
    return-void
.end method

.method public _setHandleOverscrollThreshold(F)V
    .locals 0

    .prologue
    .line 3104
    iput p1, p0, Lcom/visionobjects/textwidget/TextWidget;->ag:F

    .line 3105
    return-void
.end method

.method public _setInsertWindowMargin(F)V
    .locals 0

    .prologue
    .line 3109
    iput p1, p0, Lcom/visionobjects/textwidget/TextWidget;->ab:F

    .line 3110
    return-void
.end method

.method public _setInsertWindowSnapDistance(F)V
    .locals 0

    .prologue
    .line 3114
    iput p1, p0, Lcom/visionobjects/textwidget/TextWidget;->Z:F

    .line 3115
    return-void
.end method

.method public _setUserOverscrollThreshold(F)V
    .locals 0

    .prologue
    .line 3099
    iput p1, p0, Lcom/visionobjects/textwidget/TextWidget;->af:F

    .line 3100
    return-void
.end method

.method public _writeModel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v0

    .line 3075
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v1

    .line 3076
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/textwidget/f/a/b;FFLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 3078
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd-HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".itf"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/visionobjects/stylus/core/ItfWriter;

    invoke-direct {v2}, Lcom/visionobjects/stylus/core/ItfWriter;-><init>()V

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/d/b;->k()Lcom/visionobjects/stylus/core/InputMethodConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visionobjects/stylus/core/ItfWriter;->setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;)V

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ItfWriter;->setField(Lcom/visionobjects/stylus/core/InkField;)V

    invoke-virtual {v2, v1}, Lcom/visionobjects/stylus/core/ItfWriter;->write(Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 2212
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->f:Z

    if-nez v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/a;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->a()V

    .line 2215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->f:Z

    .line 2218
    :cond_0
    return-void
.end method

.method public final a(FF)V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v0

    .line 595
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, p1}, Lcom/visionobjects/textwidget/c/m;->d(F)V

    .line 596
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, p2}, Lcom/visionobjects/textwidget/c/m;->c(F)V

    .line 597
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->c()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/i;->c(F)V

    .line 598
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 2281
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2288
    iput p1, p0, Lcom/visionobjects/textwidget/TextWidget;->ai:I

    .line 2302
    :goto_0
    return-void

    .line 2292
    :cond_0
    new-instance v0, Lcom/visionobjects/textwidget/k;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/k;-><init>(Lcom/visionobjects/textwidget/TextWidget;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/a/b;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2143
    new-instance v0, Lcom/visionobjects/stylus/core/VoTimeStamp;

    invoke-direct {v0}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->d:Lcom/visionobjects/stylus/core/VoTimeStamp;

    .line 2145
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->c:Lcom/visionobjects/stylus/core/VoTimeStamp;

    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->d:Lcom/visionobjects/stylus/core/VoTimeStamp;

    invoke-virtual {v0, p1, v3, v4}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/a/b;Lcom/visionobjects/stylus/core/VoTimeStamp;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/textwidget/f/b;

    move-result-object v4

    .line 2148
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2149
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/h/a;->d(F)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2154
    :goto_0
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    .line 2155
    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/f/a/b;->k()I

    move-result v5

    .line 2157
    if-eqz v3, :cond_4

    if-ne v3, v5, :cond_4

    move v3, v1

    .line 2159
    :goto_1
    iget-boolean v6, p0, Lcom/visionobjects/textwidget/TextWidget;->e:Z

    if-nez v6, :cond_5

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/a/b;->h()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2163
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->i:Lcom/visionobjects/textwidget/f/a/a;

    invoke-virtual {v0, v4, v5}, Lcom/visionobjects/textwidget/f/a/a;->a(Lcom/visionobjects/textwidget/f/b;I)V

    .line 2176
    :cond_0
    :goto_2
    iput-boolean v2, p0, Lcom/visionobjects/textwidget/TextWidget;->e:Z

    .line 2178
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, v4}, Lcom/visionobjects/textwidget/f/a/b;->a(Lcom/visionobjects/textwidget/f/b;)V

    .line 2179
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0, v4}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/f/b;)V

    .line 2181
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2182
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->z:Lcom/visionobjects/textwidget/c/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/a;->a()F

    move-result v0

    .line 2186
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->j(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/visionobjects/textwidget/g/b;->b(I)V

    .line 2187
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v4, v4, v2

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v0, v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lcom/visionobjects/textwidget/g/b;->b(I)V

    .line 2194
    :goto_4
    invoke-virtual {p1}, Lcom/visionobjects/a/b;->j()V

    .line 2195
    return-void

    :cond_1
    move v0, v2

    .line 2149
    goto :goto_0

    .line 2151
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/f/b;->d()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/h/a;->d(F)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    .line 2157
    goto :goto_1

    .line 2167
    :cond_5
    iget-boolean v3, p0, Lcom/visionobjects/textwidget/TextWidget;->e:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 2168
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->f:Z

    if-eqz v0, :cond_6

    .line 2169
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->i:Lcom/visionobjects/textwidget/f/a/a;

    invoke-virtual {v0, v4, v5}, Lcom/visionobjects/textwidget/f/a/a;->a(Lcom/visionobjects/textwidget/f/b;I)V

    goto :goto_2

    .line 2171
    :cond_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->i:Lcom/visionobjects/textwidget/f/a/a;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/visionobjects/textwidget/f/a/a;->a(Lcom/visionobjects/textwidget/f/b;I)V

    goto :goto_2

    .line 2187
    :cond_7
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v4, v4, v1

    cmpl-float v4, v0, v4

    if-lez v4, :cond_8

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v0, v0, v1

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v4, v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v6, v6, v2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v6, v6, v2

    sub-float/2addr v0, v6

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v1, v5, v1

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->w:[F

    aget v2, v5, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_3

    .line 2190
    :cond_9
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->e()V

    .line 2191
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->c()V

    goto :goto_4
.end method

.method public final a(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 1

    .prologue
    .line 2310
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2358
    :goto_0
    return-void

    .line 2317
    :cond_0
    new-instance v0, Lcom/visionobjects/textwidget/m;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/m;-><init>(Lcom/visionobjects/textwidget/TextWidget;Lcom/visionobjects/stylus/core/InkField;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i;)V
    .locals 2

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v0

    .line 1892
    invoke-virtual {p1, v0}, Lcom/visionobjects/textwidget/c/i;->a(F)V

    .line 1894
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v0, :cond_1

    .line 1897
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/c;->d()V

    .line 1898
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/f;->a(Z)V

    .line 1900
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;->onCursorHandleDragBegin()V

    .line 1914
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/visionobjects/textwidget/c/i;->a(F)V

    .line 1915
    return-void

    .line 1904
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 1909
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->J:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->J:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;->onInsertHandleDragBegin()V

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/c/i;F)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1924
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v2, :cond_5

    .line 1927
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/c/i;->b()V

    .line 1929
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/c;->e()V

    .line 1930
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v2, v0}, Lcom/visionobjects/textwidget/c/f;->a(Z)V

    .line 1932
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/c;->a()I

    move-result v3

    .line 1934
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2, v3}, Lcom/visionobjects/textwidget/f/a/b;->f(I)V

    .line 1937
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->k()[Lcom/visionobjects/textwidget/f/c;

    move-result-object v2

    .line 1940
    array-length v4, v2

    if-nez v4, :cond_1

    .line 1941
    const/4 v2, 0x0

    .line 1948
    :goto_0
    if-eqz v2, :cond_3

    .line 1949
    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/c;->p()Z

    move-result v4

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1950
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v2}, Lcom/visionobjects/textwidget/f/a/b;->d(Lcom/visionobjects/textwidget/f/c;)I

    move-result v2

    .line 1958
    :goto_1
    if-ne v3, v2, :cond_4

    iget v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ag:F

    invoke-direct {p0, v2}, Lcom/visionobjects/textwidget/TextWidget;->i(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1960
    :goto_2
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

    if-eqz v1, :cond_0

    .line 1961
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;->onCursorHandleDragEnd(Z)V

    .line 1992
    :cond_0
    :goto_3
    return-void

    .line 1943
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    goto :goto_0

    .line 1952
    :cond_2
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, v2}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1955
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1958
    goto :goto_2

    .line 1964
    :cond_5
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v2, :cond_0

    .line 1967
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/c/i;->b()V

    .line 1969
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v2

    add-float/2addr v2, p2

    .line 1971
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v3

    .line 1974
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1975
    iget v4, p0, Lcom/visionobjects/textwidget/TextWidget;->Z:F

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1981
    :cond_6
    :goto_4
    if-nez v0, :cond_7

    .line 1982
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->a()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/TextWidget;->ab:F

    .line 1985
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 1988
    :cond_7
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->J:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;

    if-eqz v1, :cond_0

    .line 1989
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->J:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;->onInsertHandleDragEnd(Z)V

    goto :goto_3

    :cond_8
    move v0, v1

    .line 1975
    goto :goto_4

    .line 1977
    :cond_9
    iget v4, p0, Lcom/visionobjects/textwidget/TextWidget;->Z:F

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    move v0, v1

    goto :goto_4
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 974
    .line 977
    const/4 v0, 0x0

    .line 979
    if-eqz p1, :cond_9

    .line 981
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->g()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v7, v3, v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_1
    if-nez v0, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 983
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->f()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 984
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_7

    .line 985
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 991
    :goto_3
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v4, p1}, Lcom/visionobjects/textwidget/f/a/b;->c(Lcom/visionobjects/textwidget/f/c;)I

    move-result v4

    .line 992
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    .line 995
    :goto_4
    iget v6, p0, Lcom/visionobjects/textwidget/TextWidget;->T:I

    if-ne v4, v6, :cond_3

    iget v6, p0, Lcom/visionobjects/textwidget/TextWidget;->U:I

    if-ne v3, v6, :cond_3

    iget v6, p0, Lcom/visionobjects/textwidget/TextWidget;->W:I

    if-ne v1, v6, :cond_3

    iget-object v6, p0, Lcom/visionobjects/textwidget/TextWidget;->V:[Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/visionobjects/textwidget/TextWidget;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v2, v5

    .line 1001
    :cond_4
    iput v4, p0, Lcom/visionobjects/textwidget/TextWidget;->T:I

    .line 1002
    iput v3, p0, Lcom/visionobjects/textwidget/TextWidget;->U:I

    .line 1003
    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->V:[Ljava/lang/String;

    .line 1004
    iput v1, p0, Lcom/visionobjects/textwidget/TextWidget;->W:I

    .line 1006
    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->L:Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 1007
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->L:Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;

    invoke-interface {v2, v4, v3, v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;->onSelectionChanged(II[Ljava/lang/String;I)V

    .line 1009
    :cond_5
    return-void

    .line 984
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v1, v2

    move v3, v2

    move v4, v2

    goto :goto_4
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->M:Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->M:Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;->onConfigureEnd(Z)V

    .line 1340
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2109
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2119
    new-instance v0, Lcom/visionobjects/stylus/core/VoTimeStamp;

    invoke-direct {v0}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->c:Lcom/visionobjects/stylus/core/VoTimeStamp;

    .line 2121
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 2122
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 2123
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 2124
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 2125
    iput-boolean v1, p0, Lcom/visionobjects/textwidget/TextWidget;->k:Z

    .line 2126
    iput-boolean v1, p0, Lcom/visionobjects/textwidget/TextWidget;->l:Z

    .line 2127
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->l()V

    .line 2129
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->u:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/visionobjects/textwidget/TextWidget;->u:Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->N:Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->N:Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;->onRecognitionBegin()V

    .line 2131
    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->s()V

    .line 2133
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->h()V

    .line 2134
    return-void
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 1420
    new-instance v0, Lcom/visionobjects/textwidget/r;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/r;-><init>(Lcom/visionobjects/textwidget/TextWidget;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1434
    return-void
.end method

.method public final b(FF)V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, p1}, Lcom/visionobjects/textwidget/c/m;->d(F)V

    .line 606
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, p2}, Lcom/visionobjects/textwidget/c/m;->c(F)V

    .line 607
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->c()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/i;->b(F)V

    .line 608
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/c/i;)V
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->K:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->K:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;->onInsertHandleClicked()V

    .line 2086
    :cond_0
    return-void
.end method

.method public final b(Lcom/visionobjects/textwidget/c/i;F)V
    .locals 3

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v0, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/c;->a(F)I

    move-result v0

    .line 2006
    iget v1, p0, Lcom/visionobjects/textwidget/TextWidget;->S:I

    if-eq v1, v0, :cond_0

    .line 2007
    iput v0, p0, Lcom/visionobjects/textwidget/TextWidget;->S:I

    .line 2009
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

    if-eqz v1, :cond_0

    .line 2010
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;->onCursorHandleDrag(I)V

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v0

    add-float v1, v0, p2

    .line 2019
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v0

    .line 2022
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2023
    iget v2, p0, Lcom/visionobjects/textwidget/TextWidget;->Z:F

    sub-float v2, v0, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 2033
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v1

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2035
    iget v1, p0, Lcom/visionobjects/textwidget/TextWidget;->ac:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 2036
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ac:F

    .line 2039
    :cond_3
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->c(F)V

    .line 2041
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->c()F

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/visionobjects/textwidget/c/i;->b(F)V

    goto :goto_0

    .line 2027
    :cond_4
    iget v2, p0, Lcom/visionobjects/textwidget/TextWidget;->Z:F

    add-float/2addr v2, v0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 2204
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->y()V

    .line 2206
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->i()V

    .line 2207
    return-void
.end method

.method public final c(F)V
    .locals 1

    .prologue
    .line 1442
    new-instance v0, Lcom/visionobjects/textwidget/s;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/s;-><init>(Lcom/visionobjects/textwidget/TextWidget;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1453
    return-void
.end method

.method public final c(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, p1}, Lcom/visionobjects/textwidget/c/m;->d(F)V

    .line 616
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, p2}, Lcom/visionobjects/textwidget/c/m;->c(F)V

    .line 617
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->c()F

    move-result v2

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/i;->b(F)V

    .line 619
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 621
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/c/m;->b(Z)V

    .line 622
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/c/m;->a(Z)V

    .line 623
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->p()V

    .line 626
    :cond_0
    iput v3, p0, Lcom/visionobjects/textwidget/TextWidget;->b:I

    .line 627
    return-void
.end method

.method public final c(Lcom/visionobjects/textwidget/c/i;F)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2052
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    if-ne p1, v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/visionobjects/textwidget/f/a/b;->e(Lcom/visionobjects/textwidget/f/c;)V

    .line 2055
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v3

    .line 2056
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v4

    .line 2058
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    add-float v0, v4, p2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v1

    .line 2059
    :goto_0
    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v5

    if-nez v5, :cond_2

    add-float v5, v4, p2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_2

    .line 2061
    :goto_1
    if-eqz v0, :cond_3

    .line 2062
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->e()F

    move-result v0

    sub-float v0, v4, v0

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->h(F)V

    .line 2069
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 2058
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2059
    goto :goto_1

    .line 2063
    :cond_3
    if-eqz v1, :cond_4

    .line 2064
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->e()F

    move-result v0

    add-float/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->h(F)V

    goto :goto_2

    .line 2066
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/c/i;F)V

    goto :goto_2
.end method

.method public centerTo(I)V
    .locals 3

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    const-string v0, "TextWidget"

    const-string v1, "Widget is in isolated mode (scrolling is disabled), canceling scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v0

    .line 1134
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 1135
    new-instance v0, Lcom/visionobjects/textwidget/n;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/n;-><init>(Lcom/visionobjects/textwidget/TextWidget;I)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    goto :goto_0

    .line 1142
    :cond_2
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, p1}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v1

    .line 1143
    const/high16 v2, 0x40000000

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 1145
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->h(F)V

    goto :goto_0
.end method

.method public configure(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1264
    const-string v0, "iw_IL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1265
    const-string v2, "he_IL"

    .line 1268
    :goto_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1270
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/visionobjects/textwidget/d/b;->a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    .line 1273
    const-string v0, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fa_IR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "he_IL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ur_PK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v8

    .line 1279
    :goto_1
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/e/a;->a(Z)V

    .line 1280
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->c(Z)V

    .line 1283
    const-string v0, "zh_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zh_TR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ja_JP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    :goto_2
    iput-boolean v8, p0, Lcom/visionobjects/textwidget/TextWidget;->h:Z

    .line 1291
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->i()V

    .line 1292
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->i()V

    .line 1295
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->j()V

    .line 1296
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/b;->j()V

    .line 1298
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 1301
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1302
    const/4 v0, 0x0

    invoke-direct {p0, v0, v7}, Lcom/visionobjects/textwidget/TextWidget;->a(FZ)V

    .line 1305
    :cond_2
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1306
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 1312
    :goto_3
    return-void

    :cond_3
    move v0, v7

    .line 1273
    goto :goto_1

    :cond_4
    move v8, v7

    .line 1283
    goto :goto_2

    .line 1307
    :cond_5
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1308
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->v()V

    goto :goto_3

    .line 1310
    :cond_6
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->r()V

    goto :goto_3

    :cond_7
    move-object v2, p1

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->M:Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->M:Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;->onConfigureBegin()V

    .line 1324
    :cond_0
    return-void
.end method

.method public final d(F)V
    .locals 1

    .prologue
    .line 1461
    new-instance v0, Lcom/visionobjects/textwidget/t;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/t;-><init>(Lcom/visionobjects/textwidget/TextWidget;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1475
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1502
    new-instance v0, Lcom/visionobjects/textwidget/c;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/c;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1516
    return-void
.end method

.method public final e(F)V
    .locals 1

    .prologue
    .line 1483
    new-instance v0, Lcom/visionobjects/textwidget/b;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/b;-><init>(Lcom/visionobjects/textwidget/TextWidget;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1494
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 1524
    new-instance v0, Lcom/visionobjects/textwidget/d;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/d;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1536
    return-void
.end method

.method public final f(F)V
    .locals 1

    .prologue
    .line 1544
    new-instance v0, Lcom/visionobjects/textwidget/e;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/e;-><init>(Lcom/visionobjects/textwidget/TextWidget;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1559
    return-void
.end method

.method public final g(F)V
    .locals 1

    .prologue
    .line 1567
    new-instance v0, Lcom/visionobjects/textwidget/f;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/f;-><init>(Lcom/visionobjects/textwidget/TextWidget;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1582
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->w()Z

    move-result v0

    return v0
.end method

.method public getCursorIndex()I
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/c;->a()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->c()I

    move-result v0

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertIndex()I
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v0

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 2100
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->x()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/a/b;->k()V

    .line 2406
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->O:Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->O:Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;->onPinchGesture()V

    .line 2409
    :cond_0
    return-void
.end method

.method public isCursorHandleDragging()Z
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/i;->d()Z

    move-result v0

    return v0
.end method

.method public isInsertHandleDragging()Z
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/i;->d()Z

    move-result v0

    return v0
.end method

.method public isInsertionMode()Z
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsolatedMode()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->b()Z

    move-result v0

    return v0
.end method

.method public isUserScrolling()Z
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->q()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/a/b;->k()V

    .line 2419
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2431
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->f(F)V

    .line 2433
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v0, v2}, Lcom/visionobjects/textwidget/c/f;->a(Z)V

    .line 2434
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, v2}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    .line 2436
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;->onUserScrollBegin()V

    .line 2439
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/f;->a(Z)V

    .line 2450
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/c;->a()I

    move-result v0

    .line 2452
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/f/a/b;->f(I)V

    .line 2455
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->f()F

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2456
    const/4 v0, 0x0

    .line 2461
    :goto_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

    if-eqz v1, :cond_0

    .line 2462
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;->onUserScrollEnd(Z)V

    .line 2465
    :cond_0
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2466
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->u()V

    .line 2470
    :goto_1
    return-void

    .line 2458
    :cond_1
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->af:F

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->i(F)Z

    move-result v0

    goto :goto_0

    .line 2468
    :cond_2
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->r()V

    goto :goto_1
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;->onUserScroll()V

    .line 2482
    :cond_0
    return-void
.end method

.method public moveCursorToVisibleIndex()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 876
    .line 878
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v2

    .line 880
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v1

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 884
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v3

    .line 885
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v4}, Lcom/visionobjects/textwidget/c/c;->b()F

    move-result v4

    .line 887
    iget v5, p0, Lcom/visionobjects/textwidget/TextWidget;->ad:F

    add-float/2addr v5, v3

    .line 888
    add-float/2addr v2, v3

    iget v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ae:F

    sub-float v3, v2, v3

    .line 890
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/c;->a()I

    move-result v2

    .line 893
    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->w()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 894
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v5}, Lcom/visionobjects/textwidget/f/a/b;->a(F)I

    move-result v1

    .line 905
    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    .line 906
    invoke-virtual {p0, v1}, Lcom/visionobjects/textwidget/TextWidget;->setCursorIndex(I)V

    .line 907
    const/4 v0, 0x1

    .line 911
    :cond_1
    return v0

    .line 895
    :cond_2
    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->x()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 896
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v3}, Lcom/visionobjects/textwidget/f/a/b;->a(F)I

    move-result v1

    goto :goto_0

    .line 897
    :cond_3
    if-gez v2, :cond_4

    move v1, v0

    .line 898
    goto :goto_0

    .line 899
    :cond_4
    if-gt v2, v1, :cond_0

    move v1, v2

    .line 902
    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 2486
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 2491
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/visionobjects/textwidget/TextWidget;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2500
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2506
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/d/b;->a(Landroid/graphics/RectF;)V

    .line 2508
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, p2}, Lcom/visionobjects/textwidget/c/i;->a(I)V

    .line 2509
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, p2}, Lcom/visionobjects/textwidget/c/i;->a(I)V

    .line 2510
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/i;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(I)V

    .line 2512
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->t()V

    .line 2514
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2518
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    .line 2521
    :cond_0
    return-void
.end method

.method public releaseEngine()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/d/b;->g()V

    .line 1351
    return-void
.end method

.method public replaceCharacters(IILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 711
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v2

    add-int/2addr v1, v2

    .line 715
    if-gez p1, :cond_3

    move v4, v3

    .line 720
    :goto_0
    if-eq v4, p1, :cond_0

    .line 721
    const-string v2, "TextWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "replaceCharacters start index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range 0-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clamped to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    if-gez p2, :cond_4

    move v2, v3

    .line 731
    :goto_1
    if-eq v2, p2, :cond_1

    .line 732
    const-string v5, "TextWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "replaceCharacters end index "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of range 0-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", clamped to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1
    if-le v4, v2, :cond_5

    .line 736
    const-string v0, "TextWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to replace characters in invalid range "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_2
    :goto_2
    return-void

    .line 717
    :cond_3
    if-le p1, v1, :cond_d

    move v4, v1

    .line 718
    goto :goto_0

    .line 728
    :cond_4
    if-le p2, v1, :cond_c

    move v2, v1

    .line 729
    goto :goto_1

    .line 740
    :cond_5
    if-eqz p3, :cond_6

    .line 741
    const/16 v1, 0xa

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->i()C

    move-result v5

    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 745
    :cond_6
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->A()V

    .line 747
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/d/b;->e()Ljava/lang/String;

    move-result-object v5

    .line 749
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v6

    .line 750
    if-gt v2, v6, :cond_7

    .line 752
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-static {v0, v4, v2, p3, v5}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/e/b;IILjava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_3
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->z()V

    .line 775
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 776
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 778
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 781
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->v()V

    goto :goto_2

    .line 753
    :cond_7
    if-lt v4, v6, :cond_8

    .line 755
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    sub-int v1, v4, v6

    sub-int/2addr v2, v6

    invoke-static {v0, v1, v2, p3, v5}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/e/b;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 760
    :cond_8
    if-eqz p3, :cond_b

    .line 761
    sub-int v7, v6, v4

    .line 762
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v7, :cond_9

    .line 763
    invoke-virtual {p3, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-virtual {p3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p3, v1

    .line 769
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-static {v1, v4, v6, p3, v5}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/e/b;IILjava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    sub-int/2addr v2, v6

    invoke-static {v1, v3, v2, v0, v5}, Lcom/visionobjects/textwidget/TextWidget;->a(Lcom/visionobjects/textwidget/e/b;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 783
    :cond_a
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->r()V

    goto :goto_2

    :cond_b
    move-object p3, v0

    goto :goto_4

    :cond_c
    move v2, p2

    goto/16 :goto_1

    :cond_d
    move v4, p1

    goto/16 :goto_0
.end method

.method public scrollTo(I)V
    .locals 3

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    const-string v0, "TextWidget"

    const-string v1, "Widget is in isolated mode (scrolling is disabled), canceling scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v0

    .line 1091
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 1092
    new-instance v0, Lcom/visionobjects/textwidget/l;

    invoke-direct {v0, p0, p1}, Lcom/visionobjects/textwidget/l;-><init>(Lcom/visionobjects/textwidget/TextWidget;I)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    goto :goto_0

    .line 1099
    :cond_2
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, p1}, Lcom/visionobjects/textwidget/f/a/b;->e(I)F

    move-result v1

    .line 1102
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1103
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->d()F

    move-result v2

    sub-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 1108
    :goto_1
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->h(F)V

    goto :goto_0

    .line 1105
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->d()F

    move-result v0

    sub-float v0, v1, v0

    goto :goto_1
.end method

.method public scrollToCursor()V
    .locals 6

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    const-string v0, "TextWidget"

    const-string v1, "Widget is in isolated mode (cursor is hidden), canceling scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1027
    const-string v0, "TextWidget"

    const-string v1, "Widget is in insertion mode (cursor is hidden), canceling scroll operation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1031
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->e()F

    move-result v0

    .line 1040
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    .line 1041
    new-instance v0, Lcom/visionobjects/textwidget/a;

    invoke-direct {v0, p0}, Lcom/visionobjects/textwidget/a;-><init>(Lcom/visionobjects/textwidget/TextWidget;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->aj:Ljava/lang/Runnable;

    goto :goto_0

    .line 1048
    :cond_3
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v1

    .line 1049
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/c;->b()F

    move-result v2

    .line 1051
    iget v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ad:F

    add-float/2addr v3, v1

    .line 1052
    add-float v4, v1, v0

    iget v5, p0, Lcom/visionobjects/textwidget/TextWidget;->ae:F

    sub-float/2addr v4, v5

    .line 1055
    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->w()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1056
    iget v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ad:F

    sub-float v0, v2, v0

    .line 1063
    :goto_1
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->h(F)V

    goto :goto_0

    .line 1057
    :cond_4
    cmpl-float v3, v2, v4

    if-lez v3, :cond_5

    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->x()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1058
    iget v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ae:F

    sub-float/2addr v0, v3

    sub-float v0, v2, v0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1060
    goto :goto_1
.end method

.method public setAutoHideHandleDelay(I)V
    .locals 4

    .prologue
    const/16 v1, 0x2710

    const/16 v0, 0x64

    .line 2866
    if-ge p1, v0, :cond_1

    .line 2873
    :goto_0
    if-eq v0, p1, :cond_0

    .line 2874
    const-string v1, "TextWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Auto-hide handle delay "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds (100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-10000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), clamped to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/i;->c(I)V

    .line 2877
    return-void

    .line 2868
    :cond_1
    if-le p1, v1, :cond_2

    move v0, v1

    .line 2869
    goto :goto_0

    :cond_2
    move v0, p1

    .line 2871
    goto :goto_0
.end method

.method public setAutoHideHandleEnabled(Z)V
    .locals 1

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/c/i;->b(Z)V

    .line 2859
    return-void
.end method

.method public setAutoScrollDelay(I)V
    .locals 2

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/visionobjects/textwidget/TextWidget;->setAutoScrollDelays(II)V

    .line 2891
    return-void
.end method

.method public setAutoScrollDelays(II)V
    .locals 3

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/visionobjects/textwidget/TextWidget;->b(I)I

    move-result v2

    aput v2, v0, v1

    .line 2898
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->x:[I

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/visionobjects/textwidget/TextWidget;->b(I)I

    move-result v2

    aput v2, v0, v1

    .line 2899
    return-void
.end method

.method public setAutoScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/g/b;->a(Z)V

    .line 2884
    return-void
.end method

.method public setAutoScrollMargin(F)V
    .locals 6

    .prologue
    .line 2921
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2922
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 2923
    const/high16 v2, 0x43c80000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 2925
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    move v0, v1

    .line 2932
    :goto_0
    cmpl-float v3, v0, p1

    if-eqz v3, :cond_0

    .line 2933
    const-string v3, "TextWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Auto-scroll margin "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of bounds ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->e(F)V

    .line 2936
    return-void

    .line 2927
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    move v0, v2

    .line 2928
    goto :goto_0

    :cond_2
    move v0, p1

    .line 2930
    goto :goto_0
.end method

.method public setAutoTypesetDelay(I)V
    .locals 2

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/visionobjects/textwidget/TextWidget;->setAutoTypesetDelays(II)V

    .line 2950
    return-void
.end method

.method public setAutoTypesetDelays(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2956
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    invoke-static {p1}, Lcom/visionobjects/textwidget/TextWidget;->c(I)I

    move-result v1

    aput v1, v0, v2

    .line 2957
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    invoke-static {p2}, Lcom/visionobjects/textwidget/TextWidget;->c(I)I

    move-result v1

    aput v1, v0, v3

    .line 2959
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->y:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2961
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/d/b;->a(I)V

    .line 2962
    return-void
.end method

.method public setAutoTypesetEnabled(Z)V
    .locals 1

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->al:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/g/b;->a(Z)V

    .line 2943
    return-void
.end method

.method public setBaselineColor(I)V
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/c/m;->a(I)V

    .line 2845
    return-void
.end method

.method public setBaselinePosition(F)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2808
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 2813
    :goto_0
    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    .line 2814
    const-string v1, "TextWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Baseline position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds, clamped to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/e/a;->a(F)V

    .line 2817
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->a(F)V

    .line 2818
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 2819
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->t()V

    .line 2820
    return-void

    :cond_1
    move v0, p1

    .line 2811
    goto :goto_0
.end method

.method public setBaselineThickness(F)V
    .locals 4

    .prologue
    const/high16 v1, 0x40a00000

    const/high16 v0, 0x3f800000

    .line 2827
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    .line 2834
    :goto_0
    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    .line 2835
    const-string v1, "TextWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Baseline thickness "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds (1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-5.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), clamped to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/m;->b(F)V

    .line 2838
    return-void

    .line 2829
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    move v0, v1

    .line 2830
    goto :goto_0

    :cond_2
    move v0, p1

    .line 2832
    goto :goto_0
.end method

.method public setCorrectionMode()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    const-string v0, "TextWidget"

    const-string v1, "Widget is in isolated mode, correction mode cannot be entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget v2, p0, Lcom/visionobjects/textwidget/TextWidget;->a:I

    if-eq v2, v0, :cond_0

    .line 414
    iput v0, p0, Lcom/visionobjects/textwidget/TextWidget;->a:I

    .line 417
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 419
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->am:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/g/b;->e()V

    .line 422
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->B()V

    .line 425
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->j()V

    .line 426
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->j()V

    .line 428
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/c/m;->b()F

    move-result v2

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/c/m;->c()F

    move-result v4

    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/b;->g()F

    move-result v3

    sub-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/visionobjects/textwidget/TextWidget;->aa:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->g()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    new-instance v0, Lcom/visionobjects/textwidget/a/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/visionobjects/textwidget/a/a;-><init>(Lcom/visionobjects/textwidget/a/a$a;FFFF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/visionobjects/textwidget/TextWidget;->b:I

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->q()V

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->a(Z)V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->p()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(Z)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->a(Z)V

    goto/16 :goto_0
.end method

.method public setCursorHandleResource(I)V
    .locals 2

    .prologue
    .line 2663
    if-nez p1, :cond_0

    .line 2664
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2668
    :goto_0
    return-void

    .line 2666
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCursorIndex(I)V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/c/c;->a(I)V

    .line 853
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->r()V

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->F:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/i;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/a/b;->f(I)V

    .line 859
    :cond_1
    return-void
.end method

.method public setCursorMargins(FF)V
    .locals 6

    .prologue
    const/high16 v3, 0x41f00000

    const/4 v0, 0x0

    .line 2616
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2617
    invoke-static {v3, v1}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 2618
    invoke-static {v3, v1}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 2621
    cmpg-float v3, p1, v0

    if-gez v3, :cond_3

    move v2, v0

    .line 2628
    :cond_0
    :goto_0
    cmpl-float v3, v2, p1

    if-eqz v3, :cond_1

    .line 2629
    const-string v3, "TextWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cursor top margin "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of bounds, clamped to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_1
    cmpg-float v3, p2, v0

    if-gez v3, :cond_4

    .line 2640
    :goto_1
    cmpl-float v1, v0, p2

    if-eqz v1, :cond_2

    .line 2641
    const-string v1, "TextWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cursor bottom margin "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of bounds, clamped to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_2
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {v1, v2, v0}, Lcom/visionobjects/textwidget/c/f;->a(FF)V

    .line 2645
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->t()V

    .line 2646
    return-void

    .line 2623
    :cond_3
    cmpl-float v3, p1, v2

    if-gtz v3, :cond_0

    move v2, p1

    .line 2626
    goto :goto_0

    .line 2635
    :cond_4
    cmpl-float v0, p2, v1

    if-lez v0, :cond_5

    move v0, v1

    .line 2636
    goto :goto_1

    :cond_5
    move v0, p2

    .line 2638
    goto :goto_1
.end method

.method public setCursorResource(I)V
    .locals 2

    .prologue
    .line 2652
    if-nez p1, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2657
    :goto_0
    return-void

    .line 2655
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->D:Lcom/visionobjects/textwidget/c/f;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/f;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setHoverEnabled(Z)V
    .locals 0

    .prologue
    .line 2851
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/TextWidget;->j:Z

    .line 2852
    return-void
.end method

.method public setInkCapResources(II)V
    .locals 4

    .prologue
    .line 2774
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2775
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2777
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 2778
    const-string v0, "TextWidget"

    const-string v1, "Ink start cap resource must be a bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :goto_0
    return-void

    .line 2781
    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 2782
    const-string v0, "TextWidget"

    const-string v1, "Ink end cap resource must be a bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2786
    :cond_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/a/b;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2787
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v3}, Lcom/visionobjects/a/b;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2789
    if-eqz v2, :cond_2

    .line 2790
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2792
    :cond_2
    if-eqz v3, :cond_3

    .line 2793
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2796
    :cond_3
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v1

    .line 2797
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2799
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v1, v2, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 2800
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v1, v2, v0}, Lcom/visionobjects/a/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setInkColor(I)V
    .locals 1

    .prologue
    .line 2735
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->setInkColor(Landroid/content/res/ColorStateList;)V

    .line 2736
    return-void
.end method

.method public setInkColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    .line 2742
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 2743
    sget-object v1, Lcom/visionobjects/textwidget/TextWidget;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 2744
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v2, v0, v1}, Lcom/visionobjects/textwidget/f/b/a;->a(II)V

    .line 2745
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v0, v1}, Lcom/visionobjects/a/b;->a(I)V

    .line 2746
    return-void
.end method

.method public setInkEffect(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2718
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2723
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 2724
    const-string v0, "TextWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ink effect type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :goto_1
    return-void

    .line 2718
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2726
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/f/b/a;->a(I)V

    .line 2727
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/b/a;->a()Lcom/visionobjects/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/a/b;->a(Lcom/visionobjects/a/a/e;)V

    goto :goto_1
.end method

.method public setInkWidth(F)V
    .locals 6

    .prologue
    .line 2752
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2753
    const/high16 v1, 0x3f800000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 2754
    const/high16 v2, 0x41200000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 2756
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    move v0, v1

    .line 2763
    :goto_0
    cmpl-float v3, v0, p1

    if-eqz v3, :cond_0

    .line 2764
    const-string v3, "TextWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ink width "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of bounds ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(F)V

    .line 2767
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->B:Lcom/visionobjects/a/b;

    invoke-virtual {v1, v0}, Lcom/visionobjects/a/b;->a(F)V

    .line 2768
    return-void

    .line 2758
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    move v0, v2

    .line 2759
    goto :goto_0

    :cond_2
    move v0, p1

    .line 2761
    goto :goto_0
.end method

.method public setInsertHandleResource(I)V
    .locals 2

    .prologue
    .line 2674
    if-nez p1, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2679
    :goto_0
    return-void

    .line 2677
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->E:Lcom/visionobjects/textwidget/c/i;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/i;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setInsertWindowColor(I)V
    .locals 1

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/c/m;->c(I)V

    .line 3002
    return-void
.end method

.method public setInsertionMode(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 342
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string v0, "TextWidget"

    const-string v1, "Widget is in isolated mode, insertion mode cannot be entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    .line 350
    :cond_2
    const-string v0, "TextWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to set insertion mode at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_3
    iget v1, p0, Lcom/visionobjects/textwidget/TextWidget;->a:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->getInsertIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 357
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/visionobjects/textwidget/TextWidget;->a:I

    .line 360
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->B()V

    .line 362
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/e/b;->a(Lcom/visionobjects/textwidget/f/a/b;)V

    .line 364
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->r:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1, p1, v2}, Lcom/visionobjects/textwidget/e/b;->a(ILcom/visionobjects/textwidget/e/b;)F

    move-result v1

    .line 367
    iget-boolean v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ao:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v2

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/visionobjects/textwidget/TextWidget;->ao:Z

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->g()I

    move-result v2

    iput v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ap:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ar:Lcom/visionobjects/textwidget/TextWidget$a;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->ar:Lcom/visionobjects/textwidget/TextWidget$a;

    .line 369
    :cond_5
    invoke-direct {p0, v1, v3}, Lcom/visionobjects/textwidget/TextWidget;->a(FZ)V

    .line 372
    if-ge p1, v0, :cond_7

    .line 373
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/m;->h()F

    move-result v0

    .line 374
    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/m;->d()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 377
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->a()V

    .line 389
    :goto_1
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->z()V

    .line 391
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 392
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 394
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->s()V

    goto/16 :goto_0

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    goto :goto_1

    .line 385
    :cond_7
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->z:Lcom/visionobjects/textwidget/c/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/c/a;->a()F

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->ak:Lcom/visionobjects/textwidget/g/b;

    invoke-direct {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->j(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/g/b;->b(I)V

    goto :goto_1
.end method

.method public setOnConfigureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->M:Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;

    .line 1250
    return-void
.end method

.method public setOnCursorHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;)V
    .locals 0

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->I:Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;

    .line 1855
    return-void
.end method

.method public setOnGestureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->O:Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;

    .line 1412
    return-void
.end method

.method public setOnInsertHandleClickedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;)V
    .locals 0

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->K:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;

    .line 1867
    return-void
.end method

.method public setOnInsertHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;)V
    .locals 0

    .prologue
    .line 1860
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->J:Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;

    .line 1861
    return-void
.end method

.method public setOnRecognitionListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->N:Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;

    .line 1375
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->L:Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;

    .line 968
    return-void
.end method

.method public setOnTextChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->H:Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;

    .line 637
    return-void
.end method

.method public setOnUserScrollListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/visionobjects/textwidget/TextWidget;->P:Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;

    .line 1233
    return-void
.end method

.method public setScrollbarFrame(I)V
    .locals 2

    .prologue
    .line 2707
    if-nez p1, :cond_0

    .line 2708
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->d(Landroid/graphics/drawable/Drawable;)V

    .line 2712
    :goto_0
    return-void

    .line 2710
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->d(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setScrollbarMask(I)V
    .locals 2

    .prologue
    .line 2696
    if-nez p1, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->c(Landroid/graphics/drawable/Drawable;)V

    .line 2701
    :goto_0
    return-void

    .line 2699
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setScrollbarResource(I)V
    .locals 2

    .prologue
    .line 2685
    if-nez p1, :cond_0

    .line 2686
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(Landroid/graphics/drawable/Drawable;)V

    .line 2690
    :goto_0
    return-void

    .line 2688
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 647
    if-eqz p1, :cond_5

    .line 648
    const/16 v0, 0xa

    invoke-static {}, Lcom/visionobjects/textwidget/e/a;->i()C

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 651
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/f/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->a()V

    .line 659
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->p:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/a/b;->a()V

    .line 664
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/d/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 665
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v2}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    .line 666
    iget-object v3, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v3}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v3

    .line 669
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->A()V

    .line 671
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 672
    :cond_0
    const/4 v0, 0x0

    .line 673
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/visionobjects/textwidget/d/a/a;->a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v1

    .line 680
    :goto_1
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->v:Lcom/visionobjects/textwidget/d/a/e;

    invoke-virtual {v2, v1}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/InkField;)V

    .line 681
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->j()V

    .line 682
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/b;->h()V

    .line 684
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->z()V

    .line 686
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/c/c;->a()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 687
    iget-object v1, p0, Lcom/visionobjects/textwidget/TextWidget;->G:Lcom/visionobjects/textwidget/c/c;

    invoke-virtual {v1, v0}, Lcom/visionobjects/textwidget/c/c;->a(I)V

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->A:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/h/a;->b()V

    .line 692
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 694
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isIsolatedMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/TextWidget;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 697
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->v()V

    .line 701
    :cond_2
    :goto_2
    return-void

    .line 675
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 676
    iget-object v4, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->q:Lcom/visionobjects/textwidget/e/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/e/b;->e()F

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;Ljava/lang/String;F)[Landroid/graphics/RectF;

    move-result-object v4

    .line 677
    iget-object v5, p0, Lcom/visionobjects/textwidget/TextWidget;->t:Lcom/visionobjects/textwidget/d/b;

    invoke-virtual {v5}, Lcom/visionobjects/textwidget/d/b;->a()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/textwidget/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    goto :goto_1

    .line 699
    :cond_4
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->r()V

    goto :goto_2

    :cond_5
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v0, p1, p1}, Lcom/visionobjects/textwidget/f/b/a;->b(II)V

    .line 2583
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .prologue
    .line 2589
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 2590
    sget-object v1, Lcom/visionobjects/textwidget/TextWidget;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 2591
    iget-object v2, p0, Lcom/visionobjects/textwidget/TextWidget;->n:Lcom/visionobjects/textwidget/f/b/a;

    invoke-virtual {v2, v0, v1}, Lcom/visionobjects/textwidget/f/b/a;->b(II)V

    .line 2592
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .prologue
    .line 2539
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/TextWidget;->setTextSizes([F)V

    .line 2540
    return-void
.end method

.method public setTextSizes([F)V
    .locals 7

    .prologue
    .line 2546
    if-nez p1, :cond_0

    .line 2547
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/textwidget/b/a;->a(Landroid/util/DisplayMetrics;)[F

    move-result-object p1

    .line 2550
    :cond_0
    array-length v0, p1

    new-array v1, v0, [F

    .line 2553
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2554
    const/high16 v2, 0x42200000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 2555
    const/high16 v3, 0x43960000

    invoke-static {v3, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 2556
    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 2557
    aget v4, p1, v0

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    .line 2558
    aput v2, v1, v0

    .line 2564
    :goto_1
    aget v4, v1, v0

    aget v5, p1, v0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 2565
    const-string v4, "TextWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Text size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of bounds ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), clamped to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2559
    :cond_2
    aget v4, p1, v0

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    .line 2560
    aput v3, v1, v0

    goto :goto_1

    .line 2562
    :cond_3
    aget v4, p1, v0

    aput v4, v1, v0

    goto :goto_1

    .line 2570
    :cond_4
    invoke-static {v1}, Ljava/util/Arrays;->sort([F)V

    .line 2573
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/e/a;->a([F)V

    .line 2574
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 2575
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->t()V

    .line 2576
    return-void
.end method

.method public setTransientSpaceEnabled(Z)V
    .locals 1

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/g/b;->a(Z)V

    .line 2985
    return-void
.end method

.method public setTransientSpaceVisibleWhenEmpty(Z)V
    .locals 1

    .prologue
    .line 2991
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/TextWidget;->g:Z

    .line 2993
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->o:Lcom/visionobjects/textwidget/f/a/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/f/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 2996
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->m:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/e/a;->a(Landroid/graphics/Typeface;)V

    .line 2531
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->an:Lcom/visionobjects/textwidget/g/b;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/g/b;->b()V

    .line 2532
    invoke-direct {p0}, Lcom/visionobjects/textwidget/TextWidget;->t()V

    .line 2533
    return-void
.end method

.method public setWritingAreaBackgroundColor(I)V
    .locals 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2599
    return-void
.end method

.method public setWritingAreaBackgroundResource(I)V
    .locals 2

    .prologue
    .line 2605
    if-nez p1, :cond_0

    .line 2606
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2610
    :goto_0
    return-void

    .line 2608
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/TextWidget;->C:Lcom/visionobjects/textwidget/c/m;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/c/m;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
