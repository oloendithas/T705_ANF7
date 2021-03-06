.class public Lcom/sec/android/secvision/sef/QdioJNI;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QdioJNI"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "SEF"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static native AddSoundInQdioFile(Ljava/lang/String;[BILjava/lang/String;I)I
.end method

.method public static native DeleteQdioFromFile(Ljava/lang/String;)I
.end method

.method private static native ParseQdioFile(Ljava/lang/String;)[I
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 25
    const/4 v2, 0x0

    .local v2, "qjData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    move-object v0, v3

    .line 26
    check-cast v0, [I

    .line 27
    .local v0, "getParsedData":[I
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 28
    const-string v4, "QdioJNI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAudioInJPEG input parameter is null : filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_23
    :goto_23
    return-object v3

    .line 31
    :cond_24
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    .line 32
    if-eqz v0, :cond_23

    .line 35
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_37

    .line 36
    const-string v4, "QdioJNI"

    const-string v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 39
    :cond_37
    new-instance v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;

    .end local v2    # "qjData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    invoke-direct {v2}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;-><init>()V

    .line 40
    .restart local v2    # "qjData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_77

    .line 41
    aget v4, v0, v1

    if-lez v4, :cond_4c

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    if-gtz v4, :cond_54

    .line 42
    :cond_4c
    const-string v4, "QdioJNI"

    const-string v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 45
    :cond_54
    iget-object v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    .line 48
    iput-object p0, v2, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->filename:Ljava/lang/String;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_77
    move-object v3, v2

    .line 50
    goto :goto_23
.end method

.method public static checkFileString(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 21
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static native copyAdioData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "srcFilename"    # Ljava/lang/String;
    .param p1, "dstFilename"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 100
    :cond_c
    const/4 v0, 0x0

    .line 102
    :goto_d
    return v0

    :cond_e
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->copyAdioData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method public static getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B
    .registers 11
    .param p0, "qdioJpegData"    # Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 55
    move-object v3, v5

    check-cast v3, [B

    .line 56
    .local v3, "ret":[B
    if-nez p0, :cond_f

    .line 57
    const-string v6, "QdioJNI"

    const-string/jumbo v7, "qdioJpegData is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_e
    return-object v5

    .line 60
    :cond_f
    iget v6, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    if-gt v6, p1, :cond_46

    .line 61
    const-string v6, "QdioJNI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid index. file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " audio streams but index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 67
    :cond_46
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0, p1}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getStartOffset(I)I

    move-result v4

    .line 69
    .local v4, "startOffset":I
    invoke-virtual {p0, p1}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->getLength(I)I

    move-result v6

    add-int v1, v4, v6

    .line 70
    .local v1, "endOffset":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-lt v6, v1, :cond_89

    .line 71
    const-string v6, "QdioJNI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fis.available is smaller then audio stream end : fileLen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", audio strema end on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_e

    .line 76
    :cond_89
    :try_start_89
    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fis.avaliable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v5, "QdioJNI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "s = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sub-int v5, v1, v4

    new-array v3, v5, [B

    .line 79
    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 80
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_d3} :catch_d9
    .catchall {:try_start_89 .. :try_end_d3} :catchall_de

    .line 84
    :goto_d3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object v5, v3

    .line 86
    goto/16 :goto_e

    .line 81
    :catch_d9
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :try_start_da
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_de

    goto :goto_d3

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_de
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method

.method private static native getNativeVersion()I
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    invoke-static {}, Lcom/sec/android/secvision/sef/QdioJNI;->getNativeVersion()I

    move-result v0

    .line 108
    .local v0, "native_version":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.02_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 90
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 91
    const-string v1, "QdioJNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isJPEG input parameter is null : filename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isQdioFile(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private static native isQdioFile(Ljava/lang/String;)I
.end method
