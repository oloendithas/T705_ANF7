.class public Lcom/visionobjects/stylus/core/InkSearch;
.super Ljava/lang/Object;
.source "InkSearch.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkSearch__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkSearch;-><init>(JZ)V

    .line 49
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkSearch;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkSearch;->a(Lcom/visionobjects/stylus/core/InkSearch;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkSearch__SWIG_1(JLcom/visionobjects/stylus/core/InkSearch;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkSearch;-><init>(JZ)V

    .line 114
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkSearch;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    goto :goto_0
.end method


# virtual methods
.method public buildIndex(Lcom/visionobjects/stylus/core/InkField;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 60
    const/4 v6, 0x0

    .line 63
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 70
    :goto_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_buildIndex__SWIG_0(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;[B)V

    .line 72
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public buildIndex(Lcom/visionobjects/stylus/core/InkField;Ljava/nio/channels/WritableByteChannel;S)V
    .locals 8

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_buildIndex__SWIG_1(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;Ljava/nio/channels/WritableByteChannel;S)V

    .line 91
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_cancel(JLcom/visionobjects/stylus/core/InkSearch;)V

    .line 110
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkSearch(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkSearch;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkSearch;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkSearch;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkSearch;->delete()V

    .line 26
    return-void
.end method

.method public search(Lcom/visionobjects/stylus/core/InkField;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 75
    const/4 v6, 0x0

    .line 78
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 85
    :goto_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_search__SWIG_0(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;[B)V

    .line 87
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public search(Lcom/visionobjects/stylus/core/InkField;Ljava/lang/String;Ljava/nio/channels/ReadableByteChannel;)V
    .locals 8

    .prologue
    .line 94
    const/4 v6, 0x0

    .line 97
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 104
    :goto_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_search__SWIG_1(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;[BLjava/nio/channels/ReadableByteChannel;)V

    .line 106
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;)V
    .locals 6

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_setConfig(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InputMethodConfig;)V

    .line 53
    return-void
.end method

.method public setListener(Lcom/visionobjects/stylus/core/InkSearchListener;)V
    .locals 6

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkSearch;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkSearchListener;->a(Lcom/visionobjects/stylus/core/InkSearchListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkSearch_setListener(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkSearchListener;)V

    .line 57
    return-void
.end method
