.class public Lcom/visionobjects/stylus/core/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Point__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Point__SWIG_1(FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/Point;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Point;)V
    .locals 3

    .prologue
    .line 96
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Point__SWIG_2(JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    .line 97
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Point;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    goto :goto_0
.end method


# virtual methods
.method public addAffect(Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    .prologue
    .line 88
    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_addAffect(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_clear(JLcom/visionobjects/stylus/core/Point;)V

    .line 57
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Point;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Point;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Point(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J
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

.method public equals(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_equals(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Point;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Point;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Point;->equals(Lcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Point;->delete()V

    .line 26
    return-void
.end method

.method public isNull()Z
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_isNull(JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public minusAffect(Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    .prologue
    .line 92
    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_minusAffect(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_notEquals(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public setX(F)V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_setX(JLcom/visionobjects/stylus/core/Point;F)V

    .line 61
    return-void
.end method

.method public setY(F)V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_setY(JLcom/visionobjects/stylus/core/Point;F)V

    .line 65
    return-void
.end method

.method public x()F
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_x(JLcom/visionobjects/stylus/core/Point;)F

    move-result v0

    return v0
.end method

.method public y()F
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Point;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Point_y(JLcom/visionobjects/stylus/core/Point;)F

    move-result v0

    return v0
.end method
