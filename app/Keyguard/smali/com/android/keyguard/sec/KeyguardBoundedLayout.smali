.class public Lcom/android/keyguard/sec/KeyguardBoundedLayout;
.super Landroid/widget/FrameLayout;
.source "KeyguardBoundedLayout.java"


# instance fields
.field private final mBoundedHeight:I

.field private final mBoundedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    .line 33
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/R$styleable;->BoundedLayout:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 48
    .local v2, "measuredWidth":I
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    if-lez v3, :cond_16

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    if-ge v3, v2, :cond_16

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 50
    .local v0, "measureMode":I
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedWidth:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 53
    .end local v0    # "measureMode":I
    :cond_16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 54
    .local v1, "measuredHeight":I
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    if-lez v3, :cond_2c

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    if-ge v3, v1, :cond_2c

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 56
    .restart local v0    # "measureMode":I
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardBoundedLayout;->mBoundedHeight:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 58
    .end local v0    # "measureMode":I
    :cond_2c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 59
    return-void
.end method
