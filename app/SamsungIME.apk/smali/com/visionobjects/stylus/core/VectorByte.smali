.class public Lcom/visionobjects/stylus/core/VectorByte;
.super Ljava/lang/Object;
.source "VectorByte.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorByte__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorByte;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorByte__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorByte;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/VectorByte;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/VectorByte;)V
    .locals 3

    .prologue
    .line 79
    invoke-static {p1}, Lcom/visionobjects/stylus/core/VectorByte;->a(Lcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorByte__SWIG_2(JLcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorByte;-><init>(JZ)V

    .line 80
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/VectorByte;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    goto :goto_0
.end method


# virtual methods
.method public add(S)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_add(JLcom/visionobjects/stylus/core/VectorByte;S)V

    .line 68
    return-void
.end method

.method public capacity()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_capacity(JLcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_clear(JLcom/visionobjects/stylus/core/VectorByte;)V

    .line 64
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_VectorByte(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J
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

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/VectorByte;->delete()V

    .line 26
    return-void
.end method

.method public get(I)S
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_get(JLcom/visionobjects/stylus/core/VectorByte;I)S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_isEmpty(JLcom/visionobjects/stylus/core/VectorByte;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_reserve(JLcom/visionobjects/stylus/core/VectorByte;J)V

    .line 56
    return-void
.end method

.method public set(IS)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_set(JLcom/visionobjects/stylus/core/VectorByte;IS)V

    .line 76
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorByte;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorByte_size(JLcom/visionobjects/stylus/core/VectorByte;)J

    move-result-wide v0

    return-wide v0
.end method
