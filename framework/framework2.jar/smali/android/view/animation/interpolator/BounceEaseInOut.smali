.class public Landroid/view/animation/interpolator/BounceEaseInOut;
.super Ljava/lang/Object;
.source "BounceEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private in(F)F
    .registers 4
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 66
    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Landroid/view/animation/interpolator/BounceEaseInOut;->out(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method

.method private inout(F)F
    .registers 5
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x40000000

    const/high16 v2, 0x3f000000

    .line 70
    cmpg-float v0, p1, v2

    if-gez v0, :cond_10

    .line 71
    mul-float v0, p1, v1

    invoke-direct {p0, v0}, Landroid/view/animation/interpolator/BounceEaseInOut;->in(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 73
    :goto_f
    return v0

    :cond_10
    mul-float v0, p1, v1

    const/high16 v1, 0x3f800000

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/view/animation/interpolator/BounceEaseInOut;->out(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    goto :goto_f
.end method

.method private out(F)F
    .registers 7
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x40f20000

    .line 52
    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    .line 53
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 61
    :goto_f
    return v0

    .line 55
    :cond_10
    float-to-double v0, p1

    const-wide v2, 0x3fe745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_29

    .line 56
    float-to-double v0, p1

    const-wide v2, 0x3fe1745d1745d174L

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000

    add-float/2addr v0, v1

    goto :goto_f

    .line 58
    :cond_29
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_42

    .line 59
    float-to-double v0, p1

    const-wide v2, 0x3fea2e8ba2e8ba2fL

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000

    add-float/2addr v0, v1

    goto :goto_f

    .line 61
    :cond_42
    float-to-double v0, p1

    const-wide v2, 0x3fee8ba2e8ba2e8cL

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000

    add-float/2addr v0, v1

    goto :goto_f
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/BounceEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
