.class public Landroid/view/animation/interpolator/ElasticEaseInOut;
.super Ljava/lang/Object;
.source "ElasticEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private amplitude:F

.field private period:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .param p1, "amplitude"    # F
    .param p2, "period"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->amplitude:F

    .line 50
    iput p2, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->period:F

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v1, Lcom/android/internal/R$styleable;->ElasticEaseInOut:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->amplitude:F

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->period:F

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method

.method private inout(FFF)F
    .registers 15
    .param p1, "t"    # F
    .param p2, "a"    # F
    .param p3, "p"    # F

    .prologue
    const-wide/high16 v9, 0x4000000000000000L

    const-wide v7, 0x401921fb54442d18L

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    .line 68
    cmpl-float v3, p1, v1

    if-nez v3, :cond_f

    .line 89
    :goto_e
    return v1

    .line 71
    :cond_f
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_15

    move v1, v2

    .line 72
    goto :goto_e

    .line 74
    :cond_15
    cmpl-float v3, p3, v1

    if-nez v3, :cond_1c

    .line 75
    const p3, 0x3ee66667

    .line 78
    :cond_1c
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_24

    cmpg-float v1, p2, v2

    if-gez v1, :cond_4c

    .line 79
    :cond_24
    const/high16 p2, 0x3f800000

    .line 80
    const/high16 v1, 0x40800000

    div-float v0, p3, v1

    .line 85
    .local v0, "s":F
    :goto_2a
    const/high16 v1, 0x40000000

    mul-float/2addr p1, v1

    .line 86
    cmpg-float v1, p1, v2

    if-gez v1, :cond_58

    .line 87
    const-wide/high16 v3, -0x4020000000000000L

    float-to-double v5, p2

    const/high16 v1, 0x41200000

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v5

    sub-float v5, p1, v0

    float-to-double v5, v5

    mul-double/2addr v5, v7

    float-to-double v7, p3

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    mul-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_e

    .line 83
    .end local v0    # "s":F
    :cond_4c
    float-to-double v3, p3

    div-double/2addr v3, v7

    div-float v1, v2, p2

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v0, v3

    .restart local v0    # "s":F
    goto :goto_2a

    .line 89
    :cond_58
    float-to-double v3, p2

    const/high16 v1, -0x3ee00000

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v3

    sub-float v3, p1, v0

    float-to-double v3, v3

    mul-double/2addr v3, v7

    float-to-double v5, p3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L

    add-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_e
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "t"    # F

    .prologue
    .line 64
    iget v0, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->amplitude:F

    iget v1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->period:F

    invoke-direct {p0, p1, v0, v1}, Landroid/view/animation/interpolator/ElasticEaseInOut;->inout(FFF)F

    move-result v0

    return v0
.end method
