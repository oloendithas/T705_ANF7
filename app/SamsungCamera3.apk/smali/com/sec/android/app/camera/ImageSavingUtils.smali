.class public Lcom/sec/android/app/camera/ImageSavingUtils;
.super Ljava/lang/Object;
.source "ImageSavingUtils.java"


# static fields
.field public static final BESTPHOTO_BUCKET:Ljava/lang/String; = "/.BestPic"

.field public static final CAMERA_COVERMODE_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

.field public static final CAMERA_COVERMODE_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final CAMERA_HIDDEN_BUCKET_NAME_MMC:Ljava/lang/String;

.field public static final CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

.field public static final CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

.field public static final CINEPIC_MODE_BUCKET:Ljava/lang/String; = "/.CinemaPhoto"

.field public static final DB_SEF_TYPE:Ljava/lang/String; = "sef_file_type"

.field public static final DRAMA_MODE_BUCKET:Ljava/lang/String; = "/.Drama"

.field public static final MAGICSHOT_SEF_TYPE:I = 0x830

.field public static final OUTFOCUS_BUCKET:Ljava/lang/String; = "/.OutFocus"

.field public static final OUTFOCUS_SEF_TYPE:I = 0x840

.field protected static final TAG:Ljava/lang/String; = "ImageSavingUtils"

.field public static final VIRTUALTOUR_BUCKET:Ljava/lang/String; = "/.3DTour"

.field public static final VIRTUALTOUR_NAME_PREFIX:Ljava/lang/String; = "3DTour_"

