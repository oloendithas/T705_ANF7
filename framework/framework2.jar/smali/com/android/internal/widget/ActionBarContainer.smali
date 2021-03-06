.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Lcom/android/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsActionBarNonExtended:Z

.field private mIsAppliedScrollingTabExtended:Z

.field private mIsExtendActionBar:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTabOnTop:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsActionBarNonExtended:Z

    .line 64
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x10203bb

    if-ne v4, v5, :cond_35

    .line 73
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 74
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsExtendActionBar:Z

    .line 81
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 82
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010466

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    iget v4, v1, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5a

    .line 84
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsActionBarNonExtended:Z

    .line 86
    :cond_5a
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_69

    :cond_62
    :goto_62
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setScrollingTabExtended(Z)V

    .line 89
    return-void

    :cond_69
    move v2, v3

    .line 86
    goto :goto_62

    :cond_6b
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_73

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_62

    :cond_73
    move v2, v3

    goto :goto_62
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 190
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 196
    :cond_42
    return-void
.end method

.method public getScrollingTabExtended()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsAppliedScrollingTabExtended:Z

    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 207
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 210
    :cond_1e
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    .line 298
    :cond_c
    :goto_c
    return-void

    .line 288
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1b

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c

    .line 291
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    :cond_24
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_c

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 94
    const v0, 0x10203b9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 95
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onLayout(ZIIII)V
    .registers 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 329
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 331
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_4a

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4a

    const/4 v4, 0x1

    .line 333
    .local v4, "hasTabs":Z
    :goto_12
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_60

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_60

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 335
    .local v2, "containerHeight":I
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 338
    .local v7, "tabHeight":I
    iget-boolean v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    if-eqz v8, :cond_7f

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_7f

    .line 340
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 341
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3d
    if-ge v5, v3, :cond_58

    .line 342
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 344
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v1, v8, :cond_4c

    .line 341
    :cond_47
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 331
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "containerHeight":I
    .end local v3    # "count":I
    .end local v4    # "hasTabs":Z
    .end local v5    # "i":I
    .end local v7    # "tabHeight":I
    :cond_4a
    const/4 v4, 0x0

    goto :goto_12

    .line 346
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "containerHeight":I
    .restart local v3    # "count":I
    .restart local v4    # "hasTabs":Z
    .restart local v5    # "i":I
    .restart local v7    # "tabHeight":I
    :cond_4c
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_47

    .line 347
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_47

    .line 350
    .end local v1    # "child":Landroid/view/View;
    :cond_58
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 356
    .end local v2    # "containerHeight":I
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v7    # "tabHeight":I
    :cond_60
    :goto_60
    const/4 v6, 0x0

    .line 357
    .local v6, "needsInvalidate":Z
    iget-boolean v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v8, :cond_89

    .line 358
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_79

    .line 359
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    const/4 v6, 0x1

    .line 375
    :cond_79
    :goto_79
    if-eqz v6, :cond_7e

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 378
    :cond_7e
    return-void

    .line 352
    .end local v6    # "needsInvalidate":Z
    .restart local v2    # "containerHeight":I
    .restart local v7    # "tabHeight":I
    :cond_7f
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v9, v2, v7

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_60

    .line 363
    .end local v2    # "containerHeight":I
    .end local v7    # "tabHeight":I
    .restart local v6    # "needsInvalidate":Z
    :cond_89
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_ab

    .line 364
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    const/4 v6, 0x1

    .line 368
    :cond_ab
    if-eqz v4, :cond_d5

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_d5

    const/4 v8, 0x1

    :goto_b2
    iput-boolean v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v8, :cond_79

    .line 369
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    const/4 v6, 0x1

    goto :goto_79

    .line 368
    :cond_d5
    const/4 v8, 0x0

    goto :goto_b2
.end method

.method public onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 308
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 310
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v4, :cond_8

    .line 325
    :cond_7
    :goto_7
    return-void

    .line 312
    :cond_8
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 313
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v0, 0x0

    .line 316
    .local v0, "actionBarViewHeight":I
    :goto_19
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 317
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 318
    .local v3, "mode":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_7

    .line 319
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 320
    .local v2, "maxHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_7

    .line 313
    .end local v0    # "actionBarViewHeight":I
    .end local v2    # "maxHeight":I
    .end local v3    # "mode":I
    :cond_46
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    goto :goto_19
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/view/View;->onResolveDrawables(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 224
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 227
    :cond_1e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 99
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_11
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 103
    if-eqz p1, :cond_39

    .line 104
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_39

    .line 106
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    :cond_39
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_48

    :cond_41
    :goto_41
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 113
    return-void

    :cond_48
    move v0, v1

    .line 110
    goto :goto_41

    :cond_4a
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_41

    :cond_52
    move v0, v1

    goto :goto_41
.end method

.method public setScrollingTabExtended(Z)V
    .registers 2
    .param p1, "extended"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsAppliedScrollingTabExtended:Z

    .line 402
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 135
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 136
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_11
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 139
    if-eqz p1, :cond_2d

    .line 140
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 141
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2d

    .line 142
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    :cond_2d
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3c

    :cond_35
    :goto_35
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 148
    return-void

    :cond_3c
    move v0, v1

    .line 145
    goto :goto_35

    :cond_3e
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_35

    :cond_46
    move v0, v1

    goto :goto_35
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 117
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 118
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_11
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 121
    if-eqz p1, :cond_3d

    .line 122
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 123
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3d

    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    :cond_3d
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4c

    :cond_45
    :goto_45
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 131
    return-void

    :cond_4c
    move v0, v1

    .line 128
    goto :goto_45

    :cond_4e
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_56

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_45

    :cond_56
    move v0, v1

    goto :goto_45
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 4
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 266
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 269
    if-eqz p1, :cond_1e

    .line 270
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 272
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 276
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    return-void
.end method

.method public setTransitioning(Z)V
    .registers 3
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 239
    if-eqz p1, :cond_a

    const/high16 v0, 0x60000

    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 241
    return-void

    .line 239
    :cond_a
    const/high16 v0, 0x40000

    goto :goto_6
.end method

.method public setVisibility(I)V
    .registers 8
    .param p1, "visibility"    # I

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsExtendActionBar:Z

    if-eqz v3, :cond_4b

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsActionBarNonExtended:Z

    if-nez v3, :cond_4b

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_4b

    .line 154
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 155
    .local v0, "actionBarSystemUiVisibility":I
    const/high16 v3, 0x40000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_4b

    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_4b

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2f

    .line 159
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 161
    :cond_2f
    if-eqz v2, :cond_4b

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_4b

    .line 162
    if-nez p1, :cond_6d

    .line 163
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 167
    :goto_40
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    .end local v0    # "actionBarSystemUiVisibility":I
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4b
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    if-nez p1, :cond_76

    const/4 v1, 0x1

    .line 173
    .local v1, "isVisible":Z
    :goto_51
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 174
    :cond_5a
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 175
    :cond_63
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 176
    :cond_6c
    return-void

    .line 165
    .end local v1    # "isVisible":Z
    .restart local v0    # "actionBarSystemUiVisibility":I
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6d
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x4000001

    and-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_40

    .end local v0    # "actionBarSystemUiVisibility":I
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_76
    move v1, v4

    .line 172
    goto :goto_51
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public twGetTabsOnTop()Z
    .registers 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    return v0
.end method

.method public twPutTabsOnTop(Z)V
    .registers 2
    .param p1, "isTabOnTop"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTabOnTop:Z

    .line 386
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1e

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
