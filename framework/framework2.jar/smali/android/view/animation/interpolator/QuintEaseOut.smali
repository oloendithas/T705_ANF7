.class public Landroid/view/animation/interpolator/QuintEaseOut;
.super Ljava/lang/Object;
.source "QuintEaseOut.java"

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

.method private out(F)F
    .registers 4
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 52
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/QuintEaseOut;->out(F)F

    move-result v0

    return v0
.end method
