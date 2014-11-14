.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "FileHelper"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->tag:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "bitmapPath"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 429
    const/4 v3, 0x2

    .line 430
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 432
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 437
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 440
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 446
    :try_start_c
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "ClipboardServiceEx"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_17
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_78

    move-result-object v1

    .line 456
    :cond_1b
    :goto_1b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_45
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_6b

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_6b
    :goto_6b
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_85

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_85

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 448
    :catch_78
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_85
    add-int/lit8 v3, v3, -0x1

    .line 467
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 471
    const/4 v4, 0x0

    :try_start_8a
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 472
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8f} :catch_91

    move-result-object v1

    .line 479
    :cond_90
    :goto_90
    return-object v1

    .line 473
    :catch_91
    move-exception v2

    .line 475
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_90

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 545
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 567
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createTemporaryThumnailImage(Ljava/lang/String;)Z
    .registers 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 297
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 300
    .local v0, "Result":Z
    const/16 v7, 0x14a

    const/16 v8, 0xf0

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 302
    if-nez v2, :cond_2c

    .line 303
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2a

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 332
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_2b
    return v1

    .line 307
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2c
    const/4 v4, 0x0

    .line 310
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_47
    .catchall {:try_start_2d .. :try_end_32} :catchall_96

    .line 312
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 313
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_eb
    .catchall {:try_start_34 .. :try_end_3b} :catchall_e8

    .line 314
    const/4 v0, 0x1

    .line 322
    :cond_3c
    if-eqz v5, :cond_41

    .line 323
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_c2

    :cond_41
    :goto_41
    move-object v4, v5

    .line 331
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 332
    .restart local v1    # "Result":I
    goto :goto_2b

    .line 317
    .end local v1    # "Result":I
    :catch_47
    move-exception v3

    .line 318
    .local v3, "e":Ljava/lang/Exception;
    :goto_48
    :try_start_48
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_68

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumnailImage~Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_68
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_48 .. :try_end_6b} :catchall_96

    .line 322
    if-eqz v4, :cond_42

    .line 323
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_42

    .line 325
    :catch_71
    move-exception v3

    .line 326
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_92

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_92
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_42

    .line 321
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_96
    move-exception v7

    .line 322
    :goto_97
    if-eqz v4, :cond_9c

    .line 323
    :try_start_99
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 321
    :cond_9c
    :goto_9c
    throw v7

    .line 325
    :catch_9d
    move-exception v3

    .line 326
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_be

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_be
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9c

    .line 325
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_c2
    move-exception v3

    .line 326
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_e3

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_e3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_41

    .line 321
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_e8
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_97

    .line 317
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_eb
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_48
.end method

