.class Lcom/sec/android/app/camera/CommonEngine$10$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine$10;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CommonEngine$10;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine$10;[B)V
    .locals 0

    .prologue
    .line 7146
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iput-object p2, p0, Lcom/sec/android/app/camera/CommonEngine$10$1;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 7149
    const-wide/16 v6, 0x400

    const-string v1, "Video SnapShot Saving Thread"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7150
    const-string v1, "CommonEngine"

    const-string v6, "starting save..."

    invoke-static {v1, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v6, v6, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v25

    .line 7153
    .local v25, "orientationForPicture":I
    const-string v1, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeImage - orientationForPicture : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/Util;->convertToExifInterfaceOrientation(I)I

    move-result v9

    .line 7155
    .local v9, "orientationForExif":I
    const-string v1, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeImage - ExifInterface Orientation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v1, :cond_0

    .line 7158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 7159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 7163
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v6, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v6}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v6, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 7164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->val$jpegData:[B

    const/16 v7, 0x1e0

    const/16 v8, 0x168

    invoke-static {v7, v8}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V

    .line 7165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move/from16 v0, v25

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CaptureData;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7173
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    .line 7174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move/from16 v0, v25

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->updateRecordingSnapThumbnail(I)V

    .line 7176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7177
    .local v4, "dateTaken":J
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v23

    .line 7178
    .local v23, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7181
    .local v3, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_2

    .line 7182
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 7186
    .local v2, "directory":Ljava/lang/String;
    :goto_1
    new-instance v18, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7187
    .local v18, "f":Ljava/io/File;
    const/16 v19, 0x0

    .line 7188
    .local v19, "filenumber":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7189
    const-string v1, "CommonEngine"

    const-string v6, "Duplicated file name found"

    invoke-static {v1, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "filenumber":I
    .local v20, "filenumber":I
    move/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7193
    const-string v1, "CommonEngine"

    const-string v6, "New file name created"

    invoke-static {v1, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7194
    new-instance v18, Ljava/io/File;

    .end local v18    # "f":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v18    # "f":Ljava/io/File;
    move/from16 v19, v20

    .end local v20    # "filenumber":I
    .restart local v19    # "filenumber":I
    goto :goto_2

    .line 7166
    .end local v2    # "directory":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "dateTaken":J
    .end local v18    # "f":Ljava/io/File;
    .end local v19    # "filenumber":I
    .end local v23    # "name":Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 7167
    .local v24, "oom":Ljava/lang/OutOfMemoryError;
    const-string v1, "CommonEngine"

    const-string v6, "Out of memory while creating bitmap."

    invoke-static {v1, v6}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v1, :cond_1

    .line 7169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 7170
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    goto/16 :goto_0

    .line 7184
    .end local v24    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "dateTaken":J
    .restart local v23    # "name":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v2    # "directory":Ljava/lang/String;
    goto/16 :goto_1

    .line 7199
    .restart local v18    # "f":Ljava/io/File;
    .restart local v19    # "filenumber":I
    :cond_3
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->val$jpegData:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    .line 7201
    new-instance v27, Landroid/content/ContentValues;

    const/16 v1, 0xa

    move-object/from16 v0, v27

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 7203
    .local v27, "values":Landroid/content/ContentValues;
    const-string v1, "_display_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7204
    const-string v1, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7205
    const-string v1, "mime_type"

    const-string v6, "image/jpeg"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7206
    const-string v1, "orientation"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7207
    const-string v1, "_data"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7209
    const/4 v14, 0x0

    .line 7212
    .local v14, "fileUri":Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v22

    .line 7213
    .local v22, "location":Landroid/location/Location;
    if-eqz v22, :cond_4

    .line 7214
    const-string v1, "latitude"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 7215
    const-string v1, "longitude"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 7218
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$4900(Lcom/sec/android/app/camera/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 7220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$4900(Lcom/sec/android/app/camera/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v1, v14, v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 7221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_5

    .line 7223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v11, v25

    invoke-static/range {v10 .. v16}, Lcom/sec/android/app/camera/ContextProviderUtils;->getTakePhotoSet(Ljava/lang/String;IIILandroid/net/Uri;II)Landroid/os/Bundle;

    move-result-object v17

    .line 7226
    .local v17, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v17

    invoke-static {v1, v14, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 7231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1, v14}, Lcom/sec/android/app/camera/CameraSettings;->addUriListInSecureMode(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7254
    .end local v17    # "extras":Landroid/os/Bundle;
    .end local v22    # "location":Landroid/location/Location;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 7255
    const-wide/16 v6, 0x400

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 7256
    return-void

    .line 7235
    :catch_1
    move-exception v26

    .line 7236
    .local v26, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "CommonEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v1, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_5

    .line 7238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Lcom/sec/android/app/camera/CommonEngine$10$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/CommonEngine$10$1$1;-><init>(Lcom/sec/android/app/camera/CommonEngine$10$1;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 7244
    .end local v26    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v21

    .line 7245
    .local v21, "ise":Ljava/lang/IllegalStateException;
    const-string v1, "CommonEngine"

    const-string v6, "Unable to create new file. SD card removed"

    invoke-static {v1, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_5

    .line 7247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CommonEngine$10$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$10;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine$10;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Lcom/sec/android/app/camera/CommonEngine$10$1$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/CommonEngine$10$1$2;-><init>(Lcom/sec/android/app/camera/CommonEngine$10$1;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method
