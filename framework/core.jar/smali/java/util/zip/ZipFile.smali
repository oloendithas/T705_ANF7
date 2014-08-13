.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipInflaterInputStream;,
        Ljava/util/zip/ZipFile$RAFStream;
    }
.end annotation


# static fields
.field static final GPBF_DATA_DESCRIPTOR_FLAG:I = 0x8

.field static final GPBF_ENCRYPTED_FLAG:I = 0x1

.field static final GPBF_UNSUPPORTED_MASK:I = 0x1

.field static final GPBF_UTF8_FLAG:I = 0x800

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field private comment:Ljava/lang/String;

.field private final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private fileToDeleteOnClose:Ljava/io/File;

.field private final filename:Ljava/lang/String;

.field private final guard:Ldalvik/system/CloseGuard;

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    .line 107
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->filename:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    .line 143
    iput-object p1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 144
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 149
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->filename:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    .line 151
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->readCentralDir()V

    .line 152
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 153
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Ljava/util/zip/ZipFile;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    return-void
.end method

.method private readCentralDir()V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v25

    const-wide/16 v27, 0x16

    sub-long v20, v25, v27

    .line 354
    .local v20, "scanOffset":J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-gez v25, :cond_0

    .line 355
    new-instance v25, Ljava/util/zip/ZipException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "File too short to be a zip file: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    invoke-virtual/range {v25 .. v27}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    .line 360
    .local v14, "headerMagic":I
    int-to-long v0, v14

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x4034b50

    cmp-long v25, v25, v27

    if-eqz v25, :cond_1

    .line 361
    new-instance v25, Ljava/util/zip/ZipException;

    const-string v26, "Not a zip archive"

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 364
    :cond_1
    const-wide/32 v25, 0x10000

    sub-long v22, v20, v25

    .line 365
    .local v22, "stopOffset":J
    const-wide/16 v25, 0x0

    cmp-long v25, v22, v25

    if-gez v25, :cond_2

    .line 366
    const-wide/16 v22, 0x0

    .line 370
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x6054b50

    cmp-long v25, v25, v27

    if-nez v25, :cond_4

    .line 383
    const/16 v25, 0x12

    move/from16 v0, v25

    new-array v12, v0, [B

    .line 384
    .local v12, "eocd":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 387
    const/16 v25, 0x0

    array-length v0, v12

    move/from16 v26, v0

    sget-object v27, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v12, v0, v1, v2}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v16

    .line 388
    .local v16, "it":Llibcore/io/BufferIterator;
    invoke-virtual/range {v16 .. v16}, Llibcore/io/BufferIterator;->readShort()S

    move-result v25

    const v26, 0xffff

    and-int v9, v25, v26

    .line 389
    .local v9, "diskNumber":I
    invoke-virtual/range {v16 .. v16}, Llibcore/io/BufferIterator;->readShort()S

    move-result v25

    const v26, 0xffff

    and-int v10, v25, v26

    .line 390
    .local v10, "diskWithCentralDir":I
    invoke-virtual/range {v16 .. v16}, Llibcore/io/BufferIterator;->readShort()S

    move-result v25

    const v26, 0xffff

    and-int v18, v25, v26

    .line 391
    .local v18, "numEntries":I
    invoke-virtual/range {v16 .. v16}, Llibcore/io/BufferIterator;->readShort()S

    move-result v25

    const v26, 0xffff

    and-int v24, v25, v26

    .line 392
    .local v24, "totalNumEntries":I
    const/16 v25, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Llibcore/io/BufferIterator;->skip(I)V

    .line 393
    invoke-virtual/range {v16 .. v16}, Llibcore/io/BufferIterator;->readInt()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const-wide v27, 0xffffffffL

    and-long v5, v25, v27

    .line 394
    .local v5, "centralDirOffset":J
    invoke-virtual/range {v16 .. v16}, Llibcore/io/BufferIterator;->readShort()S

    move-result v25

    const v26, 0xffff

    and-int v8, v25, v26

    .line 396
    .local v8, "commentLength":I
    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-nez v9, :cond_3

    if-eqz v10, :cond_5

    .line 397
    :cond_3
    new-instance v25, Ljava/util/zip/ZipException;

    const-string v26, "Spanned archives not supported"

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 375
    .end local v5    # "centralDirOffset":J
    .end local v8    # "commentLength":I
    .end local v9    # "diskNumber":I
    .end local v10    # "diskWithCentralDir":I
    .end local v12    # "eocd":[B
    .end local v16    # "it":Llibcore/io/BufferIterator;
    .end local v18    # "numEntries":I
    .end local v24    # "totalNumEntries":I
    :cond_4
    const-wide/16 v25, 0x1

    sub-long v20, v20, v25

    .line 376
    cmp-long v25, v20, v22

    if-gez v25, :cond_2

    .line 377
    new-instance v25, Ljava/util/zip/ZipException;

    const-string v26, "End Of Central Directory signature not found"

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 400
    .restart local v5    # "centralDirOffset":J
    .restart local v8    # "commentLength":I
    .restart local v9    # "diskNumber":I
    .restart local v10    # "diskWithCentralDir":I
    .restart local v12    # "eocd":[B
    .restart local v16    # "it":Llibcore/io/BufferIterator;
    .restart local v18    # "numEntries":I
    .restart local v24    # "totalNumEntries":I
    :cond_5
    if-lez v8, :cond_6

    .line 401
    new-array v7, v8, [B

    .line 402
    .local v7, "commentBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 403
    new-instance v25, Ljava/lang/String;

    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    sget-object v28, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v7, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipFile;->comment:Ljava/lang/String;

    .line 410
    .end local v7    # "commentBytes":[B
    :cond_6
    new-instance v19, Ljava/util/zip/ZipFile$RAFStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 411
    .local v19, "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v25, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 412
    .local v4, "bufferedStream":Ljava/io/BufferedInputStream;
    const/16 v25, 0x2e

    move/from16 v0, v25

    new-array v13, v0, [B

    .line 413
    .local v13, "hdrBuf":[B
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    .line 414
    new-instance v17, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v4}, Ljava/util/zip/ZipEntry;-><init>([BLjava/io/InputStream;)V

    .line 415
    .local v17, "newEntry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v17

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    move-wide/from16 v25, v0

    cmp-long v25, v25, v5

    if-ltz v25, :cond_7

    .line 416
    new-instance v25, Ljava/util/zip/ZipException;

    const-string v26, "Local file header offset is after central directory"

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 418
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 419
    .local v11, "entryName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_8

    .line 420
    new-instance v25, Ljava/util/zip/ZipException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Duplicate entry name: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 413
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 423
    .end local v11    # "entryName":Ljava/lang/String;
    .end local v17    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_9
    return-void
.end method

.method static throwZipException(Ljava/lang/String;I)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "magic"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {p1, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "hexString":Ljava/lang/String;
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature not found; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 179
    iget-object v0, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    .line 180
    .local v0, "localRaf":Ljava/io/RandomAccessFile;
    if-eqz v0, :cond_0

    .line 181
    monitor-enter v0

    .line 182
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    .line 183
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 187
    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 190
    :cond_0
    return-void

    .line 184
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 210
    iget-object v1, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    new-instance v1, Ljava/util/zip/ZipFile$1;

    invoke-direct {v1, p0, v0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    return-void

    .line 161
    :catchall_0
    move-exception v1

    .line 162
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    throw v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 163
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 164
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 234
    iget-object v0, p0, Ljava/util/zip/ZipFile;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entryName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 249
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    .line 250
    iget-object v1, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 252
    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 13
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v12, 0xffff

    .line 267
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 268
    if-nez p1, :cond_0

    .line 269
    const/4 v7, 0x0

    .line 310
    :goto_0
    return-object v7

    .line 273
    :cond_0
    iget-object v6, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    .line 274
    .local v6, "localRaf":Ljava/io/RandomAccessFile;
    monitor-enter v6

    .line 278
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile$RAFStream;

    iget-wide v8, p1, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    invoke-direct {v7, v6, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 279
    .local v7, "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 281
    .local v4, "is":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 282
    .local v5, "localMagic":I
    int-to-long v8, v5

    const-wide/32 v10, 0x4034b50

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 283
    const-string v8, "Local File Header"

    invoke-static {v8, v5}, Ljava/util/zip/ZipFile;->throwZipException(Ljava/lang/String;I)V

    .line 286
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 289
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    and-int v3, v8, v12

    .line 290
    .local v3, "gpbf":I
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_2

    .line 291
    new-instance v8, Ljava/util/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid General Purpose Bit Flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 312
    .end local v3    # "gpbf":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "localMagic":I
    .end local v7    # "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 296
    .restart local v3    # "gpbf":I
    .restart local v4    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "localMagic":I
    .restart local v7    # "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    :cond_2
    const/16 v8, 0x12

    :try_start_1
    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 297
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    and-int v2, v8, v12

    .line 298
    .local v2, "fileNameLength":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    and-int v1, v8, v12

    .line 299
    .local v1, "extraFieldLength":I
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V

    .line 302
    add-int v8, v2, v1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 304
    iget v8, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-nez v8, :cond_3

    .line 305
    # getter for: Ljava/util/zip/ZipFile$RAFStream;->offset:J
    invoke-static {v7}, Ljava/util/zip/ZipFile$RAFStream;->access$200(Ljava/util/zip/ZipFile$RAFStream;)J

    move-result-wide v8

    iget-wide v10, p1, Ljava/util/zip/ZipEntry;->size:J

    add-long/2addr v8, v10

    # setter for: Ljava/util/zip/ZipFile$RAFStream;->endOffset:J
    invoke-static {v7, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;->access$102(Ljava/util/zip/ZipFile$RAFStream;J)J

    .line 306
    monitor-exit v6

    goto/16 :goto_0

    .line 308
    :cond_3
    # getter for: Ljava/util/zip/ZipFile$RAFStream;->offset:J
    invoke-static {v7}, Ljava/util/zip/ZipFile$RAFStream;->access$200(Ljava/util/zip/ZipFile$RAFStream;)J

    move-result-wide v8

    iget-wide v10, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    add-long/2addr v8, v10

    # setter for: Ljava/util/zip/ZipFile$RAFStream;->endOffset:J
    invoke-static {v7, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;->access$102(Ljava/util/zip/ZipFile$RAFStream;J)J

    .line 309
    const/16 v8, 0x400

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    const-wide/32 v11, 0xffff

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 310
    .local v0, "bufSize":I
    new-instance v8, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    new-instance v9, Ljava/util/zip/Inflater;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v8, v7, v9, v0, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v8

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Ljava/util/zip/ZipFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 332
    iget-object v0, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