.method public createThumnailFromData(Landroid/content/ContentResolver;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;
    .registers 19
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 338
    const/4 v6, 0x0

    .line 339
    .local v6, "htmlClip":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    if-eqz p2, :cond_50

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2e

    move-object/from16 v6, p2

    .line 341
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 350
    if-nez v6, :cond_70

    .line 351
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_2c

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData() is false because htmlClip was not set. htmlClip :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_2c
    const/4 v10, 0x0

    .line 422
    :goto_2d
    return-object v10

    .line 343
    :cond_2e
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_4e

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData() is false because clip is not html type. clip.GetFomat() :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4e
    const/4 v10, 0x0

    goto :goto_2d

    .line 347
    :cond_50
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_6e

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_6e
    const/4 v10, 0x0

    goto :goto_2d

    .line 355
    :cond_70
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_7b

    const-string v12, "ClipboardServiceEx"

    const-string v13, "Create preview image for html data in createThumnailFromData()"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_7b
    const/4 v1, 0x0

    .line 357
    .local v1, "bm":Landroid/graphics/Bitmap;
    const-string v7, ""

    .line 359
    .local v7, "sFileName":Ljava/lang/String;
    :try_start_7e
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_95} :catch_ac

    move-result-object v7

    .line 368
    :cond_96
    :goto_96
    if-eqz v7, :cond_ce

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_ce

    .line 369
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_aa

    const-string v12, "ClipboardServiceEx"

    const-string v13, "getFirstImage : FileName is empty."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_aa
    const/4 v10, 0x0

    goto :goto_2d

    .line 364
    :catch_ac
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_96

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFirstImage : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 373
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_ce
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v12, :cond_eb

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sFileName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_eb
    if-eqz v7, :cond_19f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x7

    if-le v12, v13, :cond_19f

    const/4 v12, 0x0

    const/4 v13, 0x7

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_19f

    .line 377
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v12, :cond_11e

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "downloadSimpleBitmap : Webpath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_11e
    const/16 v12, 0x99

    const/16 v13, 0x56

    :try_start_122
    invoke-static {v7, v12, v13}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_171

    move-result-object v1

    .line 392
    :cond_126
    :goto_126
    if-eqz v1, :cond_22a

    .line 393
    const-string v9, "/data/clipboard/temp/"

    .line 394
    .local v9, "tempFolderPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v8, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 397
    new-instance v2, Ljava/io/File;

    const-string/jumbo v12, "previewhtemlclipboarditem"

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v2, "createFile":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, "thumFullPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 401
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_158
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15d} :catch_1d1
    .catchall {:try_start_158 .. :try_end_15d} :catchall_223

    .line 402
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_166

    .line 403
    :try_start_15f
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x32

    invoke-virtual {v1, v12, v13, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_166} :catch_27b
    .catchall {:try_start_15f .. :try_end_166} :catchall_278

    .line 410
    :cond_166
    if-eqz v5, :cond_16b

    .line 411
    :try_start_168
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_252

    :cond_16b
    :goto_16b
    move-object v4, v5

    .line 419
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_16c
    :goto_16c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2d

    .line 381
    .end local v2    # "createFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "tempFolder":Ljava/io/File;
    .end local v9    # "tempFolderPath":Ljava/lang/String;
    .end local v10    # "thumFullPath":Ljava/lang/String;
    :catch_171
    move-exception v3

    .line 382
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_19c

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - Error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_19c
    const/4 v10, 0x0

    goto/16 :goto_2d

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_19f
    if-eqz p1, :cond_126

    if-eqz v7, :cond_126

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_126

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "content://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_126

    .line 387
    const-string v12, "ClipboardServiceEx"

    const-string v13, "getUriPathBitmap..."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 389
    .local v11, "uri":Landroid/net/Uri;
    const/16 v12, 0x99

    const/16 v13, 0x56

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_126

    .line 405
    .end local v11    # "uri":Landroid/net/Uri;
    .restart local v2    # "createFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "tempFolder":Ljava/io/File;
    .restart local v9    # "tempFolderPath":Ljava/lang/String;
    .restart local v10    # "thumFullPath":Ljava/lang/String;
    :catch_1d1
    move-exception v3

    .line 406
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_1d2
    :try_start_1d2
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_1f3

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "makeDataValue~Exception :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1f3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f6
    .catchall {:try_start_1d2 .. :try_end_1f6} :catchall_223

    .line 410
    if-eqz v4, :cond_16c

    .line 411
    :try_start_1f8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1fb} :catch_1fd

    goto/16 :goto_16c

    .line 413
    :catch_1fd
    move-exception v3

    .line 414
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_21e

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_21e
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_16c

    .line 409
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_223
    move-exception v12

    .line 410
    :goto_224
    if-eqz v4, :cond_229

    .line 411
    :try_start_226
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_229
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_229} :catch_22d

    .line 409
    :cond_229
    :goto_229
    throw v12

    .line 422
    .end local v2    # "createFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "tempFolder":Ljava/io/File;
    .end local v9    # "tempFolderPath":Ljava/lang/String;
    .end local v10    # "thumFullPath":Ljava/lang/String;
    :cond_22a
    const/4 v10, 0x0

    goto/16 :goto_2d

    .line 413
    .restart local v2    # "createFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "tempFolder":Ljava/io/File;
    .restart local v9    # "tempFolderPath":Ljava/lang/String;
    .restart local v10    # "thumFullPath":Ljava/lang/String;
    :catch_22d
    move-exception v3

    .line 414
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v13, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v13, :cond_24e

    const-string v13, "ClipboardServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_24e
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_229

    .line 413
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_252
    move-exception v3

    .line 414
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_273

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_273
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_16b

    .line 409
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_278
    move-exception v12

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_224

    .line 405
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_27b
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1d2
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .registers 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 207
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 213
    .local v0, "Result":Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 216
    if-nez v2, :cond_2c

    .line 217
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2a

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 246
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_2b
    return v1

    .line 221
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2c
    const/4 v4, 0x0

    .line 224
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_47
    .catchall {:try_start_2d .. :try_end_32} :catchall_96

    .line 226
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 227
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_eb
    .catchall {:try_start_34 .. :try_end_3b} :catchall_e8

    .line 228
    const/4 v0, 0x1

    .line 236
    :cond_3c
    if-eqz v5, :cond_41

    .line 237
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_c2

    :cond_41
    :goto_41
    move-object v4, v5

    .line 245
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 246
    .restart local v1    # "Result":I
    goto :goto_2b

    .line 231
    .end local v1    # "Result":I
    :catch_47
    move-exception v3

    .line 232
    .local v3, "e":Ljava/lang/Exception;
    :goto_48
    :try_start_48
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_68

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumnailImage~Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_68
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_48 .. :try_end_6b} :catchall_96

    .line 236
    if-eqz v4, :cond_42

    .line 237
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_42

    .line 239
    :catch_71
    move-exception v3

    .line 240
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_92

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_92
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_42

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_96
    move-exception v7

    .line 236
    :goto_97
    if-eqz v4, :cond_9c

    .line 237
    :try_start_99
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 235
    :cond_9c
    :goto_9c
    throw v7

    .line 239
    :catch_9d
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_be

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_be
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9c

    .line 239
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_c2
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_e3

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_e3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_41

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_e8
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_97

    .line 231
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_eb
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_48
.end method

