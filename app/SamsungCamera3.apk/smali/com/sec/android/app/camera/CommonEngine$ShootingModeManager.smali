.class Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
.super Ljava/lang/Object;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShootingModeManager"
.end annotation


# instance fields
.field private mActionShotStarted:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFileSequence:I

.field private mCurrentShootingMode:I

.field private mDualCaptureModeAsyncFirstCapturing:Z

.field public mFlashMode:I

.field private mLocation:Landroid/location/Location;

.field private mPanoramaCapturing:Z

.field public mStorage:I

.field public mWhiteBalance:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4563
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4564
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 4565
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 4566
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    .line 4567
    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 4568
    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 4569
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    .line 4570
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 4571
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mStorage:I

    .line 4572
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mWhiteBalance:I

    .line 4573
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mFlashMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p2, "x1"    # Lcom/sec/android/app/camera/CommonEngine$1;

    .prologue
    .line 4563
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/sec/android/seccamera/SecCamera;
    .param p3, "x3"    # Landroid/location/Location;

    .prologue
    .line 4563
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLandroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 4563
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    .prologue
    .line 4563
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    return v0
.end method

.method static synthetic access$5002(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    .param p1, "x1"    # I

    .prologue
    .line 4563
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    return p1
.end method

.method static synthetic access$5010(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    .prologue
    .line 4563
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 4563
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method private final startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    const-wide/16 v3, 0x400

    .line 5037
    const-string v0, "startSavePicture"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5038
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;-><init>(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLandroid/location/Location;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$2402(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 5052
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2400(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "pictureSavingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5053
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2400(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5055
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5056
    return-void
.end method

.method private declared-synchronized storeImage([BLandroid/location/Location;)Z
    .locals 38
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 5067
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_0

    .line 5068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 5069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5072
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v7, 0x22

    if-eq v2, v7, :cond_2

    .line 5076
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v7, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v7}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v7, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v8, v8, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    mul-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v8, v8, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5089
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x22

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x30

    if-eq v2, v7, :cond_3

    .line 5095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_3

    .line 5099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5103
    :cond_3
    const/16 v18, 0x1

    .line 5105
    .local v18, "bSuccess":Z
    :try_start_3
    new-instance v20, Ljava/util/GregorianCalendar;

    invoke-direct/range {v20 .. v20}, Ljava/util/GregorianCalendar;-><init>()V

    .line 5106
    .local v20, "calendar":Ljava/util/GregorianCalendar;
    new-instance v35, Landroid/text/format/Time;

    invoke-direct/range {v35 .. v35}, Landroid/text/format/Time;-><init>()V

    .line 5107
    .local v35, "time":Landroid/text/format/Time;
    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v36

    .line 5108
    .local v36, "timezone":Ljava/util/TimeZone;
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5109
    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    .line 5111
    .local v5, "dateTaken":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput-wide v5, v2, Lcom/sec/android/app/camera/CommonEngine;->mDateTaken:J

    .line 5114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    .line 5115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v5, v6, v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JI)Ljava/lang/String;

    move-result-object v31

    .line 5136
    .local v31, "name":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, v31

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2902(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 5139
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xb

    if-ne v2, v7, :cond_d

    .line 5140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".gif"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5146
    .local v4, "filename":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x22

    if-ne v2, v7, :cond_e

    .line 5148
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v8, v8, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.BestPic"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5159
    .local v3, "directory":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3002(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 5162
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5163
    .local v26, "f":Ljava/io/File;
    const/16 v27, 0x0

    .local v27, "filenumber":I
    move/from16 v28, v27

    .line 5164
    .end local v27    # "filenumber":I
    .local v28, "filenumber":I
    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5165
    const-string v2, "CommonEngine"

    const-string v7, "Duplicated file name found"

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "filenumber":I
    .restart local v27    # "filenumber":I
    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3002(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 5169
    const-string v2, "CommonEngine"

    const-string v7, "New file name created"

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    new-instance v26, Ljava/io/File;

    .end local v26    # "f":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v26    # "f":Ljava/io/File;
    move/from16 v28, v27

    .end local v27    # "filenumber":I
    .restart local v28    # "filenumber":I
    goto :goto_4

    .line 5080
    .end local v3    # "directory":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "dateTaken":J
    .end local v18    # "bSuccess":Z
    .end local v20    # "calendar":Ljava/util/GregorianCalendar;
    .end local v26    # "f":Ljava/io/File;
    .end local v28    # "filenumber":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v35    # "time":Landroid/text/format/Time;
    .end local v36    # "timezone":Ljava/util/TimeZone;
    :catch_0
    move-exception v32

    .line 5081
    .local v32, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v2, "CommonEngine"

    const-string v7, "Out of memory while creating bitmap."

    invoke-static {v2, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_2

    .line 5083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 5084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 5067
    .end local v32    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5116
    .restart local v5    # "dateTaken":J
    .restart local v18    # "bSuccess":Z
    .restart local v20    # "calendar":Ljava/util/GregorianCalendar;
    .restart local v35    # "time":Landroid/text/format/Time;
    .restart local v36    # "timezone":Ljava/util/TimeZone;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xe

    if-ne v2, v7, :cond_8

    .line 5117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v2

    if-nez v2, :cond_6

    .line 5118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2700(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2702(Lcom/sec/android/app/camera/CommonEngine;I)I

    .line 5119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput-wide v5, v2, Lcom/sec/android/app/camera/CommonEngine;->mDateTakenForHDR:J

    .line 5123
    :goto_5
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HDR] storeImage - mNumOfSavedImageInHDR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$2700(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->getHDRFileName()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$2800(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "name":Ljava/lang/String;
    goto/16 :goto_1

    .line 5121
    .end local v31    # "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2700(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2702(Lcom/sec/android/app/camera/CommonEngine;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 5326
    .end local v5    # "dateTaken":J
    .end local v20    # "calendar":Ljava/util/GregorianCalendar;
    .end local v35    # "time":Landroid/text/format/Time;
    .end local v36    # "timezone":Ljava/util/TimeZone;
    :catch_1
    move-exception v21

    .line 5327
    .local v21, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "CommonEngine"

    const-string v7, "Exception while compressing image."

    move-object/from16 v0, v21

    invoke-static {v2, v7, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v21    # "ex":Ljava/lang/Exception;
    :cond_7
    :goto_6
    move/from16 v19, v18

    .line 5329
    .end local v18    # "bSuccess":Z
    .local v19, "bSuccess":Z
    :goto_7
    monitor-exit p0

    return v19

    .line 5125
    .end local v19    # "bSuccess":Z
    .restart local v5    # "dateTaken":J
    .restart local v18    # "bSuccess":Z
    .restart local v20    # "calendar":Ljava/util/GregorianCalendar;
    .restart local v35    # "time":Landroid/text/format/Time;
    .restart local v36    # "timezone":Ljava/util/TimeZone;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x17

    if-ne v2, v7, :cond_9

    .line 5126
    const-string v2, "CommonEngine"

    const-string v7, "[LowLight] storeImage - add LLS tag "

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    const-string v2, "LLS"

    invoke-static {v5, v6, v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "name":Ljava/lang/String;
    goto/16 :goto_1

    .line 5128
    .end local v31    # "name":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x11

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x18

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x19

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x22

    if-ne v2, v7, :cond_b

    .line 5130
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "_bestshot"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "name":Ljava/lang/String;
    goto/16 :goto_1

    .line 5131
    .end local v31    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x30

    if-ne v2, v7, :cond_c

    .line 5132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3DTour_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "name":Ljava/lang/String;
    goto/16 :goto_1

    .line 5134
    .end local v31    # "name":Ljava/lang/String;
    :cond_c
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "name":Ljava/lang/String;
    goto/16 :goto_1

    .line 5142
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "filename":Ljava/lang/String;
    goto/16 :goto_2

    .line 5149
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x30

    if-ne v2, v7, :cond_f

    .line 5150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v7, "/.3DTour"

    invoke-static {v2, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "directory":Ljava/lang/String;
    goto/16 :goto_3

    .line 5152
    .end local v3    # "directory":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getCoverModeImageSavingDir(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "directory":Ljava/lang/String;
    goto/16 :goto_3

    .line 5155
    .end local v3    # "directory":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v7

    invoke-static {v2, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "directory":Ljava/lang/String;
    goto/16 :goto_3

    .line 5173
    .restart local v26    # "f":Ljava/io/File;
    .restart local v28    # "filenumber":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v33

    .line 5174
    .local v33, "orientationForPicture":I
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - orientationForPicture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5175
    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/camera/Util;->convertToExifInterfaceOrientation(I)I

    move-result v10

    .line 5176
    .local v10, "orientationForExif":I
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - ExifInterface Orientation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_12

    .line 5179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CaptureData;->setOrientation(I)V

    .line 5181
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mWhiteBalance:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mFlashMode:I

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    move-result v18

    .line 5182
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage bSuccess: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5184
    if-nez v18, :cond_13

    .line 5185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5188
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x30

    if-ne v2, v7, :cond_14

    move/from16 v19, v18

    .line 5189
    .end local v18    # "bSuccess":Z
    .restart local v19    # "bSuccess":Z
    goto/16 :goto_7

    .line 5192
    .end local v19    # "bSuccess":Z
    .restart local v18    # "bSuccess":Z
    :cond_14
    if-eqz v18, :cond_25

    .line 5193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_15

    .line 5194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$2700(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_15

    .line 5195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3102(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 5199
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x17

    if-ne v2, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 5203
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_24

    .line 5207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    move/from16 v12, v33

    .line 5229
    .end local v33    # "orientationForPicture":I
    .local v12, "orientationForPicture":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v14

    .line 5230
    .local v14, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v13

    .line 5232
    .local v13, "width":I
    new-instance v37, Landroid/content/ContentValues;

    const/16 v2, 0x9

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 5233
    .local v37, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5237
    const-string v2, "_display_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5238
    const-string v2, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5239
    const-string v2, "mime_type"

    const-string v7, "image/jpeg"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5240
    const-string v2, "orientation"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5241
    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_18

    .line 5243
    const-string v2, "height"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5244
    const-string v2, "width"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5247
    :cond_18
    const/16 v22, 0x0

    .line 5249
    .local v22, "exif":Landroid/media/ExifInterface;
    :try_start_8
    new-instance v23, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v22    # "exif":Landroid/media/ExifInterface;
    .local v23, "exif":Landroid/media/ExifInterface;
    move-object/from16 v22, v23

    .line 5254
    .end local v23    # "exif":Landroid/media/ExifInterface;
    .restart local v22    # "exif":Landroid/media/ExifInterface;
    :goto_9
    if-eqz v22, :cond_1a

    .line 5255
    const/4 v2, 0x2

    :try_start_9
    new-array v0, v2, [F

    move-object/from16 v30, v0

    .line 5257
    .local v30, "latlng":[F
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5258
    const-string v2, "latitude"

    const/4 v7, 0x0

    aget v7, v30, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 5259
    const-string v2, "longitude"

    const/4 v7, 0x1

    aget v7, v30, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 5262
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1a

    .line 5263
    const-string v2, "ImageLength"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 5264
    const-string v2, "ImageWidth"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 5265
    const-string v2, "height"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5266
    const-string v2, "width"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5275
    .end local v30    # "latlng":[F
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1c

    .line 5277
    :cond_1b
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Burstshot/Bestshot groupID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getGroupID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    const-string v2, "group_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->getGroupID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5282
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1e

    .line 5283
    :cond_1d
    const-string v2, "date_modified"

    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5286
    :cond_1e
    const/4 v15, 0x0

    .line 5289
    .local v15, "fileUri":Landroid/net/Uri;
    const-wide/16 v7, 0x400

    :try_start_a
    const-string v2, "DB Insert"

    invoke-static {v7, v8, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v37

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 5291
    const-wide/16 v7, 0x400

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 5294
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5295
    const-string v2, "GATE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$3000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " </GATE-M>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5298
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v2, v15, v7, v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 5299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput-object v15, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 5300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    .line 5302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeType()I

    move-result v16

    .line 5303
    .local v16, "modeType":I
    const/16 v2, 0x64

    move/from16 v0, v16

    if-eq v0, v2, :cond_20

    .line 5304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/sec/android/app/camera/ContextProviderUtils;->getTakePhotoSet(Ljava/lang/String;IIILandroid/net/Uri;II)Landroid/os/Bundle;

    move-result-object v25

    .line 5305
    .local v25, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v7, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5320
    .end local v16    # "modeType":I
    .end local v25    # "extras":Landroid/os/Bundle;
    :cond_20
    :goto_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3302(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 5322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraSettings;->addUriListInSecureMode(Landroid/net/Uri;)V

    goto/16 :goto_6

    .line 5209
    .end local v12    # "orientationForPicture":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "fileUri":Landroid/net/Uri;
    .end local v22    # "exif":Landroid/media/ExifInterface;
    .end local v37    # "values":Landroid/content/ContentValues;
    .restart local v33    # "orientationForPicture":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_24

    .line 5210
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "panorama mode with bitmap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$3200(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3200(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 5212
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updating thumbnail now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$3200(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with orientationForPicture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3200(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 5214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3202(Lcom/sec/android/app/camera/CommonEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 5220
    :cond_22
    :try_start_c
    new-instance v22, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 5221
    .restart local v22    # "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v24

    .line 5222
    .local v24, "exifOrientation":I
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/Util;->convertExifOrientationToMediaOrientation(I)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v12

    .line 5223
    .end local v33    # "orientationForPicture":I
    .restart local v12    # "orientationForPicture":I
    :try_start_d
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read new orientation from exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_8

    .line 5224
    :catch_2
    move-exception v29

    .line 5225
    .end local v22    # "exif":Landroid/media/ExifInterface;
    .end local v24    # "exifOrientation":I
    .local v29, "ioex":Ljava/io/IOException;
    :goto_b
    :try_start_e
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 5250
    .end local v29    # "ioex":Ljava/io/IOException;
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    .restart local v22    # "exif":Landroid/media/ExifInterface;
    .restart local v37    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v21

    .line 5251
    .local v21, "ex":Ljava/io/IOException;
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 5311
    .end local v21    # "ex":Ljava/io/IOException;
    .restart local v15    # "fileUri":Landroid/net/Uri;
    :catch_4
    move-exception v34

    .line 5312
    .local v34, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "CommonEngine"

    const-string v7, "Not enough space in database"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v8, 0x7f0b0192

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->showCoverModeDialog(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 5316
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b0192

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_a

    .line 5224
    .end local v12    # "orientationForPicture":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "fileUri":Landroid/net/Uri;
    .end local v22    # "exif":Landroid/media/ExifInterface;
    .end local v34    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    .end local v37    # "values":Landroid/content/ContentValues;
    .restart local v33    # "orientationForPicture":I
    :catch_5
    move-exception v29

    move/from16 v12, v33

    .end local v33    # "orientationForPicture":I
    .restart local v12    # "orientationForPicture":I
    goto :goto_b

    .end local v12    # "orientationForPicture":I
    .restart local v33    # "orientationForPicture":I
    :cond_24
    move/from16 v12, v33

    .end local v33    # "orientationForPicture":I
    .restart local v12    # "orientationForPicture":I
    goto/16 :goto_8

    .end local v12    # "orientationForPicture":I
    .restart local v33    # "orientationForPicture":I
    :cond_25
    move/from16 v12, v33

    .end local v33    # "orientationForPicture":I
    .restart local v12    # "orientationForPicture":I
    goto/16 :goto_6
.end method


# virtual methods
.method public DualCaptureModeAsyncReset()V
    .locals 1

    .prologue
    .line 4938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    .line 4939
    return-void
.end method

.method public cancelCaptureForDrama()V
    .locals 1

    .prologue
    .line 4613
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelDramaShot()V

    .line 4614
    return-void
.end method

.method public cancelCaptureForMagic()V
    .locals 1

    .prologue
    .line 4617
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelMagicShot()V

    .line 4618
    return-void
.end method

.method public cancelCaptureForPanorama()V
    .locals 1

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4578
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 4581
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 4583
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4584
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->cancelAutoFocus()V

    .line 4597
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->clearFocusState()V

    .line 4600
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 4601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 4602
    return-void

    .line 4586
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    goto :goto_0
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 4605
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4606
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelSeriesActionShot()V

    .line 4608
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 4609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 4610
    return-void
.end method

.method public chkActionShotStarted()Z
    .locals 1

    .prologue
    .line 4621
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    return v0
.end method

.method public handleShutterEvent()V
    .locals 9

    .prologue
    const/16 v8, 0x18

    const/16 v7, 0x11

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4625
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 4626
    :cond_0
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent - isCapturing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    :cond_1
    :goto_0
    return-void

    .line 4630
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 4631
    .local v0, "shootingMode":I
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v7, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v8, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 4634
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4635
    const-string v1, "CommonEngine"

    const-string v2, "duplicate schedule burst shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4638
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4639
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->needToAEAWBLocked(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4640
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4642
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4643
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 4645
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4646
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 4647
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4648
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v6, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 4652
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 4653
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x139

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4657
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartBurstShot()V

    goto/16 :goto_0

    .line 4654
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v8, :cond_9

    .line 4655
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_1
.end method

.method public handleShutterEventForBurstShot()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4663
    const-string v1, "handleShutterEventForBurstShot"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4665
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 4666
    :cond_0
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEventForBurstShot - isCapturing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    :goto_0
    return-void

    .line 4670
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 4671
    .local v0, "shootingMode":I
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEventForBurstShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->checkStorageLow(I)I

    move-result v1

    if-eq v1, v5, :cond_6

    .line 4674
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4675
    const-string v1, "CommonEngine"

    const-string v2, "duplicate schedule burst shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4678
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4679
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->needToAEAWBLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4680
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4682
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4683
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 4686
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_7

    .line 4687
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x139

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4691
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartBurstShot()V

    .line 4695
    :cond_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 4688
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_5

    .line 4689
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_1
.end method

.method public handleShutterReleaseEvent()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4699
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShutterReleaseEvent - mFocusState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v6, v6, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isStartingPreview()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4702
    :cond_0
    const-string v2, "CommonEngine"

    const-string v3, "handleShutterReleaseEvent returning.."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    :cond_1
    :goto_0
    return-void

    .line 4706
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v4}, Lcom/sec/android/app/camera/CommonEngine;->access$2200(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 4708
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 4709
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong state for take picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4722
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    .line 4724
    .local v1, "shootingMode":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4755
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 4756
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isSingleShotBurst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4757
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopBurstShot()V

    goto :goto_0

    .line 4735
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto :goto_0

    .line 4738
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    if-nez v4, :cond_4

    .line 4739
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetDualCaptureModeSync(I)V

    .line 4740
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startDualModeAsyncShot(Z)V

    .line 4741
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    .line 4742
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    .line 4743
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onDualModeAsyncFirstCapture()V

    .line 4744
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForDualCaptureModeAsyncShot()V

    goto/16 :goto_0

    .line 4745
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 4746
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    .line 4747
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onDualModeAsyncCaptureCompleted()V

    .line 4748
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 4749
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    goto/16 :goto_0

    .line 4751
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 4758
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4759
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 4760
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 4762
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4763
    const-string v2, "CommonEngine"

    const-string v3, "Burst shot is progressing..."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4766
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 4769
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 4775
    :pswitch_4
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isPanoramaCaptureAllowed()Z

    move-result v4

    if-nez v4, :cond_a

    .line 4776
    const-string v2, "CommonEngine"

    const-string v3, "Drop Panorama capture start, because it\'s not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4785
    :cond_a
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-eqz v4, :cond_b

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 4786
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-nez v2, :cond_d

    .line 4787
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureStart()Z

    move-result v2

    if-nez v2, :cond_c

    .line 4788
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto/16 :goto_0

    :cond_b
    move v2, v3

    .line 4785
    goto :goto_1

    .line 4791
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 4792
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    .line 4794
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 4795
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4796
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_e

    .line 4797
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 4799
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPanorama()V

    goto/16 :goto_0

    .line 4803
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 4804
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 4807
    :pswitch_6
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v4, :cond_f

    move v3, v2

    :cond_f
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 4808
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v3, :cond_10

    .line 4809
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 4810
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartActionShot()V

    goto/16 :goto_0

    .line 4812
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v3

    if-eqz v3, :cond_11

    .line 4813
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot : STOP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopActionShot()V

    goto/16 :goto_0

    .line 4816
    :cond_11
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot: don\'t STOP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4821
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4822
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopBurstShot()V

    goto/16 :goto_0

    .line 4828
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterEvent()V

    goto/16 :goto_0

    .line 4831
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkSaveDirectory()V

    .line 4832
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkDramaDumpDir()V

    .line 4833
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4834
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_12

    .line 4835
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 4837
    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDramaShot()V

    goto/16 :goto_0

    .line 4840
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkSaveDirectory()V

    .line 4841
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4842
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4843
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 4845
    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onGolfShotStarted()V

    .line 4846
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getGolfDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startGolfShot(I)V

    goto/16 :goto_0

    .line 4849
    :pswitch_b
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->checkMagicDumpDir()V

    .line 4850
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v0, 0x10

    .line 4851
    .local v0, "maxCaptureCount":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getRemainCount()I

    move-result v3

    if-ge v3, v0, :cond_15

    .line 4852
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->setStorageStatusLow()V

    .line 4853
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    goto/16 :goto_0

    .line 4850
    .end local v0    # "maxCaptureCount":I
    :cond_14
    const/16 v0, 0x20

    goto :goto_2

    .line 4856
    .restart local v0    # "maxCaptureCount":I
    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4857
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_16

    .line 4858
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 4860
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartMagicShot()V

    goto/16 :goto_0

    .line 4863
    .end local v0    # "maxCaptureCount":I
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onOutFocusStarted()V

    .line 4864
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 4724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public handleSingleShutter()V
    .locals 4

    .prologue
    .line 4870
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-CaptureSequenceStart**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4875
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4878
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4879
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    .line 4880
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4881
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$2300(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 4888
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4889
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->needToAEAWBLocked(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4890
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    .line 4894
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4895
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_4

    .line 4896
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    .line 4902
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->handleTimer()Z

    .line 4905
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPreviewDummy()V

    .line 4910
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getAutoShotNightMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4911
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoNight()V

    .line 4914
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleTakePicture()V

    .line 4916
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_6

    .line 4921
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4922
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_9

    .line 4923
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 4926
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 4927
    return-void

    .line 4891
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->needToAWBLocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4892
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAWB()V

    goto/16 :goto_0
.end method

.method public isDualCaptureModeAsyncFirstCapturing()Z
    .locals 1

    .prologue
    .line 4934
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    return v0
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 4930
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    return v0
.end method

.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 8
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const-wide/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 4942
    const-string v1, "JPEG.onPictureTaken"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4943
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 4945
    .local v0, "shootingMode":I
    packed-switch v0, :pswitch_data_0

    .line 5012
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5013
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->doNotResumeContinousAFOnPictureTaken()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5015
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->cancelAutoFocus()V

    .line 5017
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 5018
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->setFocusParameter(I)V

    .line 5025
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 5026
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$902(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    .line 5033
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 5034
    return-void

    .line 4957
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    if-eqz v1, :cond_2

    .line 4959
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4961
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 4962
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4968
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 4977
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 4981
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    .line 4982
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 4983
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4986
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 4987
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    goto/16 :goto_0

    .line 4990
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 4993
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 5000
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 5003
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->update3DTourThumbnail([B)V

    .line 5004
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 5005
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 5022
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    goto/16 :goto_1

    .line 4945
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    .prologue
    .line 5333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 5334
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 5337
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 5338
    return-void
.end method

.method public setShootingMode(I)V
    .locals 6
    .param p1, "shootingMode"    # I

    .prologue
    const/16 v3, 0x22

    const/16 v2, 0x19

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5341
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    sparse-switch v0, :sswitch_data_0

    .line 5388
    :cond_0
    :goto_0
    :sswitch_0
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 5389
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2200(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 5391
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5392
    if-ne p1, v3, :cond_6

    .line 5393
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 5412
    :goto_1
    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x26

    if-ne p1, v0, :cond_a

    .line 5415
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3400(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$2200(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 5421
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5422
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_b

    .line 5423
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/seccamera/SecCamera;->setDramaShotMode(I)V

    .line 5427
    :goto_3
    if-nez p1, :cond_d

    .line 5428
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v5, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_c

    .line 5429
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 5438
    :cond_3
    :goto_4
    packed-switch p1, :pswitch_data_0

    .line 5508
    :goto_5
    :pswitch_0
    return-void

    .line 5343
    :sswitch_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    goto/16 :goto_0

    .line 5358
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5359
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 5361
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    if-eq v0, p1, :cond_5

    .line 5362
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 5364
    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto/16 :goto_0

    .line 5367
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishActionShot()V

    goto/16 :goto_0

    .line 5374
    :sswitch_4
    const-string v0, "CommonEngine"

    const-string v1, "setLowLightShot : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5375
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotReset()V

    .line 5376
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setLowLightShot(I)V

    goto/16 :goto_0

    .line 5379
    :sswitch_5
    if-nez p1, :cond_0

    .line 5380
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_0

    .line 5384
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    const-string v1, "hdr-mode"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5394
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5395
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    add-int/lit16 v1, v1, 0x190

    invoke-virtual {v0, p1, v1, v4}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(III)V

    .line 5396
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setSingleEffectSync(I)V

    goto/16 :goto_1

    .line 5397
    :cond_7
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_9

    .line 5398
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->setEffectMenuSelect(Z)V

    .line 5399
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 5400
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setDualEffectSync(I)V

    .line 5402
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_8

    .line 5403
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    .line 5407
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectLayerOrderForDualCamera()V

    .line 5408
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setOrientationForDual()V

    goto/16 :goto_1

    .line 5405
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    goto :goto_6

    .line 5410
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    goto/16 :goto_1

    .line 5417
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$3500(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3400(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$2200(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    goto/16 :goto_2

    .line 5425
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/seccamera/SecCamera;->setDramaShotMode(I)V

    goto/16 :goto_3

    .line 5431
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    goto/16 :goto_4

    .line 5434
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    goto/16 :goto_4

    .line 5445
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    .line 5456
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    .line 5463
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    .line 5467
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setLiveBeautyMode(I)V

    .line 5468
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetFaceRetouchLevelSync(I)V

    .line 5469
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    .line 5470
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    .line 5482
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 5483
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_5

    .line 5486
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 5487
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setRichtonePictureMode(I)V

    .line 5488
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    const-string v1, "hdr-mode"

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 5491
    :pswitch_7
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 5492
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 5493
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_5

    .line 5496
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5497
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeActionShot()V

    .line 5498
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setResolutionActionShot(II)V

    .line 5500
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_5

    .line 5503
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 5504
    const-string v0, "CommonEngine"

    const-string v1, "setLowLightShot : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setLowLightShot(I)V

    goto/16 :goto_5

    .line 5341
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
        0xa -> :sswitch_3
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x17 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1f -> :sswitch_0
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_5
    .end sparse-switch

    .line 5438
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
