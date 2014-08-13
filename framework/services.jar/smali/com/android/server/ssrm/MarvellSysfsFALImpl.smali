.class public Lcom/android/server/ssrm/MarvellSysfsFALImpl;
.super Ljava/lang/Object;
.source "MarvellSysfsFALImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$1;,
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;,
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;,
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HW_VENDOR:Ljava/lang/String;

.field private static SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath; = null

.field private static final TAG:Ljava/lang/String; = "SSRMv2:MarvellSysfsFALImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

.field public static mDdrOppPath:Z

.field public static mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    .line 36
    sget-object v0, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->HW_VENDOR:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    .line 128
    sput-boolean v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mDdrOppPath:Z

    .line 130
    sput-boolean v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mApeOppPath:Z

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v1, "Maple"

    sget-object v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    .line 59
    :goto_0
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "mPlatformInfo":Ljava/lang/String;
    const-string v1, "mrvl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    .line 66
    :goto_1
    new-instance v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    sget-object v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    sget-object v3, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;)V

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    .line 67
    return-void

    .line 56
    .end local v0    # "mPlatformInfo":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    goto :goto_0

    .line 63
    .restart local v0    # "mPlatformInfo":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    goto :goto_1
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "filePtr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    return-void
.end method

.method private parseGpuFreqTable()[I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 393
    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

    const-string v10, "parseGpuFreqTable"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v7, 0x0

    .line 395
    .local v7, "supportedFrequency":[I
    const/4 v5, 0x0

    .line 396
    .local v5, "realArraySize":I
    const/4 v0, 0x0

    .line 398
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 399
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v10, v10, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 401
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_2

    .line 435
    if-eqz v0, :cond_1

    .line 436
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 442
    :cond_1
    :goto_0
    return-object v8

    .line 404
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 405
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 435
    if-eqz v0, :cond_1

    .line 436
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "strSupportedFreq":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_5

    .line 410
    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 411
    add-int/lit8 v5, v5, 0x1

    .line 409
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 414
    :cond_5
    array-length v8, v6

    if-eq v5, v8, :cond_7

    .line 415
    const/4 v3, 0x0

    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 416
    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v3, 0x1

    array-length v9, v6

    if-ge v8, v9, :cond_6

    .line 417
    add-int/lit8 v8, v3, 0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v3

    .line 418
    add-int/lit8 v8, v3, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    .line 415
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 423
    :cond_7
    new-array v7, v5, [I

    .line 424
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_b

    .line 425
    sub-int v8, v5, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    .line 426
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: supportedFrequency = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v7, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 428
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "strSupportedFreq":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v8, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v8, :cond_8

    .line 430
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by Exception, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 432
    :cond_8
    const/4 v7, 0x0

    .line 435
    if-eqz v0, :cond_9

    .line 436
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_5
    move-object v8, v7

    .line 442
    goto/16 :goto_0

    .line 434
    :catchall_0
    move-exception v8

    .line 435
    if-eqz v0, :cond_a

    .line 436
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 434
    :cond_a
    :goto_6
    throw v8

    .line 438
    :catch_2
    move-exception v2

    .line 439
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 438
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 439
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 438
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 439
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 435
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "strSupportedFreq":[Ljava/lang/String;
    :cond_b
    if-eqz v0, :cond_9

    .line 436
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    .line 438
    :catch_5
    move-exception v2

    .line 439
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7
.end method

.method private parseSystemBusTable()[I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 354
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    const-string v9, "parseSystemBusTable"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v6, 0x0

    .line 356
    .local v6, "supportedFrequency":[I
    const/4 v0, 0x0

    .line 358
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 359
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 361
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_2

    .line 382
    if-eqz v0, :cond_1

    .line 383
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 389
    :cond_1
    :goto_0
    return-object v7

    .line 364
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 365
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 382
    if-eqz v0, :cond_1

    .line 383
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "strSupportedFreq":[Ljava/lang/String;
    array-length v7, v5

    new-array v6, v7, [I

    .line 370
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_7

    .line 371
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3

    .line 373
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 375
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "strSupportedFreq":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 376
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 377
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    :cond_4
    const/4 v6, 0x0

    .line 382
    if-eqz v0, :cond_5

    .line 383
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    move-object v7, v6

    .line 389
    goto/16 :goto_0

    .line 381
    :catchall_0
    move-exception v7

    .line 382
    if-eqz v0, :cond_6

    .line 383
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 381
    :cond_6
    :goto_4
    throw v7

    .line 385
    :catch_2
    move-exception v2

    .line 386
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 386
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 385
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 386
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 382
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "strSupportedFreq":[Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_5

    .line 383
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 385
    :catch_5
    move-exception v2

    .line 386
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 317
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 303
    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 305
    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 307
    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 309
    :pswitch_4
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 311
    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 313
    :pswitch_6
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method gpu1WriteValue(II)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "type"    # I

    .prologue
    .line 284
    const v0, 0x98580

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MARVELL_DEGAS:Z

    if-eqz v0, :cond_0

    .line 285
    const p1, 0x65900

    .line 287
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 288
    const-string v0, "SSRMv2:MarvellSysfsFALImpl"

    const-string v1, "/sys/devices/platform/galcore/gpu/gpu1/gpufreq/scaling_min_freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v0, "SSRMv2:MarvellSysfsFALImpl"

    const-string v1, "/sys/devices/platform/galcore/gpu/gpu1/gpufreq/scaling_max_freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initSupportedFrequency(I)[I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 335
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 325
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->parseGpuFreqTable()[I

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 10
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const v9, 0x82208

    const v8, 0x4c2c0

    const v7, 0x26160

    .line 207
    const/4 v4, 0x0

    .line 208
    .local v4, "successFlag":Z
    const/4 v1, 0x0

    .line 209
    .local v1, "filePtr":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 251
    :pswitch_0
    const/4 v4, 0x0

    move v5, v4

    .line 280
    .end local v4    # "successFlag":Z
    .local v5, "successFlag":I
    :goto_0
    return v5

    .line 214
    .end local v5    # "successFlag":I
    .restart local v4    # "successFlag":Z
    :pswitch_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v1    # "filePtr":Ljava/io/File;
    :cond_0
    :goto_1
    :pswitch_2
    if-eqz v1, :cond_3

    .line 255
    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 261
    const/4 v4, 0x1

    .line 262
    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    .line 264
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->gpu1WriteValue(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    :cond_2
    if-eqz v3, :cond_3

    .line 273
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move v5, v4

    .line 280
    .restart local v5    # "successFlag":I
    goto :goto_0

    .line 217
    .end local v5    # "successFlag":I
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_1

    .line 220
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_1

    .line 223
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v1    # "filePtr":Ljava/io/File;
    if-ne p2, v7, :cond_4

    .line 225
    const/4 p2, 0x1

    goto :goto_1

    .line 226
    :cond_4
    if-ne p2, v8, :cond_5

    .line 227
    const/4 p2, 0x2

    goto :goto_1

    .line 228
    :cond_5
    if-ne p2, v9, :cond_0

    .line 229
    const/4 p2, 0x3

    goto :goto_1

    .line 233
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v1    # "filePtr":Ljava/io/File;
    if-ne p2, v7, :cond_6

    .line 235
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 236
    :cond_6
    if-ne p2, v8, :cond_7

    .line 237
    const/4 p2, 0x2

    goto/16 :goto_1

    .line 238
    :cond_7
    if-ne p2, v9, :cond_0

    .line 239
    const/4 p2, 0x3

    goto/16 :goto_1

    .line 243
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v1    # "filePtr":Ljava/io/File;
    const/16 v6, 0x28

    if-eq p2, v6, :cond_8

    const/16 v6, 0x33

    if-eq p2, v6, :cond_8

    const/16 v6, 0x32

    if-ne p2, v6, :cond_9

    .line 245
    :cond_8
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 246
    :cond_9
    const/16 v6, 0x3c

    if-ne p2, v6, :cond_0

    .line 247
    const/4 p2, 0x0

    goto/16 :goto_1

    .line 266
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v6, :cond_a

    .line 268
    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    :cond_a
    if-eqz v2, :cond_3

    .line 273
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 275
    :catch_1
    move-exception v0

    .line 276
    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 272
    :goto_5
    if-eqz v2, :cond_b

    .line 273
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 271
    :cond_b
    :goto_6
    throw v6

    .line 275
    :catch_2
    move-exception v0

    .line 276
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 276
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 266
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 11
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v5, 0x0

    .line 135
    .local v5, "successFlag":Z
    const/4 v1, 0x0

    .line 136
    .local v1, "filePtr":Ljava/io/File;
    const/4 v4, -0x1

    .line 138
    .local v4, "revertValue":I
    packed-switch p1, :pswitch_data_0

    .line 167
    :pswitch_0
    const/4 v5, 0x0

    move v6, v5

    .line 199
    .end local v5    # "successFlag":Z
    .local v6, "successFlag":I
    :goto_0
    return v6

    .line 143
    .end local v6    # "successFlag":I
    .restart local v5    # "successFlag":Z
    :pswitch_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 170
    :goto_1
    :pswitch_2
    if-eqz v1, :cond_0

    .line 171
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", revertValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    if-eqz v1, :cond_3

    .line 176
    const/4 v2, 0x0

    .line 178
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V

    .line 180
    const/4 v5, 0x1

    .line 181
    const/4 v7, 0x3

    if-eq p1, v7, :cond_1

    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    .line 183
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->gpu1WriteValue(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :cond_2
    if-eqz v3, :cond_3

    .line 192
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move v6, v5

    .line 199
    .restart local v6    # "successFlag":I
    goto :goto_0

    .line 147
    .end local v6    # "successFlag":I
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 149
    goto :goto_1

    .line 151
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 153
    goto :goto_1

    .line 155
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 157
    goto :goto_1

    .line 159
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 161
    goto/16 :goto_1

    .line 163
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 165
    goto/16 :goto_1

    .line 185
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 187
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :cond_4
    if-eqz v2, :cond_3

    .line 192
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 194
    :catch_1
    move-exception v0

    .line 195
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    .line 191
    :goto_5
    if-eqz v2, :cond_5

    .line 192
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 190
    :cond_5
    :goto_6
    throw v7

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 185
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
