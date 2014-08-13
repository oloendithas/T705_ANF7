.class Ljava/util/zip/ZipFile$RAFStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RAFStream"
.end annotation


# instance fields
.field private endOffset:J

.field private offset:J

.field private final sharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 2
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "initialOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 444
    iput-object p1, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    .line 445
    iput-wide p2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    .line 446
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    .line 447
    return-void
.end method

.method static synthetic access$102(Ljava/util/zip/ZipFile$RAFStream;J)J
    .locals 0
    .param p0, "x0"    # Ljava/util/zip/ZipFile$RAFStream;
    .param p1, "x1"    # J

    .prologue
    .line 438
    iput-wide p1, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    return-wide p1
.end method

.method static synthetic access$200(Ljava/util/zip/ZipFile$RAFStream;)J
    .locals 2
    .param p0, "x0"    # Ljava/util/zip/ZipFile$RAFStream;

    .prologue
    .line 438
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    return-wide v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fill(Ljava/util/zip/Inflater;I)I
    .locals 8
    .param p1, "inflater"    # Ljava/util/zip/Inflater;
    .param p2, "nativeEndBufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v3, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v3

    .line 484
    :try_start_0
    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 485
    .local v1, "len":I
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    invoke-virtual {p1, v2, v4, v5, p2}, Ljava/util/zip/Inflater;->setFileInput(Ljava/io/FileDescriptor;JI)I

    move-result v0

    .line 488
    .local v0, "cnt":I
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 489
    monitor-exit v3

    return v1

    .line 490
    .end local v0    # "cnt":I
    .end local v1    # "len":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v4, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v4

    .line 459
    :try_start_0
    iget-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v7, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long v1, v5, v7

    .line 460
    .local v1, "length":J
    int-to-long v5, p3

    cmp-long v3, v5, v1

    if-lez v3, :cond_0

    .line 461
    long-to-int p3, v1

    .line 463
    :cond_0
    iget-object v3, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 464
    iget-object v3, p0, Ljava/util/zip/ZipFile$RAFStream;->sharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 465
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 466
    iget-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    .line 467
    monitor-exit v4

    .line 469
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_1
    const/4 v0, -0x1

    monitor-exit v4

    goto :goto_0

    .line 471
    .end local v0    # "count":I
    .end local v1    # "length":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public skip(J)J
    .locals 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 476
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->endOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    sub-long p1, v0, v2

    .line 478
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->offset:J

    .line 479
    return-wide p1
.end method
