.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 542
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 544
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .registers 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .prologue
    .line 582
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 585
    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 587
    .local v6, "c":Landroid/database/Cursor;
    :try_start_26
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_36

    move-result-object v6

    .line 590
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 592
    :cond_35
    return-void

    .line 590
    :catchall_36
    move-exception v0

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 552
    .local v6, "thumbUri":Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_3
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 553
    .local v4, "thumbId":J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 555
    const-string/jumbo v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 556
    .local v3, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 558
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_23} :catch_6c

    .line 567
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thumbId":J
    :goto_23
    return-object v0

    .line 559
    :catch_24
    move-exception v1

    .line 560
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 561
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_48
    move-exception v1

    .line 562
    .local v1, "ex":Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 563
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_6c
    move-exception v1

    .line 564
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to allocate memory for thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 32
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    .prologue
    .line 611
    const/4 v13, 0x0

    .line 612
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 616
    .local v17, "filePath":Ljava/lang/String;
    const/4 v14, 0x0

    .line 617
    .local v14, "c":Landroid/database/Cursor;
    new-instance v22, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_a3

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_a
    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 619
    .local v22, "thumbFile":Landroid/media/MiniThumbFile;
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "thumbnails"

    const-string/jumbo v7, "media"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 623
    .local v4, "uri":Landroid/net/Uri;
    :try_start_2d
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v18

    .line 625
    .local v18, "magic":J
    const-wide/16 v20, 0x0

    .line 626
    .local v20, "mini_thumb_magic":J
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v7, "mini_thumb_magic"

    aput-object v7, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 627
    if-eqz v14, :cond_56

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 628
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 630
    :cond_56
    if-eqz v14, :cond_5b

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_5b
    const-wide/16 v7, 0x0

    cmp-long v3, v18, v7

    if-eqz v3, :cond_10a

    cmp-long v3, v18, v20

    if-nez v3, :cond_10a

    .line 632
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_be

    .line 633
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_6d} :catch_aa
    .catchall {:try_start_2d .. :try_end_6d} :catchall_219

    .line 634
    :try_start_6d
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_77

    .line 635
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 637
    :cond_77
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_96

    .line 638
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 639
    if-nez v13, :cond_96

    .line 640
    const-string v3, "MediaStore"

    const-string v7, "couldn\'t decode byte array."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_96
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_6d .. :try_end_97} :catchall_a7

    .line 726
    if-eqz v14, :cond_9c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_9c
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 729
    const/16 v22, 0x0

    move-object v3, v13

    .line 731
    .end local v18    # "magic":J
    .end local v20    # "mini_thumb_magic":J
    :goto_a2
    return-object v3

    .line 617
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v22    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_a3
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_a

    .line 643
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v18    # "magic":J
    .restart local v20    # "mini_thumb_magic":J
    .restart local v22    # "thumbFile":Landroid/media/MiniThumbFile;
    :catchall_a7
    move-exception v3

    :try_start_a8
    monitor-exit v5
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    :try_start_a9
    throw v3
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a9 .. :try_end_aa} :catch_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_219

    .line 723
    .end local v18    # "magic":J
    .end local v20    # "mini_thumb_magic":J
    :catch_aa
    move-exception v16

    .line 724
    .local v16, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_ab
    const-string v3, "MediaStore"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_219

    .line 726
    if-eqz v14, :cond_b7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_b7
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 729
    .end local v16    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_ba
    const/16 v22, 0x0

    move-object v3, v13

    .line 731
    goto :goto_a2

    .line 645
    .restart local v18    # "magic":J
    .restart local v20    # "mini_thumb_magic":J
    :cond_be
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_10a

    .line 646
    if-eqz p8, :cond_107

    :try_start_c5
    const-string/jumbo v15, "video_id="

    .line 647
    .local v15, "column":Ljava/lang/String;
    :goto_c8
    sget-object v7, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 648
    if-eqz v14, :cond_10a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 649
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c5 .. :try_end_f8} :catch_aa
    .catchall {:try_start_c5 .. :try_end_f8} :catchall_219

    move-result-object v13

    .line 650
    if-eqz v13, :cond_10a

    .line 726
    if-eqz v14, :cond_100

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_100
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 729
    const/16 v22, 0x0

    move-object v3, v13

    .line 651
    goto :goto_a2

    .line 646
    .end local v15    # "column":Ljava/lang/String;
    :cond_107
    :try_start_107
    const-string v15, "image_id="

    goto :goto_c8

    .line 657
    :cond_10a
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "blocking"

    const-string v7, "1"

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 660
    .local v6, "blockingUri":Landroid/net/Uri;
    if-eqz v14, :cond_134

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_134
    sget-object v7, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_107 .. :try_end_13e} :catch_aa
    .catchall {:try_start_107 .. :try_end_13e} :catchall_219

    move-result-object v14

    .line 663
    if-nez v14, :cond_14e

    const/4 v3, 0x0

    .line 726
    if-eqz v14, :cond_147

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_147
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 729
    :goto_14a
    const/16 v22, 0x0

    goto/16 :goto_a2

    .line 666
    :cond_14e
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_225

    .line 668
    if-eqz v14, :cond_158

    :try_start_155
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_158
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "mini_thumb_magic"

    aput-object v5, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 670
    if-eqz v14, :cond_178

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_178

    .line 671
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 673
    :cond_178
    if-eqz v14, :cond_17d

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_17d
    const-wide/16 v7, 0x0

    cmp-long v3, v20, v7

    if-eqz v3, :cond_1bc

    .line 675
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v18

    .line 676
    cmp-long v3, v18, v20

    if-nez v3, :cond_1bc

    .line 677
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_192
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_155 .. :try_end_192} :catch_aa
    .catchall {:try_start_155 .. :try_end_192} :catchall_219

    .line 678
    :try_start_192
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_19c

    .line 679
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 681
    :cond_19c
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_1bb

    .line 682
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 683
    if-nez v13, :cond_1bb

    .line 684
    const-string v3, "MediaStore"

    const-string v7, "couldn\'t decode byte array."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_1bb
    monitor-exit v5
    :try_end_1bc
    .catchall {:try_start_192 .. :try_end_1bc} :catchall_216

    .line 700
    :cond_1bc
    :goto_1bc
    if-nez v13, :cond_278

    .line 701
    :try_start_1be
    const-string v3, "MediaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create the thumbnail in memory: origId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", kind="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isVideo="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    if-nez v17, :cond_26e

    .line 705
    if-eqz v14, :cond_1f7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_1f7
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 707
    if-eqz v14, :cond_20b

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_208
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1be .. :try_end_208} :catch_aa
    .catchall {:try_start_1be .. :try_end_208} :catchall_219

    move-result v3

    if-nez v3, :cond_25c

    .line 708
    :cond_20b
    const/4 v3, 0x0

    .line 726
    if-eqz v14, :cond_211

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_211
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    goto/16 :goto_14a

    .line 687
    :catchall_216
    move-exception v3

    :try_start_217
    monitor-exit v5
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    :try_start_218
    throw v3
    :try_end_219
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_218 .. :try_end_219} :catch_aa
    .catchall {:try_start_218 .. :try_end_219} :catchall_219

    .line 726
    .end local v6    # "blockingUri":Landroid/net/Uri;
    .end local v18    # "magic":J
    .end local v20    # "mini_thumb_magic":J
    :catchall_219
    move-exception v3

    if-eqz v14, :cond_21f

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_21f
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 729
    const/16 v22, 0x0

    .line 726
    throw v3

    .line 690
    .restart local v6    # "blockingUri":Landroid/net/Uri;
    .restart local v18    # "magic":J
    .restart local v20    # "mini_thumb_magic":J
    :cond_225
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_241

    .line 691
    :try_start_22a
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 692
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 693
    if-eqz v14, :cond_1bc

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1bc

    .line 696
    :cond_241
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported kind: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 710
    :cond_25c
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_260
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22a .. :try_end_260} :catch_aa
    .catchall {:try_start_22a .. :try_end_260} :catchall_219

    move-result-object v17

    .line 713
    if-nez v17, :cond_26e

    .line 714
    const/4 v3, 0x0

    .line 726
    if-eqz v14, :cond_269

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_269
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    goto/16 :goto_14a

    .line 717
    :cond_26e
    if-eqz p8, :cond_282

    .line 718
    :try_start_270
    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_277
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_270 .. :try_end_277} :catch_aa
    .catchall {:try_start_270 .. :try_end_277} :catchall_219

    move-result-object v13

    .line 726
    :cond_278
    :goto_278
    if-eqz v14, :cond_27d

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_27d
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    goto/16 :goto_ba

    .line 720
    :cond_282
    :try_start_282
    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_289
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_282 .. :try_end_289} :catch_aa
    .catchall {:try_start_282 .. :try_end_289} :catchall_219

    move-result-object v13

    goto :goto_278
.end method
