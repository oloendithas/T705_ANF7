.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
.super Ljava/lang/Object;
.source "TwGLPanorama360Menu.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Panorama360Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
    }
.end annotation


# static fields
.field public static final DEBUG_IMAGE:I = 0x2

.field public static final DEBUG_NONE:I = 0x0

.field public static final DEBUG_SENSOR:I = 0x1

.field private static final LIMITS_OVER_INTERVAL:F = 1.0E8f

.field private static final MATRIX_SIZE:I = 0x10

.field private static final NS2MS:F = 1.0E-6f

.field private static final NS2S:F = 1.0E-9f

.field private static final PANORAMA_STATE_INITIALIZED:I = 0x1

.field private static final PANORAMA_STATE_PROCESS:I = 0x2

.field private static final PANORAMA_STATE_STOP:I = 0x3

.field private static final PANORAMA_STATE_UNINITIALIZED:I = 0x0

.field private static final SAVE_JPG_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final SAVE_RAW_EXTENSION:Ljava/lang/String; = ".raw"

.field private static final SAVE_TXT_EXTENSION:Ljava/lang/String; = ".txt"

.field private static final SEPARATER:Ljava/lang/String; = "\t"


# instance fields
.field private final RES_ID_PANORAMA_GUIDE_IMAGE:[[I

.field private accelerometerTimeStamp:J

.field private accelerometerValues:[F

.field private doImageClassify:Z

.field private inRM:[F

.field isSetOffset:Z

.field private isShootable:Z

.field private isStartShooting:Z

.field private mACMatrix:[D

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mAccelerometerIx:I

.field private mAngleOfViewDegree:D

.field private mAppSensorFusionMode:I

.field private mCameraHeight:I

.field private mCameraOrientation:I

.field private mCameraWidth:I

.field private mContextActivity:Lcom/sec/android/app/camera/Camera;

.field private mCurGyroscopeAngleIndex:I

.field private mCurGyroscopeAngleValue:[D

.field private mCurGyroscopeAngleValueHist:[[D

.field private mCurSensorIndex:[I

.field private mDateTaken:[J

.field public mDebugType:I

.field private mFinishFlg:Z

.field private mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

.field private mGuideImage:[Landroid/graphics/Bitmap;

.field private mGyroMatrix:[D

.field private mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeCorrectValue:[F

.field private mGyroscopeIx:I

.field private mGyroscopeValueNumPerFrame:I

.field private mHandler:Landroid/os/Handler;

.field private mImageClassifyBmp:Landroid/graphics/Bitmap;

.field private mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

.field private mMagneticField:Landroid/hardware/Sensor;

.field private mMagneticFieldIx:I

.field private mMaxHeapSize:[I

.field private mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mMotionlessThres:I

.field private mOffsetMode:I

.field private mOrientationIx:I

.field private mOutputType:I

.field public mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

.field private mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

.field private mPanoramaPreviewCount:I

.field public mPanoramaProcessCount:I

.field private mPanoramaState:I

.field private mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

.field private mProjectionType:I

.field private mRVMatrix:[D

.field private mRotationVector:Landroid/hardware/Sensor;

.field private mRotationVectorIx:I

.field private mSaveDirPath:Ljava/lang/String;

.field private mSaveImagePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInputDataDirPath:Ljava/lang/String;

.field private mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

.field public mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

.field private mSensorFusionMode:I

.field private mSensorInfoMngList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorLockObj:Ljava/lang/Object;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatus:[I

.field private mTotalGyroscopeValue:[D

.field private mTotalGyroscopeValueNum:I

.field private mUseImage:[I

.field private mUseImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSensorForAWF:Z

.field private mUseSensorForGA:Z

.field private mUseSensorThres:I

.field private mUseThres:I

.field private mWaitTime:I

.field private magneticTimeStamp:J

.field private magneticValues:[F

.field private moveToShooting:Z

.field private orientationValues:[F

.field private outRM:[F

.field private pre_frame_time:J

.field private prev_timestamp:J

.field private registered_accelerometer:Z

.field private registered_gyroscope:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V
    .locals 20
    .param p2, "contextActivity"    # Lcom/sec/android/app/camera/Camera;
    .param p3, "imageStitcher"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .prologue
    .line 1541
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    .line 1364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1368
    const/16 v2, 0x10

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    .line 1386
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMaxHeapSize:[I

    .line 1387
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    .line 1392
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    .line 1395
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImage:[I

    .line 1411
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    .line 1412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    .line 1413
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    .line 1414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    .line 1415
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeIx:I

    .line 1416
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometerIx:I

    .line 1417
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticFieldIx:I

    .line 1418
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOrientationIx:I

    .line 1419
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVectorIx:I

    .line 1422
    const/4 v2, 0x3

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeCorrectValue:[F

    .line 1424
    const/4 v2, 0x3

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    .line 1426
    const/4 v2, 0x3

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    .line 1427
    const/16 v2, 0xa

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    .line 1433
    const/16 v2, 0x10

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->inRM:[F

    .line 1434
    const/16 v2, 0x10

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->outRM:[F

    .line 1436
    const/16 v2, 0x9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    .line 1437
    const/16 v2, 0x9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    .line 1438
    const/16 v2, 0x9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    .line 1439
    const/4 v2, 0x3

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->orientationValues:[F

    .line 1440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    .line 1441
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    .line 1449
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    .line 1457
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 1458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    .line 1471
    const/4 v2, 0x2

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    .line 1473
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    .line 1474
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    .line 1476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    .line 1479
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    .line 1483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isSetOffset:Z

    .line 1486
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    .line 2792
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 2793
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 1542
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "pc Panorama360Callback "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkSaveDirectory()V

    .line 1546
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1547
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "mActivityContext is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    if-eqz v2, :cond_0

    .line 1555
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 1556
    .local v12, "ex_strage":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "panorama360"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    .line 1557
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v17, "save_dir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1559
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 1563
    .end local v12    # "ex_strage":Ljava/io/File;
    .end local v17    # "save_dir":Ljava/io/File;
    :cond_0
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    .line 1564
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    .line 1565
    const-wide v2, 0x404f4cccc0000000L

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAngleOfViewDegree:D

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v19

    .line 1570
    .local v19, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/hardware/Sensor;

    .line 1571
    .local v18, "sensor":Landroid/hardware/Sensor;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    .line 1575
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    .line 1578
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    .line 1581
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    goto :goto_1

    .line 1548
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "sensor":Landroid/hardware/Sensor;
    .end local v19    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_5
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1549
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "mActivityContext.getCameraSettings() is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    :cond_6
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1585
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v19    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    .line 1586
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    .line 1587
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    .line 1588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;

    .line 1591
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 1592
    new-instance v2, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    invoke-direct {v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    .line 1594
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    .line 1595
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOffsetMode:I

    .line 1596
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    if-nez v2, :cond_8

    const/4 v15, 0x0

    .line 1597
    .local v15, "is_stock":Z
    :goto_2
    new-instance v2, Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-direct {v2, v15}, Lcom/sec/android/app/camera/panorama360/SensorFusion;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    .line 1598
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcGetInitialSfMode(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setMode(I)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOffsetMode:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setOffsetMode(I)V

    .line 1601
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->getCameraOrientation(I)I

    move-result v11

    .line 1603
    .local v11, "camera_orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v2, v11}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setRotation(I)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setAppState(I)V

    .line 1606
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v10, v2, 0x2

    .line 1607
    .local v10, "buff_size":I
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/glview/TwGLContext;FFLandroid/app/Activity;Landroid/os/Handler;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetOrientation()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setInitialOrientation(I)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationEnable(Z)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 1612
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 1613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetInputGyroscopeType(I)V

    .line 1617
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetPanorama360ViewEventListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    .line 1646
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    array-length v2, v2

    if-ge v13, v2, :cond_a

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    aget-object v2, v2, v13

    const/4 v3, 0x1

    aget v16, v2, v3

    .line 1648
    .local v16, "res_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v13

    .line 1646
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1596
    .end local v10    # "buff_size":I
    .end local v11    # "camera_orientation":I
    .end local v13    # "i":I
    .end local v15    # "is_stock":Z
    .end local v16    # "res_id":I
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1615
    .restart local v10    # "buff_size":I
    .restart local v11    # "camera_orientation":I
    .restart local v15    # "is_stock":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetInputGyroscopeType(I)V

    goto :goto_3

    .line 1650
    .restart local v13    # "i":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcUpdateScreenRotation()V

    .line 1651
    return-void

    .line 1368
    :array_0
    .array-data 4
        0xc
        0x7f02036b
    .end array-data

    :array_1
    .array-data 4
        0xd
        0x7f020369
    .end array-data

    :array_2
    .array-data 4
        0xe
        0x7f02036a
    .end array-data

    :array_3
    .array-data 4
        0xf
        0x7f020367
    .end array-data

    :array_4
    .array-data 4
        0x10
        0x7f020368
    .end array-data

    :array_5
    .array-data 4
        0x11
        0x7f020365
    .end array-data

    :array_6
    .array-data 4
        0x12
        0x7f02036c
    .end array-data

    :array_7
    .array-data 4
        0x13
        0x7f020366
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x7f02035f
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x7f020363
    .end array-data

    :array_a
    .array-data 4
        0x4
        0x7f020361
    .end array-data

    :array_b
    .array-data 4
        0x5
        0x7f02035d
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x7f020360
    .end array-data

    :array_d
    .array-data 4
        0x7
        0x7f020364
    .end array-data

    :array_e
    .array-data 4
        0x8
        0x7f020362
    .end array-data

    :array_f
    .array-data 4
        0x9
        0x7f02035e
    .end array-data
.end method

.method static synthetic access$10000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->savePanoramaSetting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1354
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1354
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveUseImageSetting(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPrepareShooting(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaInitialize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    return v0
.end method

.method static synthetic access$1776(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1354
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcMoveToNextStateByAttachStatus(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1354
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1354
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V

    return-void
.end method

.method static synthetic access$7400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOutputType:I

    return v0
.end method

.method static synthetic access$7402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1354
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOutputType:I

    return p1
.end method

.method static synthetic access$7602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1354
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1354
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1354
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # [Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 1354
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorDataSummary(Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 1
    .param p1, "dateTaken"    # J

    .prologue
    .line 3039
    const-string v0, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSaveInputFileName(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;)Ljava/lang/String;
    .locals 9
    .param p1, "sinfo_mng"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3031
    iget-wide v3, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->time:J

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 3032
    .local v2, "time":Ljava/lang/String;
    const-string v3, "%05d"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->img_ix:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3033
    .local v0, "ix_str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sg%05d_sa%05d_so%05d_sr%05d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget v7, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->o_ix:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->r_ix:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3034
    .local v1, "name":Ljava/lang/String;
    return-object v1
.end method

.method private pcCheckAngle([D[DDJ)Z
    .locals 8
    .param p1, "cur_angle"    # [D
    .param p2, "base_angle"    # [D
    .param p3, "boundary_angle"    # D
    .param p5, "diff_time"    # J

    .prologue
    .line 2357
    const/4 v3, 0x1

    .line 2360
    .local v3, "ret":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 2361
    aget-wide v4, p2, v2

    aget-wide v6, p1, v2

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2362
    .local v0, "diff_angle":D
    cmpl-double v4, v0, p3

    if-lez v4, :cond_0

    .line 2363
    const/4 v3, 0x0

    .line 2360
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2372
    .end local v0    # "diff_angle":D
    :cond_1
    return v3
.end method

.method private pcClearWarning()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2255
    :cond_1
    return-void
.end method

.method private pcGetInitialSfMode(I)I
    .locals 4
    .param p1, "app_sf_mode"    # I

    .prologue
    .line 1791
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcGetInitialSfMode app_sf_mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    packed-switch p1, :pswitch_data_0

    .line 1816
    const/4 v0, 0x0

    .line 1819
    .local v0, "sf_mode":I
    :goto_0
    return v0

    .line 1795
    .end local v0    # "sf_mode":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1796
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1798
    .end local v0    # "sf_mode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1799
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1801
    .end local v0    # "sf_mode":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1802
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1804
    .end local v0    # "sf_mode":I
    :pswitch_3
    const/4 v0, 0x3

    .line 1805
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1807
    .end local v0    # "sf_mode":I
    :pswitch_4
    const/4 v0, 0x4

    .line 1808
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1810
    .end local v0    # "sf_mode":I
    :pswitch_5
    const/4 v0, 0x4

    .line 1811
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1813
    .end local v0    # "sf_mode":I
    :pswitch_6
    const/4 v0, 0x2

    .line 1814
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1793
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private pcGetShootingSfMode(I)I
    .locals 4
    .param p1, "app_sf_mode"    # I

    .prologue
    .line 1824
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcGetShootingSfMode app_sf_mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    packed-switch p1, :pswitch_data_0

    .line 1848
    const/4 v0, 0x0

    .line 1851
    .local v0, "sf_mode":I
    :goto_0
    return v0

    .line 1827
    .end local v0    # "sf_mode":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1828
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1830
    .end local v0    # "sf_mode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1831
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1833
    .end local v0    # "sf_mode":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1834
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1836
    .end local v0    # "sf_mode":I
    :pswitch_3
    const/4 v0, 0x3

    .line 1837
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1839
    .end local v0    # "sf_mode":I
    :pswitch_4
    const/4 v0, 0x4

    .line 1840
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1842
    .end local v0    # "sf_mode":I
    :pswitch_5
    const/4 v0, 0x4

    .line 1843
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1845
    .end local v0    # "sf_mode":I
    :pswitch_6
    const/4 v0, 0x1

    .line 1846
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1825
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private pcIsStopPanoramaShooting(I)Z
    .locals 4
    .param p1, "attach_status"    # I

    .prologue
    .line 2224
    const/4 v0, 0x0

    .line 2225
    .local v0, "is_stop_shooting":Z
    packed-switch p1, :pswitch_data_0

    .line 2245
    :goto_0
    :pswitch_0
    return v0

    .line 2231
    :pswitch_1
    const/4 v0, 0x0

    .line 2232
    goto :goto_0

    .line 2239
    :pswitch_2
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcIsStopPanoramaShooting->stop attach_status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const/4 v0, 0x1

    .line 2241
    goto :goto_0

    .line 2225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private pcIsUseSensor()Z
    .locals 1

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 2377
    :cond_1
    const/4 v0, 0x1

    .line 2379
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pcMoveToNextStateByAttachStatus(I)V
    .locals 5
    .param p1, "attach_status"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 2258
    packed-switch p1, :pswitch_data_0

    .line 2263
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2267
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcClearWarning()V

    .line 2313
    :cond_1
    :goto_0
    :pswitch_1
    return-void

    .line 2273
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    if-eqz v0, :cond_1

    .line 2274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2275
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2277
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0b02c7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 2278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    .line 2299
    :pswitch_3
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcMoveToNextStateByAttachStatus ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 2301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    .line 2302
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    goto :goto_0

    .line 2306
    :pswitch_4
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcMoveToNextStateByAttachStatus STATUS_GUIDE_ENDED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 2308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 2309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    .line 2310
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    goto/16 :goto_0

    .line 2258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private pcPanoramaInitialize()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v8, 0x3f800000

    .line 1904
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1907
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->mode:I

    .line 1908
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->render_mode:I

    .line 1909
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAngleOfViewDegree:D

    iput-wide v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_angle_of_view_degree:D

    .line 1910
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_width:I

    .line 1911
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_height:I

    .line 1912
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->use_still_capture:I

    .line 1913
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->still_width:I

    .line 1914
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->still_height:I

    .line 1915
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAngleOfViewDegree:D

    iput-wide v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->still_angle_of_view_degree:D

    .line 1916
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    const-string v6, "YVU420_SEMIPLANAR"

    iput-object v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->format:Ljava/lang/String;

    .line 1917
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->alpha_blending_image_frame:I

    .line 1918
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->gradually_disp_guide_frame:I

    .line 1919
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->fix_current_image:I

    .line 1920
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->disp_current_image:I

    .line 1921
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->blink_preview_mode:I

    .line 1922
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->version:I

    .line 1923
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1924
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1925
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1926
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1927
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1928
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v10, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1929
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1930
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1931
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1932
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1933
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v10, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1934
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1935
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1936
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1937
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1938
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v10, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1939
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1940
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1941
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1942
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1943
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    const/high16 v6, 0x40400000

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1944
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1945
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1946
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1947
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1948
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    const/16 v6, 0x74

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->angle_fov:I

    .line 1950
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProjectionType:I

    .line 1952
    const/16 v3, 0xfa0

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMotionlessThres:I

    .line 1953
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseThres:I

    .line 1954
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForGA:Z

    .line 1955
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForAWF:Z

    .line 1956
    const/16 v3, 0x320

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorThres:I

    .line 1958
    const-string v3, "TwGLPanorama360Menu"

    const-string v6, "pc pcPanoramaInitialize"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMaxHeapSize:[I

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->initialize(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v2

    .line 1960
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 1961
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.initialize error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProjectionType:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setProjectionType(I)I

    move-result v2

    .line 1965
    if-eqz v2, :cond_1

    .line 1966
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setProjectionType error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMotionlessThres:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setMotionlessThreshold(I)I

    move-result v2

    .line 1970
    if-eqz v2, :cond_2

    .line 1971
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setMotionlessThreshold error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseThres:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseThreshold(I)I

    move-result v2

    .line 1975
    if-eqz v2, :cond_3

    .line 1976
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseThreshold error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForAWF:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_0
    invoke-virtual {v6, v5, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v2

    .line 1979
    if-eqz v2, :cond_4

    .line 1980
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForGA:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_1
    invoke-virtual {v6, v4, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v2

    .line 1983
    if-eqz v2, :cond_5

    .line 1984
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorThres:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseSensorThreshold(I)I

    move-result v2

    .line 1987
    if-eqz v2, :cond_6

    .line 1988
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseSensorThreshold error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 1991
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    .line 1992
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    aget-object v3, v3, v1

    aget v0, v3, v5

    .line 1993
    .local v0, "guide_image_type":I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v1

    invoke-virtual {v3, v0, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setGuideImage(ILandroid/graphics/Bitmap;)I

    .line 1994
    if-eqz v2, :cond_7

    .line 1995
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setGuideImage error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    .end local v0    # "guide_image_type":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_8
    move v3, v5

    .line 1978
    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 1982
    goto :goto_1

    .line 2005
    .restart local v1    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 2008
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->start(I)I

    move-result v2

    .line 2009
    if-eqz v2, :cond_b

    .line 2010
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImage:[I

    aput v5, v3, v5

    .line 2014
    return-void
.end method

.method private pcPanoramaPreview([B)V
    .locals 31
    .param p1, "cameraOutputRaw"    # [B

    .prologue
    .line 2018
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    .line 2019
    .local v21, "now_time":J
    const-wide/16 v14, 0x0

    .line 2021
    .local v14, "frame_interval":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    const-wide/16 v26, 0x0

    cmp-long v3, v3, v26

    if-eqz v3, :cond_0

    .line 2022
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    sub-long v14, v21, v3

    .line 2024
    :cond_0
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    .line 2026
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    if-nez v3, :cond_3

    const/16 v18, 0x1

    .line 2027
    .local v18, "is_first":Z
    :goto_0
    if-eqz v18, :cond_1

    .line 2028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 2030
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2031
    const/4 v6, 0x0

    .line 2032
    .local v6, "g_mat":[D
    const/4 v7, 0x0

    .line 2033
    .local v7, "rv_mat":[D
    const/4 v8, 0x0

    .line 2034
    .local v8, "ac_mat":[D
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcIsUseSensor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v5, v9, v0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorMatrix([D[D[D[I)I

    .line 2036
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    .line 2037
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    .line 2038
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    .line 2039
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 2040
    new-instance v24, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 2042
    .local v24, "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    .line 2043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, v24

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    .line 2044
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    move-object/from16 v0, v24

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->img_ix:I

    .line 2045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v24

    iput-wide v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->time:J

    .line 2046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    .end local v24    # "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderInfo([BLjava/util/ArrayList;[D[D[DIILjava/lang/String;)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 2060
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v4, 0xbb8

    if-ge v3, v4, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    if-ltz v3, :cond_e

    .line 2061
    if-eqz v6, :cond_e

    .line 2063
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    int-to-double v3, v3

    const-wide v27, 0x4092c00000000000L

    cmpg-double v3, v3, v27

    if-gez v3, :cond_4

    .line 2064
    sget-wide v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_EXTRA_TIME:D

    .line 2068
    .local v12, "boundary_angle":D
    :goto_1
    const/16 v19, 0x1

    .line 2070
    .local v19, "is_stop":Z
    const/4 v3, 0x3

    new-array v11, v3, [D

    .line 2071
    .local v11, "base_angle":[D
    const/4 v3, 0x3

    new-array v10, v3, [D

    .line 2072
    .local v10, "cur_angle_ave":[D
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-lez v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    if-lez v3, :cond_a

    .line 2073
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v4, v4

    if-ge v3, v4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    add-int/lit8 v25, v3, 0x1

    .line 2074
    .local v25, "use_hist_num":I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v4, v4

    rem-int v16, v3, v4

    .line 2076
    .local v16, "hist_ix":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 2077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v3, v3, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    aget-wide v4, v4, v17

    const-wide v27, 0x41cdcd6500000000L

    mul-double v4, v4, v27

    long-to-double v0, v14

    move-wide/from16 v27, v0

    div-double v4, v4, v27

    aput-wide v4, v3, v17

    .line 2076
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2026
    .end local v6    # "g_mat":[D
    .end local v7    # "rv_mat":[D
    .end local v8    # "ac_mat":[D
    .end local v10    # "cur_angle_ave":[D
    .end local v11    # "base_angle":[D
    .end local v12    # "boundary_angle":D
    .end local v16    # "hist_ix":I
    .end local v17    # "i":I
    .end local v18    # "is_first":Z
    .end local v19    # "is_stop":Z
    .end local v25    # "use_hist_num":I
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2066
    .restart local v6    # "g_mat":[D
    .restart local v7    # "rv_mat":[D
    .restart local v8    # "ac_mat":[D
    .restart local v18    # "is_first":Z
    :cond_4
    sget-wide v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_CALC_OFFSET:D

    .restart local v12    # "boundary_angle":D
    goto :goto_1

    .line 2073
    .restart local v10    # "cur_angle_ave":[D
    .restart local v11    # "base_angle":[D
    .restart local v19    # "is_stop":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v0, v3

    move/from16 v25, v0

    goto :goto_2

    .line 2080
    .restart local v16    # "hist_ix":I
    .restart local v17    # "i":I
    .restart local v25    # "use_hist_num":I
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    if-lez v3, :cond_9

    .line 2081
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    int-to-double v0, v9

    move-wide/from16 v27, v0

    div-double v4, v4, v27

    aput-wide v4, v11, v3

    .line 2082
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    int-to-double v0, v9

    move-wide/from16 v27, v0

    div-double v4, v4, v27

    aput-wide v4, v11, v3

    .line 2083
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    int-to-double v0, v9

    move-wide/from16 v27, v0

    div-double v4, v4, v27

    aput-wide v4, v11, v3

    .line 2085
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 2086
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v3, v3, v17

    array-length v3, v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_7

    .line 2087
    aget-wide v3, v10, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v5, v5, v17

    aget-wide v27, v5, v20

    add-double v3, v3, v27

    aput-wide v3, v10, v20

    .line 2086
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 2085
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2090
    .end local v20    # "j":I
    :cond_8
    const/4 v3, 0x0

    aget-wide v4, v10, v3

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v4, v4, v27

    aput-wide v4, v10, v3

    .line 2091
    const/4 v3, 0x1

    aget-wide v4, v10, v3

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v4, v4, v27

    aput-wide v4, v10, v3

    .line 2092
    const/4 v3, 0x2

    aget-wide v4, v10, v3

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v4, v4, v27

    aput-wide v4, v10, v3

    move-object/from16 v9, p0

    .line 2093
    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcCheckAngle([D[DDJ)Z

    move-result v19

    .line 2095
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v4, 0x0

    aget-wide v27, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v5, v5, v16

    const/4 v9, 0x0

    aget-wide v29, v5, v9

    add-double v27, v27, v29

    aput-wide v27, v3, v4

    .line 2096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v4, 0x1

    aget-wide v27, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v5, v5, v16

    const/4 v9, 0x1

    aget-wide v29, v5, v9

    add-double v27, v27, v29

    aput-wide v27, v3, v4

    .line 2097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v4, 0x2

    aget-wide v27, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v5, v5, v16

    const/4 v9, 0x2

    aget-wide v29, v5, v9

    add-double v27, v27, v29

    aput-wide v27, v3, v4

    .line 2098
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    .line 2099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v4, 0x0

    const-wide/16 v27, 0x0

    aput-wide v27, v3, v4

    .line 2100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v4, 0x1

    const-wide/16 v27, 0x0

    aput-wide v27, v3, v4

    .line 2101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v4, 0x2

    const-wide/16 v27, 0x0

    aput-wide v27, v3, v4

    .line 2102
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    .line 2104
    .end local v16    # "hist_ix":I
    .end local v17    # "i":I
    .end local v25    # "use_hist_num":I
    :cond_a
    if-nez v19, :cond_b

    .line 2105
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V

    .line 2107
    :cond_b
    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    if-eqz v3, :cond_e

    .line 2108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_c

    .line 2109
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    .line 2111
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_e

    .line 2113
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    .line 2114
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v3, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    .line 2115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    const-string v9, "YVU420_SEMIPLANAR"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->setInputData([BIILjava/lang/String;)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->start()V

    .line 2121
    .end local v10    # "cur_angle_ave":[D
    .end local v11    # "base_angle":[D
    .end local v12    # "boundary_angle":D
    .end local v19    # "is_stop":Z
    :cond_e
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    if-eqz v3, :cond_11

    .line 2125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v3

    const-wide/16 v26, 0x0

    cmpl-double v3, v3, v26

    if-nez v3, :cond_12

    .line 2126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const-string v4, "OUTDOOR"

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Ljava/lang/String;)Ljava/lang/String;

    .line 2127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const/4 v4, 0x5

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I

    .line 2128
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pc pcPanoramaPreview SCENE_OUTDOOR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setScene(I)I

    move-result v23

    .line 2130
    .local v23, "ret":I
    if-eqz v23, :cond_f

    .line 2131
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoImageStitcher.setScene error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setGuideType(I)I

    move-result v23

    .line 2134
    if-eqz v23, :cond_10

    .line 2135
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoImageStitcher.setGuideType error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    :cond_10
    :goto_6
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 2151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 2153
    .end local v23    # "ret":I
    :cond_11
    return-void

    .line 2121
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2138
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const-string v4, "INDOOR"

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Ljava/lang/String;)Ljava/lang/String;

    .line 2139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const/4 v4, 0x4

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I

    .line 2140
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pc pcPanoramaPreview SCENE_INDOOR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setScene(I)I

    move-result v23

    .line 2142
    .restart local v23    # "ret":I
    if-eqz v23, :cond_13

    .line 2143
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoImageStitcher.setScene error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setGuideType(I)I

    move-result v23

    .line 2146
    if-eqz v23, :cond_10

    .line 2147
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoImageStitcher.setGuideType error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private pcPanoramaProcess([B)V
    .locals 21
    .param p1, "cameraOutputRaw"    # [B

    .prologue
    .line 2156
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "       panorama_process start >>>>>>"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    if-nez v2, :cond_6

    const/16 v17, 0x1

    .line 2159
    .local v17, "is_first":Z
    :goto_0
    if-eqz v17, :cond_1

    .line 2161
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "pc pcPanoramaProcess first "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->end()I

    move-result v18

    .line 2164
    .local v18, "ret":I
    if-eqz v18, :cond_0

    .line 2165
    const-string v2, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->start(I)I

    move-result v18

    .line 2168
    if-eqz v18, :cond_1

    .line 2169
    const-string v2, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    .end local v18    # "ret":I
    :cond_1
    const/4 v12, 0x0

    .line 2174
    .local v12, "use_image":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2175
    const/4 v14, 0x0

    .line 2176
    .local v14, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2177
    .local v9, "g_mat":[D
    const/4 v10, 0x0

    .line 2178
    .local v10, "rv_mat":[D
    const/4 v11, 0x0

    .line 2179
    .local v11, "ac_mat":[D
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcIsUseSensor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2180
    if-eqz v17, :cond_3

    .line 2181
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2183
    .local v4, "dir_path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2184
    .local v5, "mng_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;>;"
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getStockData()[Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;->start()V

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2188
    .end local v4    # "dir_path":Ljava/lang/String;
    .end local v5    # "mng_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;>;"
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcGetShootingSfMode(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    .line 2189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setMode(I)V

    .line 2192
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    invoke-virtual {v2, v3, v6, v7, v8}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorMatrix([D[D[D[I)I

    .line 2193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 2194
    new-instance v19, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 2196
    .local v19, "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    .line 2197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    .line 2198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    move-object/from16 v0, v19

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->img_ix:I

    .line 2199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->time:J

    .line 2200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2203
    .local v15, "dir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->getSaveInputFileName(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2204
    .local v16, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2206
    .end local v15    # "dir":Ljava/lang/String;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v19    # "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    .line 2207
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    .line 2208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    .line 2210
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcIsStopPanoramaShooting(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2212
    monitor-exit v20

    .line 2221
    :goto_1
    return-void

    .line 2158
    .end local v9    # "g_mat":[D
    .end local v10    # "rv_mat":[D
    .end local v11    # "ac_mat":[D
    .end local v12    # "use_image":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v17    # "is_first":Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 2214
    .restart local v9    # "g_mat":[D
    .restart local v10    # "rv_mat":[D
    .restart local v11    # "ac_mat":[D
    .restart local v12    # "use_image":I
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v17    # "is_first":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderInfo([BLjava/util/ArrayList;[D[D[DIILjava/lang/String;)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 2218
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "<<<<<< panorama_process end"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2218
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private pcPrepareShooting(Z)V
    .locals 6
    .param p1, "sensor_init"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2796
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcPrepareShooting sensor_init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    if-ne p1, v4, :cond_1

    .line 2799
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 2801
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 2803
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 2804
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 2805
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 2809
    :cond_1
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    .line 2810
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    .line 2811
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2812
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    .line 2813
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    .line 2814
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    .line 2815
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    .line 2816
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    .line 2817
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImage:[I

    aput v3, v0, v3

    .line 2818
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2819
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2827
    return-void
.end method

.method private pcResetShootingWaitProcess()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2325
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2326
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    .line 2327
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    .line 2337
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->resetOffsetValue()V

    .line 2338
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearStockData()V

    .line 2339
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2342
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    aput-wide v4, v2, v0

    .line 2343
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    aput-wide v4, v2, v0

    .line 2341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2345
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2346
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2347
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v2, v2, v0

    aput-wide v4, v2, v1

    .line 2346
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2345
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2350
    .end local v1    # "j":I
    :cond_3
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    .line 2351
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    .line 2352
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    .line 2353
    return-void
.end method

.method private pcRestartToStartupPreview(Z)V
    .locals 3
    .param p1, "save_image"    # Z

    .prologue
    .line 2316
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcRestartToStartupPreview save_image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 2318
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    .line 2319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2321
    :cond_1
    return-void
.end method

.method private pcUpdateScreenRotation()V
    .locals 7

    .prologue
    .line 1747
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1748
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v4, 0x0

    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1749
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pc pcUpdateScreenRotation old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    .line 1752
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-eqz v4, :cond_0

    .line 1753
    const/4 v3, 0x1

    .line 1754
    .local v3, "rotation":I
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    sparse-switch v4, :sswitch_data_0

    .line 1768
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setRotation(I)V

    .line 1770
    .end local v3    # "rotation":I
    :cond_0
    const/4 v0, 0x0

    .line 1771
    .local v0, "degrees":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1785
    :goto_1
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    sub-int v4, v0, v4

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 1786
    .local v2, "preview_rotation":I
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " disp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preview:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/panorama360/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetPreviewRotation(I)V

    .line 1788
    return-void

    .line 1756
    .end local v0    # "degrees":I
    .end local v2    # "preview_rotation":I
    .restart local v3    # "rotation":I
    :sswitch_0
    const/4 v3, 0x0

    .line 1757
    goto :goto_0

    .line 1759
    :sswitch_1
    const/4 v3, 0x1

    .line 1760
    goto :goto_0

    .line 1762
    :sswitch_2
    const/4 v3, 0x2

    .line 1763
    goto :goto_0

    .line 1765
    :sswitch_3
    const/4 v3, 0x3

    goto :goto_0

    .line 1773
    .end local v3    # "rotation":I
    .restart local v0    # "degrees":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1774
    goto :goto_1

    .line 1776
    :pswitch_1
    const/16 v0, 0x5a

    .line 1777
    goto :goto_1

    .line 1779
    :pswitch_2
    const/16 v0, 0xb4

    .line 1780
    goto :goto_1

    .line 1782
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 1754
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 1771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private savePanoramaInputData(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "dir_path"    # Ljava/lang/String;
    .param p2, "clear_sensor_info"    # Z

    .prologue
    const/4 v10, 0x0

    .line 3043
    const-string v8, "TwGLPanorama360Menu"

    const-string v9, "pc SaveInputDataThread savePanoramaInputData "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    .line 3089
    :cond_0
    :goto_0
    return-void

    .line 3047
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-nez v8, :cond_2

    .line 3048
    const-string v8, "TwGLPanorama360Menu"

    const-string v9, "SensorFusion is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3051
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3052
    .local v3, "save_dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3053
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 3056
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sg.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3057
    .local v5, "sg_save_path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sa.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3061
    .local v2, "sa_save_path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "input_sensor_info.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3064
    .local v6, "summary_savepath":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getStockData()[Ljava/util/ArrayList;

    move-result-object v0

    .line 3066
    .local v0, "allValueList":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    aget-object v8, v0, v10

    invoke-direct {p0, v8, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3067
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-direct {p0, v8, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3070
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 3071
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorDataSummary(Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3073
    :cond_4
    if-eqz p2, :cond_6

    .line 3074
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    array-length v8, v8

    if-ge v1, v8, :cond_5

    .line 3075
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    aput v10, v8, v1

    .line 3074
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3077
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearStockData()V

    .line 3078
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    .line 3079
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3082
    .end local v1    # "i":I
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "setting.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3083
    .local v4, "setting_path":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->savePanoramaSetting(Ljava/lang/String;)V

    .line 3084
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "use_image_setting.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3085
    .local v7, "use_img_setting_path":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v7}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveUseImageSetting(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3086
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 3087
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private savePanoramaSetting(Ljava/lang/String;)V
    .locals 12
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 3092
    const-string v6, "TwGLPanorama360Menu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc SaveInputDataThread savePanoramaSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3095
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v2, v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3096
    .local v2, "filewriter":Ljava/io/FileWriter;
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3098
    .local v5, "writer":Ljava/io/BufferedWriter;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    const-string v3, "VANILLA2"

    .line 3100
    .local v3, "guide_type":Ljava/lang/String;
    :goto_0
    const-string v6, "build_model:%s\r\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3101
    .local v4, "write_str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "aovd:%f\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v10, v10, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_angle_of_view_degree:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "use_thres:%d\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseThres:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "motionless_thres:%d\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMotionlessThres:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "engine_version:Ver.%d\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget v10, v10, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->version:I

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "guide_type:%s\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sensor_fusion_mode:%s\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "camera_orientation:%s\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "scene:%s(%f)\r\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3109
    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3110
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 3111
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 3115
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filewriter":Ljava/io/FileWriter;
    .end local v3    # "guide_type":Ljava/lang/String;
    .end local v4    # "write_str":Ljava/lang/String;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 3098
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filewriter":Ljava/io/FileWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    const-string v3, "VANILLA"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3112
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filewriter":Ljava/io/FileWriter;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 3113
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .param p2, "file_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3155
    .local p1, "sensor_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    const-string v8, "TwGLPanorama360Menu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pc SaveInputDataThread saveSensorData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 3175
    :cond_0
    :goto_0
    return-void

    .line 3160
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3161
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v2, v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3162
    .local v2, "filewriter":Ljava/io/FileWriter;
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3164
    .local v7, "writer":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 3165
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    .line 3166
    .local v5, "sinfo_0":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    .line 3167
    .local v4, "sinfo":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v5, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-direct {p0, v4, v3, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorData(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3168
    .local v6, "write_str":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3164
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3170
    .end local v4    # "sinfo":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    .end local v5    # "sinfo_0":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    .end local v6    # "write_str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 3171
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3172
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filewriter":Ljava/io/FileWriter;
    .end local v3    # "i":I
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 3173
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveSensorDataSummary(Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 19
    .param p3, "file_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;",
            ">;[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3193
    .local p1, "sd_mng":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;>;"
    .local p2, "all_sd":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    const-string v14, "TwGLPanorama360Menu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pc SaveInputDataThread saveSensorData "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3196
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    const/4 v14, 0x1

    invoke-direct {v4, v3, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3197
    .local v4, "filewriter":Ljava/io/FileWriter;
    new-instance v13, Ljava/io/BufferedWriter;

    invoke-direct {v13, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3201
    .local v13, "writer":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 3202
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    .line 3203
    .local v10, "sensor_info_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    iget v11, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->stop_thres:I

    .line 3204
    .local v11, "stop_thres":I
    const/4 v14, 0x0

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v5

    .line 3205
    .local v5, "g_str":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    .line 3206
    .local v1, "a_str":Ljava/lang/String;
    const/4 v14, 0x0

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->o_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v8

    .line 3207
    .local v8, "o_str":Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->r_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v9

    .line 3208
    .local v9, "r_str":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->m_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v7

    .line 3209
    .local v7, "m_str":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%6d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3210
    .local v12, "write_str":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3201
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 3212
    .end local v1    # "a_str":Ljava/lang/String;
    .end local v5    # "g_str":Ljava/lang/String;
    .end local v7    # "m_str":Ljava/lang/String;
    .end local v8    # "o_str":Ljava/lang/String;
    .end local v9    # "r_str":Ljava/lang/String;
    .end local v10    # "sensor_info_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    .end local v11    # "stop_thres":I
    .end local v12    # "write_str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    .line 3213
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3217
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .end local v6    # "i":I
    .end local v13    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 3214
    :catch_0
    move-exception v2

    .line 3215
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private saveUseImageSetting(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 13
    .param p2, "file_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3118
    .local p1, "image_id_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "TwGLPanorama360Menu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pc SaveInputDataThread saveUseImageSetting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return-void

    .line 3122
    :cond_1
    const/4 v1, 0x0

    .line 3123
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 3124
    .local v3, "filewriter":Ljava/io/FileWriter;
    const/4 v7, 0x0

    .line 3126
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3127
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    const/4 v9, 0x1

    invoke-direct {v4, v2, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3128
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .local v4, "filewriter":Ljava/io/FileWriter;
    :try_start_2
    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3130
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 3131
    const-string v9, "%d\r\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3132
    .local v6, "write_str":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3130
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3137
    .end local v6    # "write_str":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 3139
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3144
    :cond_3
    :goto_2
    if-eqz v4, :cond_7

    .line 3146
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .line 3149
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 3140
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 3141
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3147
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3148
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .line 3149
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 3134
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    :catch_2
    move-exception v0

    .line 3135
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3137
    if-eqz v7, :cond_4

    .line 3139
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3144
    :cond_4
    :goto_4
    if-eqz v3, :cond_0

    .line 3146
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 3147
    :catch_3
    move-exception v0

    .line 3148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3140
    :catch_4
    move-exception v0

    .line 3141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3137
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v7, :cond_5

    .line 3139
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 3144
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 3146
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 3149
    :cond_6
    :goto_7
    throw v9

    .line 3140
    :catch_5
    move-exception v0

    .line 3141
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3147
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 3148
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 3137
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_5

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_5

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v5    # "i":I
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_5

    .line 3134
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "i":I
    .restart local v2    # "file":Ljava/io/File;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v5    # "i":I
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_9
    move-exception v0

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :cond_7
    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private toStringSensorData(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;IJ)Ljava/lang/String;
    .locals 11
    .param p1, "info"    # Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    .param p2, "index"    # I
    .param p3, "base_time"    # J

    .prologue
    .line 3181
    const-string v6, "%05d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3182
    .local v0, "ix":Ljava/lang/String;
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    sub-long/2addr v9, p3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3183
    .local v2, "tm":Ljava/lang/String;
    const-string v6, "%f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3184
    .local v3, "v0":Ljava/lang/String;
    const-string v6, "%f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3185
    .local v4, "v1":Ljava/lang/String;
    const-string v6, "%f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3187
    .local v5, "v2":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3189
    .local v1, "str":Ljava/lang/String;
    return-object v1
.end method

.method private toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .param p2, "ix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3221
    .local p1, "s_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 3222
    :cond_0
    const-string v3, "Unsupported\t-\t-\t-\t-"

    .line 3230
    .local v3, "str":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3223
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    if-gez p2, :cond_2

    .line 3224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 3226
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    iget-wide v0, v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    .line 3227
    .local v0, "base_time":J
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    .line 3228
    .local v2, "info":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    invoke-direct {p0, v2, p2, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorData(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;IJ)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 2831
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2942
    return-void
.end method

.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "sec_camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v2, 0x0

    .line 1858
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    if-eqz v0, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1868
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onPreviewFrame mNeedToRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    .line 1873
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 1875
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1876
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    if-nez v0, :cond_3

    .line 1877
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 1879
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    if-nez v0, :cond_4

    .line 1880
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 1882
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1886
    :pswitch_0
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onPreviewFrame PANORAMA_STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaInitialize()V

    goto :goto_0

    .line 1882
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1890
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaPreview([B)V

    .line 1891
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    goto :goto_0

    .line 1894
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaProcess([B)V

    .line 1895
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    goto :goto_0

    .line 1884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2838
    :try_start_0
    const-string v15, "TwGLPanorama360Menu"

    const-string v17, "       onSensorChanged start >>>>>>"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/sec/android/app/camera/panorama360/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 2842
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$9600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v17, 0xbb8

    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    if-ltz v15, :cond_2

    .line 2843
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2844
    .local v11, "pre_time":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v15, v17, v19

    if-eqz v15, :cond_1

    .line 2845
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    const-wide/16 v19, 0x1

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2846
    .local v9, "ns":J
    long-to-float v15, v9

    const v17, 0x4cbebc20

    cmpl-float v15, v15, v17

    if-lez v15, :cond_0

    const-wide/16 v9, 0x1

    .line 2847
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    int-to-float v15, v15

    long-to-float v0, v9

    move/from16 v17, v0

    const v18, 0x358637bd

    mul-float v17, v17, v18

    add-float v15, v15, v17

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2849
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v17, 0x0

    aget v15, v15, v17

    long-to-float v0, v9

    move/from16 v17, v0

    mul-float v15, v15, v17

    const v17, 0x3089705f

    mul-float v3, v15, v17

    .line 2850
    .local v3, "ax":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v17, 0x1

    aget v15, v15, v17

    long-to-float v0, v9

    move/from16 v17, v0

    mul-float v15, v15, v17

    const v17, 0x3089705f

    mul-float v4, v15, v17

    .line 2851
    .local v4, "ay":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v17, 0x2

    aget v15, v15, v17

    long-to-float v0, v9

    move/from16 v17, v0

    mul-float v15, v15, v17

    const v17, 0x3089705f

    mul-float v5, v15, v17

    .line 2853
    .local v5, "az":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/16 v17, 0x0

    aget-wide v18, v15, v17

    float-to-double v0, v3

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    aput-wide v18, v15, v17

    .line 2854
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/16 v17, 0x1

    aget-wide v18, v15, v17

    float-to-double v0, v4

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    aput-wide v18, v15, v17

    .line 2855
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/16 v17, 0x2

    aget-wide v18, v15, v17

    float-to-double v0, v5

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    aput-wide v18, v15, v17

    .line 2856
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    .line 2860
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 2861
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    int-to-double v0, v15

    move-wide/from16 v17, v0

    const-wide v19, 0x405a200000000000L

    mul-double v17, v17, v19

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    int-to-double v0, v15

    move-wide/from16 v19, v0

    div-double v6, v17, v19

    .line 2862
    .local v6, "d_progress":D
    mul-double v17, v6, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v12, v0

    .line 2874
    .end local v6    # "d_progress":D
    .local v12, "progress":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0, v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 2876
    .end local v3    # "ax":F
    .end local v4    # "ay":F
    .end local v5    # "az":F
    .end local v9    # "ns":J
    .end local v12    # "progress":I
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v17, 0xbb8

    move/from16 v0, v17

    if-lt v15, v0, :cond_c

    .line 2877
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setAppState(I)V

    .line 2878
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 2880
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2882
    const-string v15, "TwGLPanorama360Menu"

    const-string v17, "pc onSensorChanged 3sec FOCUSMODE_AF"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mnSensorCalculationCompleted()Z

    .line 2910
    .end local v11    # "pre_time":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeIx:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeIx:I

    .line 2911
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    .line 2913
    :cond_3
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_4

    .line 2914
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v15}, [F->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [F

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    .line 2915
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerTimeStamp:J

    .line 2916
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometerIx:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometerIx:I

    .line 2918
    :cond_4
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 2919
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v15}, [F->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [F

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    .line 2920
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticTimeStamp:J

    .line 2921
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticFieldIx:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticFieldIx:I

    .line 2923
    :cond_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 2924
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVectorIx:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVectorIx:I

    .line 2928
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    if-eqz v15, :cond_7

    .line 2929
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->inRM:[F

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 2930
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->inRM:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->orientationValues:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 2931
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOrientationIx:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOrientationIx:I

    .line 2932
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerTimeStamp:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticTimeStamp:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerTimeStamp:J

    .line 2933
    .local v13, "ts":J
    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    .line 2934
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    .line 2936
    .end local v13    # "ts":J
    :cond_7
    const-string v15, "TwGLPanorama360Menu"

    const-string v17, "<<<<<< onSensorChanged end"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/sec/android/app/camera/panorama360/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    monitor-exit v16

    .line 2938
    return-void

    .line 2863
    .restart local v3    # "ax":F
    .restart local v4    # "ay":F
    .restart local v5    # "az":F
    .restart local v9    # "ns":J
    .restart local v11    # "pre_time":I
    :cond_8
    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    move/from16 v0, v17

    if-gt v15, v0, :cond_9

    .line 2864
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS1:I

    .restart local v12    # "progress":I
    goto/16 :goto_0

    .line 2865
    .end local v12    # "progress":I
    :cond_9
    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE3:I

    move/from16 v0, v17

    if-gt v15, v0, :cond_a

    .line 2866
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    sub-int v15, v15, v17

    int-to-double v0, v15

    move-wide/from16 v17, v0

    const-wide v19, 0x405a200000000000L

    mul-double v17, v17, v19

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    int-to-double v0, v15

    move-wide/from16 v19, v0

    div-double v6, v17, v19

    .line 2867
    .restart local v6    # "d_progress":D
    mul-double v17, v6, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v15, v0

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS1:I

    add-int v12, v15, v17

    .restart local v12    # "progress":I
    goto/16 :goto_0

    .line 2868
    .end local v6    # "d_progress":D
    .end local v12    # "progress":I
    :cond_a
    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE3:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    move/from16 v0, v17

    if-gt v15, v0, :cond_b

    .line 2869
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS2:I

    .restart local v12    # "progress":I
    goto/16 :goto_0

    .line 2871
    .end local v12    # "progress":I
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    sub-int v15, v15, v17

    int-to-double v0, v15

    move-wide/from16 v17, v0

    const-wide v19, 0x405a200000000000L

    mul-double v17, v17, v19

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    int-to-double v0, v15

    move-wide/from16 v19, v0

    div-double v6, v17, v19

    .line 2872
    .restart local v6    # "d_progress":D
    mul-double v17, v6, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v15, v0

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS2:I

    add-int v12, v15, v17

    .restart local v12    # "progress":I
    goto/16 :goto_0

    .line 2888
    .end local v3    # "ax":F
    .end local v4    # "ay":F
    .end local v5    # "az":F
    .end local v6    # "d_progress":D
    .end local v9    # "ns":J
    .end local v12    # "progress":I
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 2889
    const/16 v15, 0x3e8

    if-gt v11, v15, :cond_2

    .line 2890
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    aput-wide v18, v15, v17

    .line 2891
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    aput-wide v18, v15, v17

    .line 2892
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    aput-wide v18, v15, v17

    .line 2893
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    .line 2894
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setAppState(I)V

    .line 2895
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2896
    const-string v15, "TwGLPanorama360Menu"

    const-string v17, "pc onSensorChanged 1sec FOCUSMODE_AF"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2898
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v15}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/camera/CommonEngine;->doAutoFocusAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2899
    :catch_0
    move-exception v8

    .line 2900
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v15, "TwGLPanorama360Menu"

    const-string v17, "pc AutoFocus failed"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2937
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "pre_time":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 2932
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticTimeStamp:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method public pcOnBackProc()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2945
    const/4 v0, 0x0

    .line 2946
    .local v0, "finishPanorama":Z
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcOnBackProc mPanoramaState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    packed-switch v1, :pswitch_data_0

    .line 2979
    :goto_0
    return v0

    .line 2950
    :pswitch_0
    invoke-virtual {p0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    .line 2951
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "pcOnBackProc,assertion error!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2961
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$9700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;->onPanorama360CaptureCancelled()V

    .line 2962
    invoke-virtual {p0, v5, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 2963
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    .line 2965
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2966
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    .line 2967
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 2969
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2970
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    .line 2971
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 2973
    :cond_1
    const/4 v0, 0x1

    .line 2974
    goto :goto_0

    .line 2947
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pcRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1728
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "pc pcRelease "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1731
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1733
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aput-object v3, v1, v0

    .line 1730
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1737
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1739
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    .line 1741
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-eqz v1, :cond_3

    .line 1742
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->release()V

    .line 1744
    :cond_3
    return-void
.end method

.method public pcRestartShooting(ZZ)V
    .locals 4
    .param p1, "save_image"    # Z
    .param p2, "do_in_background"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1663
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc pcRestartShooting "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 1666
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1667
    const/4 p1, 0x0

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 1670
    if-eqz p2, :cond_1

    .line 1671
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartToStartupPreview(Z)V

    .line 1681
    :goto_0
    return-void

    .line 1673
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1674
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManagerPanorama360()V

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 1678
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStartShooting()V

    .line 1679
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pcSensorCalculationCompleted()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1654
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc pcSensorCalculationCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    if-eq v0, v2, :cond_0

    .line 1660
    :goto_0
    return-void

    .line 1658
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    .line 1659
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public pcStartShooting()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1684
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "pc pcStartShooting "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 1687
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1688
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenu()V

    .line 1690
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1691
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    .line 1692
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPrepareShooting(Z)V

    .line 1693
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->start(I)I

    move-result v0

    .line 1694
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 1695
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMorphoImageStitcher.start(1) error int panorama_restart_button onclicked ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :cond_1
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1698
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcGetInitialSfMode(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    .line 1699
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setMode(I)V

    .line 1700
    return-void
.end method

.method public pcStopShooting(ZZZ)V
    .locals 6
    .param p1, "unregist_sensor"    # Z
    .param p2, "save_image"    # Z
    .param p3, "do_in_background"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1703
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcStopShooting unregist_sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " save_image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " do_in_background: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    if-ne p1, v4, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1708
    :cond_0
    if-eqz p2, :cond_2

    .line 1725
    :cond_1
    :goto_0
    return-void

    .line 1711
    :cond_2
    if-eqz p3, :cond_4

    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 1713
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    invoke-direct {v0, p0, v5, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1717
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1718
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    .line 1719
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1720
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->releaseRegisteredImage()I

    .line 1721
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->end()I

    goto :goto_0
.end method
