.class public Landroid/view/animation/interpolator/ExpoEaseInOut;
.super Ljava/lang/Object;
.source "ExpoEaseInOut.java"

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

.method private inout(F)F
    .registers 9
    .param p1, "t"    # F

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v5, 0x3fe0000000000000L

    const-wide/high16 v3, 0x4000000000000000L

    const/high16 v1, 0x3f800000

    .line 52
    cmpl-float v2, p1, v0

    if-nez v2, :cond_c

    .line 62
    :goto_b
    return v0

    .line 55
    :cond_c
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_12

    move v0, v1

    .line 56
    goto :goto_b

    .line 58
    :cond_12
    const/high16 v0, 0x40000000

    mul-float/2addr p1, v0

    .line 59
    cmpg-float v0, p1, v1

    if-gez v0, :cond_26

    .line 60
    const/high16 v0, 0x41200000

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_b

    .line 62
    :cond_26
    const/high16 v0, -0x3ee00000

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v3

    mul-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_b
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/ExpoEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
