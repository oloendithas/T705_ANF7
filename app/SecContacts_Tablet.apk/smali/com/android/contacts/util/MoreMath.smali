.class public Lcom/android/contacts/util/MoreMath;
.super Ljava/lang/Object;
.source "MoreMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 1
    .param p0, "input"    # D
    .param p2, "lowerBound"    # D
    .param p4, "upperBound"    # D

    .prologue
    .line 48
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 50
    .end local p2    # "lowerBound":D
    :goto_0
    return-wide p2

    .line 49
    .restart local p2    # "lowerBound":D
    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    .line 50
    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "input"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .prologue
    .line 38
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 40
    .end local p1    # "lowerBound":F
    :goto_0
    return p1

    .line 39
    .restart local p1    # "lowerBound":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 40
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "input"    # I
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    .line 28
    if-ge p0, p1, :cond_0

    .line 30
    .end local p1    # "lowerBound":I
    :goto_0
    return p1

    .line 29
    .restart local p1    # "lowerBound":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 30
    goto :goto_0
.end method
