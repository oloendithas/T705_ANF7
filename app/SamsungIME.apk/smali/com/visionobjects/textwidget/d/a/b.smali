.class public final Lcom/visionobjects/textwidget/d/a/b;
.super Ljava/lang/Object;
.source "InkItemFactory.java"


# direct methods
.method public static a([Lcom/visionobjects/a/a;Lcom/visionobjects/stylus/core/VoTimeStamp;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 20
    new-instance v1, Lcom/visionobjects/stylus/core/Path;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/Path;-><init>()V

    .line 21
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 23
    if-nez v0, :cond_0

    .line 24
    aget-object v2, p0, v0

    iget v2, v2, Lcom/visionobjects/a/a;->a:F

    aget-object v3, p0, v0

    iget v3, v3, Lcom/visionobjects/a/a;->b:F

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;->startAt(FF)V

    .line 21
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    aget-object v2, p0, v0

    iget v2, v2, Lcom/visionobjects/a/a;->a:F

    aget-object v3, p0, v0

    iget v3, v3, Lcom/visionobjects/a/a;->b:F

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;->lineTo(FF)V

    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/visionobjects/stylus/core/InkItem;->createStroke(Lcom/visionobjects/stylus/core/Path;Lcom/visionobjects/stylus/core/VoTimeStamp;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v0

    return-object v0
.end method
