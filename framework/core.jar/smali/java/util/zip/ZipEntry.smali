.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/zip/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field compressedSize:J

.field compressionMethod:I

.field crc:J

.field extra:[B

.field localHeaderRelOffset:J

.field modDate:I

.field name:Ljava/lang/String;

.field nameLength:I

.field size:J

.field time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 45
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 46
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 48
    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 49
    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 50
    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 54
    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 55
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 45
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 46
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 48
    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 49
    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 50
    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 54
    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 55
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 308
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 309
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 310
    iget v0, p1, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 311
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 312
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 313
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 314
    iget v0, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 315
    iget v0, p1, Ljava/util/zip/ZipEntry;->modDate:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 316
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 317
    iget v0, p1, Ljava/util/zip/ZipEntry;->nameLength:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 318
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 319
    return-void
.end method

.method constructor <init>([BLjava/io/InputStream;)V
    .locals 11
    .param p1, "cdeHdrBuf"    # [B
    .param p2, "cdStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 45
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 46
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 48
    const/4 v7, -0x1

    iput v7, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 49
    const/4 v7, -0x1

    iput v7, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 50
    const/4 v7, -0x1

    iput v7, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 54
    const/4 v7, -0x1

    iput v7, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 55
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 353
    const/4 v7, 0x0

    array-length v8, p1

    invoke-static {p2, p1, v7, v8}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 355
    const/4 v7, 0x0

    array-length v8, p1

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v7, v8, v9}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v4

    .line 358
    .local v4, "it":Llibcore/io/BufferIterator;
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    .line 359
    .local v6, "sig":I
    int-to-long v7, v6

    const-wide/32 v9, 0x2014b50

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 360
    const-string v7, "Central Directory Entry"

    invoke-static {v7, v6}, Ljava/util/zip/ZipFile;->throwZipException(Ljava/lang/String;I)V

    .line 363
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Llibcore/io/BufferIterator;->seek(I)V

    .line 364
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    const v8, 0xffff

    and-int v3, v7, v8

    .line 366
    .local v3, "gpbf":I
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_1

    .line 367
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid General Purpose Bit Flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 370
    :cond_1
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    iput v7, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 371
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    iput v7, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 372
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    iput v7, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 375
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 376
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 377
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 379
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    iput v7, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 380
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    const v8, 0xffff

    and-int v2, v7, v8

    .line 381
    .local v2, "extraLength":I
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    const v8, 0xffff

    and-int v0, v7, v8

    .line 384
    .local v0, "commentByteCount":I
    const/16 v7, 0x2a

    invoke-virtual {v4, v7}, Llibcore/io/BufferIterator;->seek(I)V

    .line 385
    invoke-virtual {v4}, Llibcore/io/BufferIterator;->readInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    .line 387
    iget v7, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    new-array v5, v7, [B

    .line 388
    .local v5, "nameBytes":[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {p2, v5, v7, v8}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 389
    invoke-static {v5}, Ljava/util/zip/ZipEntry;->containsNulByte([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 390
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Filename contains NUL byte: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 392
    :cond_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    array-length v9, v5

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 394
    if-lez v2, :cond_3

    .line 395
    new-array v7, v2, [B

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 396
    iget-object v7, p0, Ljava/util/zip/ZipEntry;->extra:[B

    const/4 v8, 0x0

    invoke-static {p2, v7, v8, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 401
    :cond_3
    if-lez v0, :cond_4

    .line 402
    new-array v1, v0, [B

    .line 403
    .local v1, "commentBytes":[B
    const/4 v7, 0x0

    invoke-static {p2, v1, v7, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 404
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    array-length v9, v1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v1, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 406
    .end local v1    # "commentBytes":[B
    :cond_4
    return-void
.end method

.method private static containsNulByte([B)Z
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 410
    .local v1, "b":B
    if-nez v1, :cond_0

    .line 411
    const/4 v4, 0x1

    .line 414
    .end local v1    # "b":B
    :goto_1
    return v4

    .line 409
    .restart local v1    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "b":B
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 326
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 327
    .local v1, "result":Ljava/util/zip/ZipEntry;
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :goto_0
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    return-object v1

    .line 327
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 329
    .end local v1    # "result":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 7

    .prologue
    .line 157
    iget v1, p0, Ljava/util/zip/ZipEntry;->time:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 158
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 159
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 160
    iget v1, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x7bc

    iget v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    and-int/lit8 v3, v3, 0x1f

    iget v4, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v4, v4, 0xb

    and-int/lit8 v4, v4, 0x1f

    iget v5, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Ljava/util/zip/ZipEntry;->time:I

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 163
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 165
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 189
    .local v0, "commentBytes":[B
    array-length v1, v0

    const v2, 0xffff

    if-le v1, v2, :cond_1

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comment too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCompressedSize(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 202
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 203
    return-void
.end method

.method public setCrc(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 215
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 219
    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CRC32: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtra([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 227
    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extra data too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 231
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 244
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 248
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 259
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 260
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 264
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v4, 0x1

    .line 274
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 275
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 276
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 277
    .local v1, "year":I
    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    .line 278
    const/16 v2, 0x21

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 279
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 282
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 283
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7bc

    shl-int/lit8 v2, v2, 0x9

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 284
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 285
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 286
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method
