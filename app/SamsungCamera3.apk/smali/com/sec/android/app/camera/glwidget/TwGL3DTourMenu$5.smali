.class Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;
.super Ljava/lang/Object;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->saveSEFFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 1423
    const-string v2, "3DAlign"

    const-string v5, "saveSEFFile Run"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1427
    const-wide/16 v5, 0x32

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1428
    :catch_0
    move-exception v16

    .line 1429
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1433
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[F

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I

    move-result-object v2

    if-nez v2, :cond_2

    .line 1434
    :cond_1
    const-string v2, "TwGL3DTourMenu"

    const-string v5, "Return because of null pointer"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_1
    return-void

    .line 1437
    :cond_2
    const-string v2, "TwGL3DTourMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Photos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->startShutterAnimation()V

    .line 1440
    new-instance v12, Ljava/util/GregorianCalendar;

    invoke-direct {v12}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1441
    .local v12, "calendar":Ljava/util/GregorianCalendar;
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 1442
    .local v21, "time":Landroid/text/format/Time;
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 1443
    .local v22, "timezone":Ljava/util/TimeZone;
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1444
    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v13

    .line 1445
    .local v13, "dateTaken":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1446
    .local v18, "fileName":Ljava/lang/String;
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v5

    invoke-static {v2, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v15

    .line 1447
    .local v15, "dstDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1448
    .local v3, "strFilePath":Ljava/lang/String;
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v5, "/.3DTour"

    invoke-static {v2, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1496
    .local v4, "tempDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    const/4 v5, 0x6

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 1498
    const-string v2, "TwGL3DTourMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodeSEF count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F
    invoke-static {v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[F

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I
    invoke-static {v8}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$3900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;->encodeSEF(Ljava/lang/String;Ljava/lang/String;I[I[F[I[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;)I

    move-result v20

    .line 1500
    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->prepareDirectories()V
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    .line 1501
    const-string v2, "TwGL3DTourMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const-string v2, "TwGL3DTourMenu"

    const-string v5, "SEF Encoding done"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1702(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    .line 1505
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 1506
    new-instance v23, Landroid/content/ContentValues;

    const/4 v2, 0x5

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1507
    .local v23, "values":Landroid/content/ContentValues;
    const-string v2, "_display_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v2, "datetaken"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1509
    const-string v2, "mime_type"

    const-string v5, "image/jpeg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string v2, "_data"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const-string v2, "height"

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1512
    const-string v2, "width"

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1513
    const-string v2, "orientation"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5a

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->calculateOrientationForPicture(I)I
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1514
    const-string v2, "sef_file_type"

    const/16 v5, 0x850

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1515
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v19

    .line 1516
    .local v19, "loc":Landroid/location/Location;
    if-eqz v19, :cond_3

    .line 1517
    const-string v2, "latitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1518
    const-string v2, "longitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1520
    :cond_3
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1521
    .local v9, "fileUri":Landroid/net/Uri;
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 1523
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5a

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->calculateOrientationForPicture(I)I
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    move-result v6

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeType()I

    move-result v10

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/camera/ContextProviderUtils;->getTakePhotoSet(Ljava/lang/String;IIILandroid/net/Uri;II)Landroid/os/Bundle;

    move-result-object v17

    .line 1526
    .local v17, "extras":Landroid/os/Bundle;
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v9, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1531
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 1532
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    const-string v5, "reviewon"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1534
    :cond_4
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    mul-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderWidth()I

    move-result v6

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderHeight()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v5, v6}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v5

    invoke-static {v3, v5}, Lcom/sec/android/app/camera/Util;->makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I
    invoke-static {v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x5a

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->calculateOrientationForPicture(I)I
    invoke-static {v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 1543
    .end local v9    # "fileUri":Landroid/net/Uri;
    .end local v17    # "extras":Landroid/os/Bundle;
    .end local v19    # "loc":Landroid/location/Location;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_5
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$000()Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->endShutterAnimation()V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    const/4 v5, 0x1

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/os/Handler;

    move-result-object v2

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1546
    const-string v2, "TwGL3DTourMenu"

    const-string v5, "saveSEFFile Exit"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
