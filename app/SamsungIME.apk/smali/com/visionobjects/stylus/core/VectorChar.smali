.class public Lcom/visionobjects/stylus/core/VectorChar;
.super Ljava/lang/Object;
.source "VectorChar.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorChar__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorChar;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorChar__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorChar;-><init>(JZ)V

    .line 44
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/VectorChar;)V
    .locals 3

    .prologue
    .line 79
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VectorChar__SWIG_2(JLcom/visionobjects/stylus/core/VectorChar;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VectorChar;-><init>(JZ)V

    .line 80
    return-void

    .line 79
    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    goto :goto_0
.end method


# virtual methods
.method public add(C)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_add(JLcom/visionobjects/stylus/core/VectorChar;C)V

    .line 68
    return-void
.end method

.method public capacity()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_capacity(JLcom/visionobjects/stylus/core/VectorChar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_clear(JLcom/visionobjects/stylus/core/VectorChar;)V

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_VectorChar(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J
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
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/VectorChar;->delete()V

    .line 26
    return-void
.end method

.method public get(I)C
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_get(JLcom/visionobjects/stylus/core/VectorChar;I)C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_isEmpty(JLcom/visionobjects/stylus/core/VectorChar;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_reserve(JLcom/visionobjects/stylus/core/VectorChar;J)V

    .line 56
    return-void
.end method

.method public set(IC)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_set(JLcom/visionobjects/stylus/core/VectorChar;IC)V

    .line 76
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VectorChar;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VectorChar_size(JLcom/visionobjects/stylus/core/VectorChar;)J

    move-result-wide v0

    return-wide v0
.end method
