.class public Lcom/visionobjects/stylus/core/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_SearchResult__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/SearchResult;-><init>(JZ)V

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

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/SearchResult;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {p1}, Lcom/visionobjects/stylus/core/SearchResult;->a(Lcom/visionobjects/stylus/core/SearchResult;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_SearchResult__SWIG_1(JLcom/visionobjects/stylus/core/SearchResult;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/SearchResult;-><init>(JZ)V

    .line 112
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/SearchResult;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_SearchResult(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J
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

.method public equals(Lcom/visionobjects/stylus/core/SearchResult;)Z
    .locals 6

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/SearchResult;->a(Lcom/visionobjects/stylus/core/SearchResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_equals(JLcom/visionobjects/stylus/core/SearchResult;JLcom/visionobjects/stylus/core/SearchResult;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/SearchResult;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/SearchResult;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/SearchResult;->equals(Lcom/visionobjects/stylus/core/SearchResult;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/SearchResult;->delete()V

    .line 26
    return-void
.end method

.method public getInputRange()Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_getInputRange(JLcom/visionobjects/stylus/core/SearchResult;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_getLabel(JLcom/visionobjects/stylus/core/SearchResult;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOccurrence()I
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_getOccurrence(JLcom/visionobjects/stylus/core/SearchResult;)I

    move-result v0

    return v0
.end method

.method public getScore()F
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_getScore(JLcom/visionobjects/stylus/core/SearchResult;)F

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/SearchResult;)Z
    .locals 6

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/SearchResult;->a(Lcom/visionobjects/stylus/core/SearchResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_notEquals(JLcom/visionobjects/stylus/core/SearchResult;JLcom/visionobjects/stylus/core/SearchResult;)Z

    move-result v0

    return v0
.end method

.method public setInputRange(Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 6

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_setInputRange(JLcom/visionobjects/stylus/core/SearchResult;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 76
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 55
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    iget-wide v1, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v1, v2, p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_setLabel(JLcom/visionobjects/stylus/core/SearchResult;[B)V

    .line 64
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setOccurrence(I)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_setOccurrence(JLcom/visionobjects/stylus/core/SearchResult;I)V

    .line 68
    return-void
.end method

.method public setScore(F)V
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/SearchResult;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->SearchResult_setScore(JLcom/visionobjects/stylus/core/SearchResult;F)V

    .line 72
    return-void
.end method
