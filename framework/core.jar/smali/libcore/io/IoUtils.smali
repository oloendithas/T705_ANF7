.class public final Llibcore/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/IoUtils$FileReader;
    }
.end annotation


# static fields
.field private static final TEMPORARY_DIRECTORY_PRNG:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Llibcore/io/IoUtils;->TEMPORARY_DIRECTORY_PRNG:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static canOpenReadOnly(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 163
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->O_RDONLY:I

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 164
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v2, 0x1

    .line 167
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "errnoException":Llibcore/io/ErrnoException;
    goto :goto_0
.end method

.method public static close(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "errnoException":Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 69
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 59
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createTemporaryDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 143
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Llibcore/io/IoUtils;->TEMPORARY_DIRECTORY_PRNG:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "candidateName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    return-object v1
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 128
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 129
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 130
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    invoke-static {v1}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method public static readFileAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Llibcore/io/IoUtils$FileReader;

    invoke-direct {v0, p0}, Llibcore/io/IoUtils$FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->readFully()Llibcore/io/IoUtils$FileReader;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Llibcore/io/IoUtils$FileReader;

    invoke-direct {v0, p0}, Llibcore/io/IoUtils$FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->readFully()Llibcore/io/IoUtils$FileReader;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Llibcore/io/IoUtils$FileReader;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBlocking(Ljava/io/FileDescriptor;Z)V
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->F_GETFL:I

    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v1

    .line 92
    .local v1, "flags":I
    if-nez p1, :cond_0

    .line 93
    sget v2, Llibcore/io/OsConstants;->O_NONBLOCK:I

    or-int/2addr v1, v2

    .line 97
    :goto_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->F_SETFL:I

    int-to-long v4, v1

    invoke-interface {v2, p0, v3, v4, v5}, Llibcore/io/Os;->fcntlLong(Ljava/io/FileDescriptor;IJ)I

    .line 101
    return-void

    .line 95
    :cond_0
    sget v2, Llibcore/io/OsConstants;->O_NONBLOCK:I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    goto :goto_0

    .line 98
    .end local v1    # "flags":I
    :catch_0
    move-exception v0

    .line 99
    .local v0, "errnoException":Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static throwInterruptedIoException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 177
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
