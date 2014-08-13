.class public Lcom/visionobjects/stylus/core/Archive;
.super Ljava/lang/Object;
.source "Archive.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_empty()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 48
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_version(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

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

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Archive;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Archive;)V
    .locals 3

    .prologue
    .line 110
    invoke-static {p1}, Lcom/visionobjects/stylus/core/Archive;->a(Lcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive__SWIG_2(JLcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    .line 111
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/Archive;->a(ZLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    .line 90
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 106
    invoke-static {p1, p2, p3}, Lcom/visionobjects/stylus/core/Archive;->a(ZLjava/lang/String;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    .line 107
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 60
    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_bytes([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    .line 61
    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p1, p2, p3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive_bytes_version([BJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Archive;-><init>(JZ)V

    .line 57
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Archive;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    goto :goto_0
.end method

.method private static a(ZLjava/lang/String;)J
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 79
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    invoke-static {p0, v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive__SWIG_0(Z[B)J

    move-result-wide v0

    return-wide v0

    .line 81
    :catch_0
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(ZLjava/lang/String;I)J
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 96
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Archive__SWIG_1(Z[BI)J

    move-result-wide v0

    return-wide v0

    .line 98
    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

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
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Archive;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Archive;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Archive(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J
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

.method public equals(Lcom/visionobjects/stylus/core/Archive;)Z
    .locals 6

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Archive;->a(Lcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_equals(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/Archive;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Archive;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Archive;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Archive;->equals(Lcom/visionobjects/stylus/core/Archive;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Archive;->delete()V

    .line 26
    return-void
.end method

.method public getByteCount()I
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_getByteCount(JLcom/visionobjects/stylus/core/Archive;)I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_getBytes(JLcom/visionobjects/stylus/core/Archive;)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_getVersion(JLcom/visionobjects/stylus/core/Archive;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readInkField(Lcom/visionobjects/stylus/core/InkItemParamListener;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    .prologue
    .line 114
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemParamListener;->a(Lcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readInkField(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public readInkItem(Lcom/visionobjects/stylus/core/InkItemParamListener;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 7

    .prologue
    .line 122
    new-instance v6, Lcom/visionobjects/stylus/core/InkItem;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemParamListener;->a(Lcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readInkItem(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public readInt(Lcom/visionobjects/stylus/core/InkItemParamListener;)I
    .locals 6

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemParamListener;->a(Lcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readInt(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemParamListener;)I

    move-result v0

    return v0
.end method

.method public readSegment(Lcom/visionobjects/stylus/core/InkItemParamListener;)Lcom/visionobjects/stylus/core/Segment;
    .locals 7

    .prologue
    .line 118
    new-instance v6, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItemParamListener;->a(Lcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_readSegment(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v6
.end method

.method public setVersion(J)V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_setVersion(JLcom/visionobjects/stylus/core/Archive;J)V

    .line 65
    return-void
.end method

.method public writeInkField(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 6

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeInkField(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkField;)V

    .line 131
    return-void
.end method

.method public writeInkItem(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 6

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeInkItem(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItem;)V

    .line 139
    return-void
.end method

.method public writeInt(I)V
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeInt(JLcom/visionobjects/stylus/core/Archive;I)V

    .line 143
    return-void
.end method

.method public writeSegment(Lcom/visionobjects/stylus/core/Segment;)V
    .locals 6

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Archive;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Archive_writeSegment(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/Segment;)V

    .line 135
    return-void
.end method
