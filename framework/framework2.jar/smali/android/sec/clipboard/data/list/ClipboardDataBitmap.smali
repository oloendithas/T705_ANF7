.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExtraDataPath:Ljava/lang/String;

.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z

.field private mValue:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private CompareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 34
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v10, 0x5

    .line 355
    .local v10, "compareCount":I
    const/16 v11, 0x80

    .line 357
    .local v11, "compareSize":I
    const/4 v2, 0x0

    .line 358
    .local v2, "Result":Z
    const/16 v17, 0x0

    .line 359
    .local v17, "fisSrc":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 362
    .local v15, "fisDest":Ljava/io/FileInputStream;
    :try_start_7
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_42

    .line 363
    .end local v17    # "fisSrc":Ljava/io/FileInputStream;
    .local v18, "fisSrc":Ljava/io/FileInputStream;
    :try_start_10
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_19} :catch_1cf

    .line 369
    .end local v15    # "fisDest":Ljava/io/FileInputStream;
    .local v16, "fisDest":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 372
    .local v14, "fileSize":I
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 373
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v14, v0, :cond_5d

    .line 375
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 376
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3c} :catch_48

    move-object/from16 v15, v16

    .end local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v15    # "fisDest":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v17    # "fisSrc":Ljava/io/FileInputStream;
    move v3, v2

    .line 463
    .end local v2    # "Result":Z
    .end local v14    # "fileSize":I
    .local v3, "Result":I
    :goto_41
    return v3

    .line 364
    .end local v3    # "Result":I
    .restart local v2    # "Result":Z
    :catch_42
    move-exception v12

    .line 365
    .local v12, "e":Ljava/io/FileNotFoundException;
    :goto_43
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v2

    .line 366
    .restart local v3    # "Result":I
    goto :goto_41

    .line 379
    .end local v3    # "Result":I
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v15    # "fisDest":Ljava/io/FileInputStream;
    .end local v17    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v14    # "fileSize":I
    .restart local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v18    # "fisSrc":Ljava/io/FileInputStream;
    :catch_48
    move-exception v12

    .line 380
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 382
    :try_start_4c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 383
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_58

    :goto_52
    move-object/from16 v15, v16

    .end local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v15    # "fisDest":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v17    # "fisSrc":Ljava/io/FileInputStream;
    move v3, v2

    .line 387
    .restart local v3    # "Result":I
    goto :goto_41

    .line 384
    .end local v3    # "Result":I
    .end local v15    # "fisDest":Ljava/io/FileInputStream;
    .end local v17    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v18    # "fisSrc":Ljava/io/FileInputStream;
    :catch_58
    move-exception v13

    .line 385
    .local v13, "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_52

    .line 390
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e1":Ljava/io/IOException;
    :cond_5d
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_74

    .line 393
    :try_start_63
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 394
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_6f

    :goto_69
    move-object/from16 v15, v16

    .end local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v15    # "fisDest":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v17    # "fisSrc":Ljava/io/FileInputStream;
    move v3, v2

    .line 398
    .restart local v3    # "Result":I
    goto :goto_41

    .line 395
    .end local v3    # "Result":I
    .end local v15    # "fisDest":Ljava/io/FileInputStream;
    .end local v17    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v18    # "fisSrc":Ljava/io/FileInputStream;
    :catch_6f
    move-exception v13

    .line 396
    .restart local v13    # "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_69

    .line 401
    .end local v13    # "e1":Ljava/io/IOException;
    :cond_74
    const/16 v27, 0x80

    move/from16 v0, v27

    if-gt v14, v0, :cond_f6

    move v9, v14

    .line 403
    .local v9, "buffSize":I
    :goto_7b
    const/16 v21, 0x0

    .line 405
    .local v21, "iCnt":I
    div-int v26, v14, v9

    .line 406
    .local v26, "tmp":I
    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_f9

    const/16 v21, 0x5

    .line 410
    :goto_89
    const/16 v22, 0x0

    .line 412
    .local v22, "offset":I
    mul-int v27, v9, v21

    sub-int v26, v14, v27

    .line 413
    div-int v22, v26, v21

    .line 416
    const/4 v4, 0x1

    .line 418
    .local v4, "bSameData":Z
    const/4 v7, 0x0

    .line 419
    .local v7, "bisSrc":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 423
    .local v5, "bisDest":Ljava/io/BufferedInputStream;
    const/16 v23, 0x0

    .line 424
    .local v23, "position":I
    :try_start_96
    new-array v0, v9, [B

    move-object/from16 v25, v0

    .line 425
    .local v25, "readSrcData":[B
    new-array v0, v9, [B

    move-object/from16 v24, v0

    .line 427
    .local v24, "readDestData":[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a5} :catch_11f
    .catchall {:try_start_96 .. :try_end_a5} :catchall_15e

    .line 428
    .end local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    .local v8, "bisSrc":Ljava/io/BufferedInputStream;
    :try_start_a5
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ac} :catch_1c6
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_1bf

    .line 430
    .end local v5    # "bisDest":Ljava/io/BufferedInputStream;
    .local v6, "bisDest":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .local v19, "i1":I
    :goto_ae
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_101

    if-eqz v4, :cond_101

    .line 432
    const/16 v27, 0x0

    :try_start_b8
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 433
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 435
    add-int v27, v9, v22

    add-int v23, v23, v27

    .line 437
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v8, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 438
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 440
    const/16 v20, 0x0

    .local v20, "i2":I
    :goto_e2
    move/from16 v0, v20

    if-ge v0, v9, :cond_fe

    if-eqz v4, :cond_fe

    .line 441
    aget-byte v27, v25, v20

    aget-byte v28, v24, v20
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ec} :catch_1ca
    .catchall {:try_start_b8 .. :try_end_ec} :catchall_1c2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_fc

    const/4 v4, 0x1

    .line 440
    :goto_f3
    add-int/lit8 v20, v20, 0x1

    goto :goto_e2

    .line 401
    .end local v4    # "bSameData":Z
    .end local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v9    # "buffSize":I
    .end local v19    # "i1":I
    .end local v20    # "i2":I
    .end local v21    # "iCnt":I
    .end local v22    # "offset":I
    .end local v23    # "position":I
    .end local v24    # "readDestData":[B
    .end local v25    # "readSrcData":[B
    .end local v26    # "tmp":I
    :cond_f6
    const/16 v9, 0x80

    goto :goto_7b

    .restart local v9    # "buffSize":I
    .restart local v21    # "iCnt":I
    .restart local v26    # "tmp":I
    :cond_f9
    move/from16 v21, v26

    .line 406
    goto :goto_89

    .line 441
    .restart local v4    # "bSameData":Z
    .restart local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v19    # "i1":I
    .restart local v20    # "i2":I
    .restart local v22    # "offset":I
    .restart local v23    # "position":I
    .restart local v24    # "readDestData":[B
    .restart local v25    # "readSrcData":[B
    :cond_fc
    const/4 v4, 0x0

    goto :goto_f3

    .line 430
    :cond_fe
    add-int/lit8 v19, v19, 0x1

    goto :goto_ae

    .line 451
    .end local v20    # "i2":I
    :cond_101
    if-eqz v8, :cond_106

    :try_start_103
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 452
    :cond_106
    if-eqz v6, :cond_10b

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 453
    :cond_10b
    if-eqz v18, :cond_110

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 454
    :cond_110
    if-eqz v16, :cond_115

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_115} :catch_199

    :cond_115
    :goto_115
    move-object v5, v6

    .end local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v5    # "bisDest":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 461
    .end local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v19    # "i1":I
    .end local v24    # "readDestData":[B
    .end local v25    # "readSrcData":[B
    .restart local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    :cond_117
    :goto_117
    move v2, v4

    move-object/from16 v15, v16

    .end local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v15    # "fisDest":Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v17    # "fisSrc":Ljava/io/FileInputStream;
    move v3, v2

    .line 463
    .restart local v3    # "Result":I
    goto/16 :goto_41

    .line 444
    .end local v3    # "Result":I
    .end local v15    # "fisDest":Ljava/io/FileInputStream;
    .end local v17    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v16    # "fisDest":Ljava/io/FileInputStream;
    .restart local v18    # "fisSrc":Ljava/io/FileInputStream;
    :catch_11f
    move-exception v12

    .line 445
    .restart local v12    # "e":Ljava/io/IOException;
    :goto_120
    :try_start_120
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_15e

    .line 446
    const/4 v4, 0x0

    .line 451
    if-eqz v7, :cond_129

    :try_start_126
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 452
    :cond_129
    if-eqz v5, :cond_12e

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 453
    :cond_12e
    if-eqz v18, :cond_133

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 454
    :cond_133
    if-eqz v16, :cond_117

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_138} :catch_139

    goto :goto_117

    .line 455
    :catch_139
    move-exception v12

    .line 456
    sget-boolean v27, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v27, :cond_15a

    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_15a
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_117

    .line 450
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_15e
    move-exception v27

    .line 451
    :goto_15f
    if-eqz v7, :cond_164

    :try_start_161
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 452
    :cond_164
    if-eqz v5, :cond_169

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 453
    :cond_169
    if-eqz v18, :cond_16e

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 454
    :cond_16e
    if-eqz v16, :cond_173

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_173} :catch_174

    .line 450
    :cond_173
    :goto_173
    throw v27

    .line 455
    :catch_174
    move-exception v12

    .line 456
    .restart local v12    # "e":Ljava/io/IOException;
    sget-boolean v28, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v28, :cond_195

    const-string v28, "ClipboardServiceEx"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "close : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_195
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_173

    .line 455
    .end local v5    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v19    # "i1":I
    .restart local v24    # "readDestData":[B
    .restart local v25    # "readSrcData":[B
    :catch_199
    move-exception v12

    .line 456
    .restart local v12    # "e":Ljava/io/IOException;
    sget-boolean v27, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v27, :cond_1ba

    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1ba
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_115

    .line 450
    .end local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v19    # "i1":I
    .restart local v5    # "bisDest":Ljava/io/BufferedInputStream;
    :catchall_1bf
    move-exception v27

    move-object v7, v8

    .end local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    goto :goto_15f

    .end local v5    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v19    # "i1":I
    :catchall_1c2
    move-exception v27

    move-object v5, v6

    .end local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v5    # "bisDest":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    goto :goto_15f

    .line 444
    .end local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v19    # "i1":I
    .restart local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    :catch_1c6
    move-exception v12

    move-object v7, v8

    .end local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    goto/16 :goto_120

    .end local v5    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v19    # "i1":I
    :catch_1ca
    move-exception v12

    move-object v5, v6

    .end local v6    # "bisDest":Ljava/io/BufferedInputStream;
    .restart local v5    # "bisDest":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "bisSrc":Ljava/io/BufferedInputStream;
    .restart local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    goto/16 :goto_120

    .line 364
    .end local v4    # "bSameData":Z
    .end local v5    # "bisDest":Ljava/io/BufferedInputStream;
    .end local v7    # "bisSrc":Ljava/io/BufferedInputStream;
    .end local v9    # "buffSize":I
    .end local v14    # "fileSize":I
    .end local v16    # "fisDest":Ljava/io/FileInputStream;
    .end local v19    # "i1":I
    .end local v21    # "iCnt":I
    .end local v22    # "offset":I
    .end local v23    # "position":I
    .end local v24    # "readDestData":[B
    .end local v25    # "readSrcData":[B
    .end local v26    # "tmp":I
    .restart local v15    # "fisDest":Ljava/io/FileInputStream;
    :catch_1cf
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "fisSrc":Ljava/io/FileInputStream;
    .restart local v17    # "fisSrc":Ljava/io/FileInputStream;
    goto/16 :goto_43
