.class public final Lcom/visionobjects/textwidget/h/i;
.super Landroid/widget/HorizontalScrollView;
.source "WritingAreaView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/textwidget/h/i$a;,
        Lcom/visionobjects/textwidget/h/i$b;,
        Lcom/visionobjects/textwidget/h/i$c;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/visionobjects/textwidget/h/a;

.field private f:Lcom/visionobjects/textwidget/h/d;

.field private g:Lcom/visionobjects/textwidget/h/d;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/visionobjects/a/b;

.field private j:Lcom/visionobjects/textwidget/h/c;

.field private k:Lcom/visionobjects/textwidget/h/b;

.field private l:Z

.field private m:Lcom/visionobjects/textwidget/h/i$c;

.field private n:Lcom/visionobjects/textwidget/h/i$b;

.field private o:Lcom/visionobjects/textwidget/h/i$a;

.field private p:Landroid/view/GestureDetector;

.field private q:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, -0x1

    const v9, 0x8000

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 85
    const/high16 v1, 0x43960000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/h/i;->a:F

    .line 86
    const/high16 v1, 0x43c80000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/h/i;->b:F

    .line 88
    const/high16 v1, 0x42d20000

    invoke-static {v1, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 89
    const/high16 v2, 0x41200000

    invoke-static {v2, v0}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 93
    new-instance v2, Lcom/visionobjects/textwidget/h/a;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    .line 96
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 98
    new-instance v2, Lcom/visionobjects/textwidget/h/d;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    .line 99
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 101
    new-instance v2, Lcom/visionobjects/textwidget/h/d;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    .line 102
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 104
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    .line 105
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/view/View;->setMinimumWidth(I)V

    .line 108
    new-instance v2, Lcom/visionobjects/a/b;

    invoke-direct {v2, p1}, Lcom/visionobjects/a/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    .line 109
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 111
    new-instance v2, Lcom/visionobjects/textwidget/h/c;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    .line 112
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 114
    new-instance v2, Lcom/visionobjects/textwidget/h/b;

    invoke-direct {v2, p1}, Lcom/visionobjects/textwidget/h/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    .line 115
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 119
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x50

    invoke-direct {v7, v9, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 127
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    .line 132
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    invoke-virtual {v1, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v1, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 145
    invoke-virtual {p0, v13}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 146
    invoke-virtual {p0, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 147
    invoke-virtual {p0, v12}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 148
    invoke-virtual {p0, v12}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 156
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/i;->p:Landroid/view/GestureDetector;

    .line 160
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/i;->q:Landroid/view/ScaleGestureDetector;

    .line 161
    return-void
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 229
    const v0, 0x8000

    return v0
.end method


# virtual methods
.method public final a()Lcom/visionobjects/textwidget/h/a;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->e:Lcom/visionobjects/textwidget/h/a;

    return-object v0
.end method

.method public final a(Lcom/visionobjects/textwidget/h/i$a;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    .line 217
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/h/i$b;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    .line 212
    return-void
.end method

.method public final a(Lcom/visionobjects/textwidget/h/i$c;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    .line 207
    return-void
.end method

.method public final b()Lcom/visionobjects/textwidget/h/d;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->f:Lcom/visionobjects/textwidget/h/d;

    return-object v0
.end method

.method public final c()Lcom/visionobjects/textwidget/h/d;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->g:Lcom/visionobjects/textwidget/h/d;

    return-object v0
.end method

.method public final d()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->t()V

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->u()V

    .line 323
    :cond_3
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    if-eqz v0, :cond_4

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/visionobjects/a/b;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->i:Lcom/visionobjects/a/b;

    return-object v0
.end method

.method public final f()Lcom/visionobjects/textwidget/h/b;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->k:Lcom/visionobjects/textwidget/h/b;

    return-object v0
.end method

.method public final g()Lcom/visionobjects/textwidget/h/c;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    return-object v0
.end method

.method public final h()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0, p3}, Lcom/visionobjects/textwidget/h/i$b;->k(F)V

    .line 351
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->q:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/h/i$b;->d(Z)Z

    move-result v0

    .line 279
    :cond_1
    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 379
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 381
    iget v1, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    packed-switch v1, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 384
    :pswitch_0
    iget v1, p0, Lcom/visionobjects/textwidget/h/i;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 385
    iput v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    .line 386
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$a;->i()V

    goto :goto_0

    .line 393
    :pswitch_1
    iget v1, p0, Lcom/visionobjects/textwidget/h/i;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 394
    iput v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    .line 395
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->o:Lcom/visionobjects/textwidget/h/i$a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$a;->j()V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    .line 413
    iget v3, p0, Lcom/visionobjects/textwidget/h/i;->b:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 414
    iput v0, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    .line 422
    :goto_0
    iget v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 415
    :cond_0
    iget v3, p0, Lcom/visionobjects/textwidget/h/i;->a:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 416
    const/4 v2, 0x2

    iput v2, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    goto :goto_0

    .line 418
    :cond_1
    iput v1, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 422
    goto :goto_1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/textwidget/h/i;->c:I

    .line 429
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0, p3}, Lcom/visionobjects/textwidget/h/i$b;->j(F)V

    .line 342
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 252
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->b(I)V

    .line 254
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/h/i$c;->d(I)V

    .line 257
    :cond_0
    return-void
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 240
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->j:Lcom/visionobjects/textwidget/h/c;

    invoke-virtual {v0, p1}, Lcom/visionobjects/textwidget/h/c;->a(I)V

    .line 242
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->m:Lcom/visionobjects/textwidget/h/i$c;

    invoke-interface {v0, p1, p2}, Lcom/visionobjects/textwidget/h/i$c;->a(II)V

    .line 245
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->r()V

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/h/i$b;->s()V

    .line 298
    :cond_2
    return v2
.end method

.method public final scrollBy(II)V
    .locals 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/visionobjects/textwidget/h/i;->l:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/i;->n:Lcom/visionobjects/textwidget/h/i$b;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/h/i$b;->j(F)V

    .line 442
    :cond_0
    return-void
.end method
