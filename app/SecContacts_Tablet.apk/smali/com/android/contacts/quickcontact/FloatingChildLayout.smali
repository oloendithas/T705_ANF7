.class public Lcom/android/contacts/quickcontact/FloatingChildLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingChildLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/FloatingChildLayout$ForegroundPhase;,
        Lcom/android/contacts/quickcontact/FloatingChildLayout$BackgroundPhase;
    }
.end annotation


# static fields
.field private static final DIM_BACKGROUND_ALPHA:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "FloatingChild"


# instance fields
.field private final mAnimationDuration:I

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundPhase:I

.field private mChild:Landroid/view/View;

.field private mFixedTopPosition:I

.field private mForegroundPhase:I

.field private mIsTutorialMode:Z

.field private mOutsideTouchListener:Landroid/view/View$OnTouchListener;

.field private mTargetScreen:Landroid/graphics/Rect;

.field private mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    .line 69
    iput v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    .line 71
    const-string v1, "backgroundColorAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 81
    iput v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 99
    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    .line 101
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x0
        0x7f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/FloatingChildLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/quickcontact/FloatingChildLayout;Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTutorialPopupView:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/FloatingChildLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/contacts/quickcontact/FloatingChildLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private animateScale(ZLjava/lang/Runnable;Z)V
    .locals 7
    .param p1, "isExitAnimation"    # Z
    .param p2, "onAnimationEndRunnable"    # Ljava/lang/Runnable;
    .param p3, "needDelay"    # Z

    .prologue
    const/high16 v3, 0x3f800000

    .line 279
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 280
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    .line 281
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 284
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    if-eqz p3, :cond_2

    .line 285
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 289
    :goto_0
    iget v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 290
    if-eqz p1, :cond_3

    const v1, 0x10c0004

    .line 292
    .local v1, "scaleInterpolator":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 293
    if-eqz p1, :cond_4

    const/high16 v2, 0x3f000000

    .line 294
    .local v2, "scaleTarget":F
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 295
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 296
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 298
    if-eqz p2, :cond_1

    .line 299
    new-instance v3, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 335
    :cond_1
    return-void

    .line 287
    .end local v1    # "scaleInterpolator":I
    .end local v2    # "scaleTarget":F
    :cond_2
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 290
    :cond_3
    const v1, 0x10c0005

    goto :goto_1

    .restart local v1    # "scaleInterpolator":I
    :cond_4
    move v2, v3

    .line 293
    goto :goto_2
.end method

.method private static clampDimension(III)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "size"    # I
    .param p2, "max"    # I

    .prologue
    .line 187
    if-le p1, p2, :cond_0

    .line 188
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, p2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private createChildLayer()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 263
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 264
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 265
    return-void
.end method

.method private getTargetInWindow()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .local v1, "windowScreen":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 148
    .local v0, "target":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 149
    return-object v0
.end method

.method private static layoutChild(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 197
    return-void
.end method


# virtual methods
.method public fadeInBackground()V
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    .line 208
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->createChildLayer()V

    .line 210
    new-instance v0, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V

    invoke-static {p0, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 217
    :cond_0
    return-void
.end method

.method public fadeOutBackground()V
    .locals 3

    .prologue
    .line 220
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    .line 222
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v0, "backgroundColorAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f
        0x0
    .end array-data
.end method

.method public getChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    return-object v0
.end method

.method public getFixedTopPosition()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    return v0
.end method

.method public hideChild(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 274
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;Z)V

    .line 275
    return-void
.end method

.method public hideContent(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "onAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 248
    iget v2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 250
    :cond_0
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    .line 252
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->createChildLayer()V

    .line 254
    invoke-direct {p0, v1, p1, v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;Z)V

    move v0, v1

    .line 257
    :cond_1
    return v0
.end method

.method public isContentFullyVisible()Z
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000

    .line 106
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 112
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 113
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    .line 156
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getTargetInWindow()Landroid/graphics/Rect;

    move-result-object v7

    .line 158
    .local v7, "target":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 159
    .local v4, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 161
    .local v1, "childHeight":I
    iget v8, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    if-lez v8, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v2, v8, 0x2

    .line 164
    .local v2, "childLeft":I
    iget v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 165
    .local v3, "childTop":I
    invoke-static {v0, v2, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    .line 183
    :goto_0
    return-void

    .line 166
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :cond_0
    iget v8, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    if-nez v8, :cond_1

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v2, v8, 0x2

    .line 169
    .restart local v2    # "childLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v1

    div-int/lit8 v3, v8, 0x2

    .line 170
    .restart local v3    # "childTop":I
    invoke-static {v0, v2, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    goto :goto_0

    .line 173
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, v4, 0x2

    sub-int v2, v8, v9

    .line 175
    .restart local v2    # "childLeft":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v9, v1

    const v10, 0x3eb33333

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 178
    .restart local v3    # "childTop":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v2, v4, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v5

    .line 179
    .local v5, "clampedChildLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v3, v1, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v6

    .line 181
    .local v6, "clampedChildTop":I
    invoke-static {v0, v5, v6}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 124
    const-string v0, "FloatingChild"

    const-string v1, "don\'t setBackground(), it is managed internally"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public setBackgroundColorAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation build Lcom/android/contacts/test/NeededForReflection;
    .end annotation

    .prologue
    .line 201
    shl-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    return-void
.end method

.method public setChildTargetScreen(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "targetScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 137
    return-void
.end method

.method public setFixedTopPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 408
    return-void
.end method

.method public setMaximized(Z)V
    .locals 4
    .param p1, "isMaximized"    # Z

    .prologue
    const v3, 0x7f0903e7

    const/4 v2, -0x1

    .line 416
    iget-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 417
    .local v0, "param":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 431
    :goto_0
    return-void

    .line 425
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 426
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 427
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 429
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    goto :goto_0
.end method

.method public setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    .line 395
    return-void
.end method

.method public setTutorialMode(Z)V
    .locals 0
    .param p1, "isTutorial"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mIsTutorialMode:Z

    .line 129
    return-void
.end method

.method public showChild(Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1, "onAnimationEndRunnable"    # Ljava/lang/Runnable;
    .param p2, "needDelay"    # Z

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;Z)V

    .line 270
    return-void
.end method

.method public showContent(Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1, "onAnimationEndRunnable"    # Ljava/lang/Runnable;
    .param p2, "needDelay"    # Z

    .prologue
    .line 237
    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public showTutorial()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 389
    :cond_0
    return-void
.end method