.end method

.method private compareFileSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "f1"    # Ljava/lang/String;
    .param p2, "f2"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v1, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    .line 344
    const/4 v2, 0x1

    .line 347
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetBitmapPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetExtraDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetHtmlUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public HasExtraData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 299
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_e

    .line 300
    :cond_d
    const/4 v0, 0x0

    .line 302
    :cond_e
    return v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 8
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 89
    .local v0, "Result":Z
    if-eqz v0, :cond_a

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_a
    move v1, v0

    .line 123
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_b
    return v1

    .line 91
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_c
    packed-switch p1, :pswitch_data_2e

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_f
    move v1, v0

    .line 123
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_b

    .line 94
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_11
    const/4 v0, 0x0

    .line 95
    goto :goto_f

    .line 99
    :pswitch_13
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetHtmlUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetExtraDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v3, v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 102
    goto :goto_f

    .line 105
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_26
    const/4 v0, 0x0

    .line 106
    goto :goto_f

    .line 109
    :pswitch_28
    const/4 v0, 0x0

    .line 110
    goto :goto_f

    .line 113
    :pswitch_2a
    const/4 v0, 0x0

    .line 114
    goto :goto_f

    .line 118
    :pswitch_2c
    const/4 v0, 0x0

    goto :goto_f

    .line 91
    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_11
        :pswitch_13
        :pswitch_26
        :pswitch_28
        :pswitch_2a
        :pswitch_2c
    .end packed-switch
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;)Z
    .registers 7
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "Result":Z
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    :cond_a
    move v1, v0

    .line 192
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_b
    return v1

    .line 179
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_c
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v3, :cond_15

    .line 180
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 181
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 183
    :cond_15
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 185
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 187
    const/4 v0, 0x1

    :cond_23
    :goto_23
    move v1, v0

    .line 192
    .restart local v1    # "Result":I
    goto :goto_b

    .line 189
    .end local v1    # "Result":I
    :cond_25
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_23

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public SetBitmapPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "HtmlUrl"    # Ljava/lang/String;
    .param p3, "ExtraDataPath"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "ClipboardServiceEx"

    const-string v5, "SetBitmapPath( String FilePath , String HtmlUrl, String ExtraDataPath )"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_b
    const/4 v1, 0x0

    .line 210
    .local v1, "Result":Z
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_17

    :cond_15
    move v2, v1

    .line 246
    .end local v1    # "Result":Z
    .local v2, "Result":I
    :goto_16
    return v2

    .line 213
    .end local v2    # "Result":I
    .restart local v1    # "Result":Z
    :cond_17
    iget-boolean v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v4, :cond_20

    .line 214
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 215
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 217
    :cond_20
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 220
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_48

    .line 221
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_46

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtmlUrl ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_46
    iput-object p2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 226
    :cond_48
    if-eqz p3, :cond_6e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6e

    .line 227
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v4, :cond_6c

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExtraDataPath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_6c
    iput-object p3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    .line 231
    :cond_6e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 233
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 234
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "ExtraDataFile":Ljava/io/File;
    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 236
    const/4 v1, 0x1

    .end local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_8d
    :goto_8d
    move v2, v1

    .line 246
    .restart local v2    # "Result":I
    goto :goto_16

    .line 238
    .end local v2    # "Result":I
    .restart local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_8f
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_8d

    const-string v4, "ClipboardServiceEx"

    const-string v5, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 241
    .end local v0    # "ExtraDataFile":Ljava/io/File;
    :cond_9b
    const/4 v1, 0x1

    goto :goto_8d

    .line 244
    :cond_9d
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_8d

    const-string v4, "ClipboardServiceEx"

    const-string v5, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d
