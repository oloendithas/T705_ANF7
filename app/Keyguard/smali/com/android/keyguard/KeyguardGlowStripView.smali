.class public Lcom/android/keyguard/KeyguardGlowStripView;
.super Landroid/widget/LinearLayout;
.source "KeyguardGlowStripView.java"


# instance fields
.field private mAnimationProgress:F

.field private mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mDotSize:I

.field private mDotStripTop:I

.field private mDrawDots:Z

.field private mHorizontalDotGap:I

.field private mLeftToRight:Z

.field private mNumDots:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardGlowStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardGlowStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimationProgress:F

    .line 49
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDrawDots:Z

    .line 51
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f000000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    sget-object v1, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    .line 66
    iget v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    .line 67
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    .line 69
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000

    const v8, 0x3e4ccccd

    .line 80
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDrawDots:Z

    if-nez v5, :cond_e

    .line 104
    :cond_d
    return-void

    .line 84
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 85
    .local v4, "xOffset":I
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v7, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    invoke-virtual {v5, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    iget v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    if-ge v2, v5, :cond_d

    .line 90
    int-to-float v5, v2

    mul-float/2addr v5, v9

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a

    mul-float/2addr v5, v6

    add-float v3, v8, v5

    .line 92
    .local v3, "relativeDotPosition":F
    iget v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimationProgress:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 93
    .local v1, "distance":F
    const/4 v5, 0x0

    div-float v6, v1, v8

    sub-float v6, v9, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 95
    .local v0, "alpha":F
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    int-to-float v5, v4

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotStripTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x437f0000

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 100
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iget v5, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v6, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mHorizontalDotGap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 73
    .local v0, "availableWidth":I
    iget v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mHorizontalDotGap:I

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotStripTop:I

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 76
    return-void
.end method