.field public static final VIRTUALTOUR_SEF_TYPE:I = 0x850


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/CoverCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/CoverCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_MMC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z
    .locals 8
    .param p0, "shootingMode"    # I
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "source"    # Landroid/graphics/Bitmap;
    .param p7, "jpegData"    # [B
    .param p8, "orientation"    # I
    .param p9, "whiteBalance"    # I
    .param p10, "flashMode"    # I

    .prologue
    .line 156
    const/4 v4, 0x0

    .line 159
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    if-eqz p6, :cond_4

    .line 165
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p6, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 171
    :cond_1
    :goto_0
    invoke-virtual {v3, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-eqz v5, :cond_2

    .line 181
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    :cond_2
    :goto_1
    const/4 v6, 0x1

    move-object v4, v5

    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    :goto_2
    return v6

    .line 167
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    if-eqz v5, :cond_1

    if-eqz p7, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v5, p7}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 173
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v2, "ex":Ljava/io/FileNotFoundException;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string v6, "ImageSavingUtils"

    invoke-static {v6, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    const/4 v6, 0x0

    .line 180
    if-eqz v4, :cond_3

    .line 181
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 182
    :catch_1
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 184
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "ImageSavingUtils"

    invoke-static {v6, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 175
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 176
    .local v2, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v6, "ImageSavingUtils"

    invoke-static {v6, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    const/4 v6, 0x0

    .line 180
    if-eqz v4, :cond_3

    .line 181
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 182
    :catch_4
    move-exception v1

    .line 184
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 180
    :goto_5
    if-eqz v4, :cond_5

    .line 181
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 185
    :cond_5
    :goto_6
    throw v6

    .line 182
    :catch_5
    move-exception v1

    .line 184
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 175
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 172
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_3
.end method

.method public static convertGpsToExif(D)Ljava/lang/String;
    .locals 12
    .param p0, "location"    # D

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 297
    invoke-static {p0, p1, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "sec":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "value":[Ljava/lang/String;
    array-length v6, v5

    if-eq v6, v7, :cond_0

    .line 300
    const/4 v6, 0x0

    .line 306
    :goto_0
    return-object v6

    .line 302
    :cond_0
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, "m":I
    aget-object v6, v5, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "d":I
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 306
    .local v2, "s":D
    const-string v6, "%d/1,%d/1,%d/10000"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v8, v2

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 1
    .param p0, "dateTaken"    # J

    .prologue
    .line 89
    const-string v0, "yyyyMMdd_kkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JI)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "sequenceNumber"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "addStr"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCoverModeImageSavingDir(I)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I

    .prologue
    .line 130
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 131
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 135
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 133
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 141
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 145
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getImageSavingDir(I)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I

    .prologue
    .line 102
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 103
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 107
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 105
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getImageSavingDir(II)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I
    .param p1, "shareMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 112
    if-ne p1, v1, :cond_1

    .line 113
    if-ne p0, v1, :cond_0

    .line 114
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    .line 125
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 116
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_1
    if-ne p0, v1, :cond_2

    .line 120
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setExif(Ljava/lang/String;JLandroid/location/Location;III)V
    .locals 25
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dateTaken"    # J
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "whiteBalance"    # I
    .param p6, "flashMode"    # I

    .prologue
    .line 220
    const/4 v9, 0x0

    .line 222
    .local v9, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .local v10, "exif":Landroid/media/ExifInterface;
    if-nez v10, :cond_0

    move-object v9, v10

    .line 293
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v8

    .line 224
    .local v8, "ex":Ljava/io/IOException;
    const-string v21, "ImageSavingUtils"

    const-string v22, "cannot read exif"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    :cond_0
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 233
    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 234
    .local v16, "sTaken":Ljava/lang/String;
    const-string v21, "DateTime"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz p3, :cond_2

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 238
    .local v12, "lat":D
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v18

    .line 239
    .local v18, "slat":Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 240
    const-string v21, "GPSLatitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v22, "GPSLatitudeRef"

    const-wide/16 v23, 0x0

    cmpl-double v21, v12, v23

    if-lez v21, :cond_3

    const-string v21, "N"

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 245
    .local v14, "lon":D
    invoke-static {v14, v15}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v19

    .line 246
    .local v19, "slon":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 247
    const-string v21, "GPSLongitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v22, "GPSLongitudeRef"

    const-wide/16 v23, 0x0

    cmpl-double v21, v14, v23

    if-lez v21, :cond_4

    const-string v21, "E"

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v18    # "slat":Ljava/lang/String;
    .end local v19    # "slon":Ljava/lang/String;
    :cond_2
    const-string v21, "Orientation"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-nez p5, :cond_5

    const/16 v20, 0x0

    .line 259
    .local v20, "wb":I
    :goto_3
    const-string v21, "WhiteBalance"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v6, 0x0

    .line 262
    .local v6, "EXIF_FLASH_UNKNOWN":I
    const/16 v5, 0x8

    .line 263
    .local v5, "EXIF_FLASH_ON":I
    const/16 v4, 0x10

    .line 264
    .local v4, "EXIF_FLASH_OFF":I
    const/16 v3, 0x18

    .line 265
    .local v3, "EXIF_FLASH_AUTO":I
    const/16 v7, 0x20

    .line 269
    .local v7, "EXIF_FLASH_UNSUPPORTED":I
    packed-switch p6, :pswitch_data_0

    .line 281
    const/4 v11, 0x0

    .line 286
    .local v11, "exifFlash":I
    :goto_4
    const-string v21, "Flash"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :try_start_1
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object v9, v10

    .line 293
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    goto/16 :goto_0

    .line 241
    .end local v3    # "EXIF_FLASH_AUTO":I
    .end local v4    # "EXIF_FLASH_OFF":I
    .end local v5    # "EXIF_FLASH_ON":I
    .end local v6    # "EXIF_FLASH_UNKNOWN":I
    .end local v7    # "EXIF_FLASH_UNSUPPORTED":I
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "exifFlash":I
    .end local v20    # "wb":I
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    .restart local v12    # "lat":D
    .restart local v18    # "slat":Ljava/lang/String;
    :cond_3
    const-string v21, "S"

    goto :goto_1

    .line 248
    .restart local v14    # "lon":D
    .restart local v19    # "slon":Ljava/lang/String;
    :cond_4
    const-string v21, "W"

    goto :goto_2

    .line 257
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v18    # "slat":Ljava/lang/String;
    .end local v19    # "slon":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x1

    goto :goto_3

    .line 272
    .restart local v3    # "EXIF_FLASH_AUTO":I
    .restart local v4    # "EXIF_FLASH_OFF":I
    .restart local v5    # "EXIF_FLASH_ON":I
    .restart local v6    # "EXIF_FLASH_UNKNOWN":I
    .restart local v7    # "EXIF_FLASH_UNSUPPORTED":I
    .restart local v20    # "wb":I
    :pswitch_0
    const/16 v11, 0x8

    .line 273
    .restart local v11    # "exifFlash":I
    goto :goto_4

    .line 275
    .end local v11    # "exifFlash":I
    :pswitch_1
    const/16 v11, 0x18

    .line 276
    .restart local v11    # "exifFlash":I
    goto :goto_4

    .line 278
    .end local v11    # "exifFlash":I
    :pswitch_2
    const/16 v11, 0x10

    .line 279
    .restart local v11    # "exifFlash":I
    goto :goto_4

    .line 290
    :catch_1
    move-exception v8

    .line 291
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v21, "ImageSavingUtils"

    const-string v22, "saveAttributes is failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J

    .prologue
    const/4 v3, 0x0

    .line 192
    const-string v1, "ImageSavingUtils"

    const-string v2, "setImageSize E"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    :cond_0
    const-string v1, "ImageSavingUtils"

    const-string v2, "setImageSize X"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public static updatePostSavingFile(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J

    .prologue
    const/4 v9, 0x0

    .line 202
    const-string v6, "ImageSavingUtils"

    const-string v7, "updatePostSavingFile"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 205
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 206
    .local v3, "time":Landroid/text/format/Time;
    iget-object v6, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 207
    .local v4, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 208
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 210
    .local v1, "dateTaken":J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v6, "date_modified"

    const-wide/16 v7, 0x3e8

    div-long v7, v1, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0, p1, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    :cond_0
    return-void
.end method