.method public createThumnailImage(Ljava/lang/String;II)Z
    .registers 15
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "thumFullPath":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 256
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 258
    .local v0, "Result":Z
    if-nez v2, :cond_27

    .line 259
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_25

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move v1, v0

    .line 288
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_26
    return v1

    .line 263
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_27
    const/4 v4, 0x0

    .line 266
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_28
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_42
    .catchall {:try_start_28 .. :try_end_2d} :catchall_91

    .line 268
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_37

    .line 269
    :try_start_2f
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_e6
    .catchall {:try_start_2f .. :try_end_36} :catchall_e3

    .line 270
    const/4 v0, 0x1

    .line 278
    :cond_37
    if-eqz v5, :cond_3c

    .line 279
    :try_start_39
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_bd

    :cond_3c
    :goto_3c
    move-object v4, v5

    .line 287
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3d
    :goto_3d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 288
    .restart local v1    # "Result":I
    goto :goto_26

    .line 273
    .end local v1    # "Result":I
    :catch_42
    move-exception v3

    .line 274
    .local v3, "e":Ljava/lang/Exception;
    :goto_43
    :try_start_43
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_63

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumnailImage~Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_63
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_91

    .line 278
    if-eqz v4, :cond_3d

    .line 279
    :try_start_68
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_3d

    .line 281
    :catch_6c
    move-exception v3

    .line 282
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_8d

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_8d
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3d

    .line 277
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_91
    move-exception v7

    .line 278
    :goto_92
    if-eqz v4, :cond_97

    .line 279
    :try_start_94
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 277
    :cond_97
    :goto_97
    throw v7

    .line 281
    :catch_98
    move-exception v3

    .line 282
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_b9

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_b9
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_97

    .line 281
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_bd
    move-exception v3

    .line 282
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_de

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_de
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3c

    .line 277
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_e3
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_92

    .line 273
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_e6
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_43
.end method

