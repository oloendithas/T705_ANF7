.class public Lcom/visionobjects/stylus/core/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Transform__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1, p2, p3, p4}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Transform__SWIG_1(FFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/Transform;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Transform;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Transform__SWIG_2(JLcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    .line 117
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Transform;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    goto :goto_0
.end method


# virtual methods
.method public applied(Lcom/visionobjects/stylus/core/Transform;)Lcom/visionobjects/stylus/core/Transform;
    .locals 7

    .prologue
    .line 112
    new-instance v6, Lcom/visionobjects/stylus/core/Transform;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_applied(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    return-object v6
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Transform;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Transform;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Transform(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J
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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Transform;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Transform;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Transform;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Transform;->delete()V

    .line 26
    return-void
.end method

.method public getCoefficient()F
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_getCoefficient(JLcom/visionobjects/stylus/core/Transform;)F

    move-result v0

    return v0
.end method

.method public getM11()F
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_getM11(JLcom/visionobjects/stylus/core/Transform;)F

    move-result v0

    return v0
.end method

.method public getM13()F
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_getM13(JLcom/visionobjects/stylus/core/Transform;)F

    move-result v0

    return v0
.end method

.method public getM22()F
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_getM22(JLcom/visionobjects/stylus/core/Transform;)F

    move-result v0

    return v0
.end method

.method public getM23()F
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_getM23(JLcom/visionobjects/stylus/core/Transform;)F

    move-result v0

    return v0
.end method

.method public inverted()Lcom/visionobjects/stylus/core/Transform;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/visionobjects/stylus/core/Transform;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_inverted(JLcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    return-object v0
.end method

.method public isIdentity()Z
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_isIdentity(JLcom/visionobjects/stylus/core/Transform;)Z

    move-result v0

    return v0
.end method

.method public map(Lcom/visionobjects/stylus/core/Path;)Lcom/visionobjects/stylus/core/Path;
    .locals 7

    .prologue
    .line 104
    new-instance v6, Lcom/visionobjects/stylus/core/Path;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_map__SWIG_2(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v6
.end method

.method public map(Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    .prologue
    .line 96
    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_map__SWIG_0(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method

.method public map(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/Rect;
    .locals 7

    .prologue
    .line 100
    new-instance v6, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_map__SWIG_1(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v6
.end method

.method public mapX(F)F
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_mapX(JLcom/visionobjects/stylus/core/Transform;F)F

    move-result v0

    return v0
.end method

.method public mapY(F)F
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_mapY(JLcom/visionobjects/stylus/core/Transform;F)F

    move-result v0

    return v0
.end method

.method public scale(FF)Lcom/visionobjects/stylus/core/Transform;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/visionobjects/stylus/core/Transform;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_scale(JLcom/visionobjects/stylus/core/Transform;FF)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    return-object v0
.end method

.method public translate(FF)Lcom/visionobjects/stylus/core/Transform;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lcom/visionobjects/stylus/core/Transform;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Transform;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Transform_translate(JLcom/visionobjects/stylus/core/Transform;FF)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    return-object v0
.end method
