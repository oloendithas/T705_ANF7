.class public Landroid/view/animation/interpolator/BackEaseInOut;
.super Ljava/lang/Object;
.source "BackEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "overshot"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroid/view/animation/interpolator/BackEaseInOut;->overshot:F

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v1, Lcom/android/internal/R$styleable;->BackEaseInOut:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/BackEaseInOut;->overshot:F

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method

.method private inout(FF)F
    .registers 11
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    const/high16 v7, 0x3f000000

    const-wide v5, 0x3ff8666666666666L

    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f800000

    .line 64
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_13

    .line 65
    const p2, 0x3fd9cd60

    .line 67
    :cond_13
    mul-float/2addr p1, v4

    .line 68
    cmpg-float v0, p1, v3

    if-gez v0, :cond_24

    .line 69
    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v7

    .line 71
    :goto_23
    return v0

    :cond_24
    sub-float/2addr p1, v4

    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v7

    goto :goto_23
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 60
    iget v0, p0, Landroid/view/animation/interpolator/BackEaseInOut;->overshot:F

    invoke-direct {p0, p1, v0}, Landroid/view/animation/interpolator/BackEaseInOut;->inout(FF)F

    move-result v0

    return v0
.end method
