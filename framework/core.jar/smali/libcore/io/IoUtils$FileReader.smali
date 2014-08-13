.class Llibcore/io/IoUtils$FileReader;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/IoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileReader"
.end annotation


# instance fields
.field private bytes:[B

.field private count:I

.field private fd:Ljava/io/FileDescriptor;

.field private unknownLength:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    :try_start_0
    sget v4, Llibcore/io/OsConstants;->O_RDONLY:I

    invoke-static {p1, v4}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v4

    iput-object v4, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :try_start_1
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v4, v5}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v3

    .line 217
    .local v3, "stat":Llibcore/io/StructStat;
    iget-wide v4, v3, Llibcore/io/StructStat;->st_size:J

    long-to-int v0, v4

    .line 218
    .local v0, "capacity":I
    if-nez v0, :cond_0

    .line 219
    const/4 v4, 0x1

    iput-boolean v4, p0, Llibcore/io/IoUtils$FileReader;->unknownLength:Z
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    const/16 v0, 0x2000

    .line 227
    :cond_0
    new-array v4, v0, [B

    iput-object v4, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    .line 228
    return-void

    .line 208
    .end local v0    # "capacity":I
    .end local v3    # "stat":Llibcore/io/StructStat;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    throw v2

    .line 222
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 223
    .local v1, "exception":Llibcore/io/ErrnoException;
    iget-object v4, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 224
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public readFully()Llibcore/io/IoUtils$FileReader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    array-length v0, v5

    .line 234
    .local v0, "capacity":I
    :cond_0
    :goto_0
    :try_start_0
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    iget v8, p0, Llibcore/io/IoUtils$FileReader;->count:I

    iget v9, p0, Llibcore/io/IoUtils$FileReader;->count:I

    sub-int v9, v0, v9

    invoke-interface {v5, v6, v7, v8, v9}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v4

    .local v4, "read":I
    if-eqz v4, :cond_1

    .line 235
    iget v5, p0, Llibcore/io/IoUtils$FileReader;->count:I

    add-int/2addr v5, v4

    iput v5, p0, Llibcore/io/IoUtils$FileReader;->count:I

    .line 236
    iget v5, p0, Llibcore/io/IoUtils$FileReader;->count:I

    if-ne v5, v0, :cond_0

    .line 237
    iget-boolean v5, p0, Llibcore/io/IoUtils$FileReader;->unknownLength:Z

    if-eqz v5, :cond_1

    .line 240
    mul-int/lit8 v3, v0, 0x2

    .line 241
    .local v3, "newCapacity":I
    new-array v2, v3, [B

    .line 242
    .local v2, "newBytes":[B
    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v2, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    move v0, v3

    .line 245
    goto :goto_0

    .line 254
    .end local v2    # "newBytes":[B
    .end local v3    # "newCapacity":I
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Llibcore/io/ErrnoException;
    :try_start_1
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    .end local v1    # "e":Llibcore/io/ErrnoException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v5

    .restart local v4    # "read":I
    :cond_1
    iget-object v5, p0, Llibcore/io/IoUtils$FileReader;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 253
    return-object p0
.end method

.method public toByteArray()[B
    .locals 4
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 263
    iget v1, p0, Llibcore/io/IoUtils$FileReader;->count:I

    iget-object v2, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 264
    iget-object v0, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    .line 268
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget v1, p0, Llibcore/io/IoUtils$FileReader;->count:I

    new-array v0, v1, [B

    .line 267
    .local v0, "result":[B
    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    iget v2, p0, Llibcore/io/IoUtils$FileReader;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 272
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Llibcore/io/IoUtils$FileReader;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Llibcore/io/IoUtils$FileReader;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method
