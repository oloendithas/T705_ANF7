.class public Lcom/sec/android/app/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Util$BackgroundJob;
    }
.end annotation


# static fields
.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field public static final DEBUG:Z

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final DIRECTION_DOWN:I = 0x3

.field private static final DIRECTION_LEFT:I = 0x0

.field private static final DIRECTION_RIGHT:I = 0x1

.field private static final DIRECTION_UP:I = 0x2

.field private static final EPSILON:D = 9.999999747378752E-6

.field private static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final INVALID_CHAR:[Ljava/lang/String;

.field public static final NO_RECYCLE_INPUT:Z = false

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static final RECYCLE_INPUT:Z = true

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static mDecodingData:[B

.field private static mLocation:[I

.field private static sIsTabletUI:Z

.field private static sNullOnClickListener:Landroid/view/View$OnClickListener;

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    const/high16 v0, 0x3f800000

    sput v0, Lcom/sec/android/app/camera/Util;->sPixelDensity:F

    .line 117
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    .line 119
    const/16 v0, 0x4000

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/app/camera/Util;->mDecodingData:[B

    .line 121
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v0, v1

    const-string v1, "/"

    aput-object v1, v0, v2

    const-string v1, ":"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/Util;->INVALID_CHAR:[Ljava/lang/String;

    .line 868
    new-array v0, v4, [I

    sput-object v0, Lcom/sec/android/app/camera/Util;->mLocation:[I

    return-void

    :cond_0
    move v0, v2

    .line 117
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 468
    if-nez p0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 471
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 942
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 943
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 947
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v0, "takePhotoIntent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 951
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 953
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 954
    return-void
.end method

.method public static broadcastNewVideo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 958
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    return-void
.end method

.method public static broadcastNewVideo(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 963
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 965
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 966
    .local v0, "recordVideoIntent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 967
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 969
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 970
    return-void
.end method

.method public static broadcastVoiceControl(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 973
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 974
    .local v0, "voiceIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 976
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 978
    return-void
.end method

.method public static byteArrayToInt([BI)I
    .locals 5
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1158
    const/4 v3, 0x0

    .line 1159
    .local v3, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    .line 1160
    mul-int/lit8 v1, v0, 0x8

    .line 1161
    .local v1, "shift":I
    add-int v4, v0, p1

    aget-byte v2, p0, v4

    .line 1162
    .local v2, "tmp":I
    if-gez v2, :cond_0

    .line 1163
    add-int/lit16 v2, v2, 0x100

    .line 1164
    :cond_0
    and-int/lit16 v4, v2, 0xff

    shl-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    .end local v1    # "shift":I
    .end local v2    # "tmp":I
    :cond_1
    return v3
.end method

.method public static calculateOrientation(IZ)I
    .locals 4
    .param p0, "orientation"    # I
    .param p1, "isFlip"    # Z

    .prologue
    .line 1358
    move v0, p0

    .line 1359
    .local v0, "rotation":I
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front orientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/16 v1, 0x5a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p0, v1, :cond_1

    .line 1361
    :cond_0
    if-eqz p1, :cond_2

    .line 1362
    rem-int/lit16 v0, p0, 0x168

    .line 1363
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front rotation2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_1
    :goto_0
    return v0

    .line 1365
    :cond_2
    add-int/lit16 v1, p0, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 1366
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Front rotation3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 576
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 600
    if-le p0, p2, :cond_0

    .line 604
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 602
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 603
    goto :goto_0

    :cond_1
    move p2, p0

    .line 604
    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 342
    if-nez p0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 332
    if-nez p0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    .line 225
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 226
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 228
    .local v0, "h":D
    if-gez p2, :cond_1

    move v2, v6

    .line 229
    .local v2, "lowerBound":I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 231
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 241
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 228
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 229
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 236
    .restart local v3    # "upperBound":I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 237
    goto :goto_2

    .line 238
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 241
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 212
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 215
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 221
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static convertExifOrientationToMediaOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1293
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 1294
    const/16 v0, 0x5a

    .line 1300
    :goto_0
    return v0

    .line 1295
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1296
    const/16 v0, 0xb4

    goto :goto_0

    .line 1297
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 1298
    const/16 v0, 0x10e

    goto :goto_0

    .line 1300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1437
    const/4 v13, 0x0

    .line 1438
    .local v13, "result":Ljava/lang/String;
    if-eqz p0, :cond_3

    const-string v17, "storage/emulated"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1439
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "storage/emulated"

    const-string v19, "data/media"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1440
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v10, "directory":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1443
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v3, "camera":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 1445
    .local v6, "dcim":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    .line 1447
    .local v14, "root":Ljava/io/File;
    const/4 v4, 0x0

    .line 1448
    .local v4, "cameraString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1450
    .local v8, "dcimString":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 1451
    .local v16, "root_files":[Ljava/io/File;
    move-object/from16 v2, v16

    .local v2, "arr$":[Ljava/io/File;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v15, v2, v11

    .line 1452
    .local v15, "rootFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1453
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "DCIM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_4

    .line 1454
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1460
    .end local v15    # "rootFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 1461
    .local v9, "dcim_files":[Ljava/io/File;
    move-object v2, v9

    array-length v12, v2

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_1

    aget-object v7, v2, v11

    .line 1462
    .local v7, "dcimFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1463
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Camera"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_5

    .line 1464
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1469
    .end local v7    # "dcimFile":Ljava/io/File;
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    .line 1470
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1471
    .local v5, "convString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "storage/emulated"

    const-string v19, "data/media"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1474
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "camera":Ljava/io/File;
    .end local v4    # "cameraString":Ljava/lang/String;
    .end local v5    # "convString":Ljava/lang/String;
    .end local v6    # "dcim":Ljava/io/File;
    .end local v8    # "dcimString":Ljava/lang/String;
    .end local v9    # "dcim_files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "root":Ljava/io/File;
    .end local v16    # "root_files":[Ljava/io/File;
    :cond_2
    const-string v17, "Util"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Convert filepath: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    .end local v10    # "directory":Ljava/io/File;
    :cond_3
    return-object v13

    .line 1451
    .restart local v2    # "arr$":[Ljava/io/File;
    .restart local v3    # "camera":Ljava/io/File;
    .restart local v4    # "cameraString":Ljava/lang/String;
    .restart local v6    # "dcim":Ljava/io/File;
    .restart local v8    # "dcimString":Ljava/lang/String;
    .restart local v10    # "directory":Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "root":Ljava/io/File;
    .restart local v15    # "rootFile":Ljava/io/File;
    .restart local v16    # "root_files":[Ljava/io/File;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1461
    .end local v15    # "rootFile":Ljava/io/File;
    .restart local v7    # "dcimFile":Ljava/io/File;
    .restart local v9    # "dcim_files":[Ljava/io/File;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method public static convertToExifInterfaceOrientation(I)I
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1280
    const/16 v1, 0x5a

    if-ne p0, v1, :cond_1

    .line 1281
    const/4 v0, 0x6

    .line 1289
    :cond_0
    :goto_0
    return v0

    .line 1282
    :cond_1
    const/16 v1, 0xb4

    if-ne p0, v1, :cond_2

    .line 1283
    const/4 v0, 0x3

    goto :goto_0

    .line 1284
    :cond_2
    const/16 v1, 0x10e

    if-ne p0, v1, :cond_3

    .line 1285
    const/16 v0, 0x8

    goto :goto_0

    .line 1286
    :cond_3
    const/16 v1, 0x168

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_0

    goto :goto_0
.end method

.method public static convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "data/media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data/media"

    const-string v3, "storage/emulated"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert filepath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    return-object v0
.end method

.method public static createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 1305
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 1306
    .local v2, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1307
    .local v1, "degree":I
    invoke-static {v2, p0}, Lcom/sec/android/app/camera/Util;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1308
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 1309
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1313
    :cond_0
    const v3, 0xc800

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1314
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1315
    return-object v0
.end method

.method public static createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 538
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 541
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    return-object v0
.end method

.method public static createSetAsIntent(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/content/Intent;
    .locals 4
    .param p0, "image"    # Lcom/sec/android/app/camera/gallery/IImage;

    .prologue
    .line 529
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 530
    .local v1, "u":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v2, "mimeType"

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    return-object v0
.end method

.method public static decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "data"    # [B
    .param p1, "outRotation"    # [Ljava/lang/Integer;

    .prologue
    .line 1176
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ge v14, v15, :cond_2

    .line 1177
    :cond_0
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v2, 0x0

    .line 1276
    :cond_1
    :goto_0
    return-object v2

    .line 1182
    :cond_2
    const/4 v14, 0x0

    aget-byte v14, p0, v14

    const/16 v15, 0x52

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    aget-byte v14, p0, v14

    const/16 v15, 0x47

    if-ne v14, v15, :cond_3

    const/4 v14, 0x2

    aget-byte v14, p0, v14

    const/16 v15, 0x42

    if-ne v14, v15, :cond_3

    const/4 v14, 0x3

    aget-byte v14, p0, v14

    const/16 v15, 0x41

    if-eq v14, v15, :cond_4

    .line 1183
    :cond_3
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v2, 0x0

    goto :goto_0

    .line 1189
    :cond_4
    const/4 v14, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v13

    .line 1190
    .local v13, "width":I
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v6

    .line 1191
    .local v6, "height":I
    const/16 v14, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1197
    .local v10, "rotation":I
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int v15, v13, v6

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x10

    if-ge v14, v15, :cond_5

    .line 1198
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v2, 0x0

    goto :goto_0

    .line 1192
    .end local v6    # "height":I
    .end local v10    # "rotation":I
    .end local v13    # "width":I
    :catch_0
    move-exception v5

    .line 1193
    .local v5, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v2, 0x0

    goto :goto_0

    .line 1204
    .end local v5    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "height":I
    .restart local v10    # "rotation":I
    .restart local v13    # "width":I
    :cond_5
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1212
    .local v2, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x10

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1213
    .local v1, "bbuf":Ljava/nio/ByteBuffer;
    const/16 v14, 0x10

    move-object/from16 v0, p0

    array-length v15, v0

    add-int/lit8 v15, v15, -0x10

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v14, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1214
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 1215
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1216
    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1218
    move v9, v13

    .line 1219
    .local v9, "realWidth":I
    move v8, v6

    .line 1221
    .local v8, "realHeight":I
    if-eqz v10, :cond_7

    .line 1223
    const/4 v11, 0x0

    .line 1224
    .local v11, "transX":I
    const/4 v12, 0x0

    .line 1226
    .local v12, "transY":I
    :goto_1
    if-gez v10, :cond_6

    .line 1227
    add-int/lit16 v10, v10, 0x168

    goto :goto_1

    .line 1205
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "realHeight":I
    .end local v9    # "realWidth":I
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :catch_1
    move-exception v7

    .line 1206
    .local v7, "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1229
    .end local v7    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "realHeight":I
    .restart local v9    # "realWidth":I
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_6
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x5a

    if-ne v14, v15, :cond_8

    .line 1230
    move v9, v6

    .line 1231
    move v8, v13

    .line 1232
    const/16 v10, -0x5a

    .line 1233
    const/4 v11, 0x0

    .line 1234
    move v12, v13

    .line 1253
    :goto_2
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 1261
    .local v4, "cvBmp":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1262
    .local v3, "cv":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1263
    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1264
    int-to-float v14, v10

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1265
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1266
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1268
    const/4 v2, 0x0

    .line 1269
    move-object v2, v4

    .line 1272
    .end local v3    # "cv":Landroid/graphics/Canvas;
    .end local v4    # "cvBmp":Landroid/graphics/Bitmap;
    .end local v11    # "transX":I
    .end local v12    # "transY":I
    :cond_7
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_1

    .line 1273
    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, p1, v14

    goto/16 :goto_0

    .line 1235
    .restart local v11    # "transX":I
    .restart local v12    # "transY":I
    :cond_8
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0xb4

    if-ne v14, v15, :cond_9

    .line 1236
    const/16 v10, 0xb4

    .line 1237
    move v11, v13

    .line 1238
    move v12, v6

    goto :goto_2

    .line 1239
    :cond_9
    rem-int/lit16 v14, v10, 0x168

    const/16 v15, 0x10e

    if-ne v14, v15, :cond_a

    .line 1240
    move v9, v6

    .line 1241
    move v8, v13

    .line 1242
    const/16 v10, 0x5a

    .line 1243
    move v11, v6

    .line 1244
    const/4 v12, 0x0

    goto :goto_2

    .line 1246
    :cond_a
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Util.decodeRgbaBitmap: Rotation flag is invalid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). Discarded thumbnail."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v2, 0x0

    .line 1248
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1254
    :catch_2
    move-exception v7

    .line 1255
    .restart local v7    # "oom":Ljava/lang/OutOfMemoryError;
    const-string v14, "Util"

    const-string v15, "Util.decodeRgbaBitmap: Out of memory [2]"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v2, 0x0

    .line 1257
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 594
    sub-float v0, p0, p2

    .line 595
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 596
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dpToPixel(I)I
    .locals 2
    .param p0, "dp"    # I

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dumpParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 4
    .param p0, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "flattened":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "Util"

    const-string v3, "Dump all camera parameters:"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    const-string v2, "Util"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    :cond_0
    return-void
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 911
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void
.end method

.method public static enterLightsOutMode(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1057
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1058
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1059
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 580
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 475
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 988
    :goto_0
    return-void

    .line 984
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 986
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 987
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 991
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 998
    :goto_0
    return-void

    .line 994
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 995
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 996
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 997
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static floatDivide(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1344
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1345
    .local v0, "val1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1346
    .local v1, "val2":Ljava/math/BigDecimal;
    const/4 v2, 0x5

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    return v2
.end method

.method public static floatEquals(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1373
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b580000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floatMulitiply(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1338
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1339
    .local v0, "val1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1340
    .local v1, "val2":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    return v2
.end method

.method public static getCameraFacing(I)I
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 674
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 675
    .local v0, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    invoke-static {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 676
    iget v1, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    return v1
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    .line 840
    const/4 v1, -0x1

    .line 842
    .local v1, "cameraId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 844
    .local v3, "intentCameraId":I
    invoke-static {v3}, Lcom/sec/android/app/camera/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 846
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 847
    .local v2, "frontCameraId":I
    if-eq v2, v6, :cond_0

    .line 848
    move v1, v2

    .line 857
    .end local v2    # "frontCameraId":I
    :cond_0
    :goto_0
    return v1

    .line 850
    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/camera/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 852
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 853
    .local v0, "backCameraId":I
    if-eq v0, v6, :cond_0

    .line 854
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 668
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 669
    .local v0, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    invoke-static {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 670
    iget v1, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .param p0, "degrees"    # I
    .param p1, "cameraId"    # I

    .prologue
    .line 655
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 656
    .local v0, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    invoke-static {p1, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 658
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 659
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 660
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 664
    :goto_0
    return v1

    .line 662
    .end local v1    # "result":I
    :cond_0
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 609
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 619
    :goto_0
    :pswitch_0
    return v1

    .line 613
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 615
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 617
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getHelpVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1409
    const/4 v1, 0x0

    .line 1411
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1418
    :goto_0
    if-nez v1, :cond_0

    .line 1419
    const/4 v2, 0x1

    .line 1421
    :goto_1
    return v2

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1421
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1
.end method

.method public static getMaxPreviewSize(Landroid/app/Activity;Ljava/util/List;)Landroid/graphics/Point;
    .locals 6
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 705
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 707
    if-nez p1, :cond_1

    .line 718
    :cond_0
    return-object v0

    .line 711
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 712
    .local v2, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 713
    iget v3, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 714
    iget v3, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static declared-synchronized getNullOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 458
    const-class v1, Lcom/sec/android/app/camera/Util;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/sec/android/app/camera/Util$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/Util$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    .line 464
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 15
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p2, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;D)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 724
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p1, :cond_1

    .line 725
    const/4 v6, 0x0

    .line 767
    :cond_0
    return-object v6

    .line 727
    :cond_1
    const/4 v6, 0x0

    .line 728
    .local v6, "optimalSize":Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x7fefffffffffffffL

    .line 736
    .local v4, "minDiff":D
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 737
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 739
    .local v10, "targetHeight":I
    if-gtz v10, :cond_2

    .line 741
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 745
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 746
    .local v9, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 747
    .local v7, "ratio":D
    sub-double v11, v7, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_3

    .line 749
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_3

    .line 750
    move-object v6, v9

    .line 751
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_0

    .line 757
    .end local v7    # "ratio":D
    .end local v9    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_4
    if-nez v6, :cond_0

    .line 758
    const-string v11, "Util"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-wide v4, 0x7fefffffffffffffL

    .line 760
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 761
    .restart local v9    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_5

    .line 762
    move-object v6, v9

    .line 763
    iget v11, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_1
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 11
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;D)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 774
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_1

    .line 775
    const/4 v3, 0x0

    .line 799
    :cond_0
    return-object v3

    .line 777
    :cond_1
    const/4 v3, 0x0

    .line 780
    .local v3, "optimalSize":Lcom/sec/android/seccamera/SecCamera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 781
    .local v6, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v7, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v9, v9

    div-double v4, v7, v9

    .line 782
    .local v4, "ratio":D
    sub-double v7, v4, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_2

    .line 784
    if-eqz v3, :cond_3

    iget v7, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v8, v3, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-le v7, v8, :cond_2

    .line 785
    :cond_3
    move-object v3, v6

    goto :goto_0

    .line 791
    .end local v4    # "ratio":D
    .end local v6    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_4
    if-nez v3, :cond_0

    .line 792
    const-string v7, "Util"

    const-string v8, "No picture size match the aspect ratio"

    invoke-static {v7, v8}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 794
    .restart local v6    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    if-eqz v3, :cond_6

    iget v7, v6, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v8, v3, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-le v7, v8, :cond_5

    .line 795
    :cond_6
    move-object v3, v6

    goto :goto_1
.end method

.method public static getOrientationFromtDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 623
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 624
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 634
    :goto_0
    :pswitch_0
    return v1

    .line 628
    :pswitch_1
    const/16 v1, 0x10e

    goto :goto_0

    .line 630
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 632
    :pswitch_3
    const/16 v1, 0x5a

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRobotoLightFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 1537
    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getTransformedEventByScreenOrientation(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "screenOrientation"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 1520
    sparse-switch p1, :sswitch_data_0

    .line 1533
    :goto_0
    return-object p0

    .line 1522
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1525
    :sswitch_1
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1528
    :sswitch_2
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1520
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1425
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1426
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 1428
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    :goto_0
    return v1

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1431
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "s":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 324
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 323
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/sec/android/app/camera/Util;->sIsTabletUI:Z

    .line 131
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 132
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 133
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/sec/android/app/camera/Util;->sPixelDensity:F

    .line 137
    return-void

    .line 129
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V
    .locals 4
    .param p0, "win"    # Landroid/view/Window;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1063
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1064
    .local v0, "mode":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1065
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1066
    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1067
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1069
    .end local v1    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    .line 865
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 1350
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "CountryCode":Ljava/lang/String;
    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1352
    :cond_0
    const/4 v1, 0x1

    .line 1354
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceLandscape(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 638
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 640
    .local v0, "rotation":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 861
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKNOXMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, "knoxMode":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 1491
    .local v2, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1492
    const-string v3, "persona"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 1493
    .local v1, "mPersona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1494
    const/4 v0, 0x1

    .line 1502
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :cond_0
    :goto_0
    return v0

    .line 1498
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1499
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMmsCapable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 815
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 816
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_0

    .line 835
    :goto_0
    return v5

    .line 821
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-array v1, v5, [Ljava/lang/Class;

    .line 822
    .local v1, "partypes":[Ljava/lang/Class;
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string v6, "isVoiceCapable"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 824
    .local v3, "sIsVoiceCapable":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    .line 825
    .local v0, "arglist":[Ljava/lang/Object;
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 826
    .local v2, "retobj":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "retobj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 833
    .end local v0    # "arglist":[Ljava/lang/Object;
    .end local v1    # "partypes":[Ljava/lang/Class;
    .end local v3    # "sIsVoiceCapable":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 835
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 830
    :catch_1
    move-exception v5

    goto :goto_1

    .line 827
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1378
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 1379
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 1380
    :cond_0
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    .end local v0    # "enable":I
    :goto_0
    return v2

    .line 1383
    .restart local v0    # "enable":I
    :cond_1
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    const/4 v2, 0x1

    goto :goto_0

    .line 1386
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 1387
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1393
    const/4 v1, 0x0

    .line 1394
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 1396
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/sec/android/app/camera/Util;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1397
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1401
    :goto_0
    if-nez v2, :cond_0

    .line 1402
    const-string v3, "Util"

    const-string v5, "HelpMenu pkgInfo is null"

    invoke-static {v3, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :goto_1
    return v4

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1405
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    if-ne v1, v3, :cond_1

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public static isTabletUI()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/sec/android/app/camera/Util;->sIsTabletUI:Z

    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 877
    if-nez p0, :cond_0

    .line 890
    :goto_0
    return v2

    .line 881
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 882
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 883
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 888
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 886
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 382
    if-nez p4, :cond_0

    .line 383
    :try_start_0
    invoke-static {p2, p3}, Lcom/sec/android/app/camera/Util;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 384
    :cond_0
    if-nez p4, :cond_1

    .line 405
    invoke-static {p4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v3

    .line 386
    :cond_1
    if-nez p5, :cond_2

    .line 387
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    move-object p5, v2

    .line 389
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 390
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 391
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v4

    invoke-virtual {v4, v1, p5}, Lcom/sec/android/app/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 392
    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_4

    .line 405
    :cond_3
    invoke-static {p4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 395
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Lcom/sec/android/app/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 396
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 398
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 399
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 400
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v4

    invoke-virtual {v4, v1, p5}, Lcom/sec/android/app/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 405
    invoke-static {p4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 401
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v4, "Util"

    const-string v5, "Got oom exception "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    invoke-static {p4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    invoke-static {p4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v3
.end method

.method public static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "useNative"    # Z

    .prologue
    .line 357
    const/4 v4, 0x0

    .line 359
    .local v4, "input":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 360
    const/4 v5, 0x0

    .line 361
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz p4, :cond_0

    .line 362
    invoke-static {}, Lcom/sec/android/app/camera/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :cond_0
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 364
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 368
    invoke-static {v4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 365
    :catch_0
    move-exception v6

    .line 366
    .local v6, "ex":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 368
    invoke-static {v4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method public static makeBitmap(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "useNative"    # Z

    .prologue
    const/4 v2, 0x0

    .line 373
    const/4 v5, 0x0

    .line 374
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz p3, :cond_0

    .line 375
    invoke-static {}, Lcom/sec/android/app/camera/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :cond_0
    move v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    .line 377
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "mFilePath"    # Ljava/lang/String;
    .param p1, "sampleSize"    # I

    .prologue
    .line 431
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 433
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 434
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 435
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 436
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 437
    sget-object v2, Lcom/sec/android/app/camera/Util;->mDecodingData:[B

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 438
    const/16 v2, 0x1e0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 439
    const/16 v2, 0x168

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 441
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 445
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 411
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 412
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 413
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 414
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 425
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 417
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/sec/android/app/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 418
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 420
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 421
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 422
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 423
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 451
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 453
    :goto_0
    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static moveAnimatedPhotoFile(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)V
    .locals 14
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1574
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1575
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1577
    :cond_0
    const/4 v1, 0x0

    .line 1578
    .local v1, "src":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 1581
    .local v0, "dst":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1582
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1583
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    if-eqz v0, :cond_1

    .line 1586
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 1588
    :cond_1
    if-eqz v1, :cond_2

    .line 1589
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 1591
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1593
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1595
    .local v10, "tempName":Ljava/lang/String;
    const-string v2, "Camera/"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const-string v3, ".gif"

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1597
    .local v11, "titleName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1598
    .local v5, "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1600
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 1601
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1602
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1604
    .local v9, "idIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1605
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1607
    .end local v9    # "idIndex":I
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1610
    :cond_4
    return-void

    .line 1585
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "tempName":Ljava/lang/String;
    .end local v11    # "titleName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object v13, v2

    if-eqz v0, :cond_5

    .line 1586
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 1588
    :cond_5
    if-eqz v1, :cond_6

    .line 1589
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 1591
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1593
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1595
    .restart local v10    # "tempName":Ljava/lang/String;
    const-string v2, "Camera/"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const-string v3, ".gif"

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1597
    .restart local v11    # "titleName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1598
    .restart local v5    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1600
    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_8

    .line 1601
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1602
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1604
    .restart local v9    # "idIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1605
    .restart local v12    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1607
    .end local v9    # "idIndex":I
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1585
    :cond_8
    throw v13
.end method

.method public static final multiplyMM([F[F[F)V
    .locals 9
    .param p0, "result"    # [F
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1548
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    aget v0, p1, v4

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v8

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v4

    .line 1553
    aget v0, p1, v5

    aget v1, p2, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v5

    .line 1554
    aget v0, p1, v6

    aget v1, p2, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v6

    .line 1555
    aget v0, p1, v7

    aget v1, p2, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p1, v1

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    aget v2, p2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v7

    .line 1557
    aget v0, p1, v4

    aget v1, p2, v8

    mul-float/2addr v0, v1

    aget v1, p1, v8

    const/4 v2, 0x5

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    const/4 v2, 0x6

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    const/4 v2, 0x7

    aget v2, p2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v8

    .line 1558
    const/4 v0, 0x5

    aget v1, p1, v5

    aget v2, p2, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1559
    const/4 v0, 0x6

    aget v1, p1, v6

    aget v2, p2, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1560
    const/4 v0, 0x7

    aget v1, p1, v7

    aget v2, p2, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p1, v2

    const/4 v3, 0x7

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1562
    const/16 v0, 0x8

    aget v1, p1, v4

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    aget v2, p1, v8

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1563
    const/16 v0, 0x9

    aget v1, p1, v5

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1564
    const/16 v0, 0xa

    aget v1, p1, v6

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1565
    const/16 v0, 0xb

    aget v1, p1, v7

    const/16 v2, 0x8

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/16 v3, 0x9

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p1, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1567
    const/16 v0, 0xc

    aget v1, p1, v4

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    aget v2, p1, v8

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1568
    const/16 v0, 0xd

    aget v1, p1, v5

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1569
    const/16 v0, 0xe

    aget v1, p1, v6

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 1570
    const/16 v0, 0xf

    aget v1, p1, v7

    const/16 v2, 0xc

    aget v2, p2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    const/16 v3, 0xd

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p1, v2

    const/16 v3, 0xe

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p1, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p0, v0

    goto/16 :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 584
    add-int/lit8 p0, p0, -0x1

    .line 585
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 586
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 587
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 588
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 589
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 590
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/camera/CameraHardwareException;,
            Lcom/sec/android/app/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 546
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 547
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    new-instance v2, Lcom/sec/android/app/camera/CameraDisabledException;

    invoke-direct {v2}, Lcom/sec/android/app/camera/CameraDisabledException;-><init>()V

    throw v2

    .line 552
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/CameraHolder;->open(I)Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catch Lcom/sec/android/app/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 553
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Lcom/sec/android/app/camera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 559
    :cond_1
    throw v1
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 872
    sget-object v2, Lcom/sec/android/app/camera/Util;->mLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 873
    sget-object v2, Lcom/sec/android/app/camera/Util;->mLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/Util;->mLocation:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/Util;->mLocation:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/Util;->mLocation:[I

    aget v2, v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    const/high16 v3, 0x44fa0000

    const/high16 v2, 0x40000000

    const/high16 v1, 0x3f800000

    .line 923
    if-eqz p1, :cond_0

    const/high16 v0, -0x40800000

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 925
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 928
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 929
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 930
    return-void

    :cond_0
    move v0, v1

    .line 923
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 915
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 916
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 917
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 918
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 919
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v3, 0x40000000

    const/4 v2, 0x0

    .line 156
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 157
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 161
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 162
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 163
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 171
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 173
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 177
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 178
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 179
    const/4 p0, 0x0

    .line 180
    move-object p0, v7

    .line 186
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 165
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 166
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 168
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 699
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 682
    const/4 v0, 0x1

    .line 688
    :goto_0
    if-eqz v0, :cond_0

    .line 689
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 691
    .end local p1    # "orientationHistory":I
    :cond_0
    return p1

    .line 684
    .restart local p1    # "orientationHistory":I
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 685
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 686
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 1319
    const/4 v1, 0x0

    .line 1321
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .local v2, "f":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1326
    if-eqz v2, :cond_0

    .line 1328
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1334
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 1326
    if-eqz v1, :cond_1

    .line 1328
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1329
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1326
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 1328
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1331
    :cond_2
    :goto_4
    throw v3

    .line 1329
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 1326
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1323
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static setGpsParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;Landroid/location/Location;)V
    .locals 13
    .param p0, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->removeGpsData()V

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    .line 1025
    if-eqz p1, :cond_1

    .line 1026
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1027
    .local v1, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 1028
    .local v3, "lon":D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_0

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1030
    .local v0, "hasLatLon":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 1031
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLatitude(D)V

    .line 1033
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLongitude(D)V

    .line 1034
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1036
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    .line 1043
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 1046
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 1047
    .local v5, "utcTimeSeconds":J
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    .line 1053
    .end local v0    # "hasLatLon":Z
    .end local v1    # "lat":D
    .end local v3    # "lon":D
    .end local v5    # "utcTimeSeconds":J
    :cond_1
    :goto_2
    return-void

    .line 1028
    .restart local v1    # "lat":D
    .restart local v3    # "lon":D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1041
    .restart local v0    # "hasLatLon":Z
    :cond_3
    invoke-virtual {p0, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 1050
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setRotationParameter(Lcom/sec/android/seccamera/SecCamera$Parameters;II)V
    .locals 4
    .param p0, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;
    .param p1, "cameraId"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 1003
    const/4 v1, 0x0

    .line 1004
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 1005
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v0

    .line 1006
    .local v0, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    if-eqz v0, :cond_0

    .line 1007
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1008
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 1014
    .end local v0    # "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1015
    return-void

    .line 1010
    .restart local v0    # "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_1
    iget v2, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 565
    new-instance v0, Lcom/sec/android/app/camera/Util$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Util$2;-><init>(Landroid/app/Activity;)V

    .line 570
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 571
    return-void
.end method

.method public static slideIn(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "from"    # I

    .prologue
    const/4 v2, 0x0

    .line 1127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    packed-switch p1, :pswitch_data_0

    .line 1143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1131
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1145
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1146
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1147
    return-object v0

    .line 1134
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1135
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1137
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1138
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1140
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1141
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static slideOut(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "to"    # I

    .prologue
    const/4 v2, 0x0

    .line 1103
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    packed-switch p1, :pswitch_data_0

    .line 1119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1107
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1121
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1122
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1123
    return-object v0

    .line 1110
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1111
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1113
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1114
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1116
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1117
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 2
    .param p0, "activity"    # Lcom/sec/android/app/camera/MonitoredActivity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "job"    # Ljava/lang/Runnable;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 524
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Util$BackgroundJob;

    invoke-direct {v1, p0, p3, p4}, Lcom/sec/android/app/camera/Util$BackgroundJob;-><init>(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 525
    return-void
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "scaleUp"    # Z
    .param p5, "recycle"    # Z

    .prologue
    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 251
    .local v16, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 252
    .local v18, "deltaY":I
    if-nez p4, :cond_2

    if-ltz v16, :cond_0

    if-gez v18, :cond_2

    .line 259
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 260
    .local v11, "b2":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .local v15, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 263
    .local v17, "deltaXHalf":I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 264
    .local v19, "deltaYHalf":I
    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 265
    .local v26, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 266
    .local v21, "dstX":I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 267
    .local v22, "dstY":I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    .local v20, "dst":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 269
    if-eqz p5, :cond_1

    .line 270
    const/16 p1, 0x0

    .line 319
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v17    # "deltaXHalf":I
    .end local v19    # "deltaYHalf":I
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "dstX":I
    .end local v22    # "dstY":I
    .end local v26    # "src":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v11

    .line 274
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 275
    .local v14, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 277
    .local v13, "bitmapHeightF":F
    div-float v12, v14, v13

    .line 278
    .local v12, "bitmapAspect":F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 280
    .local v27, "viewAspect":F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_7

    .line 281
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    .line 282
    .local v25, "scale":F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f800000

    cmpl-float v3, v25, v3

    if-lez v3, :cond_6

    .line 283
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 297
    :goto_1
    if-eqz p0, :cond_a

    .line 299
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 304
    .local v10, "b1":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz p5, :cond_4

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_4

    .line 305
    const/16 p1, 0x0

    .line 308
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 309
    .local v23, "dx1":I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 311
    .local v24, "dy1":I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 313
    .restart local v11    # "b2":Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_1

    .line 314
    if-nez p5, :cond_5

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 315
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 285
    .end local v10    # "b1":Landroid/graphics/Bitmap;
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v23    # "dx1":I
    .end local v24    # "dy1":I
    :cond_6
    const/16 p0, 0x0

    goto :goto_1

    .line 288
    .end local v25    # "scale":F
    :cond_7
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    .line 289
    .restart local v25    # "scale":F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_8

    const/high16 v3, 0x3f800000

    cmpl-float v3, v25, v3

    if-lez v3, :cond_9

    .line 290
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 292
    :cond_9
    const/16 p0, 0x0

    goto :goto_1

    .line 301
    :cond_a
    move-object/from16 v10, p1

    .restart local v10    # "b1":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 895
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_0
    return-void

    .line 900
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v1

    .line 903
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 904
    :catch_1
    move-exception v0

    .line 905
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
