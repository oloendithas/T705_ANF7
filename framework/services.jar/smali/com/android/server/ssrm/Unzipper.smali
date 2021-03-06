.class public Lcom/android/server/ssrm/Unzipper;
.super Ljava/lang/Object;
.source "Unzipper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .locals 13
    .param p0, "fileZip"    # Ljava/io/File;

    .prologue
    .line 31
    const/4 v5, 0x0

    .line 32
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 33
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 34
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 39
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 40
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .local v10, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 42
    .local v8, "zentry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_3
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 43
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "classes.dex"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 47
    const/16 v11, 0x400

    new-array v3, v11, [B

    .line 48
    .local v3, "buf":[B
    const/4 v7, 0x0

    .line 50
    .local v7, "len":I
    :goto_0
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    .line 51
    const/4 v11, 0x0

    invoke-virtual {v0, v3, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_0

    .line 56
    .end local v3    # "buf":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v4

    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 57
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "zentry":Ljava/util/zip/ZipEntry;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v9, :cond_1

    .line 64
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 70
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 72
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 78
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 80
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 86
    :cond_3
    :goto_5
    return-object v0

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_4
    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 60
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 58
    .end local v8    # "zentry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 65
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 66
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 73
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 74
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 81
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 82
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 58
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_7
    move-exception v4

    move-object v9, v10

    .end local v10    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "zis":Ljava/util/zip/ZipInputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 56
    .end local v8    # "zentry":Ljava/util/zip/ZipEntry;
    :catch_8
    move-exception v4

    goto :goto_1

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v4

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
