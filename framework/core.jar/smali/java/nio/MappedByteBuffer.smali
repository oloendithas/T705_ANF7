.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# instance fields
.field final mapMode:Ljava/nio/channels/FileChannel$MapMode;


# direct methods
.method constructor <init>(Ljava/nio/MemoryBlock;ILjava/nio/channels/FileChannel$MapMode;)V
    .locals 0
    .param p1, "block"    # Ljava/nio/MemoryBlock;
    .param p2, "capacity"    # I
    .param p3, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;

    .prologue
    .line 43
    invoke-direct {p0, p2, p1}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 44
    iput-object p3, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    .line 45
    return-void
.end method

.method private checkIsMapped()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .locals 7

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    .line 105
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v0, v1, :cond_0

    .line 107
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    sget v5, Llibcore/io/OsConstants;->MS_SYNC:I

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->msync(JJI)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    return-object p0

    .line 108
    :catch_0
    move-exception v6

    .line 111
    .local v6, "errnoException":Llibcore/io/ErrnoException;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final isLoaded()Z
    .locals 15

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    .line 55
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v1

    .line 56
    .local v1, "address":J
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    .line 57
    .local v3, "size":J
    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 62
    :cond_0
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v0, v11}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v11

    long-to-int v10, v11

    .line 63
    .local v10, "pageSize":I
    int-to-long v11, v10

    rem-long v11, v1, v11

    long-to-int v9, v11

    .line 64
    .local v9, "pageOffset":I
    int-to-long v11, v9

    sub-long/2addr v1, v11

    .line 65
    int-to-long v11, v9

    add-long/2addr v3, v11

    .line 66
    int-to-long v11, v10

    add-long/2addr v11, v3

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    int-to-long v13, v10

    div-long/2addr v11, v13

    long-to-int v8, v11

    .line 67
    .local v8, "pageCount":I
    new-array v5, v8, [B

    .line 68
    .local v5, "vector":[B
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->mincore(JJ[B)V

    .line 69
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v5

    if-ge v7, v0, :cond_2

    .line 70
    aget-byte v0, v5, v7
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    if-eq v0, v11, :cond_1

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 74
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    .end local v5    # "vector":[B
    .end local v7    # "i":I
    .end local v8    # "pageCount":I
    .end local v9    # "pageOffset":I
    .end local v10    # "pageSize":I
    :catch_0
    move-exception v6

    .line 76
    .local v6, "errnoException":Llibcore/io/ErrnoException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .locals 5

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    .line 88
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->mlock(JJ)V

    .line 89
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toLong()J

    move-result-wide v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->munlock(JJ)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object p0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method
