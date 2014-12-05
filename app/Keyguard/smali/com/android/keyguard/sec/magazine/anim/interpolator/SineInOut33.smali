.class public Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;
.super Ljava/lang/Object;
.source "SineInOut33.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;->segments:[[F

    return-void

    nop

    :array_18
    .array-data 4
        0x0
        0x3d4ccccd
        0x3efd70a4
    .end array-data

    :array_22
    .array-data 4
        0x3efd70a4
        0x3f70a3d7
        0x3f800000
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 15
    .param p1, "input"    # F

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000

    .line 27
    div-float v0, p1, v11

    .line 28
    .local v0, "_loc_5":F
    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;->segments:[[F

    array-length v1, v6

    .line 29
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 30
    .local v4, "_loc_9":I
    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_1a

    .line 31
    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 33
    :cond_1a
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 34
    .local v2, "_loc_7":F
    sget-object v6, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;->segments:[[F

    aget-object v3, v6, v4

    .line 35
    .local v3, "_loc_8":[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 38
    .local v5, "ret":F
    return v5
.end method
