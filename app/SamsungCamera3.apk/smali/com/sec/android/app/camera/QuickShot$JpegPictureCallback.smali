.class final Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;
.super Ljava/lang/Object;
.source "QuickShot.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/QuickShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/QuickShot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/QuickShot;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    .line 156
    const-string v14, "QuickShot"

    const-string v15, "onPictureTaken"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    # invokes: Lcom/sec/android/app/camera/QuickShot;->getDateTaken()J
    invoke-static {v14}, Lcom/sec/android/app/camera/QuickShot;->access$100(Lcom/sec/android/app/camera/QuickShot;)J

    move-result-wide v8

    .line 158
    .local v8, "lTakenTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Test_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "yyyyMMdd_kkmmss"

    invoke-static {v15, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "fileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/sec/android/app/camera/QuickShot;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v14, Lcom/sec/android/app/camera/QuickShot;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v14, Lcom/sec/android/app/camera/QuickShot;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-direct {v3, v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v3, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 168
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .local v11, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v11, :cond_1

    if-eqz p1, :cond_1

    .line 170
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :cond_1
    if-eqz v11, :cond_6

    .line 177
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .line 183
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    new-instance v13, Landroid/content/ContentValues;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 184
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "_display_name"

    invoke-virtual {v13, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v14, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v14, "mime_type"

    const-string v15, "image/jpeg"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v14, "_data"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v14, "orientation"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    # getter for: Lcom/sec/android/app/camera/QuickShot;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v14}, Lcom/sec/android/app/camera/QuickShot;->access$200(Lcom/sec/android/app/camera/QuickShot;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 190
    .local v12, "savedUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    # getter for: Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/sec/android/app/camera/QuickShot;->access$300(Lcom/sec/android/app/camera/QuickShot;)Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 191
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.android.camera.NEW_PICTURE"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    # getter for: Lcom/sec/android/app/camera/QuickShot;->mActivityContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/sec/android/app/camera/QuickShot;->access$300(Lcom/sec/android/app/camera/QuickShot;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    # getter for: Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v14}, Lcom/sec/android/app/camera/QuickShot;->access$400(Lcom/sec/android/app/camera/QuickShot;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    # getter for: Lcom/sec/android/app/camera/QuickShot;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v14}, Lcom/sec/android/app/camera/QuickShot;->access$400(Lcom/sec/android/app/camera/QuickShot;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 198
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v6, "i":Landroid/content/Intent;
    const-string v14, "quickshotmode"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    # invokes: Lcom/sec/android/app/camera/QuickShot;->isSecureKeyguardLocked()Z
    invoke-static {v14}, Lcom/sec/android/app/camera/QuickShot;->access$500(Lcom/sec/android/app/camera/QuickShot;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 201
    const-string v14, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    invoke-virtual {v14, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/QuickShot$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/QuickShot;

    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 205
    return-void

    .line 178
    .end local v6    # "i":Landroid/content/Intent;
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local v12    # "savedUri":Landroid/net/Uri;
    .end local v13    # "values":Landroid/content/ContentValues;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v10, v11

    .line 180
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 173
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    if-eqz v10, :cond_2

    .line 177
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 178
    :catch_2
    move-exception v2

    .line 179
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 175
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_2
    if-eqz v10, :cond_5

    .line 177
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 180
    :cond_5
    :goto_3
    throw v14

    .line 178
    :catch_3
    move-exception v2

    .line 179
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 175
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 172
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method
