.class public Landroid/view/animation/interpolator/CubicEaseInOut;
.super Ljava/lang/Object;
.source "CubicEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private inout(F)F
    .registers 5
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x3f000000

    const/high16 v1, 0x40000000

    .line 51
    mul-float/2addr p1, v1

    .line 52
    const/high16 v0, 0x3f800000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 53
    mul-float v0, v2, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 55
    :goto_f
    return v0

    :cond_10
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_f
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/CubicEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method