.method public delete(Ljava/io/File;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 579
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 580
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 593
    :cond_9
    :goto_9
    return-void

    .line 584
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 585
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 586
    .local v4, "list":[Ljava/io/File;
    if-eqz v4, :cond_9

    .line 587
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_19
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    .line 588
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 590
    .end local v1    # "f":Ljava/io/File;
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 19
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 84
    const/4 v7, 0x0

    .line 85
    .local v7, "Result":Z
    const/4 v10, 0x0

    .line 86
    .local v10, "inputStream":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 89
    .local v12, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 90
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v2, v3, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 91
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_18} :catch_57
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_18} :catch_a4

    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .local v11, "inputStream":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 102
    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    :goto_19
    :try_start_19
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_20} :catch_aa

    .line 109
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v10, :cond_24

    if-nez v13, :cond_11b

    .line 110
    :cond_24
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_4a

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "break fileCopy()...because of inputStream :"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", or outputStream :"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4a
    if-eqz v13, :cond_4f

    .line 113
    :try_start_4c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 115
    :cond_4f
    if-eqz v10, :cond_54

    .line 116
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_54} :catch_f8

    :cond_54
    :goto_54
    move-object v12, v13

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    move v8, v7

    .line 155
    .end local v7    # "Result":Z
    .local v8, "Result":I
    :goto_56
    return v8

    .line 93
    .end local v8    # "Result":I
    .restart local v7    # "Result":Z
    :catch_57
    move-exception v9

    .line 94
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_78

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_78
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_a2

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    move v8, v7

    .line 96
    .restart local v8    # "Result":I
    goto :goto_56

    .line 97
    .end local v8    # "Result":I
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_a4
    move-exception v9

    .line 98
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_19

    .line 103
    .end local v9    # "e":Ljava/io/IOException;
    :catch_aa
    move-exception v9

    .line 104
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_cb

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_cb
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_f5

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    move v8, v7

    .line 106
    .restart local v8    # "Result":I
    goto/16 :goto_56

    .line 118
    .end local v8    # "Result":I
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    :catch_f8
    move-exception v9

    .line 119
    .local v9, "e":Ljava/io/IOException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_54

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close~ IOException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 124
    .end local v9    # "e":Ljava/io/IOException;
    :cond_11b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 125
    .local v1, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 127
    .local v6, "fcout":Ljava/nio/channels/FileChannel;
    :try_start_123
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 128
    .local v4, "lSize":J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 130
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 131
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 133
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 134
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_138} :catch_151
    .catchall {:try_start_123 .. :try_end_138} :catchall_1d8

    .line 135
    const/4 v7, 0x1

    .line 144
    if-eqz v1, :cond_13e

    :try_start_13b
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 145
    :cond_13e
    if-eqz v6, :cond_143

    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 146
    :cond_143
    if-eqz v10, :cond_148

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 147
    :cond_148
    if-eqz v13, :cond_14d

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_14d} :catch_213

    .end local v4    # "lSize":J
    :cond_14d
    :goto_14d
    move-object v12, v13

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outputStream":Ljava/io/FileOutputStream;
    move v8, v7

    .line 155
    .restart local v8    # "Result":I
    goto/16 :goto_56

    .line 136
    .end local v8    # "Result":I
    .end local v12    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    :catch_151
    move-exception v9

    .line 137
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_152
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_172

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ IOException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_172
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_19c

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19c
    .catchall {:try_start_152 .. :try_end_19c} :catchall_1d8

    .line 139
    :cond_19c
    const/4 v7, 0x0

    .line 144
    if-eqz v1, :cond_1a2

    :try_start_19f
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 145
    :cond_1a2
    if-eqz v6, :cond_1a7

    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 146
    :cond_1a7
    if-eqz v10, :cond_1ac

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 147
    :cond_1ac
    if-eqz v13, :cond_14d

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1b1} :catch_1b2

    goto :goto_14d

    .line 148
    :catch_1b2
    move-exception v9

    .line 149
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1d3

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1d3
    :goto_1d3
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_14d

    .line 143
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1d8
    move-exception v2

    .line 144
    if-eqz v1, :cond_1de

    :try_start_1db
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 145
    :cond_1de
    if-eqz v6, :cond_1e3

    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 146
    :cond_1e3
    if-eqz v10, :cond_1e8

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 147
    :cond_1e8
    if-eqz v13, :cond_1ed

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1ed} :catch_1ee

    .line 143
    :cond_1ed
    :goto_1ed
    throw v2

    .line 148
    :catch_1ee
    move-exception v9

    .line 149
    .restart local v9    # "e":Ljava/io/IOException;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_20f

    const-string v3, "ClipboardServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_20f
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1ed

    .line 148
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "lSize":J
    :catch_213
    move-exception v9

    .line 149
    .restart local v9    # "e":Ljava/io/IOException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1d3

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d3
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 572
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 574
    .local v0, "list":[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 529
    const-string v1, ""

    .line 530
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "ext":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 532
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 536
    :goto_17
    return-object v1

    .line 534
    :cond_18
    const-string/jumbo v1, "unmounted"

    goto :goto_17
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 488
    const/4 v5, 0x0

    .line 489
    .local v5, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 490
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 492
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "ClipboardServiceEx"

    const-string v7, "load object file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_13} :catch_29
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_13} :catch_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_7a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_a1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_13} :catch_c9
    .catchall {:try_start_3 .. :try_end_13} :catchall_f2

    .line 494
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_148
    .catch Ljava/io/StreamCorruptedException; {:try_start_13 .. :try_end_18} :catch_13f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_18} :catch_136
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_12d
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_18} :catch_126
    .catchall {:try_start_13 .. :try_end_18} :catchall_11f

    .line 495
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_18
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_14c
    .catch Ljava/io/StreamCorruptedException; {:try_start_18 .. :try_end_1b} :catch_143
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1b} :catch_13a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_131
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_129
    .catchall {:try_start_18 .. :try_end_1b} :catchall_122

    move-result-object v5

    .line 513
    if-eqz v4, :cond_21

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 514
    :cond_21
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_10e

    :cond_26
    :goto_26
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 520
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "result":Ljava/lang/Object;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_28
    :goto_28
    return-object v5

    .line 496
    .restart local v5    # "result":Ljava/lang/Object;
    :catch_29
    move-exception v0

    .line 497
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2a
    :try_start_2a
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_35

    const-string v6, "ClipboardServiceEx"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_f2

    .line 513
    if-eqz v3, :cond_3d

    :try_start_3a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 514
    :cond_3d
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_28

    .line 515
    :catch_43
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4f

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28

    .line 499
    .end local v0    # "e":Ljava/io/IOException;
    :catch_53
    move-exception v0

    .line 500
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_54
    :try_start_54
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_5f

    const-string v6, "ClipboardServiceEx"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_54 .. :try_end_62} :catchall_f2

    .line 513
    if-eqz v3, :cond_67

    :try_start_64
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 514
    :cond_67
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6c} :catch_6d

    goto :goto_28

    .line 515
    :catch_6d
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4f

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7a
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_7b
    :try_start_7b
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_86

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_f2

    .line 513
    if-eqz v3, :cond_8e

    :try_start_8b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 514
    :cond_8e
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_93} :catch_94

    goto :goto_28

    .line 515
    :catch_94
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4f

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 505
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a1
    move-exception v0

    .line 506
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_a2
    :try_start_a2
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_ad

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_ad
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_a2 .. :try_end_b0} :catchall_f2

    .line 513
    if-eqz v3, :cond_b5

    :try_start_b2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 514
    :cond_b5
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_ba} :catch_bc

    goto/16 :goto_28

    .line 515
    :catch_bc
    move-exception v0

    .line 516
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4f

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 508
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c9
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/ClassCastException;
    :goto_ca
    :try_start_ca
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_d5

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassCastException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_d5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_ca .. :try_end_d8} :catchall_f2

    .line 513
    if-eqz v3, :cond_dd

    :try_start_da
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 514
    :cond_dd
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_e2} :catch_e4

    goto/16 :goto_28

    .line 515
    :catch_e4
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4f

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_f2
    move-exception v6

    .line 513
    :goto_f3
    if-eqz v3, :cond_f8

    :try_start_f5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 514
    :cond_f8
    if-eqz v1, :cond_fd

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fd} :catch_fe

    .line 512
    :cond_fd
    :goto_fd
    throw v6

    .line 515
    :catch_fe
    move-exception v0

    .line 516
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_10a

    const-string v7, "ClipboardServiceEx"

    const-string v8, "close IOException"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_10a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_fd

    .line 515
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_10e
    move-exception v0

    .line 516
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_11a

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_11a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_26

    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_11f
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_f3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_122
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_f3

    .line 508
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_126
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_ca

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_129
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_ca

    .line 505
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_12d
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a2

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_131
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a2

    .line 502
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_136
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_7b

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_13a
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_7b

    .line 499
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_13f
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_54

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_143
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_54

    .line 496
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_148
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2a

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_14c
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2a
.end method