.end method

.method public SetExtraDataPath(Ljava/lang/String;)Z
    .registers 7
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "Result":Z
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    :cond_a
    move v1, v0

    .line 262
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_b
    return v1

    .line 255
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_c
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    .line 256
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 258
    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    move v1, v0

    .line 262
    .restart local v1    # "Result":I
    goto :goto_b

    .line 260
    .end local v1    # "Result":I
    :cond_1c
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1a

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 132
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 314
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "ClipboardServiceEx"

    const-string v5, "bitmap equals"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_b
    const/4 v0, 0x0

    .line 316
    .local v0, "result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    move v1, v0

    .line 333
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_13
    return v1

    .line 319
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_14
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v4, :cond_1a

    move v1, v0

    .line 320
    .restart local v1    # "result":I
    goto :goto_13

    .end local v1    # "result":I
    :cond_1a
    move-object v3, p1

    .line 322
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 323
    .local v3, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "trgBmp":Ljava/lang/String;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3d

    .line 326
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->CompareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 327
    const/4 v0, 0x1

    .line 328
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_3d

    const-string v4, "ClipboardServiceEx"

    const-string v5, "bitmap equals"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move v1, v0

    .line 333
    .restart local v1    # "result":I
    goto :goto_13
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 493
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 494
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 495
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 496
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    .line 497
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v1, :cond_56

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataBitmap : readFormSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_56
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v1, :cond_74

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataBitmap : readFormSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_75

    .line 505
    :cond_74
    :goto_74
    return-void

    .line 501
    :catch_75
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFormSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Bitmap class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 468
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 472
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 486
    return-void
.end method
