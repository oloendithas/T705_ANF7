.class public Lcom/visionobjects/stylus/core/VoTimeStamp;
.super Ljava/lang/Object;
.source "VoTimeStamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/VoTimeStamp$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoTimeStamp__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoTimeStamp__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

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

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/VoTimeStamp;)V
    .locals 3

    .prologue
    .line 100
    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoTimeStamp__SWIG_2(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    .line 101
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_VoTimeStamp(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J
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

.method public elapsed()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_elapsed__SWIG_1(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsed(I)J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_elapsed__SWIG_0(JLcom/visionobjects/stylus/core/VoTimeStamp;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_equals(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/VoTimeStamp;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/VoTimeStamp;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/VoTimeStamp;->equals(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/VoTimeStamp;->delete()V

    .line 26
    return-void
.end method

.method public isGreater(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isGreater(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isGreaterOrEqual(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isGreaterOrEqual(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isLower(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isLower(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isLowerOrEqual(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_isLowerOrEqual(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public milliseconds()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_milliseconds(JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public millisecondsTo(Lcom/visionobjects/stylus/core/VoTimeStamp;)J
    .locals 6

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_millisecondsTo(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/VoTimeStamp;)Z
    .locals 6

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_notEquals(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public shifted(J)Lcom/visionobjects/stylus/core/VoTimeStamp;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/visionobjects/stylus/core/VoTimeStamp;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoTimeStamp;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoTimeStamp_shifted(JLcom/visionobjects/stylus/core/VoTimeStamp;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method