.method public makeDir(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 554
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 555
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 556
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 558
    :cond_13
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 168
    if-nez p2, :cond_10

    .line 169
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "ClipboardServiceEx"

    const-string/jumbo v7, "obj == null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_e
    const/4 v5, 0x0

    .line 196
    :cond_f
    :goto_f
    return v5

    .line 174
    :cond_10
    const/4 v5, 0x1

    .line 175
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 176
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 179
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_2d
    .catchall {:try_start_13 .. :try_end_18} :catchall_83

    .line 180
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_e1
    .catchall {:try_start_18 .. :try_end_1d} :catchall_da

    .line 181
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1d
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_e5
    .catchall {:try_start_1d .. :try_end_20} :catchall_dd

    .line 188
    if-eqz v4, :cond_25

    :try_start_22
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 189
    :cond_25
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_b4

    :cond_2a
    :goto_2a
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 194
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 182
    :catch_2d
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    :goto_2e
    :try_start_2e
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4f

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveObjectFile~IOException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_83

    .line 185
    const/4 v5, 0x0

    .line 188
    if-eqz v3, :cond_58

    :try_start_55
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 189
    :cond_58
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_5e

    goto :goto_f

    .line 190
    :catch_5e
    move-exception v0

    .line 191
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_7f

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_7f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_83
    move-exception v6

    .line 188
    :goto_84
    if-eqz v3, :cond_89

    :try_start_86
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 189
    :cond_89
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_8f

    .line 187
    :cond_8e
    :goto_8e
    throw v6

    .line 190
    :catch_8f
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_b0

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_b0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8e

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_b4
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_d5

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_d5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2a

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_da
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_84

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_dd
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_84

    .line 182
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_e1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2e

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_e5
    move-exception v0

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2e
.end method
