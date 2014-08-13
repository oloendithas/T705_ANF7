.class public abstract Lde/congrace/exp4j/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverse([D)[D
    .locals 6
    .param p0, "data"    # [D

    .prologue
    .line 5
    const/4 v0, 0x0

    .line 6
    .local v0, "left":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 8
    .local v1, "right":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    aget-wide v2, p0, v0

    .line 11
    .local v2, "temp":D
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 12
    aput-wide v2, p0, v1

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    goto :goto_0

    .line 18
    .end local v2    # "temp":D
    :cond_0
    return-object p0
.end method
