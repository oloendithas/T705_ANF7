.class public Landroid/view/animation/interpolator/CircEaseInOut;
.super Ljava/lang/Object;
.source "CircEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private inout(F)F
    .registers 5
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x40000000

    const/high16 v2, 0x3f800000

    .line 53
    mul-float/2addr p1, v1

    .line 54
    cmpg-float v0, p1, v2

    if-gez v0, :cond_16

    .line 55
    const/high16 v0, -0x41000000

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 57
    :goto_15
    return v0

    :cond_16
    const/high16 v0, 0x3f000000

    sub-float/2addr p1, v1

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_15
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/CircEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
