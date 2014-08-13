.class public Lcom/visionobjects/stylus/core/InkLocation;
.super Ljava/lang/Object;
.source "InkLocation.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkLocation__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkLocation;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkLocation__SWIG_1(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkLocation;-><init>(JZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 3

    .prologue
    .line 108
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkLocation__SWIG_2(JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkLocation;-><init>(JZ)V

    .line 109
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkLocation;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkLocation(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Lcom/visionobjects/stylus/core/InkLocation;)Z
    .locals 6

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_equals(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkLocation;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkLocation;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkLocation;->equals(Lcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkLocation;->delete()V

    .line 26
    return-void
.end method

.method public isAt(Lcom/visionobjects/stylus/core/InkItem;I)Z
    .locals 7

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_isAt(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkItem;I)Z

    move-result v0

    return v0
.end method

.method public isAtBeginningOfItem()Z
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_isAtBeginningOfItem(JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public isAtEndOfItem()Z
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_isAtEndOfItem(JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Lcom/visionobjects/stylus/core/InkLocation;)Z
    .locals 6

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_isBefore(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public isInsideStroke()Z
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_isInsideStroke(JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public item()Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_item(JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public location()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_location(JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/InkLocation;)Z
    .locals 6

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_notEquals(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public point()I
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_point(JLcom/visionobjects/stylus/core/InkLocation;)I

    move-result v0

    return v0
.end method

.method public setAtBeginningOfStroke()V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_setAtBeginningOfStroke(JLcom/visionobjects/stylus/core/InkLocation;)V

    .line 57
    return-void
.end method

.method public setAtEndOfStroke()V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_setAtEndOfStroke(JLcom/visionobjects/stylus/core/InkLocation;)V

    .line 61
    return-void
.end method

.method public setInsideStrokeAtPoint(I)Z
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLocation;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLocation_setInsideStrokeAtPoint(JLcom/visionobjects/stylus/core/InkLocation;I)Z

    move-result v0

    return v0
.end method
