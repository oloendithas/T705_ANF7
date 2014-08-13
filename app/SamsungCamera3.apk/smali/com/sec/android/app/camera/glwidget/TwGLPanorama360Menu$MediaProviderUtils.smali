.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;
.super Ljava/lang/Object;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaProviderUtils"
.end annotation


# static fields
.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;Landroid/net/Uri;IIJI)Landroid/net/Uri;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "storageUri"    # Landroid/net/Uri;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "cityId"    # J
    .param p12, "weatherId"    # I

    .prologue
    .line 3317
    const-string v5, "TwGLPanorama360Menu"

    const-string v6, "MediaProviderUtils addImage "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3319
    :cond_0
    const/4 v5, 0x0

    .line 3352
    :goto_0
    return-object v5

    .line 3322
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3323
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3325
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3326
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3329
    .local v3, "time":J
    if-eqz p3, :cond_2

    const/16 v5, 0x5a

    if-eq p3, v5, :cond_2

    const/16 v5, 0xb4

    if-eq p3, v5, :cond_2

    const/16 v5, 0x10e

    if-eq p3, v5, :cond_2

    .line 3331
    const/4 p3, 0x0

    .line 3334
    :cond_2
    if-eqz p6, :cond_3

    .line 3335
    const-string v5, "latitude"

    invoke-virtual {p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3336
    const-string v5, "longitude"

    invoke-virtual {p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3339
    :cond_3
    const-string v5, "title"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const-string v5, "_display_name"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    const-string v5, "datetaken"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3343
    const-string v5, "date_modified"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3344
    const-string v5, "mime_type"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    const-string v5, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3346
    const-string v5, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    const-string v5, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3348
    const-string v5, "width"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3349
    const-string v5, "height"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3350
    const-string v5, "spherical_mosaic"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3352
    invoke-virtual {p0, p7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;IIJI)Landroid/net/Uri;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "cityId"    # J
    .param p11, "weatherId"    # I

    .prologue
    .line 3313
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;Landroid/net/Uri;IIJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createDateStringForAppSeg(J)Ljava/lang/String;
    .locals 3
    .param p0, "dateTaken"    # J

    .prologue
    .line 3306
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3307
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3308
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3309
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
