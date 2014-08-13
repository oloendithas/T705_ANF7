.class public Lcom/visionobjects/stylus/core/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Rect__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1, p2, p3, p4}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Rect__SWIG_1(FFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Rect;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Rect;)V
    .locals 3

    .prologue
    .line 192
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Rect__SWIG_2(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    .line 193
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Rect;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    goto :goto_0
.end method


# virtual methods
.method public adjusted(FFFF)Lcom/visionobjects/stylus/core/Rect;
    .locals 8

    .prologue
    .line 176
    new-instance v7, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_adjusted(JLcom/visionobjects/stylus/core/Rect;FFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v7
.end method

.method public bottom()F
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_bottom(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method

.method public bottomLeft()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_bottomLeft(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public bottomRight()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_bottomRight(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public center()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_center(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_clear(JLcom/visionobjects/stylus/core/Rect;)V

    .line 57
    return-void
.end method

.method public contains(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_contains__SWIG_0(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/Rect;)Z
    .locals 6

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_contains__SWIG_1(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Rect;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Rect;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Rect(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J
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

.method public equals(Lcom/visionobjects/stylus/core/Rect;)Z
    .locals 6

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_equals(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Rect;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Rect;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Rect;->equals(Lcom/visionobjects/stylus/core/Rect;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Rect;->delete()V

    .line 26
    return-void
.end method

.method public height()F
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_height(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method

.method public intersected(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/Rect;
    .locals 7

    .prologue
    .line 172
    new-instance v6, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_intersected(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/visionobjects/stylus/core/Rect;)Z
    .locals 6

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_intersects(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_isNull(JLcom/visionobjects/stylus/core/Rect;)Z

    move-result v0

    return v0
.end method

.method public left()F
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_left(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method

.method public moveBottom(F)V
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_moveBottom(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 81
    return-void
.end method

.method public moveCenter(Lcom/visionobjects/stylus/core/Point;)V
    .locals 6

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_moveCenter(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Point;)V

    .line 77
    return-void
.end method

.method public moveLeft(F)V
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_moveLeft(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 85
    return-void
.end method

.method public moveRight(F)V
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_moveRight(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 89
    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_moveTo(JLcom/visionobjects/stylus/core/Rect;FF)V

    .line 97
    return-void
.end method

.method public moveTop(F)V
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_moveTop(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 93
    return-void
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Rect;)Z
    .locals 6

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_notEquals(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z

    move-result v0

    return v0
.end method

.method public right()F
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_right(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method

.method public setHeight(F)V
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_setHeight(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 73
    return-void
.end method

.method public setWidth(F)V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_setWidth(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 69
    return-void
.end method

.method public setX(F)V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_setX(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 61
    return-void
.end method

.method public setY(F)V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_setY(JLcom/visionobjects/stylus/core/Rect;F)V

    .line 65
    return-void
.end method

.method public top()F
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_top(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method

.method public topLeft()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_topLeft(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public topRight()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_topRight(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public translate(FF)V
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_translate(JLcom/visionobjects/stylus/core/Rect;FF)V

    .line 101
    return-void
.end method

.method public united(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/Rect;
    .locals 7

    .prologue
    .line 168
    new-instance v6, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_united(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v6
.end method

.method public width()F
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_width(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method

.method public x()F
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_x(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method

.method public y()F
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Rect;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Rect_y(JLcom/visionobjects/stylus/core/Rect;)F

    move-result v0

    return v0
.end method
