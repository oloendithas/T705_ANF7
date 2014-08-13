.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field mAm:Landroid/app/IActivityManager;

.field mContext:Landroid/content/Context;

.field private mDegree:F

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsBasedLandscape:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mScreenCaptureTime:Ljava/lang/String;

.field private mScreenCaptureType:I

.field private final mScreenshotDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;
    .param p4, "nId"    # I

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 183
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    .line 184
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    .line 192
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 195
    .local v12, "r":Landroid/content/res/Resources;
    const-string v15, "ro.build.type"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "eng"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 196
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    .line 202
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const/16 v18, 0x1

    invoke-interface/range {v15 .. v18}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 203
    const-string v15, "SaveImageInBackgroundTask"

    const-string v16, "SaveImageInBackgroundTask setProcessForeground true"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 209
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v16, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v15 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v17, v0

    invoke-direct/range {v16 .. v18}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "imageDate":Ljava/lang/String;
    const-string v15, "Screenshot_%s.png"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    .line 213
    new-instance v15, Ljava/io/File;

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    const-string v17, "Screenshots"

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 215
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 218
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->screenCaptureType:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    .line 222
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 226
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 227
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 228
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 229
    .local v6, "iconSize":I
    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->isBasedLandscape:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    .line 230
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->degree:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    .line 232
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 234
    .local v13, "shortSide":I
    :goto_2
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mUseBitmapConfig:Z

    if-eqz v15, :cond_3

    .line 235
    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v13, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 239
    .local v11, "preview":Landroid/graphics/Bitmap;
    :goto_3
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    .local v3, "c":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 241
    .local v10, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 242
    .local v5, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v15, 0x3e800000

    invoke-virtual {v5, v15}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 243
    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v15, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 244
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    .local v8, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v15, v13, v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 247
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v15, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 248
    const v15, 0x40ffffff

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 249
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    const/4 v15, 0x1

    invoke-static {v11, v6, v6, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 254
    .local v4, "croppedIcon":Landroid/graphics/Bitmap;
    sget-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_4
    sput-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 255
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 256
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 257
    new-instance v16, Landroid/app/Notification$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0b0043

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v15, :cond_5

    const-string v15, " "

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f0b0044

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f0b0045

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f020084

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d00ce

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 266
    .local v2, "bigPictureHeight":I
    if-lez v2, :cond_0

    if-le v13, v2, :cond_0

    .line 267
    sub-int v15, v13, v2

    div-int/lit8 v14, v15, 0x2

    .line 268
    .local v14, "startY":I
    const/4 v15, 0x0

    invoke-static {v11, v15, v14, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 271
    .end local v14    # "startY":I
    :cond_0
    new-instance v15, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v15}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v15, v11}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 276
    .local v9, "n":Landroid/app/Notification;
    iget v15, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x20

    iput v15, v9, Landroid/app/Notification;->flags:I

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/app/NotificationManager;->cancel(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p4

    invoke-virtual {v15, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 286
    return-void

    .line 198
    .end local v2    # "bigPictureHeight":I
    .end local v3    # "c":Landroid/graphics/Canvas;
    .end local v4    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v5    # "desat":Landroid/graphics/ColorMatrix;
    .end local v6    # "iconSize":I
    .end local v7    # "imageDate":Ljava/lang/String;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "n":Landroid/app/Notification;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "preview":Landroid/graphics/Bitmap;
    .end local v13    # "shortSide":I
    :cond_1
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    goto/16 :goto_0

    .line 232
    .restart local v6    # "iconSize":I
    .restart local v7    # "imageDate":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    goto/16 :goto_2

    .line 237
    .restart local v13    # "shortSide":I
    :cond_3
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-static {v13, v13, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .restart local v11    # "preview":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 254
    .restart local v3    # "c":Landroid/graphics/Canvas;
    .restart local v4    # "croppedIcon":Landroid/graphics/Bitmap;
    .restart local v5    # "desat":Landroid/graphics/ColorMatrix;
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 257
    :cond_5
    const-string v15, ""

    goto/16 :goto_5

    .line 204
    .end local v3    # "c":Landroid/graphics/Canvas;
    .end local v4    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v5    # "desat":Landroid/graphics/ColorMatrix;
    .end local v6    # "iconSize":I
    .end local v7    # "imageDate":Ljava/lang/String;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "preview":Landroid/graphics/Bitmap;
    .end local v13    # "shortSide":I
    :catch_0
    move-exception v15

    goto/16 :goto_1
.end method

.method private broadcastForLoggingApp(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenCaptureType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImageFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenCpatureTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.scapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    const-string v1, "path"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "time"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 567
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 568
    const/4 v2, 0x1

    .line 573
    :cond_0
    :goto_0
    return v2

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 34
    .param p1, "params"    # [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 290
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "SaveImageInBackgroundTask setProcessForeground doInBackground"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    const/16 v29, 0x0

    .line 455
    :goto_0
    return-object v29

    .line 292
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    const/16 v32, 0x0

    invoke-interface/range {v29 .. v32}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 295
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "SaveImageInBackgroundTask doInBackground isCancelled setProcessForeground false"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 298
    :goto_1
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 299
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 300
    const/16 v29, 0x0

    goto :goto_0

    .line 305
    :cond_1
    const/16 v29, -0x2

    invoke-static/range {v29 .. v29}, Landroid/os/Process;->setThreadPriority(I)V

    .line 307
    const/16 v29, 0x0

    aget-object v29, p1, v29

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 308
    .local v7, "context":Landroid/content/Context;
    const/16 v29, 0x0

    aget-object v29, p1, v29

    move-object/from16 v0, v29

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 309
    .local v15, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 310
    .local v21, "r":Landroid/content/res/Resources;
    const/16 v17, 0x0

    .line 311
    .local v17, "imageFile":Ljava/io/File;
    const/16 v19, 0x0

    .line 312
    .local v19, "out":Ljava/io/OutputStream;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.sec.feature.spen_usp"

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    .line 316
    .local v14, "hasSPenUspFeature":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 320
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x3e8

    div-long v9, v29, v31

    .line 322
    .local v9, "dateSeconds":J
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .end local v17    # "imageFile":Ljava/io/File;
    .local v18, "imageFile":Ljava/io/File;
    :try_start_2
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    .end local v19    # "out":Ljava/io/OutputStream;
    .local v20, "out":Ljava/io/OutputStream;
    const/16 v29, 0x1

    :try_start_3
    sget-object v30, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v31, 0x64

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 325
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 326
    const-string v29, "SaveImageInBackgroundTask"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "image.getByteCount() : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v28, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 330
    .local v22, "resolver":Landroid/content/ContentResolver;
    const-string v29, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v29, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v29, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v29, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    const-string v29, "date_added"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    const-string v29, "date_modified"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v29, "mime_type"

    const-string v30, "image/png"

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v29, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v29, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v29, "_size"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    sget-object v29, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 343
    .local v26, "uri":Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    const-string v29, "android.intent.action.DELETE"

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v11, "deleteIntent":Landroid/content/Intent;
    const-string v29, "FilePath"

    const-string v30, "%s/%s/%s"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    sget-object v33, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "Screenshots"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-class v29, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v29

    invoke-virtual {v11, v7, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v29, v0

    const v30, 0x7f02017a

    const v31, 0x1040671

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v7, v0, v11, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 354
    new-instance v6, Landroid/content/ComponentName;

    const-string v29, "com.sec.android.mimage.photoretouching"

    const-string v30, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 357
    const-string v29, "%s/%s/"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    sget-object v32, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const-string v32, "Screenshots"

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 361
    .local v16, "imageDirPath":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v29, "android.intent.action.SEND"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v13, "editIntent":Landroid/content/Intent;
    const-string v29, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v29, "DirPath"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v29, "degree"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 365
    const-string v29, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    const-class v29, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v29

    invoke-virtual {v13, v7, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 367
    const v29, 0x10008000

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v29, v0

    const v30, 0x7f02017b

    const v31, 0x1040b26

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v7, v0, v13, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 376
    .end local v13    # "editIntent":Landroid/content/Intent;
    .end local v16    # "imageDirPath":Ljava/lang/String;
    :cond_2
    sget-boolean v29, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    if-eqz v29, :cond_7

    .line 377
    new-instance v29, Ljava/text/SimpleDateFormat;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "hh:mma, "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x104010e

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", yyyy"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v31, v0

    invoke-direct/range {v30 .. v32}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 384
    .local v25, "subjectDate":Ljava/lang/String;
    :goto_2
    const-string v29, "Screenshot (%s)"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v25, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 385
    .local v24, "subject":Ljava/lang/String;
    new-instance v23, Landroid/content/Intent;

    const-string v29, "android.intent.action.SEND"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v23, "sharingIntent":Landroid/content/Intent;
    const-string v29, "image/png"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v29, "android.intent.extra.STREAM"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    const-string v29, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 391
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v29, "repository"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 397
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_3
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 398
    .local v5, "chooserIntent":Landroid/content/Intent;
    const v29, 0x10008000

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v29, v0

    const v30, 0x7f02017c

    const v31, 0x1040808

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x10000000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v7, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 405
    const/16 v29, 0x0

    aget-object v29, p1, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 406
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 407
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 410
    new-instance v8, Landroid/content/Intent;

    const-string v29, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v8, "copyIntent":Landroid/content/Intent;
    const-string v29, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "file://"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 417
    .local v27, "uriString":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v29, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 419
    .local v3, "actionIntent":Landroid/content/Intent;
    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 422
    const-string v29, "3rd"

    const-string v30, "ro.release.3rd_party"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 423
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->broadcastForLoggingApp(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 441
    .end local v3    # "actionIntent":Landroid/content/Intent;
    .end local v5    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "copyIntent":Landroid/content/Intent;
    .end local v11    # "deleteIntent":Landroid/content/Intent;
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    .end local v23    # "sharingIntent":Landroid/content/Intent;
    .end local v24    # "subject":Ljava/lang/String;
    .end local v25    # "subjectDate":Ljava/lang/String;
    .end local v26    # "uri":Landroid/net/Uri;
    .end local v27    # "uriString":Ljava/lang/String;
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_3
    if-eqz v20, :cond_a

    .line 443
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .line 451
    .end local v9    # "dateSeconds":J
    .end local v18    # "imageFile":Ljava/io/File;
    .restart local v17    # "imageFile":Ljava/io/File;
    :cond_5
    :goto_4
    if-eqz v15, :cond_6

    .line 452
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    :cond_6
    const/16 v29, 0x0

    aget-object v29, p1, v29

    goto/16 :goto_0

    .line 381
    .end local v17    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "dateSeconds":J
    .restart local v11    # "deleteIntent":Landroid/content/Intent;
    .restart local v18    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    .restart local v22    # "resolver":Landroid/content/ContentResolver;
    .restart local v26    # "uri":Landroid/net/Uri;
    .restart local v28    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_5
    new-instance v29, Ljava/text/SimpleDateFormat;

    const-string v30, "hh:mma, MMM dd, yyyy"

    invoke-direct/range {v29 .. v30}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v31, v0

    invoke-direct/range {v30 .. v32}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "subjectDate":Ljava/lang/String;
    goto/16 :goto_2

    .line 427
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v11    # "deleteIntent":Landroid/content/Intent;
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    .end local v25    # "subjectDate":Ljava/lang/String;
    .end local v26    # "uri":Landroid/net/Uri;
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string v29, "SaveImageInBackgroundTask"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Fail to create capture image file ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 430
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 431
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 434
    :catch_0
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .line 437
    .end local v9    # "dateSeconds":J
    .end local v18    # "imageFile":Ljava/io/File;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v17    # "imageFile":Ljava/io/File;
    :goto_5
    :try_start_6
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "IOException-UnsupportedOperationException may be thrown if external storage is not"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 439
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 441
    if-eqz v19, :cond_5

    .line 443
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 444
    :catch_1
    move-exception v12

    .line 445
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "IOException"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 444
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v9    # "dateSeconds":J
    .restart local v18    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v12

    .line 445
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "IOException"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .line 446
    .end local v18    # "imageFile":Ljava/io/File;
    .restart local v17    # "imageFile":Ljava/io/File;
    goto/16 :goto_4

    .line 441
    .end local v9    # "dateSeconds":J
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v29

    :goto_6
    if-eqz v19, :cond_9

    .line 443
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 446
    :cond_9
    :goto_7
    throw v29

    .line 444
    :catch_3
    move-exception v12

    .line 445
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 441
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v9    # "dateSeconds":J
    .restart local v18    # "imageFile":Ljava/io/File;
    :catchall_1
    move-exception v29

    move-object/from16 v17, v18

    .end local v18    # "imageFile":Ljava/io/File;
    .restart local v17    # "imageFile":Ljava/io/File;
    goto :goto_6

    .end local v17    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v18    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v29

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .end local v18    # "imageFile":Ljava/io/File;
    .restart local v17    # "imageFile":Ljava/io/File;
    goto :goto_6

    .line 434
    .end local v9    # "dateSeconds":J
    :catch_4
    move-exception v12

    goto :goto_5

    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v9    # "dateSeconds":J
    .restart local v18    # "imageFile":Ljava/io/File;
    :catch_5
    move-exception v12

    move-object/from16 v17, v18

    .end local v18    # "imageFile":Ljava/io/File;
    .restart local v17    # "imageFile":Ljava/io/File;
    goto :goto_5

    .line 296
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "dateSeconds":J
    .end local v14    # "hasSPenUspFeature":Z
    .end local v15    # "image":Landroid/graphics/Bitmap;
    .end local v17    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .end local v21    # "r":Landroid/content/res/Resources;
    :catch_6
    move-exception v29

    goto/16 :goto_1

    .restart local v7    # "context":Landroid/content/Context;
    .restart local v9    # "dateSeconds":J
    .restart local v14    # "hasSPenUspFeature":Z
    .restart local v15    # "image":Landroid/graphics/Bitmap;
    .restart local v18    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    .restart local v21    # "r":Landroid/content/res/Resources;
    :cond_a
    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v17, v18

    .end local v18    # "imageFile":Ljava/io/File;
    .restart local v17    # "imageFile":Ljava/io/File;
    goto/16 :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 14
    .param p1, "params"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 471
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask setProcessForeground onPostExecute"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 474
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 475
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask isCancelled setProcessForeground false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 478
    :goto_0
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 479
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 480
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 562
    :goto_1
    return-void

    .line 484
    :cond_0
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 485
    .local v6, "r":Landroid/content/res/Resources;
    iget v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v7, :cond_2

    .line 487
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const v9, 0x7f0b0049

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 555
    :cond_1
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 556
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask setProcessForeground false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    :goto_3
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 561
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_1

    .line 491
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v3, "launchIntent":Landroid/content/Intent;
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v8, "image/png"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v8, 0x7f0b0046

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0b0047

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v8, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 502
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 503
    .local v4, "n":Landroid/app/Notification;
    iget v7, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 504
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v7, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 506
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "edit_after_screen_capture"

    const/4 v9, -0x2

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 510
    .local v5, "pM":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v1, "directEditIntent":Landroid/content/Intent;
    const-string v7, "%s/%s/"

    new-array v8, v13, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const-string v9, "Screenshots"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "imageDirPath":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v7, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v13, :cond_3

    .line 516
    const/high16 v7, 0x14010000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    const-string v7, "com.sec.spen.flashannotate"

    const-string v8, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v7, "degree"

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 521
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    :goto_4
    :try_start_2
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 550
    :catch_0
    move-exception v7

    goto/16 :goto_2

    .line 524
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.mimage.photoretouching"

    const-string v8, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 527
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 529
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v8, "image/png"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v7, "degree"

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 532
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    .line 536
    :cond_4
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v7, "FilePath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v7, "DirPath"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v7, "degree"

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 540
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 544
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4

    .line 557
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "directEditIntent":Landroid/content/Intent;
    .end local v2    # "imageDirPath":Ljava/lang/String;
    .end local v3    # "launchIntent":Landroid/content/Intent;
    .end local v4    # "n":Landroid/app/Notification;
    .end local v5    # "pM":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .line 476
    .end local v6    # "r":Landroid/content/res/Resources;
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
