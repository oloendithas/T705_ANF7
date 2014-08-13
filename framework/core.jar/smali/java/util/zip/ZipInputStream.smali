.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private charBuf:[C

.field private final crc:Ljava/util/zip/CRC32;

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private entriesEnd:Z

.field private entryIn:I

.field private hasDD:Z

.field private final hdrBuf:[B

.field private inRead:I

.field private lastRead:I

.field private nameBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 97
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 75
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 77
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 79
    iput v3, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 81
    iput v3, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 85
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    .line 87
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 89
    new-array v0, v4, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    .line 91
    new-array v0, v4, [C

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stream == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    return-void
.end method

.method private peekShort(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 285
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p1, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private readAndVerifyDataDescriptor(II)V
    .locals 8
    .param p1, "inB"    # I
    .param p2, "out"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v5, 0x0

    .line 192
    iget-boolean v1, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x10

    invoke-static {v1, v2, v5, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 194
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v5, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 195
    .local v0, "sig":I
    const v1, 0x8074b50

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "unknown format (EXTSIG=%x)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/4 v3, 0x4

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->crc:J

    .line 199
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x8

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 200
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0xc

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    .line 202
    .end local v0    # "sig":I
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 203
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_2
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 206
    :cond_3
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_4
    return-void
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
    .line 345
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 347
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    int-to-long v0, v0

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 113
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 115
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 125
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v7, :cond_1

    .line 189
    :cond_0
    return-void

    .line 128
    :cond_1
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    instance-of v7, v7, Ljava/util/jar/JarEntry;

    if-eqz v7, :cond_2

    .line 129
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    check-cast v7, Ljava/util/jar/JarEntry;

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    .line 130
    .local v6, "temp":Ljava/util/jar/Attributes;
    if-eqz v6, :cond_2

    const-string v7, "hidden"

    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    .end local v6    # "temp":Ljava/util/jar/Attributes;
    :cond_2
    const/4 v3, 0x0

    .line 147
    .local v3, "failure":Ljava/lang/Exception;
    :try_start_0
    invoke-static {p0}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v7, v7, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    .line 154
    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v4

    .line 155
    .local v4, "inB":I
    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v5

    .line 160
    .local v5, "out":I
    :goto_1
    iget v7, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    sub-int v0, v7, v4

    .line 162
    .local v0, "diff":I
    if-eqz v0, :cond_3

    .line 163
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v7, Ljava/io/PushbackInputStream;

    iget-object v8, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v9, p0, Ljava/util/zip/InflaterInputStream;->len:I

    sub-int/2addr v9, v0

    invoke-virtual {v7, v8, v9, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 167
    :cond_3
    :try_start_1
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipInputStream;->readAndVerifyDataDescriptor(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :cond_4
    :goto_2
    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->reset()V

    .line 175
    const/4 v7, 0x0

    iput v7, p0, Ljava/util/zip/InflaterInputStream;->len:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 176
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    .line 177
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 179
    if-eqz v3, :cond_0

    .line 180
    instance-of v7, v3, Ljava/io/IOException;

    if-eqz v7, :cond_6

    .line 181
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "failure":Ljava/lang/Exception;
    throw v3

    .line 148
    .end local v0    # "diff":I
    .end local v4    # "inB":I
    .end local v5    # "out":I
    .restart local v3    # "failure":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    goto :goto_0

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 158
    .restart local v4    # "inB":I
    iget v5, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .restart local v5    # "out":I
    goto :goto_1

    .line 168
    .restart local v0    # "diff":I
    :catch_1
    move-exception v1

    .line 169
    .restart local v1    # "e":Ljava/lang/Exception;
    if-nez v3, :cond_4

    .line 170
    move-object v3, v1

    goto :goto_2

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    instance-of v7, v3, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_7

    .line 183
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "failure":Ljava/lang/Exception;
    throw v3

    .line 185
    .restart local v3    # "failure":Ljava/lang/Exception;
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .line 186
    .local v2, "error":Ljava/lang/AssertionError;
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 187
    throw v2
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 219
    const/16 v19, 0x0

    .line 281
    :goto_0
    return-object v19

    .line 223
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-static/range {v19 .. v22}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v16

    .line 225
    .local v16, "hdr":I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x2014b50

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    .line 226
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 227
    const/16 v19, 0x0

    goto :goto_0

    .line 229
    :cond_1
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x4034b50

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    .line 230
    const/16 v19, 0x0

    goto :goto_0

    .line 234
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1a

    invoke-static/range {v19 .. v22}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 235
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 236
    .local v18, "version":I
    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 237
    new-instance v19, Ljava/util/zip/ZipException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot read local header version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 239
    :cond_3
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v15

    .line 240
    .local v15, "flags":I
    and-int/lit8 v19, v15, 0x1

    if-eqz v19, :cond_4

    .line 241
    new-instance v19, Ljava/util/zip/ZipException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid General Purpose Bit Flag: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 244
    :cond_4
    and-int/lit8 v19, v15, 0x8

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 245
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v10

    .line 246
    .local v10, "ceLastModifiedTime":I
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v9

    .line 247
    .local v9, "ceLastModifiedDate":I
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v6

    .line 248
    .local v6, "ceCompressionMethod":I
    const-wide/16 v7, 0x0

    .local v7, "ceCrc":J
    const-wide/16 v4, 0x0

    .local v4, "ceCompressedSize":J
    const-wide/16 v11, -0x1

    .line 249
    .local v11, "ceSize":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0xa

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v7, v19, v21

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0xe

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v4, v19, v21

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x12

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v11, v19, v21

    .line 254
    :cond_5
    const/16 v19, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v17

    .line 255
    .local v17, "nameLength":I
    if-nez v17, :cond_7

    .line 256
    new-instance v19, Ljava/util/zip/ZipException;

    const-string v20, "Entry is not named"

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 244
    .end local v4    # "ceCompressedSize":J
    .end local v6    # "ceCompressionMethod":I
    .end local v7    # "ceCrc":J
    .end local v9    # "ceLastModifiedDate":I
    .end local v10    # "ceLastModifiedTime":I
    .end local v11    # "ceSize":J
    .end local v17    # "nameLength":I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 258
    .restart local v4    # "ceCompressedSize":J
    .restart local v6    # "ceCompressionMethod":I
    .restart local v7    # "ceCrc":J
    .restart local v9    # "ceLastModifiedDate":I
    .restart local v10    # "ceLastModifiedTime":I
    .restart local v11    # "ceSize":J
    .restart local v17    # "nameLength":I
    :cond_7
    const/16 v19, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    move-result v14

    .line 260
    .local v14, "extraLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 261
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    .line 264
    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->charBuf:[C

    .line 266
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v10, v0, Ljava/util/zip/ZipEntry;->time:I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v9, v0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 271
    const-wide/16 v19, -0x1

    cmp-long v19, v11, v19

    if-eqz v19, :cond_9

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 276
    :cond_9
    if-lez v14, :cond_a

    .line 277
    new-array v13, v14, [B

    .line 278
    .local v13, "extraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v13, v1, v14}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 281
    .end local v13    # "extraData":[B
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    goto/16 :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 294
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 295
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 297
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v3

    .line 301
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-nez v4, :cond_6

    .line 302
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    long-to-int v0, v4

    .line 303
    .local v0, "csize":I
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    if-ge v4, v0, :cond_0

    .line 306
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lt v4, v5, :cond_3

    .line 307
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 308
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v4, v3, :cond_2

    .line 309
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    goto :goto_0

    .line 312
    :cond_2
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 314
    :cond_3
    iget v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int/2addr v4, v5

    if-le p3, v4, :cond_5

    iget v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int v3, v4, v5

    .line 315
    .local v3, "toRead":I
    :goto_1
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v4, v0, v4

    if-ge v4, v3, :cond_4

    .line 316
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v3, v0, v4

    .line 318
    :cond_4
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 320
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 321
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .end local v3    # "toRead":I
    :cond_5
    move v3, p3

    .line 314
    goto :goto_1

    .line 324
    .end local v0    # "csize":I
    :cond_6
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 325
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 326
    iget v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lez v4, :cond_7

    .line 327
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 332
    :cond_7
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 336
    .local v2, "read":I
    if-nez v2, :cond_8

    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 339
    :cond_8
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    move v3, v2

    .line 340
    goto/16 :goto_0

    .line 333
    .end local v2    # "read":I
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
