.class public Lcom/sec/android/app/camera/CommonEngine;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;,
        Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;,
        Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;,
        Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;,
        Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;,
        Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;,
        Lcom/sec/android/app/camera/CommonEngine$CameraPreviewCallback;,
        Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;,
        Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;,
        Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;,
        Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;,
        Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;,
        Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;,
        Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;,
        Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;,
        Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;,
        Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;,
        Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;,
        Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;,
        Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;
    }
.end annotation


# static fields
.field protected static final AF_FAIL_SOUND:I = 0x2

.field protected static final AF_SUCCESS_SOUND:I = 0x1

.field private static final AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final AUTO_SHOT_NIGHT_OFF:I = 0x0

.field private static final AUTO_SHOT_NIGHT_ON:I = 0x1

.field private static final AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field protected static final CAMERA_FIRMWARE_INFO_FILE_REAR:Ljava/lang/String; = "/sys/class/camera/rear/rear_camfw"

.field protected static final CAMERA_LOADED_FW_INFO:Ljava/lang/String; = "/sys/class/camera/rear/rear_camfw_load"

.field protected static final CHANGE_STORAGE_TO_PHONE_MEMORY:I = 0x3

.field private static final DEFAULT_SCENE_MODE:Ljava/lang/String; = "auto"

.field protected static final DELAY_TIME_TO_HIDE_FACE_RECT:I = 0x7d0

.field protected static final DELAY_TIME_TO_HIDE_FOCUS_RECT:I = 0x3e8

.field protected static final DELAY_TIME_TO_RESET_TOUCH_FOCUS:I = 0xbb8

.field public static final ERROR_BUFFER_OVERFLOW_FROM_RECORDER:I = -0x6

.field public static final ERROR_CAMCORDER_OPEN:I = -0x2

.field public static final ERROR_CAMERA_OPEN:I = -0x1

.field public static final ERROR_INVALID_FIRMWARE_VERSION:I = -0x7

.field public static final ERROR_MEDIA_SERVER_DIED:I = -0x8

.field public static final ERROR_PREVIEW_TIMEOUT:I = -0xb

.field public static final ERROR_RECORDING:I = -0x4

.field public static final ERROR_RECORDING_FAIL_LACK_OF_HW_CODEC_RESOURCE:I = -0xc

.field public static final ERROR_RUNTIME_EXCEPTION:I = -0x9

.field public static final ERROR_START_PREVIEW:I = -0x3

.field public static final ERROR_UNKNOWN_EXCEPTION:I = -0xa

.field public static final ERROR_UNKOWN_CALLBACK_FROM_DEVICE:I = -0x5

.field public static final FOCUSING:I = 0x1

.field public static final FOCUS_CANCELLED:I = 0x4

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_RESTART:I = 0x5

.field public static final FOCUS_SUCCESS:I = 0x2

.field public static final GUIDE_BIG_FACE:I = 0x9

.field public static final GUIDE_LEFT_BOTTOM:I = 0x2

.field public static final GUIDE_LEFT_CENTER:I = 0x1

.field public static final GUIDE_LEFT_TOP:I = 0x0

.field public static final GUIDE_MIDDLE_BOTTOM:I = 0x5

.field public static final GUIDE_MIDDLE_CENTER:I = 0x4

.field public static final GUIDE_MIDDLE_TOP:I = 0x3

.field public static final GUIDE_RIGHT_BOTTOM:I = 0x8

.field public static final GUIDE_RIGHT_CENTER:I = 0x7

.field public static final GUIDE_RIGHT_TOP:I = 0x6

.field protected static final HANDLER_MSG_END:I = 0x4

.field protected static final HANDLER_MSG_START:I = 0x1

.field private static final HDR_INDEX_ORIGINAL_IMG:I = 0x1

.field private static final HDR_INDEX_RESULT_IMG:I = 0x2

.field protected static final HIDE_FACE_RECT:I = 0x4

.field protected static final HIDE_FOCUS_RECT:I = 0x2

.field private static final IOBUSY_UNVOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

.field private static final IOBUSY_VOTE:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

.field private static final I_FRAME_INTERVAL_FOR_30:I = 0x1

.field private static final I_FRAME_INTERVAL_FOR_60:I = 0x2

.field private static final MAX_DUAL_FHD_RECORD_TIME:I = 0x12c

.field private static final MAX_DUAL_HD_RECORD_TIME:I = 0x258

.field private static final MAX_SMOOTH_MOTION_RECORD_TIME:I = 0x258

.field private static final MAX_UHD_RECORD_TIME:I = 0x12c

.field private static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field public static final OPEN_RETRY_NUMBER:I = 0x0

.field public static final PREVIEW_CALLBACK_FORMAT_NV21:I = 0x0

.field public static final PREVIEW_CALLBACK_FORMAT_RGBA:I = 0x1

.field public static final RECORD_AUTHOR_PARAM:I = 0x0

.field protected static final RESET_TOUCH_FOCUS:I = 0x1

.field public static final RES_AUTOFOCUS_CANCELED:I = 0x2

.field public static final RES_AUTOFOCUS_FAIL:I = 0x0

.field public static final RES_AUTOFOCUS_FOCUSING:I = 0x3

.field public static final RES_AUTOFOCUS_PRE_FAIL:I = 0x5

.field public static final RES_AUTOFOCUS_PRE_SUCCESS:I = 0x6

.field public static final RES_AUTOFOCUS_RESTART:I = 0x4

.field public static final RES_AUTOFOCUS_SUCCESS:I = 0x1

.field public static SHUTTER_RECORDING_START:I = 0x0

.field public static SHUTTER_RECORDING_STOP:I = 0x0

.field public static SHUTTER_SOUND:I = 0x0

.field public static SHUTTER_SOUND_NIGHT_START:I = 0x0

.field public static final SHUTTER_TIMER_HANDLER_MSG:I = 0xa

.field private static final SINGLE_SHOT_BURST_OFF:I = 0x0

.field private static final SINGLE_SHOT_BURST_ON:I = 0x1

.field static final SIOP_SYS_PROP:Ljava/lang/String; = "sys.siop.curlevel"

.field private static final TAG:Ljava/lang/String; = "CommonEngine"

.field protected static final URI_SEARCHING_IMAGE_ID:I = 0x0

.field protected static final URI_SEARCHING_INTERVAL:I = 0x1e

.field protected static final URI_SEARCHING_VIDEO_ID:I = 0x1

.field public static isPrevOK:Z

.field public static isSystemSoundEffectEnabled:Z

.field public static mLightPipShotCount:I

.field private static m_bIsRecordingThreadStopping:Z

.field private static m_bIsTouchAutoFocusing:Z

.field private static m_bIsTouchFocusPositioned:Z

.field public static m_bRecordingHDR:Z

.field public static m_bRestartTouchAF:Z


# instance fields
.field private bFaceRectHidden:Z

.field private bIsAeAwbLocked:Z

.field private bIsHalfShutter:Z

.field faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

.field isDetected:Z

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAeLockSupported:Z

.field protected mAfMsg:I

.field private mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

.field private mAutoShotNight:I

.field private mAwbLockSupported:Z

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field protected mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mCaptureInitiated:Z

.field mCheckFileName:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoTitle:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field protected mDateTaken:J

.field protected mDateTakenForHDR:J

.field protected mDisplayOrientation:I

.field private mDualRecordingResolution:Ljava/lang/String;

.field private mErrorCallback:Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

.field protected mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

.field private mFaceDetectionCallback:Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

.field private mFaceDetectionCount:I

.field private mFocusIndicatorUpdated:Z

.field protected mFocusState:I

.field mGolfShotFileName:Ljava/lang/String;

.field private mGroupId:I

.field private mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

.field private mIsCalledSwitchToCameraSync:Z

.field private mIsContinousAFStopped:Z

.field private mIsFaceZoomed:Z

.field private mIsFinishOneShotPreviewCallback:Z

.field private mIsVideoCaptureIntent:Z

.field private mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

.field private mLandscapeActive:Z

.field protected mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

.field private mLastCapturedFileName:Ljava/lang/String;

.field private mLastCapturedTitle:Ljava/lang/String;

.field protected mLastContentUri:Landroid/net/Uri;

.field private mLastOrientation:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mMediaRecorderRecording:Z

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mNumOfSavedImageInHDR:I

.field private mNumberOfPictureSavingThread:I

.field protected mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

.field protected mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

.field protected mOnGuidePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;

.field protected mOnTimerEventListener:Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

.field protected mOpenCameraThread:Ljava/lang/Thread;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationOnTake:I

.field protected mOriginalViewFinderHeight:I

.field protected mOriginalViewFinderWidth:I

.field private mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

.field private mPanoramaStartThread:Ljava/lang/Thread;

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mPictureSavingThread:Ljava/lang/Thread;

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field private mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

.field private mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

.field private mRecordingInitiated:Z

.field protected mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

.field protected mRetry:I

.field private mSavedImageRichtoneCompleted:Z

.field private mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

.field private mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

.field private mSingleShotBurst:I

.field protected mStartPreviewThread:Ljava/lang/Thread;

.field private mStartRecordingThread:Ljava/lang/Thread;

.field protected mStateDepot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/AbstractCeState;",
            ">;"
        }
    .end annotation
.end field

.field protected mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

.field private mStopRecordingThread:Ljava/lang/Thread;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

.field private mTapArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCameraVideoFilename:Ljava/lang/String;

.field protected mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

.field private mTouchAutoFocusActive:Z

.field protected mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

.field private mVideoFileLengthInByte:J

.field private mVideoRecordingTimeInMiliSecond:J

.field public maxFileSize:J

.field private savedSceneMode:Ljava/lang/String;

.field versionIsp:Ljava/lang/String;

.field versionPhone:Ljava/lang/String;

.field versionSensor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    .line 121
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    .line 122
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    .line 124
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bRecordingHDR:Z

    .line 125
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->m_bRestartTouchAF:Z

    .line 126
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->isSystemSoundEffectEnabled:Z

    .line 128
    sput v1, Lcom/sec/android/app/camera/CommonEngine;->mLightPipShotCount:I

    .line 129
    const/16 v0, 0x17

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_SOUND:I

    .line 132
    const/16 v0, 0x1d

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_SOUND_NIGHT_START:I

    .line 134
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_START:I

    .line 135
    const/16 v0, 0x15

    sput v0, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_STOP:I

    .line 334
    sput-boolean v1, Lcom/sec/android/app/camera/CommonEngine;->isPrevOK:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 153
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    .line 156
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    .line 158
    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    .line 159
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 160
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 161
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 163
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 165
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTouchAutoFocusActive:Z

    .line 166
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    .line 168
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 169
    new-instance v0, Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CeRequestQueue;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    .line 170
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 171
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 172
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 174
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 175
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFinishOneShotPreviewCallback:Z

    .line 176
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mGroupId:I

    .line 178
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    .line 179
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mLandscapeActive:Z

    .line 180
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 183
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 192
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 197
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    .line 198
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 200
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 201
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 202
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    .line 204
    iput-wide v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    .line 205
    iput-wide v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 207
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 212
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    .line 213
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 214
    iput-wide v1, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 229
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    .line 230
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    .line 231
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    .line 254
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    .line 258
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    .line 260
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    .line 261
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    .line 262
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 263
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 264
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    .line 275
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mAfMsg:I

    .line 277
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 280
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    .line 281
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCallback:Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

    .line 282
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    .line 283
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    .line 284
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorCallback:Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

    .line 285
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    .line 286
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    .line 288
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 289
    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationOnTake:I

    .line 291
    const-string v0, "/sys/class/camera/rear/rear_checkfw"

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCheckFileName:Ljava/lang/String;

    .line 292
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    .line 293
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    .line 294
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->versionSensor:Ljava/lang/String;

    .line 303
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    .line 305
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    .line 306
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z

    .line 307
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z

    .line 318
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mDualRecordingResolution:Ljava/lang/String;

    .line 320
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I

    .line 325
    const-string v0, "auto"

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->savedSceneMode:Ljava/lang/String;

    .line 330
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    .line 332
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->isDetected:Z

    .line 333
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->faceAreaManager:Lcom/sec/android/app/camera/FaceAreaManager;

    .line 346
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$1;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    .line 404
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateIdle;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/sec/android/app/camera/CeStateIdle;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitializing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateInitializing;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitialized;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateInitialized;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateStartingPreview;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateStartingPreview;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStatePreviewing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStatePreviewing;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateShutdown;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x6

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateShutdown;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateRecording;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x5

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateRecording;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

    .line 832
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnGuidePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;

    .line 841
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    .line 851
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    .line 4386
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    .line 9083
    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    .line 418
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 419
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 422
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    .line 431
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$602(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 435
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusIndicatorUpdated:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/CommonEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/CommonEngine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->setLastOrientation(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFinishOneShotPreviewCallback:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2508(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$2510(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/CommonEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    return v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/camera/CommonEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getHDRFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/camera/CommonEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->openCameraDevice()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->setSystemSoundEffect()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    return-void
.end method

.method static synthetic access$4302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 111
    sput-boolean p0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->makeVideoFileSlow()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/CommonEngine;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->renameTempFile()V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->registerVideo()V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/CommonEngine;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CommonEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/CommonEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CommonEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    return p1
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1024
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    const-string v1, "CommonEngine"

    const-string v2, "Empty video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1030
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private cleanupTempFile()V
    .locals 3

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1034
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    const-string v1, "CommonEngine"

    const-string v2, "temp video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    .line 1040
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private createVideoPath()V
    .locals 25

    .prologue
    .line 6345
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 6346
    .local v3, "calendar":Ljava/util/GregorianCalendar;
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 6347
    .local v18, "time":Landroid/text/format/Time;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    .line 6348
    .local v19, "timezone":Ljava/util/TimeZone;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6349
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    .line 6351
    .local v6, "dateTaken":J
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    .line 6353
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->createVideoPathDir()Ljava/lang/String;

    move-result-object v4

    .line 6355
    .local v4, "cameraDirPath":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 6356
    const-string v22, "CommonEngine"

    const-string v23, "recording directory make fail"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6419
    :goto_0
    return-void

    .line 6363
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->getFileFormatFromProfile()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 6364
    const-string v9, ".mp4"

    .line 6365
    .local v9, "extension":Ljava/lang/String;
    const-string v16, "video/mp4"

    .line 6371
    .local v16, "mimeType":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 6372
    const-string v9, ".3gp"

    .line 6373
    const-string v16, "video/3gpp"

    .line 6377
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 6378
    .local v5, "date":Ljava/util/Date;
    const-string v22, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 6380
    .local v14, "filepart":Ljava/lang/String;
    move-object/from16 v17, v14

    .line 6382
    .local v17, "name":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6383
    .local v11, "filename":Ljava/lang/String;
    move-object/from16 v20, v17

    .line 6384
    .local v20, "title":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6387
    .local v8, "displayName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6388
    .local v10, "f":Ljava/io/File;
    const/4 v12, 0x0

    .line 6389
    .local v12, "filenumber":I
    :goto_2
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 6390
    const-string v22, "CommonEngine"

    const-string v23, "Duplicated file name found"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6391
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 6392
    const-string v22, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 6393
    move-object/from16 v17, v14

    .line 6394
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "filenumber":I
    .local v13, "filenumber":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6395
    move-object/from16 v20, v17

    .line 6396
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6397
    const-string v22, "CommonEngine"

    const-string v23, "New file name created"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6398
    new-instance v10, Ljava/io/File;

    .end local v10    # "f":Ljava/io/File;
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v10    # "f":Ljava/io/File;
    move v12, v13

    .end local v13    # "filenumber":I
    .restart local v12    # "filenumber":I
    goto :goto_2

    .line 6367
    .end local v5    # "date":Ljava/util/Date;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v12    # "filenumber":I
    .end local v14    # "filepart":Ljava/lang/String;
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    :cond_2
    const-string v9, ".3gp"

    .line 6368
    .restart local v9    # "extension":Ljava/lang/String;
    const-string v16, "video/3gpp"

    .restart local v16    # "mimeType":Ljava/lang/String;
    goto/16 :goto_1

    .line 6401
    .restart local v5    # "date":Ljava/util/Date;
    .restart local v8    # "displayName":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v12    # "filenumber":I
    .restart local v14    # "filepart":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v20    # "title":Ljava/lang/String;
    :cond_3
    new-instance v21, Landroid/content/ContentValues;

    const/16 v22, 0xa

    invoke-direct/range {v21 .. v22}, Landroid/content/ContentValues;-><init>(I)V

    .line 6403
    .local v21, "values":Landroid/content/ContentValues;
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6404
    const-string v22, "_display_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6405
    const-string v22, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6406
    const-string v22, "mime_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6407
    const-string v22, "_data"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6409
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v15

    .line 6410
    .local v15, "location":Landroid/location/Location;
    if-eqz v15, :cond_4

    .line 6411
    const-string v22, "latitude"

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 6412
    const-string v22, "longitude"

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 6415
    :cond_4
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 6416
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 6418
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto/16 :goto_0
.end method

.method private dumpCamcorderInnerProfile()V
    .locals 3

    .prologue
    .line 7287
    const-string v0, "CommonEngine"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7289
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7290
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7291
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7293
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7294
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7295
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7297
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7298
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7299
    return-void
.end method

.method private dumpCamcorderProfile()V
    .locals 3

    .prologue
    .line 7302
    const-string v0, "CommonEngine"

    const-string v1, "[Dump] camcorder profile"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7303
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7304
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7305
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7306
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7309
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7314
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7315
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7316
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7317
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7318
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7319
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7320
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioChannels = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7321
    return-void
.end method

.method private getAudioBitRateFromProfile()I
    .locals 1

    .prologue
    .line 7325
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    return v0
.end method

.method private getCurrentStateId()I
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    return v0
.end method

.method private getFileFormatFromProfile()I
    .locals 1

    .prologue
    .line 7366
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    return v0
.end method

.method private getGolfShotFileString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9090
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 9091
    const-string v0, ""

    .line 9092
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getHDRFileName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 5920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5921
    .local v0, "dateTaken":J
    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTaken:J

    .line 5923
    iget v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 5925
    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTakenForHDR:J

    .line 5926
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    .line 5934
    .end local v2    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 5928
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 5930
    iget-wide v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTakenForHDR:J

    const-string v6, "Richtone(HDR)"

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "name":Ljava/lang/String;
    move-object v3, v2

    .line 5931
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 5933
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "name":Ljava/lang/String;
    move-object v3, v2

    .line 5934
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7442
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7443
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    const-string v2, "/.CinemaPhoto"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7448
    .local v0, "cameraDirPath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7445
    .end local v0    # "cameraDirPath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cameraDirPath":Ljava/lang/String;
    goto :goto_0
.end method

.method private getVideoBitRateFromProfile()I
    .locals 1

    .prologue
    .line 7453
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    return v0
.end method

.method private initializeRecorder()V
    .locals 12

    .prologue
    .line 7486
    const-string v8, "CommonEngine"

    const-string v9, "initializeRecorder"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7488
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_0

    .line 7602
    :goto_0
    return-void

    .line 7491
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->readVideoPreferences()V

    .line 7493
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 7494
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 7496
    .local v3, "myExtras":Landroid/os/Bundle;
    const-wide/16 v4, 0x0

    .line 7498
    .local v4, "requestedSizeLimit":J
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    .line 7499
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 7500
    .local v7, "saveUri":Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 7501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeVideoFileDescriptor()V

    .line 7503
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 7504
    iput-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 7505
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCameraVideoFileDescriptor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7511
    :cond_1
    :goto_1
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7512
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestedSizeLimit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7515
    .end local v7    # "saveUri":Landroid/net/Uri;
    :cond_2
    new-instance v8, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 7517
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v8

    if-nez v8, :cond_3

    .line 7518
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera;->unlock()V

    .line 7519
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCamera(Lcom/sec/android/seccamera/SecCamera;)V

    .line 7522
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 7523
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 7526
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->setRecorderUsingInnerProfile()V

    .line 7531
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 7533
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v8

    const-wide/32 v10, 0x2080000

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7534
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    iget-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    .line 7535
    iput-wide v4, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7538
    :cond_4
    iget-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 7539
    const-wide v8, 0xffffffffL

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7542
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 7543
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_b

    if-eqz v3, :cond_b

    .line 7544
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7551
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 7552
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_7

    const-wide/32 v8, 0x3200000

    cmp-long v8, v4, v8

    if-lez v8, :cond_8

    .line 7553
    :cond_7
    const-wide/32 v8, 0x3200000

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7556
    :cond_8
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxFileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7559
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-wide v9, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7566
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 7567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v6

    .line 7569
    .local v6, "rotation":I
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAuthor(I)V

    .line 7571
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMediaRecorder.setOrientationHint("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7572
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_9

    .line 7573
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOrientationHint(I)V

    .line 7583
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v8, :cond_a

    .line 7585
    const-wide/16 v8, 0x400

    :try_start_2
    const-string v10, "Recorder Prepare"

    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7586
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v8}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 7587
    const-wide/16 v8, 0x400

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7601
    :cond_a
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_0

    .line 7506
    .end local v6    # "rotation":I
    .restart local v7    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 7508
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "CommonEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7546
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .end local v7    # "saveUri":Landroid/net/Uri;
    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getMaxRecordingSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    .line 7547
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-wide v9, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    goto/16 :goto_2

    .line 7560
    :catch_1
    move-exception v0

    .line 7561
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7562
    const-string v8, "CommonEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7563
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    goto/16 :goto_3

    .line 7588
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "rotation":I
    :catch_2
    move-exception v0

    .line 7590
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "CommonEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 7593
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    .line 7594
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 7595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    .line 7598
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v9, -0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private isAutoExposureLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 3849
    const-string v0, "true"

    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p1, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAutoWhiteBalanceLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 3845
    const-string v0, "true"

    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p1, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadInnerProfile()V
    .locals 3

    .prologue
    .line 7812
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v0

    .line 7815
    .local v0, "videoQuality":I
    new-instance v1, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 7816
    return-void
.end method

.method private makeVideoFileSlow()V
    .locals 10

    .prologue
    .line 7660
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionFactor()I

    move-result v6

    .line 7661
    .local v6, "slowFactor":I
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The slowmode will be processed with speed type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7663
    .local v3, "lapTimeStart":J
    new-instance v5, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;

    invoke-direct {v5}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;-><init>()V

    .line 7666
    .local v5, "maker":Lcom/sec/android/app/camera/Mp4SlowMotionMaker;
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    int-to-double v8, v6

    invoke-virtual {v5, v7, v8, v9}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->makeMp4Slow(Ljava/lang/String;D)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7672
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v3

    .line 7673
    .local v1, "lapTime":J
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Slow mode processing time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7675
    return-void

    .line 7667
    .end local v1    # "lapTime":J
    :catch_0
    move-exception v0

    .line 7668
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private openCameraDevice()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const-wide/16 v7, 0x400

    const/4 v6, 0x0

    .line 3298
    const-string v2, "openCameraDevice"

    invoke-static {v7, v8, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3299
    const-string v2, "openCameraDevice"

    invoke-static {v6, v2}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 3300
    const-string v2, "openCameraDevice"

    invoke-static {v2}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Ljava/lang/String;)V

    .line 3302
    const-string v2, "CommonEngine"

    const-string v3, "opening camera device..."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW Open**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    const/4 v0, 0x0

    .line 3337
    .local v0, "cameraId":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 3338
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera - cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->initializeCameraMode(I)V

    .line 3341
    const-wide/16 v2, 0x400

    const-string v4, "openCamera"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3342
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 3343
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3365
    :cond_0
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 3366
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_5

    .line 3367
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorCallback:Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 3368
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mFaceDetectionCallback:Lcom/sec/android/app/camera/CommonEngine$FaceDetectionCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 3369
    const-string v2, "CommonEngine"

    const-string v3, "camera device is opened."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 3373
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v2, :cond_4

    .line 3374
    const-string v2, "CommonEngine"

    const-string v3, "CameraParameters is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v2, v9}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 3391
    :cond_1
    :goto_0
    return-void

    .line 3347
    :catch_0
    move-exception v1

    .line 3349
    .local v1, "e":Ljava/lang/Exception;
    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 3350
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    if-gez v2, :cond_2

    .line 3351
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service cannot connect. retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->openCameraDevice()V

    .line 3354
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_1

    .line 3356
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    if-ltz v2, :cond_3

    .line 3357
    const-string v2, "CommonEngine"

    const-string v3, "service cannot connect. critical exception occured."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    iput v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    .line 3359
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    invoke-virtual {v2, v9}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3361
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRetry:I

    if-gez v2, :cond_0

    goto :goto_0

    .line 3383
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setCameraDisplayOrientation()V

    .line 3384
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setExternalFilter(Z)V

    .line 3388
    :cond_5
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW Open**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3390
    invoke-static {v6}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 6

    .prologue
    const v5, 0x493e0

    const/4 v4, 0x0

    .line 7750
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7756
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Util;->isDeviceLandscape(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getWifiDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7757
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->setToSupportOnlyLandscapeOrientation()V

    .line 7764
    :goto_0
    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7765
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7766
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 7767
    .local v2, "seconds":I
    mul-int/lit16 v3, v2, 0x3e8

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7808
    .end local v2    # "seconds":I
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->loadInnerProfile()V

    .line 7809
    return-void

    .line 7759
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->setToSupportOnlyPortraitOrientation()V

    goto :goto_0

    .line 7769
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v3

    mul-int/lit16 v1, v3, 0x3e8

    .line 7770
    .local v1, "nRemainTime":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_6

    .line 7771
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5

    .line 7772
    iput v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7803
    :cond_4
    :goto_2
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    if-le v3, v1, :cond_1

    .line 7804
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMaxVideoDurationInMs("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") > nRemainTime("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7805
    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 7774
    :cond_5
    const v3, 0x927c0

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto :goto_2

    .line 7776
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_8

    .line 7779
    :cond_7
    iput v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7780
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->dropCache()V

    goto :goto_2

    .line 7781
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 7782
    const/16 v3, 0x1388

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto :goto_2

    .line 7786
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderVideoDurationInMS()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    .line 7787
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7788
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 7790
    :pswitch_0
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_2

    .line 7793
    :pswitch_1
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_2

    .line 7796
    :pswitch_2
    iget v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    goto/16 :goto_2

    .line 7788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerVideo()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x400

    const/4 v11, 0x0

    const v10, 0x7f0b0192

    const/4 v9, 0x0

    .line 7819
    const-string v5, "CommonEngine"

    const-string v6, "registerVideo"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7821
    const-string v5, "registerVideo"

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7823
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_4

    .line 7824
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 7825
    const-string v5, "CommonEngine"

    const-string v6, "mCurrentVideoFilename NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7894
    :goto_0
    return-void

    .line 7829
    :cond_0
    const-string v5, "content://media/external/video/media"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7830
    .local v4, "videoTable":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_size"

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7832
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 7833
    .local v2, "resolutionId":I
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7834
    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 7837
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_2

    .line 7838
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "resolution"

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mDualRecordingResolution:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7844
    :goto_1
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 7845
    .local v1, "metadataRetriver":Landroid/media/MediaMetadataRetriever;
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 7846
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7847
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7855
    .end local v1    # "metadataRetriver":Landroid/media/MediaMetadataRetriever;
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7856
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    .line 7891
    .end local v2    # "resolutionId":I
    .end local v4    # "videoTable":Landroid/net/Uri;
    :goto_3
    iput-object v11, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 7893
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 7840
    .restart local v2    # "resolutionId":I
    .restart local v4    # "videoTable":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "resolution"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7848
    :catch_0
    move-exception v0

    .line 7849
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "CommonEngine"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7850
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "duration"

    iget-wide v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 7858
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 7860
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 7862
    :catch_1
    move-exception v3

    .line 7863
    .local v3, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CommonEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7864
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5, v10, v9}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 7865
    .end local v3    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    .line 7866
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v5, "CommonEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7867
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7868
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto :goto_3

    .line 7869
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    .line 7870
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "CommonEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7871
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7872
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto/16 :goto_3

    .line 7873
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 7874
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "CommonEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7875
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7876
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto/16 :goto_3

    .line 7881
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "resolutionId":I
    .end local v4    # "videoTable":Landroid/net/Uri;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_3

    .line 7882
    :catch_5
    move-exception v3

    .line 7883
    .restart local v3    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "CommonEngine"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7884
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5, v10, v9}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 7885
    .end local v3    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_6
    move-exception v0

    .line 7886
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v5, "CommonEngine"

    const-string v6, "insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7887
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7888
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->onVideoStoringFailed()V

    goto/16 :goto_3
.end method

.method private renameTempFile()V
    .locals 5

    .prologue
    .line 7920
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7921
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7922
    .local v2, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7923
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 7924
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 7925
    const-string v3, "CommonEngine"

    const-string v4, "Failed to rename temp file."

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7928
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "result":Z
    .end local v2    # "src":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private setFDOrientation(II)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 4091
    const/4 v0, 0x0

    .line 4093
    .local v0, "mOrientation":I
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v0, v1, 0x4

    .line 4096
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 4098
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/seccamera/SecCamera;->setThemeOrientationInfo(II)V

    .line 4100
    :cond_0
    return-void
.end method

.method private setLastOrientation(I)V
    .locals 0
    .param p1, "lastOrientation"    # I

    .prologue
    .line 4036
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    .line 4037
    return-void
.end method

.method private setRecorderUsingInnerProfile()V
    .locals 10

    .prologue
    const/16 v9, 0x2d0

    const/16 v8, 0x280

    const/16 v7, 0x1e0

    const/16 v6, 0x2f

    const/4 v5, 0x1

    .line 8306
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 8307
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 8308
    const-string v1, "CommonEngine"

    const-string v2, "setAudioSource: SEC_CAMCORDER"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8309
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 8316
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    .line 8317
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 8318
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 8321
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8323
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 8328
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8329
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 8333
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 8335
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8336
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v3, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->getTimeLapseFps(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCaptureRate(D)V

    .line 8340
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 8341
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0xf00

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x870

    if-ne v1, v2, :cond_9

    .line 8342
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x177000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8375
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_14

    .line 8376
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 8388
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v6, :cond_15

    .line 8389
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 8390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mDualRecordingResolution:Ljava/lang/String;

    .line 8395
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v3, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 8397
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 8398
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 8399
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 8400
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 8401
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 8410
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 8411
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 8412
    :cond_5
    return-void

    .line 8311
    .end local v0    # "loc":Landroid/location/Location;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    goto/16 :goto_0

    .line 8325
    .restart local v0    # "loc":Landroid/location/Location;
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    goto/16 :goto_1

    .line 8331
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_2

    .line 8343
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0xa00

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_a

    .line 8344
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x12c000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8368
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 8345
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_b

    .line 8346
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0xaf000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8347
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_c

    .line 8348
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x96000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8349
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v9, :cond_d

    .line 8350
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x7d000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8351
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v9, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v7, :cond_e

    .line 8352
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8353
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v8, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    if-ne v1, v7, :cond_f

    .line 8354
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8355
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    if-ne v1, v8, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x168

    if-ne v1, v2, :cond_10

    .line 8356
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8357
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_11

    .line 8358
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x7800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8359
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_13

    .line 8360
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8361
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x1800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8363
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x3000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_3

    .line 8365
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x1c2

    if-ne v1, v2, :cond_4

    .line 8366
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 8378
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->createVideoPath()V

    .line 8379
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    .line 8380
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8392
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5
.end method

.method private setRecorderUsingProfile()V
    .locals 10

    .prologue
    const/16 v9, 0x438

    const/16 v8, 0x2d0

    const/16 v7, 0x280

    const/16 v6, 0x1e0

    const/4 v5, 0x1

    .line 8416
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 8417
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 8419
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    .line 8420
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    .line 8421
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setLocation(FF)V

    .line 8424
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8426
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    .line 8431
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8432
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 8437
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 8439
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8440
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->getTimeLapseFps(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setCaptureRate(D)V

    .line 8444
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 8445
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v9, :cond_8

    .line 8446
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0xaf000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8475
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_11

    .line 8476
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 8487
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoFrameRate(I)V

    .line 8488
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    .line 8492
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v2, v2, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 8497
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 8498
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 8499
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 8500
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncoder(I)V

    .line 8503
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 8504
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 8507
    :cond_5
    return-void

    .line 8428
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSource(I)V

    goto/16 :goto_0

    .line 8434
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_1

    .line 8447
    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v9, :cond_9

    .line 8448
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x96000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8468
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 8449
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v8, :cond_a

    .line 8450
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x7d000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8451
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v8, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v6, :cond_b

    .line 8452
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8453
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v7, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v1, v6, :cond_c

    .line 8454
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8455
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v7, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x168

    if-ne v1, v2, :cond_d

    .line 8456
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x19000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8457
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_e

    .line 8458
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x7800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8459
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_10

    .line 8460
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8461
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x1800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8463
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v2, 0x3000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    goto/16 :goto_2

    .line 8465
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v1, v1, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    const/16 v2, 0x1c2

    if-ne v1, v2, :cond_4

    .line 8466
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/32 v2, 0x1e000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 8478
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->createVideoPath()V

    .line 8479
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    .line 8480
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mTempCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private setSystemSoundEffect()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4103
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->isSystemSoundEffectEnabled:Z

    .line 4104
    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    .prologue
    .line 6256
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 6271
    :cond_0
    :goto_0
    return-void

    .line 6258
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 6266
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6268
    :catch_0
    move-exception v0

    .line 6269
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CommonEngine"

    const-string v2, "startFaceDetection failed. It seems to be started already."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public DualCaptureModeAsyncReset()V
    .locals 1

    .prologue
    .line 6021
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6022
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->DualCaptureModeAsyncReset()V

    .line 6024
    :cond_0
    return-void
.end method

.method public autoFocusCompleted()V
    .locals 1

    .prologue
    .line 4168
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onAutoFocusCompleted()V

    .line 4169
    return-void
.end method

.method public burstShotStartCompleted()V
    .locals 2

    .prologue
    .line 6248
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6249
    return-void
.end method

.method public burstShotStopCompleted()V
    .locals 2

    .prologue
    .line 6252
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6253
    return-void
.end method

.method protected calculateOrientationForPicture(I)I
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x1

    .line 5512
    const/4 v2, 0x0

    .line 5513
    .local v2, "rotation":I
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    .line 5516
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    .line 5517
    .local v0, "id":I
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 5518
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 5520
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v1

    .line 5524
    .local v1, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    if-eqz v1, :cond_2

    .line 5525
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v3, v4, :cond_4

    .line 5526
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 5530
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x168

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v2, v3, 0x168

    .line 5541
    .end local v0    # "id":I
    .end local v1    # "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_2
    :goto_0
    return v2

    .line 5533
    .restart local v0    # "id":I
    .restart local v1    # "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_3
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    goto :goto_0

    .line 5536
    :cond_4
    iget v3, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v3, p1

    rem-int/lit16 v2, v3, 0x168

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 949
    const-string v0, "CommonEngine"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 951
    const-string v0, "CommonEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$2;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 990
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    .line 991
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    goto :goto_0
.end method

.method public cancelCaptureForDrama()V
    .locals 2

    .prologue
    .line 5563
    const-string v0, "CommonEngine"

    const-string v1, "cancelCaptureForDrama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->cancelCaptureForDrama()V

    .line 5565
    return-void
.end method

.method public cancelCaptureForMagic()V
    .locals 2

    .prologue
    .line 5568
    const-string v0, "CommonEngine"

    const-string v1, "cancelCaptureForMagic"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 5570
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopMagicShutterSound()V

    .line 5572
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->cancelCaptureForMagic()V

    .line 5573
    return-void
.end method

.method public cancelCaptureForPanorama()V
    .locals 2

    .prologue
    .line 5545
    const-string v0, "CommonEngine"

    const-string v1, "cancelCaptureForPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5546
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForPanoramaStartThreadComplete()V

    .line 5547
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5548
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 5554
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->cancelCaptureForPanorama()V

    .line 5555
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 5556
    return-void

    .line 5552
    :cond_1
    const-string v0, "CommonEngine"

    const-string v1, "cancelCaptureForPanorama: CE_START_PANORAMA_COMPLETED is exist"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelFocusing()V
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 996
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 5559
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->cancelSeriesActionShot()V

    .line 5560
    return-void
.end method

.method public captureBurstShot()V
    .locals 3

    .prologue
    .line 5576
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5578
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstDuration(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->captureBurstShot(I)V

    .line 5579
    return-void
.end method

.method public changeEngineState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1003
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 1009
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEngineState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkDramaDumpDir()V
    .locals 4

    .prologue
    .line 8854
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v3, "/.Drama"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8856
    .local v1, "cameraDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8857
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8858
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8859
    const-string v2, "CommonEngine"

    const-string v3, "drama dump directory is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8863
    :cond_0
    return-void
.end method

.method public checkFocusMode(I)I
    .locals 3
    .param p1, "focusMode"    # I

    .prologue
    .line 1013
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1015
    :cond_0
    const/4 p1, 0x5

    .line 1019
    :cond_1
    :goto_0
    return p1

    .line 1016
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1017
    const/4 p1, 0x6

    goto :goto_0
.end method

.method public checkMagicDumpDir()V
    .locals 5

    .prologue
    .line 8834
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 8835
    .local v1, "saveDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8836
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8837
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8838
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to Create Directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8839
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, -0xa

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 8843
    :cond_0
    return-void
.end method

.method public checkSaveDirectory()V
    .locals 3

    .prologue
    .line 8846
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 8847
    .local v1, "saveDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8848
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8849
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8851
    :cond_0
    return-void
.end method

.method public chkActionShotStarted()Z
    .locals 1

    .prologue
    .line 5582
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->chkActionShotStarted()Z

    move-result v0

    return v0
.end method

.method public clearCaptureImageData()V
    .locals 1

    .prologue
    .line 5586
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v0, :cond_0

    .line 5587
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 5588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5590
    :cond_0
    return-void
.end method

.method public clearFocusState()V
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 1044
    return-void
.end method

.method public clearLastContentUri()V
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1048
    return-void
.end method

.method public clearRequest()V
    .locals 3

    .prologue
    .line 1051
    const-string v1, "CommonEngine"

    const-string v2, "clearRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;->removeMessages(I)V

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1058
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1059
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1060
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1061
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1064
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1065
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1066
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1069
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->clear()V

    .line 1070
    return-void
.end method

.method public clearTimer()V
    .locals 3

    .prologue
    .line 1073
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;->removeMessages(I)V

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1077
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1078
    return-void
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "CommonEngine"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->release()V

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 1088
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1089
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1093
    :cond_0
    return-void
.end method

.method public closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 6314
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 6316
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6320
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 6322
    :cond_0
    return-void

    .line 6317
    :catch_0
    move-exception v0

    .line 6318
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CommonEngine"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public coordinateSyncforDual(FFFFFFFFIIZ)V
    .locals 9
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "topRightX"    # F
    .param p4, "topRightY"    # F
    .param p5, "bottomRightX"    # F
    .param p6, "bottomRightY"    # F
    .param p7, "bottomLeftX"    # F
    .param p8, "bottomLeftY"    # F
    .param p9, "mWidthOffsetForhandle"    # I
    .param p10, "mHeightOffsetForhandle"    # I
    .param p11, "newEffect"    # Z

    .prologue
    .line 8669
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_1

    .line 8670
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tracking coordinateSyncforDual "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8672
    float-to-int v6, p2

    shl-int/lit8 v6, v6, 0xf

    float-to-int v7, p1

    and-int/lit16 v7, v7, 0x7fff

    or-int v1, v6, v7

    .line 8673
    .local v1, "arg1":I
    float-to-int v6, p4

    shl-int/lit8 v6, v6, 0xf

    float-to-int v7, p3

    and-int/lit16 v7, v7, 0x7fff

    or-int v2, v6, v7

    .line 8674
    .local v2, "arg2":I
    move/from16 v0, p8

    float-to-int v6, v0

    shl-int/lit8 v6, v6, 0xf

    move/from16 v0, p7

    float-to-int v7, v0

    and-int/lit16 v7, v7, 0x7fff

    or-int v3, v6, v7

    .line 8675
    .local v3, "arg3":I
    float-to-int v6, p6

    shl-int/lit8 v6, v6, 0xf

    float-to-int v7, p5

    and-int/lit16 v7, v7, 0x7fff

    or-int v4, v6, v7

    .line 8676
    .local v4, "arg4":I
    if-eqz p11, :cond_0

    .line 8677
    const/high16 v6, -0x80000000

    or-int/2addr v1, v6

    .line 8679
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 8680
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v6, "trackingcoordinate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8684
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v7, p1

    add-int v7, v7, p9

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopX(I)V

    .line 8685
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v7, p2

    add-int v7, v7, p10

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopY(I)V

    .line 8686
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v7, p3

    add-int v7, v7, p9

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopX(I)V

    .line 8687
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v7, p4

    add-int v7, v7, p10

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopY(I)V

    .line 8688
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v7, p5

    add-int v7, v7, p9

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomX(I)V

    .line 8689
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v7, p6

    add-int v7, v7, p10

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomY(I)V

    .line 8690
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move/from16 v0, p7

    float-to-int v7, v0

    add-int v7, v7, p9

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomX(I)V

    .line 8691
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move/from16 v0, p8

    float-to-int v7, v0

    add-int v7, v7, p10

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomY(I)V

    .line 8695
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_1

    .line 8696
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setEffect(Ljava/lang/String;)V

    .line 8699
    .end local v1    # "arg1":I
    .end local v2    # "arg2":I
    .end local v3    # "arg3":I
    .end local v4    # "arg4":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method public coordinateSyncforDual(FFFFII)V
    .locals 8
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "mWidthOffsetForhandle"    # I
    .param p6, "mHeightOffsetForhandle"    # I

    .prologue
    .line 8634
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 8635
    return-void
.end method

.method public coordinateSyncforDual(FFFFIIZ)V
    .locals 7
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "mWidthOffsetForhandle"    # I
    .param p6, "mHeightOffsetForhandle"    # I
    .param p7, "newEffect"    # Z

    .prologue
    .line 8638
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_2

    .line 8639
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinateSyncforDual "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8640
    add-float v2, p1, p3

    .line 8641
    .local v2, "bottomRightX":F
    add-float v3, p2, p4

    .line 8642
    .local v3, "bottomRightY":F
    float-to-int v4, p2

    shl-int/lit8 v4, v4, 0xf

    float-to-int v5, p1

    and-int/lit16 v5, v5, 0x7fff

    or-int v0, v4, v5

    .line 8643
    .local v0, "arg1":I
    float-to-int v4, v3

    shl-int/lit8 v4, v4, 0xf

    float-to-int v5, v2

    and-int/lit16 v5, v5, 0x7fff

    or-int v1, v4, v5

    .line 8644
    .local v1, "arg2":I
    if-eqz p7, :cond_0

    .line 8645
    const/high16 v4, -0x80000000

    or-int/2addr v0, v4

    .line 8649
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_3

    .line 8650
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p1

    add-int/2addr v5, p5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopX(I)V

    .line 8651
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p2

    add-int/2addr v5, p6

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopY(I)V

    .line 8652
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p3

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectWidth(I)V

    .line 8653
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    float-to-int v5, p4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectHeight(I)V

    .line 8662
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_2

    .line 8663
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setEffectCoordinate(II)V

    .line 8666
    .end local v0    # "arg1":I
    .end local v1    # "arg2":I
    .end local v2    # "bottomRightX":F
    .end local v3    # "bottomRightY":F
    :cond_2
    return-void

    .line 8654
    .restart local v0    # "arg1":I
    .restart local v1    # "arg2":I
    .restart local v2    # "bottomRightX":F
    .restart local v3    # "bottomRightY":F
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    .line 8655
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopX(I)V

    .line 8656
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopY(I)V

    .line 8657
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectWidth(I)V

    .line 8658
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectHeight(I)V

    goto :goto_0
.end method

.method public countForCurrenPictureSaving()I
    .locals 1

    .prologue
    .line 5593
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumberOfPictureSavingThread:I

    return v0
.end method

.method public createCaptureData(Landroid/content/Intent;)V
    .locals 7
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 5597
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 5598
    .local v1, "PREVIEW_NORMAL_WIDTH":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 5599
    .local v0, "PREVIEW_NORMAL_HEIGHT":I
    if-eqz p1, :cond_1

    .line 5600
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v3, :cond_0

    .line 5601
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 5602
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5604
    :cond_0
    new-instance v3, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v3}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 5605
    const-string v3, "inline-data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 5606
    .local v2, "mdata":[B
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v5, v1, v0

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v4, v5}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V

    .line 5612
    .end local v2    # "mdata":[B
    :cond_1
    return-void
.end method

.method public createVideoPathDir()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6325
    const-string v2, "CommonEngine"

    const-string v3, "createVideoPathDir()"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6326
    const/4 v1, 0x0

    .line 6328
    .local v1, "videoPathDir":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6329
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v3, "/.CinemaPhoto"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6334
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6335
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6336
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6337
    const-string v2, "CommonEngine"

    const-string v3, "directory is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    const/4 v1, 0x0

    .line 6341
    .end local v1    # "videoPathDir":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 6331
    .end local v0    # "cameraDir":Ljava/io/File;
    .restart local v1    # "videoPathDir":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public disablePreviewCallbackManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8806
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 8807
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->getPreviewCallbackFormat()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8808
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/CommonEngine;->setUsePreviewCallback(ZI)V

    .line 8809
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8810
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->clearPreviewBuffer()V

    .line 8812
    :cond_1
    return-void
.end method

.method public disableSystemSoundEffect()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2509
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 2510
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2511
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2515
    .end local v0    # "mAudioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public doAutoFocusAsync()V
    .locals 4

    .prologue
    .line 1096
    const-string v0, "CommonEngine"

    const-string v1, "doAutoFocusAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**StartU["

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

    .line 1099
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    .line 1102
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1107
    :cond_2
    return-void
.end method

.method public doAutoNightSync()V
    .locals 1

    .prologue
    .line 5834
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5835
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAutoShotNight(Z)V

    .line 5836
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotStarted()V

    .line 5837
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startMultiFrameShot()V

    .line 5839
    :cond_0
    return-void
.end method

.method public doCamcorderRecordingStartSound()V
    .locals 3

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3668
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3670
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3675
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_START:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 3677
    :cond_2
    return-void

    .line 3671
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doCamcorderRecordingStopSound()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3685
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3686
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/CommonEngine;->SHUTTER_RECORDING_STOP:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 3689
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 3690
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 3691
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3692
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 3693
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetOnShutterSound(I)V

    .line 3697
    :cond_2
    return-void
.end method

.method public doCancelDramaShot()V
    .locals 2

    .prologue
    .line 5759
    const-string v0, "CommonEngine"

    const-string v1, "doCancelDramaShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 5761
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelDramaShot()V

    .line 5763
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDramaShotCapturingCancel()V

    .line 5764
    return-void
.end method

.method public doCancelMagicShot()V
    .locals 2

    .prologue
    .line 5806
    const-string v0, "CommonEngine"

    const-string v1, "doCancelMagicShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 5809
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelMagicShot()V

    .line 5811
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 5812
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onMagicShotCapturingCancel()V

    .line 5814
    :cond_1
    return-void
.end method

.method public final doCancelShutterTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1110
    const-string v0, "CommonEngine"

    const-string v1, "doCancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 1116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->clearTimer()V

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->removeMessages(I)V

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->cancelAutoFocus()V

    .line 1133
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->clearFocusState()V

    .line 1134
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->updateFocusIndicator()V

    .line 1135
    return-void
.end method

.method public doCancelVideoRecordingSync()V
    .locals 11

    .prologue
    const/16 v10, 0x1a

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 6431
    const-string v5, "CommonEngine"

    const-string v6, "doCancelVideoRecordingSync"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6433
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isRecordingMenuTop()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6434
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->dimRecordButtons()V

    .line 6437
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v5, :cond_b

    .line 6439
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 6440
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6441
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6444
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_2

    .line 6445
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    .line 6451
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6456
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 6457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 6462
    :cond_3
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6464
    .local v2, "ioBusyUnVoteIntent":Landroid/content/Intent;
    const-string v5, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6465
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_4

    .line 6466
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6467
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6468
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6470
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getSystemSoundEffect()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->enableSystemSoundEffect()V

    .line 6481
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    .line 6483
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_7

    .line 6484
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6485
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 6487
    .local v3, "myExtras":Landroid/os/Bundle;
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    .line 6488
    const-string v5, "output"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 6491
    .local v4, "saveUri":Landroid/net/Uri;
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/net/URI;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6496
    .end local v4    # "saveUri":Landroid/net/Uri;
    :cond_6
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 6500
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "myExtras":Landroid/os/Bundle;
    :cond_7
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 6502
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_a

    .line 6503
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 6504
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 6505
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 6506
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isRecordingMenuTop()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6507
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 6510
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 6511
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v10, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6512
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 6513
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v9, v8}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6515
    :cond_a
    const-string v5, "CommonEngine"

    const-string v6, "Cancelling VideoRecording is completed!"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6516
    return-void

    .line 6452
    .end local v2    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 6453
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancel fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6458
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_b
    iget-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_3

    .line 6459
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_1

    .line 6492
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    .restart local v3    # "myExtras":Landroid/os/Bundle;
    .restart local v4    # "saveUri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public doChangeParameterSync(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 1138
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 1139
    return-void
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 13
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    const/16 v12, 0x2710

    const/16 v11, 0x3a98

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x7530

    .line 1142
    const-string v6, "CommonEngine"

    const-string v7, "doChangeParameterSync"

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v6, :cond_1

    .line 1145
    const-string v6, "CommonEngine"

    const-string v7, "returning because mCameraDevice is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v6, :cond_2

    .line 1150
    const-string v6, "CommonEngine"

    const-string v7, "mParameters is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 1154
    check-cast v3, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    .line 1155
    .local v3, "p":Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;
    const/4 v1, 0x0

    .line 1157
    .local v1, "fpsRange":[I
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1476
    :cond_3
    :goto_1
    :sswitch_0
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v6

    const/16 v7, 0xbb9

    if-ne v6, v7, :cond_4

    .line 1477
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0xe

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v6

    if-ltz v6, :cond_31

    .line 1479
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0xb

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->isSameAsNextRequest(I)Z

    move-result v6

    if-nez v6, :cond_32

    .line 1490
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_5

    .line 1491
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1497
    :cond_5
    :goto_3
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1498
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x18

    if-ne v6, v7, :cond_33

    .line 1499
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    goto :goto_0

    .line 1161
    :sswitch_1
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_7

    .line 1162
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v8, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1261
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeValueForISPset(I)I

    move-result v4

    .line 1262
    .local v4, "shotmode":I
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shot mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1163
    .end local v4    # "shotmode":I
    :cond_7
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1164
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v8, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_4

    .line 1165
    :cond_8
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 1166
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v11, v11}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_4

    .line 1167
    :cond_9
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x1c

    if-ne v6, v7, :cond_a

    .line 1168
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const v7, 0x1d4c0

    const v8, 0x1d4c0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1169
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "800x450"

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    const-string v8, "800x450"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    goto/16 :goto_4

    .line 1171
    :cond_a
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_c

    .line 1172
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1173
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v12, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1175
    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v12, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1177
    :cond_c
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x17

    if-ne v6, v7, :cond_e

    .line 1178
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1179
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v12, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1181
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v11, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1183
    :cond_e
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_f

    .line 1184
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    const/16 v8, 0x5dc0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1185
    :cond_f
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_11

    .line 1187
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1188
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v11, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1190
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x1f40

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 1200
    :cond_11
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    if-nez v6, :cond_16

    .line 1201
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1203
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    invoke-virtual {v6, v11, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1212
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v6, v7, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1214
    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v6

    if-ne v6, v9, :cond_14

    .line 1215
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1216
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v12, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1220
    :goto_5
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1221
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1222
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1218
    :cond_13
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v12, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_5

    .line 1225
    :cond_14
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1227
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1228
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v11, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1240
    :goto_6
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1241
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1230
    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x1f40

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_6

    .line 1247
    :cond_16
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v11, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1256
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1257
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "effect_hint"

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1269
    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_17

    .line 1270
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1272
    :cond_17
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1279
    :sswitch_3
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1294
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_18

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v6

    if-ne v6, v9, :cond_18

    .line 1295
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1296
    :cond_18
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 1297
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1299
    :cond_1a
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1303
    :sswitch_5
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_1b

    .line 1304
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 1307
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_1d

    .line 1308
    :cond_1c
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v0

    .line 1310
    .local v0, "checkedFocusMode":I
    if-nez v0, :cond_1e

    .line 1311
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1312
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    .end local v0    # "checkedFocusMode":I
    :cond_1d
    :goto_7
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_21

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_21

    .line 1328
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 1329
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 1314
    .restart local v0    # "checkedFocusMode":I
    :cond_1e
    const/4 v6, 0x5

    if-ne v0, v6, :cond_20

    .line 1315
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v6

    if-nez v6, :cond_1f

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1316
    :cond_1f
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1319
    :cond_20
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1331
    .end local v0    # "checkedFocusMode":I
    :cond_21
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 1332
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v6

    if-eq v6, v9, :cond_3

    .line 1333
    :cond_22
    iget-boolean v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    if-eqz v6, :cond_23

    .line 1334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceZoom()V

    .line 1335
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 1342
    :sswitch_6
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    if-ne v6, v9, :cond_25

    .line 1343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 1344
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1345
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 1351
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_27

    .line 1352
    :cond_26
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v6

    if-nez v6, :cond_28

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v6

    if-eqz v6, :cond_28

    .line 1355
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 1363
    :sswitch_7
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    if-ne v6, v9, :cond_29

    .line 1364
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 1365
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->startFaceDetection()V

    goto/16 :goto_1

    .line 1368
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto/16 :goto_1

    .line 1372
    :sswitch_8
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1380
    :sswitch_9
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1383
    :sswitch_a
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1389
    :sswitch_b
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1394
    :sswitch_c
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCompanionChip setParam rt-hdr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1398
    :sswitch_d
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1404
    :sswitch_e
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1407
    :sswitch_f
    const/4 v5, 0x0

    .line 1408
    .local v5, "vdis":Z
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    if-ne v6, v9, :cond_2a

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v6

    if-nez v6, :cond_2a

    .line 1409
    const/4 v5, 0x1

    .line 1411
    :cond_2a
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 1412
    if-eqz v5, :cond_2b

    .line 1413
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "sw-vdis"

    const-string v8, "on"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1415
    :cond_2b
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v7, "sw-vdis"

    const-string v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1419
    .end local v5    # "vdis":Z
    :sswitch_10
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0x26

    if-eq v6, v7, :cond_3

    .line 1420
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1424
    :sswitch_11
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doChangeParameterSync : MENUID_BURST_SETTINGS - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    goto/16 :goto_1

    .line 1428
    :sswitch_12
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    if-ne v6, v9, :cond_2d

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v6

    if-nez v6, :cond_2d

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 1429
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1430
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v12, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1434
    :goto_8
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1468
    :goto_9
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeValueForISPset(I)I

    move-result v2

    .line 1469
    .local v2, "mAutoLLS":I
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto Night Detection Shot mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1432
    .end local v2    # "mAutoLLS":I
    :cond_2c
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v12, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_8

    .line 1436
    :cond_2d
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 1437
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2e

    .line 1438
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    const/16 v8, 0x5dc0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_9

    .line 1439
    :cond_2e
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1441
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x5dc0

    invoke-virtual {v6, v11, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_9

    .line 1452
    :cond_2f
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1453
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v11, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_9

    .line 1455
    :cond_30
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0x1f40

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_9

    .line 1481
    :cond_31
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v7, 0xb

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1494
    :cond_32
    const-string v6, "CommonEngine"

    const-string v7, "parameter will set next operation coming"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1500
    :cond_33
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_0

    .line 1501
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 1503
    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    .line 1505
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_0

    .line 1506
    const-string v6, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendOrientaionInfotoHAL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->sendOrientaionInfotoHAL(I)V

    goto/16 :goto_0

    .line 1157
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x7 -> :sswitch_e
        0x8 -> :sswitch_0
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_e
        0xe -> :sswitch_e
        0x10 -> :sswitch_d
        0x12 -> :sswitch_e
        0x3f -> :sswitch_11
        0x55 -> :sswitch_6
        0x57 -> :sswitch_12
        0x59 -> :sswitch_7
        0x6c -> :sswitch_4
        0x79 -> :sswitch_c
        0xbba -> :sswitch_8
        0xbbf -> :sswitch_f
        0x170e -> :sswitch_10
    .end sparse-switch
.end method

.method public doHDRShotAllProgressCompleted()V
    .locals 2

    .prologue
    .line 1515
    const-string v0, "CommonEngine"

    const-string v1, "doHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1517
    return-void
.end method

.method public final doHideCoverCameraAsync()V
    .locals 2

    .prologue
    .line 8189
    const-string v0, "CommonEngine"

    const-string v1, "doHideCoverCameraAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8190
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideCoverCamera()V

    .line 8191
    return-void
.end method

.method public doOutfocusShotAllProgressCompleted()V
    .locals 2

    .prologue
    .line 1520
    const-string v0, "CommonEngine"

    const-string v1, "doOutfocusShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1522
    return-void
.end method

.method public doPauseVideoRecordingSync()V
    .locals 3

    .prologue
    .line 6519
    const-string v1, "CommonEngine"

    const-string v2, "doPauseVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6521
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 6522
    const-string v1, "CommonEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6545
    :goto_0
    return-void

    .line 6526
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 6527
    const-string v1, "CommonEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6531
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6532
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6533
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6537
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6544
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    goto :goto_0

    .line 6538
    :catch_0
    move-exception v0

    .line 6539
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CommonEngine"

    const-string v2, "Could not pause media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6540
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    goto :goto_0
.end method

.method public final doPostInitSync()V
    .locals 2

    .prologue
    .line 6548
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6549
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V

    .line 6550
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V

    .line 6551
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V

    .line 6552
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V

    .line 6553
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V

    .line 6554
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnBurstShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;)V

    .line 6555
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnMultiFrameShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;)V

    .line 6556
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnAutoLowLightDetectionListener(Lcom/sec/android/seccamera/SecCamera$OnAutoLowLightDetectionListener;)V

    .line 6557
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnDramaShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnDramaShotEventListener;)V

    .line 6558
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnDualEventListener(Lcom/sec/android/seccamera/SecCamera$OnDualEventListener;)V

    .line 6559
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnGolfShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;)V

    .line 6560
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnBeautyShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBeautyShotEventListener;)V

    .line 6561
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnSecImagingEventListener(Lcom/sec/android/seccamera/SecCamera$OnSecImagingEventListener;)V

    .line 6562
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnOutFocusShotModeEventListener(Lcom/sec/android/seccamera/SecCamera$OnOutFocusShotModeEventListener;)V

    .line 6563
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnMagicShotModeEventListener(Lcom/sec/android/seccamera/SecCamera$OnMagicShotModeEventListener;)V

    .line 6564
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setOnPafResultListener(Lcom/sec/android/seccamera/SecCamera$OnPafResultListener;)V

    .line 6566
    :cond_0
    return-void
.end method

.method public doPrepareVideoRecordingAsync()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6569
    const-string v0, "doPrepareVideoRecordingAsync"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6570
    const-string v0, "CommonEngine"

    const-string v1, "doPrepareVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6573
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 6574
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLContext;->setPreviewTransparent(Z)V

    .line 6577
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 6578
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 6579
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6580
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback_VideoRecording()V

    .line 6582
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_2

    .line 6583
    const-string v0, "CommonEngine"

    const-string v1, "mMediaRecorder is already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 6584
    const-string v0, "CommonEngine"

    const-string v1, "Releasing mMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 6585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 6589
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 6590
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6591
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6594
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6595
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFocusIndicator()V

    .line 6596
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 6597
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6598
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6599
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 6606
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_5

    .line 6607
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$7;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 6622
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6623
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6626
    :cond_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 6627
    return-void

    .line 6601
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6602
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public doProcessBackSync()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1526
    return-void
.end method

.method public doResetSettingsSync()V
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetButtonDim()V

    .line 1532
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraSettingsToDefault()V

    .line 1534
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenResetSettings()V

    .line 1537
    return-void
.end method

.method public doResumeVideoRecordingSync()V
    .locals 3

    .prologue
    .line 6630
    const-string v1, "CommonEngine"

    const-string v2, "doResumeVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6632
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_0

    .line 6633
    const-string v1, "CommonEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6654
    :goto_0
    return-void

    .line 6637
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 6638
    const-string v1, "CommonEngine"

    const-string v2, "Recording is not started yet."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6642
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6643
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6644
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6648
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6653
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->disableAlertSound()V

    goto :goto_0

    .line 6649
    :catch_0
    move-exception v0

    .line 6650
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CommonEngine"

    const-string v2, "Could not resume media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doSaveGolfShot()V
    .locals 2

    .prologue
    .line 5827
    const-string v0, "CommonEngine"

    const-string v1, "doSaveGolfShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 5830
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->saveGolfShot(I)V

    .line 5831
    :cond_0
    return-void
.end method

.method public doSetAllParamsSync()V
    .locals 0

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->initialize()V

    .line 1541
    return-void
.end method

.method public doSetDualCaptureModeSync(I)V
    .locals 1
    .param p1, "isDualCaptureModeSync"    # I

    .prologue
    .line 8723
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8724
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setDualShotMode(I)V

    .line 8726
    :cond_0
    return-void
.end method

.method public doSetEffectLayerOrderForDualCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8171
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 8172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setEffectLayerOrderSync(Z)V

    .line 8176
    :goto_0
    return-void

    .line 8174
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setEffectLayerOrderSync(Z)V

    goto :goto_0
.end method

.method public doSetEffectOrientationSync(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 8740
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8741
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetEffectOrientation(I)V

    .line 8747
    :cond_0
    :goto_0
    return-void

    .line 8743
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8744
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectOrientation(I)V

    goto :goto_0
.end method

.method public final doSetExternalShootingModesSync()V
    .locals 2

    .prologue
    .line 9114
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getPackageNativeLibraryDirMapping()Ljava/util/HashMap;

    move-result-object v0

    .line 9116
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 9120
    :cond_0
    return-void
.end method

.method public doSetFaceRetouchLevelSync(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 6151
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceRetouchLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6152
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6153
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setBeautyEffect(Z)V

    .line 6154
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    mul-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFaceRetouchLevel(I)V

    .line 6156
    :cond_0
    return-void
.end method

.method public doSetMultipleParametersSync(Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 1554
    const-string v1, "CommonEngine"

    const-string v2, "doSetMultipleParametersSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1556
    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1557
    .local v0, "paramsToSet":Lcom/sec/android/seccamera/SecCamera$Parameters;
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1559
    .end local v0    # "paramsToSet":Lcom/sec/android/seccamera/SecCamera$Parameters;
    :cond_0
    return-void
.end method

.method public doSetOnShutterSound(I)V
    .locals 3
    .param p1, "shuttersound"    # I

    .prologue
    .line 6166
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnShutterSound. shuttersound ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6168
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 6169
    const-string v0, "CommonEngine"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6181
    :cond_0
    :goto_0
    return-void

    .line 6173
    :cond_1
    if-nez p1, :cond_2

    .line 6174
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0

    .line 6176
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6178
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    goto :goto_0
.end method

.method public doSetParameterSync(Ljava/lang/Object;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 1544
    const-string v1, "CommonEngine"

    const-string v2, "doSetParameterSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1547
    check-cast v0, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;

    .line 1548
    .local v0, "p":Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1551
    .end local v0    # "p":Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;
    :cond_0
    return-void
.end method

.method public doSetSingleEffect()V
    .locals 2

    .prologue
    .line 8102
    const-string v0, "CommonEngine"

    const-string v1, "doSetSingleEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8103
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onSingleEffectMenuSelect(I)V

    .line 8104
    return-void
.end method

.method public doSetSingleEffectSync(Ljava/lang/Object;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 8111
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    .line 8112
    .local v0, "p":Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getKey()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 8113
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->getValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setSingleEffectSync(I)V

    .line 8114
    :cond_0
    return-void
.end method

.method public doSetTrackingVisibleSync()V
    .locals 2

    .prologue
    .line 8140
    const-string v0, "CommonEngine"

    const-string v1, "doSetTrackingVisibleSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8141
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 8142
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    if-eqz v0, :cond_0

    .line 8143
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setTrackingVisible()V

    .line 8144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    .line 8147
    :cond_0
    return-void
.end method

.method public final doShutterTimerAsync(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1562
    const-string v1, "CommonEngine"

    const-string v2, "doShutterTimerAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 1566
    move v0, p1

    .line 1567
    .local v0, "i":I
    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1568
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerEventHandleMessage**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/CommonEngine$TimerEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1567
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1572
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x4

    add-int/lit8 v3, p1, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1573
    return-void
.end method

.method public final doStartActionShotSync()V
    .locals 2

    .prologue
    .line 5615
    const-string v0, "CommonEngine"

    const-string v1, "doStartActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5617
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 5618
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startSeriesActionShot()V

    .line 5619
    return-void
.end method

.method public final doStartBurstAsync()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 8199
    const-string v1, "doStartBurstAsync"

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8201
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStartBurstAsync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CeRequestQueue;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8202
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8203
    const-string v1, "CommonEngine"

    const-string v2, "duplicate schedule burst shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->burstShotStartCompleted()V

    .line 8246
    :goto_0
    return-void

    .line 8208
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 8209
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->dropCache()V

    .line 8210
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setSingleShotBurst(Z)V

    .line 8211
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->createBurstMenu()V

    .line 8212
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 8215
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 8216
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8217
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->setBurstCaptureShortPressed(Z)V

    .line 8218
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onBurstCaptureCancelled()V

    goto :goto_0

    .line 8222
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onBurstShotStarted()V

    .line 8223
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 8226
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isNeedInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8227
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8231
    .local v0, "mFilePath":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8232
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst shot filepath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8233
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "capture-burst-filepath"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8235
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 8236
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_6

    .line 8237
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 8243
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->captureBurstShot()V

    .line 8245
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 8229
    .end local v0    # "mFilePath":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mFilePath":Ljava/lang/String;
    goto :goto_1

    .line 8238
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_8

    .line 8239
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v2

    invoke-virtual {v1, v4, v2, v5}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    goto :goto_2

    .line 8241
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    goto :goto_2
.end method

.method public final doStartDramaShotSync()V
    .locals 4

    .prologue
    .line 5725
    const-string v1, "CommonEngine"

    const-string v2, "doStartDramaShot"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5727
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    .line 5728
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getDramaShotState()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->DRAMA_SHOT_STATE_IDLE:I

    if-eq v1, v2, :cond_1

    .line 5729
    const-string v1, "CommonEngine"

    const-string v2, "doStartDramaShot - Current state is not DRAMA_SHOT_STATE_IDLE, return"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    :cond_0
    :goto_0
    return-void

    .line 5733
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "Camera_dramaShot"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 5736
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5737
    const-string v0, "/.Drama/"

    .line 5738
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5739
    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;

    const-string v2, "drama-file-path"

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetParameterSync(Ljava/lang/Object;)V

    .line 5741
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5742
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_3

    .line 5743
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startDramaShot()V

    .line 5745
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 5746
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onDramaShotStarted()V

    goto :goto_0
.end method

.method public doStartDualCameraSync()V
    .locals 2

    .prologue
    .line 2458
    const-string v0, "CommonEngine"

    const-string v1, "doStartDualCameraSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 2464
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectLayerOrderForDualCamera()V

    .line 2465
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    .line 2467
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateSettingsWhenSwitchCamera()V

    .line 2468
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->checkFlashRestriction()V

    .line 2471
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2472
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 2483
    :goto_1
    return-void

    .line 2462
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    goto :goto_0

    .line 2474
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1
.end method

.method public doStartDualPreviewSync()V
    .locals 2

    .prologue
    .line 8150
    const-string v0, "CommonEngine"

    const-string v1, "doStartDualPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8151
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 8152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 8153
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualEffectCoordnate()V

    .line 8158
    :cond_0
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5622
    const-string v0, "CommonEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    .line 5626
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 5628
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 5629
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    .line 5632
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 5634
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 5635
    const-string v0, "CommonEngine"

    const-string v1, "camera device is already conntected for some reason (eg. onResume is called twice without calling onPause)"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    const-string v0, "CommonEngine"

    const-string v1, "skip connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 5651
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLocationTagOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isNetworkProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5652
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startReceivingLocationUpdates()V

    .line 5656
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationListener()V

    .line 5657
    return-void

    .line 5639
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$5;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 5647
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCameraThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5648
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5654
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public final doStartMagicShotSync()V
    .locals 4

    .prologue
    .line 5767
    const-string v1, "CommonEngine"

    const-string v2, "doStartMagicShotSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5770
    const-string v1, "CommonEngine"

    const-string v2, "doStartMagicShotSync - magic shot capturing, return"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    :cond_0
    :goto_0
    return-void

    .line 5776
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5777
    .local v0, "mFilePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5778
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst shot filepath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    if-eqz v0, :cond_2

    .line 5780
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "capture-burst-filepath"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_3

    .line 5782
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 5786
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5787
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationAndSendItToFramework()V

    .line 5788
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_4

    .line 5789
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startMagicShot()V

    .line 5791
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 5792
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onMagicShotStarted()V

    goto :goto_0
.end method

.method public final doStartPanoramaAsync()V
    .locals 3

    .prologue
    .line 5660
    const-string v0, "CommonEngine"

    const-string v1, "doStartPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Camera_panoramaShot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 5663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5665
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$6;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    .line 5682
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    const-string v1, "PanoramaStartingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5683
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5684
    return-void
.end method

.method public doStartPreviewAsync()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    const/4 v7, 0x3

    const/4 v9, 0x0

    .line 1576
    const-string v5, "doStartPreviewAsync"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1577
    const-string v5, "doStartPreviewAsync"

    invoke-static {v9, v5}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 1579
    const-string v5, "CommonEngine"

    const-string v6, "doStartPreviewAsync"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1584
    .local v2, "_axtime_st_1":J
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1585
    :cond_0
    const-string v5, "CommonEngine"

    const-string v6, "return because mSurfaceHolder is null."

    invoke-static {v5, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v5, :cond_1

    .line 1588
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1715
    :cond_1
    :goto_0
    return-void

    .line 1594
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v5, :cond_3

    .line 1595
    const-string v5, "CommonEngine"

    const-string v6, "return because mCameraDevice is null."

    invoke-static {v5, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1599
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetPreviewSize()V

    .line 1602
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/app/camera/CommonEngine$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CommonEngine$3;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1700
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    const-string v6, "startPreviewThread"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1701
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1702
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 1704
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v5, :cond_4

    .line 1705
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v5}, Landroid/view/OrientationEventListener;->enable()V

    .line 1709
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1710
    .local v0, "_axtime_ed_1":J
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrepareStartPreview-End**End["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**[]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    move-wide v2, v0

    .line 1713
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1714
    invoke-static {v9}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    goto :goto_0

    .line 1603
    .end local v0    # "_axtime_ed_1":J
    :catch_0
    move-exception v4

    .line 1604
    .local v4, "exception":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1605
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    .line 1608
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1609
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1707
    .end local v4    # "exception":Ljava/io/IOException;
    :cond_4
    const-string v5, "CommonEngine"

    const-string v6, "doStartPreviewAsync : mOrientationListener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doStartPreviewDummySync()V
    .locals 2

    .prologue
    .line 1718
    const-string v0, "CommonEngine"

    const-string v1, "doStartPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 1720
    return-void
.end method

.method public doStartRecordDualPreviewSync()V
    .locals 2

    .prologue
    .line 8127
    const-string v0, "CommonEngine"

    const-string v1, "doStartRecordDualPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8128
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 8129
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualRecordEffectCoordnate()V

    .line 8130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 8132
    :cond_0
    return-void
.end method

.method public doStartSmileDetectionAsync()V
    .locals 2

    .prologue
    .line 5695
    const-string v0, "CommonEngine"

    const-string v1, "startSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5697
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 5698
    return-void
.end method

.method public doStartVideoRecordingAsync()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    const-wide/16 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6657
    const-string v1, "doStartVideoRecordingAsync"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6658
    const-string v1, "CommonEngine"

    const-string v2, "doStartVideoRecordingAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6660
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 6661
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "Camera_recordingDual"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 6665
    :goto_0
    sput-boolean v4, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    .line 6666
    iput-wide v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    .line 6667
    iput-wide v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 6670
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    .line 6671
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6672
    const-string v1, "CommonEngine"

    const-string v2, "scheduleTakePicture - it is changed to doTakeVideoSnapShotAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6673
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 6677
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 6678
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6684
    :cond_1
    :goto_1
    const-string v1, "CommonEngine"

    const-string v2, "start video recording"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_4

    .line 6688
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v1, :cond_3

    .line 6689
    const-string v1, "CommonEngine"

    const-string v2, "SecMediaRecorder is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 6788
    :goto_2
    return-void

    .line 6663
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "Camera_recording"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6694
    :cond_3
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 6695
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CommonEngine$8;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 6755
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v2, "StartRecordingThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6756
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6757
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6760
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v0

    .line 6761
    .local v0, "nOrientation":I
    sparse-switch v0, :sswitch_data_0

    .line 6775
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    .line 6781
    :goto_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6782
    const-string v1, "GATE"

    const-string v2, "<GATE-M>VIDEO_RECORDING</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6787
    .end local v0    # "nOrientation":I
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 6763
    .restart local v0    # "nOrientation":I
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    goto :goto_3

    .line 6766
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    goto :goto_3

    .line 6769
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    goto :goto_3

    .line 6772
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    goto :goto_3

    .line 6680
    .end local v0    # "nOrientation":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 6761
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public doStopActionShotSync()V
    .locals 2

    .prologue
    .line 5701
    const-string v0, "CommonEngine"

    const-string v1, "doStopActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 5704
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopSeriesActionShot()V

    .line 5705
    return-void
.end method

.method public final doStopBurstSync()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8255
    const-string v1, "CommonEngine"

    const-string v2, "doStopBurstSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8257
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$5002(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I

    .line 8258
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBurstShotProgress()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 8259
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 8269
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 8270
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v3, v3, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 8272
    :cond_0
    return-void

    .line 8262
    :cond_1
    const-wide/16 v1, 0x96

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8266
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    goto :goto_0

    .line 8263
    :catch_0
    move-exception v0

    .line 8264
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public doStopDramaShotSync()V
    .locals 2

    .prologue
    .line 5750
    const-string v0, "CommonEngine"

    const-string v1, "doStopDramaShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5752
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopDramaShot()V

    .line 5753
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 5755
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onDramaShotCapturingStop()V

    .line 5756
    return-void
.end method

.method public doStopDualCameraSync()V
    .locals 2

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 2487
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToBack()V

    .line 2491
    :cond_0
    :goto_0
    return-void

    .line 2488
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToFront()V

    goto :goto_0
.end method

.method public doStopEngineSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2367
    const-string v0, "CommonEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 2372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    .line 2375
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v0, :cond_1

    .line 2376
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopTouchAutoFocus()V

    .line 2378
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopReceivingLocationUpdates()V

    .line 2380
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2382
    const-string v0, "CommonEngine"

    const-string v1, "doStopEngineSync - set shooting mode as default"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2385
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    add-int/lit16 v1, v1, 0x190

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(III)V

    .line 2392
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    .line 2393
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2394
    return-void

    .line 2387
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    goto :goto_0
.end method

.method public doStopGolfShot()V
    .locals 2

    .prologue
    .line 5817
    const-string v0, "CommonEngine"

    const-string v1, "doStopGolfShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5818
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 5820
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 5821
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopGolfShot()V

    .line 5823
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onGolfShotCancel()V

    .line 5824
    return-void
.end method

.method public doStopMagicShotSync()V
    .locals 2

    .prologue
    .line 5797
    const-string v0, "CommonEngine"

    const-string v1, "doStopMagicShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 5800
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopMagicShot()V

    .line 5802
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 5803
    return-void
.end method

.method public doStopPanoramaSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5708
    const-string v0, "CommonEngine"

    const-string v1, "doStopPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5709
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 5710
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Camera_panoramaShot"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 5713
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->cancelAutoFocus()V

    .line 5714
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 5715
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->startPanorama(Z)V

    .line 5716
    :cond_1
    return-void
.end method

.method public doStopPreviewDummySync()V
    .locals 2

    .prologue
    .line 2432
    const-string v0, "CommonEngine"

    const-string v1, "doStopPreviewDummySync"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2436
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    .line 2442
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2446
    :goto_1
    return-void

    .line 2438
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    goto :goto_0

    .line 2444
    :cond_2
    const-string v0, "CommonEngine"

    const-string v1, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doStopPreviewSync()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x400

    .line 2397
    const-string v4, "doStopPreviewSync"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2398
    const-string v4, "doStopPreviewSync"

    invoke-static {v10, v4}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 2400
    const-string v4, "CommonEngine"

    const-string v5, "doStopPreviewSync"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2406
    .local v2, "_axtime_st_1":J
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x708

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->acquireDVFSMax(I)V

    .line 2408
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopFaceDetection()V

    .line 2409
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_0

    .line 2411
    const-string v4, "stopPreview"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2412
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 2413
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 2418
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2420
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v4, :cond_1

    .line 2421
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->disable()V

    .line 2424
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2425
    .local v0, "_axtime_ed_1":J
    const-string v4, "AXLOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPreview**End["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**[]**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    move-wide v2, v0

    .line 2427
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2428
    invoke-static {v10}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    .line 2429
    return-void

    .line 2423
    .end local v0    # "_axtime_ed_1":J
    :cond_1
    const-string v4, "CommonEngine"

    const-string v5, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopSmileDetectionSync()V
    .locals 2

    .prologue
    .line 5719
    const-string v0, "CommonEngine"

    const-string v1, "stopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 5722
    return-void
.end method

.method public doStopVideoRecordingSync()V
    .locals 2

    .prologue
    .line 7103
    const-string v0, "CommonEngine"

    const-string v1, "doStopVideoRecordingSync!"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7105
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getWifiDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7106
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setToSupportFullOrientation()V

    .line 7109
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->dimRecordButtons()V

    .line 7111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mIsCinepicRecording:Z

    if-nez v0, :cond_2

    .line 7116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSyncThread()V

    .line 7120
    :goto_0
    return-void

    .line 7118
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSyncNoThread()V

    goto :goto_0
.end method

.method public doStopVideoRecordingSyncNoThread()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x2f

    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    .line 6976
    const-wide/16 v2, 0x1000

    const-string v4, "Recording..."

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 6978
    const-string v2, "doStopVideoRecordingSyncNoThread"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6979
    const-string v2, "CommonEngine"

    const-string v3, "doStopVideoRecordingSyncNoThread"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6982
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 6983
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->setPreviewTransparent(Z)V

    .line 6986
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v8, :cond_b

    .line 6987
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "Camera_recordingDual"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    .line 6992
    :goto_0
    const-string v2, "CommonEngine"

    const-string v3, "Stopping VideoRecording..."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6993
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_c

    .line 6995
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6996
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6997
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 7000
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7001
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 7002
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 7003
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->stopAnimatedPhoto()V

    .line 7006
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7008
    .local v1, "ioBusyUnVoteIntent":Landroid/content/Intent;
    const-string v2, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7009
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7011
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.chaton.util.ACTION_VIDEO_RECORDING_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7012
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7013
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getSystemSoundEffect()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7014
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->enableSystemSoundEffect()V

    .line 7018
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    .line 7024
    const-wide/16 v2, 0x400

    :try_start_0
    const-string v4, "Recording Stop"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7025
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 7026
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 7028
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7046
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7047
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->makeVideoFileSlow()V

    .line 7050
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_5

    .line 7051
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->renameTempFile()V

    .line 7054
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 7056
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 7058
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 7059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 7062
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7063
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " </GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7066
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->registerVideo()V

    .line 7070
    .end local v1    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :cond_7
    :goto_1
    sput-boolean v5, Lcom/sec/android/app/camera/CommonEngine;->m_bRecordingHDR:Z

    .line 7071
    iput-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 7073
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->removeHideFocusRectMessage()V

    .line 7075
    sget-boolean v2, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v2, :cond_8

    .line 7076
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 7083
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 7084
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    .line 7085
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 7087
    const-string v2, "CommonEngine"

    const-string v3, "Stopping VideoRecording is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7088
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-boolean v2, v2, Lcom/sec/android/app/camera/Camera;->mIsReocrdingStoppedForcely:Z

    if-nez v2, :cond_9

    .line 7089
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 7090
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 7092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCamcorderRecordingStopSound()V

    .line 7093
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSwitchToCameraPreview()V

    .line 7095
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v8, :cond_9

    .line 7096
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->startDualRecordingMode()V

    .line 7099
    :cond_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 7100
    :cond_a
    :goto_2
    return-void

    .line 6989
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "Camera_recording"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/camera/Camera;->setLcdBrightness(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 7029
    .restart local v1    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 7030
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7031
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    .line 7032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 7034
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupTempFile()V

    .line 7035
    iput-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 7036
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->closeVideoFileDescriptor()V

    .line 7038
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 7039
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/Camera;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7040
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isRecordingMenuTop()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7041
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    .line 7067
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :cond_c
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_7

    .line 7068
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_1
.end method

.method public doStopVideoRecordingSyncThread()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x400

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6791
    const-wide/16 v0, 0x1000

    const-string v2, "Recording..."

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 6793
    const-string v0, "doStopVideoRecordingSyncThread"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6794
    const-string v0, "CommonEngine"

    const-string v1, "doStopVideoRecordingSyncThread E"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6795
    sput-boolean v4, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    .line 6797
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 6798
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6799
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 6801
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->onUhdSavingProgress(I)V

    .line 6804
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CommonEngine$9;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    .line 6962
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    const-string v1, "StopRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6964
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 6965
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6968
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 6969
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->switchAudioChannelDirection(I)V

    .line 6972
    :cond_1
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 6973
    return-void
.end method

.method public final doSwitchCameraSync()V
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToFront()V

    .line 2454
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenSwitchCamera()V

    .line 2455
    return-void

    .line 2451
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->switchToBack()V

    goto :goto_0
.end method

.method public doSwitchToCamcorderPreviewSync()V
    .locals 11

    .prologue
    .line 1723
    const-string v8, "CommonEngine"

    const-string v9, "doSwitchToCamcorderPreviewSync"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v8, :cond_0

    .line 1725
    const-string v8, "CommonEngine"

    const-string v9, "doSwitchToCamcorderPreviewSync : mParameters is null"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :goto_0
    return-void

    .line 1728
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v8, :cond_1

    .line 1729
    const-string v8, "CommonEngine"

    const-string v9, "doSwitchToCamcorderPreviewSync : mCameraDevice is null"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1732
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 1734
    const/4 v3, 0x0

    .local v3, "previewWidth":I
    const/4 v2, 0x0

    .local v2, "previewHeight":I
    const/4 v1, 0x0

    .local v1, "pictureWidth":I
    const/4 v0, 0x0

    .line 1735
    .local v0, "pictureHeight":I
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    .line 1737
    .local v4, "resolutionId":I
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1924
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1925
    const/16 v3, 0x5a0

    .line 1926
    const/16 v2, 0x438

    .line 1931
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 1932
    :cond_2
    const/16 v1, 0xcc0

    .line 1933
    const/16 v0, 0x990

    .line 1941
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 1942
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1943
    const-string v8, "800x450"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1944
    const/16 v3, 0x780

    .line 1945
    const/16 v2, 0x438

    .line 1978
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v8

    if-eqz v8, :cond_4

    .line 1979
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_4
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/android/app/camera/CommonEngine;->m_bRecordingHDR:Z

    .line 1987
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 1988
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->hideDualBoundryRect()V

    .line 1989
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_6

    .line 1990
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x5dc0

    const/16 v10, 0x5dc0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 1995
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xbb9

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1997
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 1998
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v9, "dualrecording-hint"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1999
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_35

    .line 2000
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2006
    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v9, 0x5

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2010
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2208
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 2209
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_a

    .line 2210
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->setDualInvisible()V

    .line 2211
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v8

    const/16 v9, 0x30

    if-eq v8, v9, :cond_9

    .line 2212
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 2213
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->needToOrientationForDual()V

    .line 2216
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->resizeForCamcorderPreviewAspectRatio()Z

    goto/16 :goto_0

    .line 1739
    :sswitch_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1740
    const/16 v3, 0xf00

    .line 1741
    const/16 v2, 0x870

    .line 1746
    :goto_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1747
    :cond_b
    const/16 v1, 0xcc0

    .line 1748
    const/16 v0, 0x72c

    goto/16 :goto_2

    .line 1743
    :cond_c
    const/16 v3, 0x780

    .line 1744
    const/16 v2, 0x438

    goto :goto_6

    .line 1750
    :cond_d
    const/16 v1, 0x780

    .line 1751
    const/16 v0, 0x438

    .line 1753
    goto/16 :goto_2

    .line 1755
    :sswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1756
    const/16 v3, 0xa00

    .line 1757
    const/16 v2, 0x5a0

    .line 1762
    :goto_7
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1763
    :cond_e
    const/16 v1, 0xcc0

    .line 1764
    const/16 v0, 0x72c

    goto/16 :goto_2

    .line 1759
    :cond_f
    const/16 v3, 0x780

    .line 1760
    const/16 v2, 0x438

    goto :goto_7

    .line 1766
    :cond_10
    const/16 v1, 0x780

    .line 1767
    const/16 v0, 0x438

    .line 1769
    goto/16 :goto_2

    .line 1771
    :sswitch_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1772
    const/16 v3, 0x780

    .line 1773
    const/16 v2, 0x438

    .line 1778
    :goto_8
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1779
    :cond_11
    const/16 v1, 0xcc0

    .line 1780
    const/16 v0, 0x72c

    goto/16 :goto_2

    .line 1775
    :cond_12
    const/16 v3, 0x780

    .line 1776
    const/16 v2, 0x438

    goto :goto_8

    .line 1782
    :cond_13
    const/16 v1, 0x780

    .line 1783
    const/16 v0, 0x438

    .line 1785
    goto/16 :goto_2

    .line 1787
    :sswitch_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1788
    const/16 v3, 0x780

    .line 1789
    const/16 v2, 0x438

    .line 1794
    :goto_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1795
    :cond_14
    const/16 v1, 0x780

    .line 1796
    const/16 v0, 0x438

    goto/16 :goto_2

    .line 1791
    :cond_15
    const/16 v3, 0x780

    .line 1792
    const/16 v2, 0x438

    goto :goto_9

    .line 1798
    :cond_16
    const/16 v1, 0x780

    .line 1799
    const/16 v0, 0x438

    .line 1801
    goto/16 :goto_2

    .line 1803
    :sswitch_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1804
    const/16 v3, 0x5a0

    .line 1805
    const/16 v2, 0x438

    .line 1810
    :goto_a
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_17

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1811
    :cond_17
    const/16 v1, 0xcc0

    .line 1812
    const/16 v0, 0x990

    goto/16 :goto_2

    .line 1807
    :cond_18
    const/16 v3, 0x5a0

    .line 1808
    const/16 v2, 0x438

    goto :goto_a

    .line 1814
    :cond_19
    const/16 v1, 0x5a0

    .line 1815
    const/16 v0, 0x438

    .line 1817
    goto/16 :goto_2

    .line 1819
    :sswitch_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1820
    const/16 v3, 0x780

    .line 1821
    const/16 v2, 0x438

    .line 1826
    :goto_b
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_1a

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1827
    :cond_1a
    const/16 v1, 0xcc0

    .line 1828
    const/16 v0, 0x72c

    goto/16 :goto_2

    .line 1823
    :cond_1b
    const/16 v3, 0x780

    .line 1824
    const/16 v2, 0x438

    goto :goto_b

    .line 1830
    :cond_1c
    const/16 v1, 0x780

    .line 1831
    const/16 v0, 0x438

    .line 1833
    goto/16 :goto_2

    .line 1835
    :sswitch_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_1d

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1836
    :cond_1d
    const/16 v1, 0xf90

    .line 1837
    const/16 v0, 0xbac

    goto/16 :goto_2

    .line 1839
    :cond_1e
    const/16 v1, 0x5a0

    .line 1840
    const/16 v0, 0x438

    .line 1842
    goto/16 :goto_2

    .line 1844
    :sswitch_7
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1845
    const/16 v3, 0x654

    .line 1846
    const/16 v2, 0x3f0

    .line 1851
    :goto_c
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_1f

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1852
    :cond_1f
    const/16 v1, 0xcc0

    .line 1853
    const/16 v0, 0x72c

    goto/16 :goto_2

    .line 1848
    :cond_20
    const/16 v3, 0x654

    .line 1849
    const/16 v2, 0x3f0

    goto :goto_c

    .line 1855
    :cond_21
    const/16 v1, 0x654

    .line 1856
    const/16 v0, 0x438

    .line 1858
    goto/16 :goto_2

    .line 1860
    :sswitch_8
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1861
    const/16 v3, 0x5a0

    .line 1862
    const/16 v2, 0x438

    .line 1867
    :goto_d
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_22

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 1868
    :cond_22
    const/16 v1, 0xcc0

    .line 1869
    const/16 v0, 0x990

    goto/16 :goto_2

    .line 1864
    :cond_23
    const/16 v3, 0x5a0

    .line 1865
    const/16 v2, 0x438

    goto :goto_d

    .line 1871
    :cond_24
    const/16 v1, 0x5a0

    .line 1872
    const/16 v0, 0x438

    .line 1874
    goto/16 :goto_2

    .line 1876
    :sswitch_9
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1877
    const/16 v3, 0x780

    .line 1878
    const/16 v2, 0x438

    .line 1883
    :goto_e
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_25

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1884
    :cond_25
    const/16 v1, 0x1020

    .line 1885
    const/16 v0, 0xac0

    goto/16 :goto_2

    .line 1880
    :cond_26
    const/16 v3, 0x780

    .line 1881
    const/16 v2, 0x438

    goto :goto_e

    .line 1887
    :cond_27
    const/16 v1, 0x780

    .line 1888
    const/16 v0, 0x438

    .line 1890
    goto/16 :goto_2

    .line 1892
    :sswitch_a
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1893
    const/16 v3, 0x5a0

    .line 1894
    const/16 v2, 0x438

    .line 1899
    :goto_f
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_28

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 1900
    :cond_28
    const/16 v1, 0xcc0

    .line 1901
    const/16 v0, 0x990

    goto/16 :goto_2

    .line 1896
    :cond_29
    const/16 v3, 0x5a0

    .line 1897
    const/16 v2, 0x438

    goto :goto_f

    .line 1903
    :cond_2a
    const/16 v1, 0x5a0

    .line 1904
    const/16 v0, 0x438

    .line 1906
    goto/16 :goto_2

    .line 1908
    :sswitch_b
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1909
    const/16 v3, 0x420

    .line 1910
    const/16 v2, 0x360

    .line 1915
    :goto_10
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 1916
    :cond_2b
    const/16 v1, 0xcc0

    .line 1917
    const/16 v0, 0x990

    goto/16 :goto_2

    .line 1912
    :cond_2c
    const/16 v3, 0x420

    .line 1913
    const/16 v2, 0x360

    goto :goto_10

    .line 1919
    :cond_2d
    const/16 v1, 0x5a0

    .line 1920
    const/16 v0, 0x438

    .line 1922
    goto/16 :goto_2

    .line 1928
    :cond_2e
    const/16 v3, 0x5a0

    .line 1929
    const/16 v2, 0x438

    goto/16 :goto_1

    .line 1935
    :cond_2f
    const/16 v1, 0x5a0

    .line 1936
    const/16 v0, 0x438

    goto/16 :goto_2

    .line 1947
    :cond_30
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_34

    .line 1948
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1949
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1950
    const/16 v8, 0x12

    if-ne v4, v8, :cond_32

    .line 1951
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_31

    .line 1952
    const/16 v3, 0x5a0

    .line 1953
    const/16 v2, 0x438

    goto/16 :goto_3

    .line 1955
    :cond_31
    const/16 v3, 0x5a0

    .line 1956
    const/16 v2, 0x438

    goto/16 :goto_3

    .line 1959
    :cond_32
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 1960
    const/16 v3, 0x420

    .line 1961
    const/16 v2, 0x360

    goto/16 :goto_3

    .line 1963
    :cond_33
    const/16 v3, 0x420

    .line 1964
    const/16 v2, 0x360

    goto/16 :goto_3

    .line 1968
    :cond_34
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 1969
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1970
    const-string v8, "1280x720"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 1971
    const/16 v3, 0x500

    .line 1972
    const/16 v2, 0x2d0

    .line 1973
    move v1, v3

    .line 1974
    move v0, v2

    goto/16 :goto_3

    .line 2002
    :cond_35
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2011
    :cond_36
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x26

    if-ne v8, v9, :cond_38

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 2012
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x3a98

    const/16 v10, 0x3a98

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 2026
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 2027
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 2028
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xbb9

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x170e

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v9, "video_recording_gamma"

    const-string v10, "on"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v9, "slow_ae"

    const-string v10, "on"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera;->startAnimatedPhoto()V

    .line 2035
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v8, :cond_37

    .line 2036
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_5

    .line 2038
    :cond_37
    const-string v8, "CommonEngine"

    const-string v9, "doSwitchToCamcorderPreviewSync()- mCameraDevice is null"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2046
    :cond_38
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_40

    .line 2048
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x3a98

    const/16 v10, 0x3a98

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 2124
    :goto_11
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 2126
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPreviewSize, previewWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", previewHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 2128
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xbb9

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 2133
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v6

    .line 2134
    .local v6, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v6, :cond_39

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_39

    .line 2135
    const/4 v5, 0x0

    .line 2136
    .local v5, "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    invoke-virtual {p0, v6, v3, v2}, Lcom/sec/android/app/camera/CommonEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v5

    .line 2137
    if-eqz v5, :cond_39

    .line 2138
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v9, v5, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v10, v5, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 2143
    .end local v5    # "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_39
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_42

    .line 2144
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    :goto_12
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 2151
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x26

    if-ne v8, v9, :cond_43

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v8, 0x1

    :goto_13
    if-nez v8, :cond_3a

    .line 2152
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v9, 0x5

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    :cond_3a
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    if-eqz v8, :cond_3b

    .line 2155
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 2157
    :cond_3b
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2161
    :cond_3c
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v9, "video_recording_gamma"

    const-string v10, "on"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v9, "slow_ae"

    const-string v10, "on"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    const/4 v7, 0x0

    .line 2166
    .local v7, "vdis":Z
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3d

    sget-boolean v8, Lcom/sec/android/app/camera/CommonEngine;->m_bRecordingHDR:Z

    if-nez v8, :cond_3d

    .line 2167
    const/4 v7, 0x1

    .line 2169
    :cond_3d
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2170
    if-eqz v7, :cond_44

    .line 2171
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v9, "sw-vdis"

    const-string v10, "on"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    :goto_14
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3e

    .line 2178
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x12

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2185
    :cond_3e
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 2186
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x170e

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    :goto_15
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_3f

    .line 2194
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 2197
    :cond_3f
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 2198
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    .line 2199
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_5

    .line 2065
    .end local v6    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    .end local v7    # "vdis":Z
    :cond_40
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 2066
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_11

    .line 2068
    :pswitch_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const v9, 0xea60

    const v10, 0xea60

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_11

    .line 2072
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const v9, 0x1d4c0

    const v10, 0x1d4c0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_11

    .line 2092
    :cond_41
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x7530

    const/16 v10, 0x7530

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_11

    .line 2146
    .restart local v6    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_42
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2151
    :cond_43
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 2173
    .restart local v7    # "vdis":Z
    :cond_44
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v9, "sw-vdis"

    const-string v10, "off"

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2187
    :cond_45
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSmoothMotionEnabled()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 2188
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x170e

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2190
    :cond_46
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v9, 0x170e

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2219
    .end local v6    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    .end local v7    # "vdis":Z
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 2220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    goto/16 :goto_0

    .line 1737
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_8
        0xd -> :sswitch_2
        0xe -> :sswitch_5
        0xf -> :sswitch_7
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x15 -> :sswitch_1
        0x1f -> :sswitch_4
        0x22 -> :sswitch_6
        0x28 -> :sswitch_0
        0x29 -> :sswitch_9
        0x2a -> :sswitch_3
    .end sparse-switch

    .line 2066
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public doSwitchToCameraPreviewSync()V
    .locals 9

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 2230
    const-string v1, "CommonEngine"

    const-string v2, "doSwitchToCameraPreviewSync"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 2232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetPreviewSize()V

    .line 2243
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSmoothMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2244
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x170e

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingFastFPSMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v8, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2248
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v8, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_3

    .line 2249
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    .line 2251
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2254
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 2255
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2269
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v1

    if-eqz v1, :cond_5

    .line 2276
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_6

    .line 2280
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2336
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2342
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2343
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v8, :cond_a

    .line 2344
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_8

    .line 2345
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setDualInvisible()V

    .line 2346
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_9

    .line 2347
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 2348
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->needToOrientationForDual()V

    .line 2351
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resizeForCameraPreviewAspectRatio()Z

    .line 2364
    :goto_3
    return-void

    .line 2257
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v0

    .line 2258
    .local v0, "focus":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2267
    .end local v0    # "focus":I
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2286
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_e

    .line 2289
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2292
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v1

    if-eqz v1, :cond_f

    .line 2294
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2298
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v1

    if-ne v1, v5, :cond_10

    .line 2299
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2315
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "video_recording_gamma"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "slow_ae"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2323
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "sw-vdis"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_12

    .line 2326
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 2327
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2333
    new-instance v1, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-direct {v1, p0, v5, v2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2301
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v0

    .line 2302
    .restart local v0    # "focus":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2311
    .end local v0    # "focus":I
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2329
    :cond_12
    const-string v1, "CommonEngine"

    const-string v2, "doSwitchToCamcorderPreviewSync()- mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2353
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2354
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartCameraPreview()V

    .line 2356
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_15

    .line 2357
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartRecordDualPreview()V

    .line 2358
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 2359
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    .line 2360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetTrackingVisible()V

    goto/16 :goto_3
.end method

.method public doTakePictureAsync()V
    .locals 12

    .prologue
    const/16 v11, 0x17

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x400

    .line 5842
    const-string v3, "doTakePictureAsync"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5846
    const-string v3, "AXLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shot2Shot-TakePicture**StartU["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5849
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5850
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v9, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 5852
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 5853
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 5854
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v2

    .line 5855
    .local v2, "rotation":I
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTakePictureAsync - rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 5858
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 5859
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5862
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 5863
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_6

    .line 5865
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v11, :cond_2

    .line 5866
    const-string v3, "CommonEngine"

    const-string v4, "doTakePictureAsync : multi frame shot"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotStarted()V

    .line 5868
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->startMultiFrameShot()V

    .line 5871
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startBlinkShutterAnimation()V

    .line 5874
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-eq v3, v11, :cond_3

    .line 5879
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 5881
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 5882
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->acquireDVFSMax(I)V

    .line 5884
    :cond_4
    const-wide/16 v3, 0x400

    const-string v5, "TakePicture"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5885
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 5886
    const-wide/16 v3, 0x400

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5888
    const-wide/16 v3, 0x400

    const-string v5, "TakePicture Wait Callback"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5902
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_5

    .line 5903
    const-string v3, "CommonEngine"

    const-string v4, "[HDR] mNumOfSavedImageInHDR = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5904
    iput v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I

    .line 5905
    iput-boolean v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    .line 5908
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_6

    .line 5909
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v3

    if-nez v3, :cond_6

    .line 5910
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onSoundShotGetAudioByAutoMode()V

    .line 5915
    :cond_6
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 5916
    :goto_0
    return-void

    .line 5889
    :catch_0
    move-exception v1

    .line 5892
    .local v1, "rex":Ljava/lang/RuntimeException;
    const-string v3, "CommonEngine"

    const-string v4, "RuntimeException occured during doTakePictureAsync()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5893
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0x9

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5895
    .end local v1    # "rex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 5896
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "CommonEngine"

    const-string v4, "An unknown exception occured during doTakePictureAsync()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5897
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final doTakeVideoSnapShotAsync()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-wide/16 v7, 0x400

    .line 7123
    const-string v3, "doTakeVideoSnapShotAsync"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7124
    const-string v3, "CommonEngine"

    const-string v4, "doTakeVideoSnapShotAsync"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7126
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_1

    .line 7127
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 7128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v2

    .line 7130
    .local v2, "rotation":I
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOrientationAndSendItToFramework - rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7131
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 7133
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_CamcoderForceShutterSoundDuringSnapShot"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7134
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 7138
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 7139
    const-wide/16 v3, 0x400

    const-string v5, "TakePicture as Video SnapShot"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7140
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/sec/android/app/camera/CommonEngine$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CommonEngine$10;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 7262
    const-wide/16 v3, 0x400

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7264
    const-wide/16 v3, 0x400

    const-string v5, "TakePicture as Video SnapShot Wait Callback"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7278
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_1

    .line 7279
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->startPostRecordingSnapAnimation()V

    .line 7283
    .end local v2    # "rotation":I
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 7284
    :goto_0
    return-void

    .line 7265
    .restart local v2    # "rotation":I
    :catch_0
    move-exception v1

    .line 7268
    .local v1, "rex":Ljava/lang/RuntimeException;
    const-string v3, "CommonEngine"

    const-string v4, "RuntimeException occured during doTakeVideoSnapShotAsync()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7269
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0x9

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 7271
    .end local v1    # "rex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 7272
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "CommonEngine"

    const-string v4, "An unknown exception occured during doTakeVideoSnapShotAsync()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7273
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/16 v4, -0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final doWaitAsync(I)V
    .locals 4
    .param p1, "milisec"    # I

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0x8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2495
    return-void
.end method

.method public enablePreviewCallbackManager()V
    .locals 6

    .prologue
    const/16 v5, 0x1ac

    const/16 v4, 0x140

    const/4 v3, 0x1

    const/16 v2, 0xf0

    .line 8756
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 8757
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8758
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/CommonEngine;->setUsePreviewCallback(ZI)V

    .line 8759
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8760
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    .line 8767
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8768
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0, v5, v2, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    .line 8774
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 8775
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8776
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8777
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->setPreviewBuffer(Lcom/sec/android/seccamera/SecCamera;)V

    .line 8780
    :cond_1
    return-void

    .line 8761
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8762
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    goto :goto_0

    .line 8764
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    goto :goto_0

    .line 8769
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8770
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0, v2, v2, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    goto :goto_1

    .line 8772
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    goto :goto_1
.end method

.method public enablePreviewCallbackManagerPanorama360()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8785
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    .line 8786
    .local v1, "pw":I
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 8787
    .local v0, "ph":I
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 8788
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8789
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    .line 8793
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8794
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    .line 8798
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_1

    .line 8799
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8800
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    .line 8801
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->setPreviewBuffer(Lcom/sec/android/seccamera/SecCamera;)V

    .line 8803
    :cond_1
    return-void

    .line 8791
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackSize(II)V

    goto :goto_0

    .line 8796
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/android/app/camera/CommonEngine$SecCameraPreviewCallbackManager;->initBuffers(III)V

    goto :goto_1
.end method

.method public enableSystemSoundEffect()V
    .locals 3

    .prologue
    .line 2499
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 2500
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2501
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2505
    .end local v0    # "mAudioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method protected findBestFpsRange(Lcom/sec/android/seccamera/SecCamera$Parameters;II)[I
    .locals 10
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;
    .param p2, "requestedMinFps"    # I
    .param p3, "requestedMaxFps"    # I

    .prologue
    .line 2518
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requsted fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/4 v1, 0x0

    .line 2521
    .local v1, "MIN_IDX":I
    const/4 v0, 0x1

    .line 2522
    .local v0, "MAX_IDX":I
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 2523
    .local v3, "fpsRange":[I
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 2525
    .local v2, "bestFpsRange":[I
    invoke-virtual {p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 2527
    .local v4, "fpsRangeList":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v4, :cond_0

    .line 2528
    const-string v7, "CommonEngine"

    const-string v8, "supported preview fps range is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const/4 v3, 0x0

    .line 2579
    .end local v3    # "fpsRange":[I
    :goto_0
    return-object v3

    .line 2532
    .restart local v3    # "fpsRange":[I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    .line 2533
    const/4 v8, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2534
    const/4 v8, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2536
    const/4 v7, 0x1

    aget v7, v3, v7

    if-ne p3, v7, :cond_6

    .line 2537
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_1

    .line 2539
    move-object v2, v3

    .line 2540
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2542
    :cond_1
    if-nez v5, :cond_2

    .line 2544
    move-object v2, v3

    .line 2545
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2549
    :cond_2
    move v6, v5

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_5

    .line 2550
    const/4 v8, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2551
    const/4 v8, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 2553
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_3

    .line 2555
    move-object v2, v3

    .line 2556
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2558
    :cond_3
    const/4 v7, 0x0

    aget v7, v3, v7

    if-le p2, v7, :cond_4

    .line 2559
    move-object v2, v3

    .line 2560
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2549
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2565
    :cond_5
    move-object v2, v3

    .line 2566
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2569
    .end local v6    # "j":I
    :cond_6
    const/4 v7, 0x1

    aget v7, v3, v7

    if-le p3, v7, :cond_7

    .line 2570
    move-object v2, v3

    .line 2571
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2532
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 2577
    :cond_8
    move-object v2, v3

    .line 2578
    const-string v7, "CommonEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;
    .locals 15
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/seccamera/SecCamera$Size;",
            ">;II)",
            "Lcom/sec/android/seccamera/SecCamera$Size;"
        }
    .end annotation

    .prologue
    .line 2583
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez p1, :cond_0

    .line 2584
    const/4 v9, 0x0

    .line 2608
    :goto_0
    return-object v9

    .line 2586
    :cond_0
    const/4 v9, 0x0

    .line 2587
    .local v9, "thumbnailSize":Lcom/sec/android/seccamera/SecCamera$Size;
    const-wide v4, 0x3f847ae147ae147bL

    .line 2588
    .local v4, "minRatioDiff":D
    const v3, 0x186a0

    .line 2589
    .local v3, "minGap":I
    const/4 v2, 0x0

    .line 2591
    .local v2, "index":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2592
    .local v8, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v11, v8, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    int-to-double v11, v11

    iget v13, v8, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    int-to-double v13, v13

    div-double v6, v11, v13

    .line 2595
    .local v6, "ratio":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2597
    move/from16 v0, p2

    int-to-double v11, v0

    move/from16 v0, p3

    int-to-double v13, v0

    div-double/2addr v11, v13

    sub-double v11, v6, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v4

    if-gtz v11, :cond_1

    .line 2600
    iget v11, v8, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    sub-int v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 2601
    .local v10, "widthGap":I
    if-le v3, v10, :cond_1

    .line 2602
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2603
    move v3, v10

    goto :goto_1

    .line 2606
    .end local v6    # "ratio":D
    .end local v8    # "size":Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v10    # "widthGap":I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "thumbnailSize":Lcom/sec/android/seccamera/SecCamera$Size;
    check-cast v9, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 2607
    .restart local v9    # "thumbnailSize":Lcom/sec/android/seccamera/SecCamera$Size;
    const-string v11, "CommonEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setJPEGThumbnailSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAutoShotNightMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6225
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_1

    .line 6226
    const-string v1, "CommonEngine"

    const-string v2, "getAutoShotNightMode()- mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6240
    :cond_0
    :goto_0
    return v0

    .line 6231
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 6232
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 6233
    goto :goto_0

    :cond_2
    move v0, v1

    .line 6236
    goto :goto_0
.end method

.method public getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;
    .locals 3

    .prologue
    .line 7332
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 7333
    const-string v0, "CommonEngine"

    const-string v1, "getCamcorderInnerProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7334
    const/4 v0, 0x0

    .line 7341
    :goto_0
    return-object v0

    .line 7337
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    if-eqz v0, :cond_1

    .line 7338
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0

    .line 7340
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 7341
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mInnerProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 2

    .prologue
    .line 7346
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 7347
    const-string v0, "CommonEngine"

    const-string v1, "getCamcorderProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7348
    const/4 v0, 0x0

    .line 7357
    :goto_0
    return-object v0

    .line 7351
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    .line 7352
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0

    .line 7354
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getCamcorderProfileQualityLevel(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 7357
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method public getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    return-object v0
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7361
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 2620
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    return v0
.end method

.method public getDualHandlerOffset()I
    .locals 1

    .prologue
    .line 8018
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v0, :cond_0

    .line 8019
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 8043
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf0

    goto :goto_0
.end method

.method public getFocalLength()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9034
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 9036
    .local v1, "focallength":[I
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "focallength-value-numerator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 9037
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "focallength-value-denominator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9043
    :goto_0
    return-object v1

    .line 9038
    :catch_0
    move-exception v0

    .line 9039
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x1a4

    aput v2, v1, v5

    .line 9040
    const/16 v2, 0x64

    aput v2, v1, v6

    .line 9041
    const-string v2, "CommonEngine"

    const-string v3, "unable to get FocalLength"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 2624
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    return v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const-wide/16 v9, 0x0

    .line 2628
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v8, :cond_1

    .line 2668
    :cond_0
    :goto_0
    return-object v3

    .line 2632
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->removeGpsData()V

    .line 2635
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v8

    if-ne v8, v0, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 2638
    .local v3, "loc":Landroid/location/Location;
    :cond_2
    if-eqz v3, :cond_0

    .line 2639
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2640
    .local v1, "lat":D
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2641
    .local v4, "lon":D
    cmpl-double v8, v1, v9

    if-nez v8, :cond_3

    cmpl-double v8, v4, v9

    if-eqz v8, :cond_4

    .line 2644
    .local v0, "hasLatLon":Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 2645
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLatitude(D)V

    .line 2646
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLongitude(D)V

    .line 2647
    invoke-virtual {v3}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2648
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    .line 2655
    :goto_2
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 2658
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2659
    .local v6, "utcTimeSeconds":J
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    goto :goto_0

    .line 2641
    .end local v0    # "hasLatLon":Z
    .end local v6    # "utcTimeSeconds":J
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 2653
    .restart local v0    # "hasLatLon":Z
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 2662
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 2672
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mGroupId:I

    return v0
.end method

.method public getIsCalledSwitchToCameraSync()Z
    .locals 1

    .prologue
    .line 2226
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsCalledSwitchToCameraSync:Z

    return v0
.end method

.method public getLandscapeActive()Z
    .locals 1

    .prologue
    .line 2676
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLandscapeActive:Z

    return v0
.end method

.method public getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object v0
.end method

.method public getLastCapturedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLastDateTaken()J
    .locals 2

    .prologue
    .line 2692
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mDateTaken:J

    return-wide v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 2696
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    return v0
.end method

.method public getLightPipShotCount()I
    .locals 1

    .prologue
    .line 4289
    sget v0, Lcom/sec/android/app/camera/CommonEngine;->mLightPipShotCount:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 2700
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->maxFileSize:J

    return-wide v0
.end method

.method public getMaxaperture()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9047
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 9049
    .local v1, "maxaperture":[I
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "maxaperture-value-numerator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 9050
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "maxaperture-value-denominator"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9057
    :goto_0
    return-object v1

    .line 9051
    :catch_0
    move-exception v0

    .line 9052
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0xe3

    aput v2, v1, v5

    .line 9053
    const/16 v2, 0x64

    aput v2, v1, v6

    .line 9054
    const-string v2, "CommonEngine"

    const-string v3, "unable to get Maxaperture"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOrientationOnTake()I
    .locals 1

    .prologue
    .line 2704
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationOnTake:I

    return v0
.end method

.method public getOriginalViewFinderHeight()I
    .locals 1

    .prologue
    .line 5943
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    return v0
.end method

.method public getOriginalViewFinderWidth()I
    .locals 1

    .prologue
    .line 5939
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    return v0
.end method

.method public getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 5960
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 5956
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 5952
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    return v0
.end method

.method public getRemainTime()I
    .locals 6

    .prologue
    .line 2708
    const/4 v1, 0x0

    .line 2709
    .local v1, "nBitrate":I
    const/4 v3, 0x0

    .line 2710
    .local v3, "nVideoBitrate":I
    const/4 v0, 0x0

    .line 2711
    .local v0, "nAudioBitrate":I
    const/4 v2, 0x0

    .line 2713
    .local v2, "nRemainTime":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->loadInnerProfile()V

    .line 2715
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getVideoBitRateFromProfile()I

    move-result v3

    .line 2718
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2719
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getAudioBitRateFromProfile()I

    move-result v0

    .line 2722
    :cond_0
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 2723
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 2725
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 2727
    return v2
.end method

.method public getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;
    .locals 1

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    return-object v0
.end method

.method public getSavedImageRichtoneCompleted()Z
    .locals 1

    .prologue
    .line 2739
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z

    return v0
.end method

.method public getSupportedDRC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7387
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7388
    :cond_0
    const-string v0, "off"

    .line 7403
    :goto_0
    return-object v0

    .line 7389
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7390
    const-string v0, "off"

    goto :goto_0

    .line 7391
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isSwitchToCamcorderPreview()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7392
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSmoothMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7393
    :cond_3
    const-string v0, "off"

    goto :goto_0

    .line 7395
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 7396
    const-string v0, "off"

    goto :goto_0

    .line 7398
    :cond_5
    const-string v0, "on"

    goto :goto_0

    .line 7399
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_7

    .line 7400
    const-string v0, "on"

    goto :goto_0

    .line 7403
    :cond_7
    const-string v0, "off"

    goto :goto_0
.end method

.method public getSupportedPhaseAF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7427
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7428
    :cond_0
    const-string v0, "off"

    .line 7437
    :goto_0
    return-object v0

    .line 7429
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isSwitchToCamcorderPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7430
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSmoothMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7431
    :cond_2
    const-string v0, "off"

    goto :goto_0

    .line 7433
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7434
    const-string v0, "off"

    goto :goto_0

    .line 7437
    :cond_4
    const-string v0, "on"

    goto :goto_0
.end method

.method public getSupportedRtHDR()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7407
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7408
    :cond_0
    const-string v0, "off"

    .line 7423
    :goto_0
    return-object v0

    .line 7409
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7410
    const-string v0, "off"

    goto :goto_0

    .line 7411
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isSwitchToCamcorderPreview()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7412
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSmoothMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7413
    :cond_3
    const-string v0, "off"

    goto :goto_0

    .line 7415
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v0

    if-nez v0, :cond_6

    .line 7416
    :cond_5
    const-string v0, "off"

    goto :goto_0

    .line 7418
    :cond_6
    const-string v0, "on"

    goto :goto_0

    .line 7419
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 7420
    const-string v0, "on"

    goto :goto_0

    .line 7423
    :cond_8
    const-string v0, "off"

    goto :goto_0
.end method

.method public getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    return-object v0
.end method

.method public getSurpportedVideoSize(II)Z
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 7373
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 7374
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v2, :cond_1

    .line 7375
    const-string v3, "CommonEngine"

    const-string v4, "supported video sizes is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7376
    const/4 v3, 0x0

    .line 7383
    :cond_0
    :goto_0
    return v3

    .line 7378
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/seccamera/SecCamera$Size;

    .line 7379
    .local v1, "size":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    if-ne v4, p1, :cond_2

    iget v4, v1, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    if-ne v4, p2, :cond_2

    goto :goto_0
.end method

.method public getSystemSoundEffect()Z
    .locals 1

    .prologue
    .line 2743
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->isSystemSoundEffectEnabled:Z

    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2748
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 2755
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9061
    const/4 v1, 0x0

    .line 9063
    .local v1, "uniqueID":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    const-string v3, "imageuniqueid-value"

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9064
    if-nez v1, :cond_0

    .line 9065
    const-string v2, "CommonEngine"

    const-string v3, "unable to get UniqueID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9071
    :cond_0
    :goto_0
    return-object v1

    .line 9067
    :catch_0
    move-exception v0

    .line 9068
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 9069
    const-string v2, "CommonEngine"

    const-string v3, "unable to get UniqueID(Exception)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 7464
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    .prologue
    .line 7468
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInMiliSecond()J
    .locals 2

    .prologue
    .line 7476
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .locals 4

    .prologue
    .line 7472
    iget-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected handleBatteryOverheatDuringRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2760
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2761
    const-string v0, "CommonEngine"

    const-string v1, "handleBatteryOverheat : Camera will be terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2764
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 2765
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 2769
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 2770
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 2771
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 2774
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    .line 2776
    :cond_1
    return-void

    .line 2767
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleDoubleTap(IIZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "touchedOnFace"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2779
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    if-eqz v0, :cond_1

    .line 2780
    const-string v0, "CommonEngine"

    const-string v1, "Stop Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 2782
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 2783
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetZoomValue()V

    .line 2797
    :cond_0
    :goto_0
    return-void

    .line 2786
    :cond_1
    if-eqz p3, :cond_0

    .line 2787
    const-string v0, "CommonEngine"

    const-string v1, "Start Face Zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideAllFaceRect()V

    .line 2789
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->startFaceZoom(II)V

    .line 2790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 2791
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetZoomValue()V

    .line 2793
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    goto :goto_0
.end method

.method public handleShutterEvent()V
    .locals 2

    .prologue
    .line 2800
    const-string v0, "CommonEngine"

    const-string v1, "handleShutterEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterEvent()V

    .line 2802
    return-void
.end method

.method public handleShutterEventForBurstShot()V
    .locals 2

    .prologue
    .line 2805
    const-string v0, "CommonEngine"

    const-string v1, "handleShutterEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterEventForBurstShot()V

    .line 2807
    return-void
.end method

.method public handleShutterReleaseEvent()V
    .locals 2

    .prologue
    .line 2810
    const-string v0, "CommonEngine"

    const-string v1, "handleShutterReleaseEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterReleaseEvent()V

    .line 2812
    return-void
.end method

.method public handleTimer()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2815
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2827
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2817
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 2820
    :pswitch_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 2823
    :pswitch_2
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 2815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleVideoRecordingStarted()V
    .locals 2

    .prologue
    .line 7480
    const-string v0, "CommonEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7481
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStart()V

    .line 7482
    return-void
.end method

.method public imageStoringCompleted()V
    .locals 2

    .prologue
    .line 5965
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 5966
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v0, :cond_2

    .line 5967
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5968
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showStoryShotAddVoiceMenu(Ljava/lang/String;)V

    .line 5978
    :cond_0
    :goto_0
    return-void

    .line 5969
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 5970
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onStoryshotSaveAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 5973
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V

    goto :goto_0

    .line 5976
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted()V

    goto :goto_0
.end method

.method public initialize()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 2831
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 2834
    .local v0, "camSettings":Lcom/sec/android/app/camera/CameraSettings;
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v4, :cond_1

    .line 3023
    :cond_0
    :goto_0
    return-void

    .line 2838
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_2

    .line 2839
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendOrientaionInfotoHAL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->sendOrientaionInfotoHAL(I)V

    .line 2844
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2845
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x9

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x12

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2851
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2854
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isSquarePreviewAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2866
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x440

    const/16 v6, 0x440

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 2870
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 2871
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 2887
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2889
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xd

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2891
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2898
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "video_recording_gamma"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "slow_ae"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2901
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "sw-vdis"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2903
    const/4 v3, 0x0

    .line 2904
    .local v3, "pictureWidth":I
    const/4 v2, 0x0

    .line 2905
    .local v2, "pictureHeight":I
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mDualRecordingResolution:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2949
    const/16 v3, 0xcc0

    .line 2950
    const/16 v2, 0x990

    .line 2953
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v3, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 3003
    .end local v2    # "pictureHeight":I
    .end local v3    # "pictureWidth":I
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->isAutoExposureLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mAeLockSupported:Z

    .line 3004
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->isAutoWhiteBalanceLockSupported(Lcom/sec/android/seccamera/SecCamera$Parameters;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mAwbLockSupported:Z

    .line 3006
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3007
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 3009
    :cond_6
    const/16 v4, 0x13

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3011
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3012
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2976x2976"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 3022
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    goto/16 :goto_0

    .line 2873
    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v1

    .line 2874
    .local v1, "focus":I
    if-nez v1, :cond_9

    .line 2875
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 2876
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result v1

    .line 2878
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2909
    .end local v1    # "focus":I
    .restart local v2    # "pictureHeight":I
    .restart local v3    # "pictureWidth":I
    :sswitch_0
    const/16 v3, 0xcc0

    .line 2910
    const/16 v2, 0x72c

    .line 2911
    goto/16 :goto_2

    .line 2913
    :sswitch_1
    const/16 v3, 0x780

    .line 2914
    const/16 v2, 0x438

    .line 2915
    goto/16 :goto_2

    .line 2917
    :sswitch_2
    const/16 v3, 0xcc0

    .line 2918
    const/16 v2, 0x990

    .line 2919
    goto/16 :goto_2

    .line 2921
    :sswitch_3
    const/16 v3, 0xcc0

    .line 2922
    const/16 v2, 0x72c

    .line 2923
    goto/16 :goto_2

    .line 2925
    :sswitch_4
    const/16 v3, 0xf90

    .line 2926
    const/16 v2, 0xbac

    .line 2927
    goto/16 :goto_2

    .line 2929
    :sswitch_5
    const/16 v3, 0xcc0

    .line 2930
    const/16 v2, 0x72c

    .line 2931
    goto/16 :goto_2

    .line 2933
    :sswitch_6
    const/16 v3, 0xcc0

    .line 2934
    const/16 v2, 0x990

    .line 2935
    goto/16 :goto_2

    .line 2937
    :sswitch_7
    const/16 v3, 0x1020

    .line 2938
    const/16 v2, 0xac0

    .line 2939
    goto/16 :goto_2

    .line 2941
    :sswitch_8
    const/16 v3, 0xcc0

    .line 2942
    const/16 v2, 0x990

    .line 2943
    goto/16 :goto_2

    .line 2945
    :sswitch_9
    const/16 v3, 0xcc0

    .line 2946
    const/16 v2, 0x990

    .line 2947
    goto/16 :goto_2

    .line 2956
    .end local v2    # "pictureHeight":I
    .end local v3    # "pictureWidth":I
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2960
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2964
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isSquarePreviewAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2965
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x430

    const/16 v6, 0x430

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 2967
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v5, 0x9

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "video_recording_gamma"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "slow_ae"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setVideoStabilization(Z)V

    .line 2975
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "sw-vdis"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setFrontSensorMirror(I)V

    goto/16 :goto_3

    .line 2905
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xd -> :sswitch_0
        0xe -> :sswitch_3
        0xf -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x15 -> :sswitch_0
        0x1f -> :sswitch_2
        0x22 -> :sswitch_4
        0x28 -> :sswitch_0
        0x29 -> :sswitch_7
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method public isAeAwbLocked()Z
    .locals 1

    .prologue
    .line 3841
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    return v0
.end method

.method public isAutoFocusing()Z
    .locals 2

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3027
    const/4 v0, 0x1

    .line 3029
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoShotLowLight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6041
    iget v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    if-ne v1, v0, :cond_0

    .line 6044
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstCaptureStarting()Z
    .locals 2

    .prologue
    .line 5989
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 5991
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5992
    :cond_1
    const/4 v0, 0x1

    .line 5995
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 5981
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5983
    :cond_0
    const/4 v0, 0x1

    .line 5985
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingParameters()Z
    .locals 2

    .prologue
    .line 3099
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3100
    :cond_0
    const/4 v0, 0x1

    .line 3101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinousAFStopped()Z
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsContinousAFStopped:Z

    return v0
.end method

.method public isCurrentState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3033
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3034
    const/4 v0, 0x1

    .line 3035
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualCaptureModeAsyncFirstCapturing()Z
    .locals 1

    .prologue
    .line 6014
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6015
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->isDualCaptureModeAsyncFirstCapturing()Z

    move-result v0

    .line 6017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaceRectHidden()Z
    .locals 1

    .prologue
    .line 3970
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bFaceRectHidden:Z

    return v0
.end method

.method public isFaceZoomed()Z
    .locals 1

    .prologue
    .line 5999
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    return v0
.end method

.method public isFileExists()Z
    .locals 3

    .prologue
    .line 8886
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCheckFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8887
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8888
    const-string v1, "CommonEngine"

    const-string v2, "User Firmware file exists"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8889
    const/4 v1, 0x1

    .line 8891
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFinishOneShotPreviewCallback()Z
    .locals 1

    .prologue
    .line 6003
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFinishOneShotPreviewCallback:Z

    return v0
.end method

.method public isHalfShutter()Z
    .locals 1

    .prologue
    .line 3978
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    return v0
.end method

.method public isIspVersionHigher()Z
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v3, 0x0

    .line 8978
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIspVersionHigher() - FW versionIsp ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FW versionPhone ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8980
    const/4 v1, 0x0

    .line 8984
    .local v1, "versionIspSubstart":Ljava/lang/String;
    const/4 v0, 0x0

    .line 8985
    .local v0, "versionIspSubend":Ljava/lang/String;
    const/4 v2, 0x0

    .line 8988
    .local v2, "versionPhoneSubend":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8992
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8993
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 9001
    const-string v4, "[0-9|a-z|A-Z|]*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9002
    const/4 v2, 0x0

    .line 9004
    :cond_0
    const-string v4, "[0-9|a-z|A-Z|]*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9005
    const/4 v0, 0x0

    .line 9015
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 9016
    const-string v4, "S13"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9017
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 9018
    const-string v4, "CommonEngine"

    const-string v5, "11111 versionIspSubend >=  not update "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9028
    :cond_2
    :goto_0
    return v3

    .line 9021
    :cond_3
    const-string v3, "CommonEngine"

    const-string v4, "11111 versionIspSubend < - update "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9022
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 7605
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3039
    const/4 v7, 0x0

    .line 3040
    .local v7, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3041
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3042
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3043
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 3044
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3045
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3046
    .local v8, "volumeName":Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3047
    :cond_0
    const/4 v7, 0x1

    .line 3049
    .end local v8    # "volumeName":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3051
    :cond_2
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanning..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    return v7
.end method

.method public isMediarecorderExist()Z
    .locals 1

    .prologue
    .line 9077
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 9078
    const/4 v0, 0x1

    .line 9080
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8867
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isFileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8868
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->loadVersionsFromCheckFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8875
    :cond_0
    :goto_0
    return v0

    .line 8871
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isIspVersionHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8872
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOverHeated()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8879
    const-string v2, "sys.siop.curlevel"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8880
    .local v0, "level":I
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverHeated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8882
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 6007
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6008
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->isPanoramaCapturing()Z

    move-result v0

    .line 6010
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepareRecording()Z
    .locals 2

    .prologue
    .line 7623
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7624
    :cond_0
    const/4 v0, 0x1

    .line 7626
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 3061
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3062
    const/4 v0, 0x1

    .line 3064
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecorderStarting()Z
    .locals 2

    .prologue
    .line 7630
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7632
    :cond_0
    const/4 v0, 0x1

    .line 7634
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecorderStopping()Z
    .locals 2

    .prologue
    .line 7648
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7649
    const/4 v0, 0x1

    .line 7651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7638
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7644
    :cond_0
    :goto_0
    return v0

    .line 7641
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7644
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingHDR()Z
    .locals 1

    .prologue
    .line 7655
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bRecordingHDR:Z

    return v0
.end method

.method public isSingleShotBurst()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6033
    iget v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    if-ne v1, v0, :cond_0

    .line 6036
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmileDetecting()Z
    .locals 2

    .prologue
    .line 6049
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6050
    const/4 v0, 0x1

    .line 6052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartingEngine()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3068
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3071
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStartingPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 3075
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3081
    :cond_0
    :goto_0
    return v0

    .line 3078
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3081
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopPreviewPending()Z
    .locals 2

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3086
    const/4 v0, 0x1

    .line 3088
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchToCamcorderPreview()Z
    .locals 2

    .prologue
    .line 7609
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7610
    const/4 v0, 0x1

    .line 7612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchToCameraPreview()Z
    .locals 2

    .prologue
    .line 7616
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7617
    const/4 v0, 0x1

    .line 7619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 2

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3093
    const/4 v0, 0x1

    .line 3095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 3105
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 1

    .prologue
    .line 8291
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public loadVersionsFromCheckFile()Z
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/4 v8, 0x0

    .line 8895
    const/4 v4, 0x0

    .line 8896
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 8897
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 8903
    .local v6, "fwInfo":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->mCheckFileName:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 8904
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 8910
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 8912
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 8913
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 8928
    if-nez v6, :cond_2

    .line 8929
    :try_start_3
    const-string v9, "CommonEngine"

    const-string v10, "loadVersionsFromCheckFile() - can not get the FW info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 8957
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_0
    :goto_0
    return v8

    .line 8905
    :catch_0
    move-exception v2

    .line 8906
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 8914
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 8915
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 8917
    if-eqz v4, :cond_1

    .line 8918
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 8919
    :cond_1
    if-eqz v0, :cond_0

    .line 8920
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 8921
    :catch_2
    move-exception v3

    .line 8922
    .local v3, "err":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 8953
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 8954
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8955
    const-string v9, "CommonEngine"

    const-string v10, "file reading error"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8933
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_2
    :try_start_8
    const-string v9, "CommonEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadVersionsFromCheckFile() - FW info["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8935
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, " "

    const/4 v10, 0x0

    invoke-direct {v7, v6, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8936
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 8937
    const-string v9, "CommonEngine"

    const-string v10, "invalid FW Info!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 8938
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 8941
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    .line 8942
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    .line 8945
    const-string v9, "CommonEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadVersionsFromCheckFile() , versionIsp length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " versionPhone length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8946
    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionIsp:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v12, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/camera/CommonEngine;->versionPhone:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v12, :cond_5

    .line 8947
    :cond_4
    const-string v9, "CommonEngine"

    const-string v10, "firmware version length is wrong. cannot read version data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 8948
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 8952
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_5
    const/4 v8, 0x1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 8953
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 8914
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 8905
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1
.end method

.method public lockAEAWB()V
    .locals 2

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3817
    :cond_0
    :goto_0
    return-void

    .line 3815
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 3816
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public lockAWB()V
    .locals 2

    .prologue
    .line 3827
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3831
    :cond_0
    :goto_0
    return-void

    .line 3829
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAWBLockParameter(Z)V

    .line 3830
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 8
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/16 v7, 0x170e

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/16 v4, 0x2f

    const/4 v3, 0x2

    .line 3109
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3112
    const-string v0, "CommonEngine"

    const-string v1, "capture in progress, setparameters are not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    :goto_0
    return-void

    .line 3116
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3242
    :cond_1
    :goto_1
    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 3251
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mFlashMode:I

    goto :goto_0

    .line 3126
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3133
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 3134
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3136
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3149
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 3150
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3154
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 3155
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->schedulesetSingleEffectSync(I)V

    goto :goto_1

    .line 3157
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 3161
    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetDualCaptureMode(I)V

    goto :goto_1

    .line 3164
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3168
    :sswitch_8
    const/16 v0, 0x27

    if-ne p2, v0, :cond_5

    .line 3169
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, v3, v5}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3170
    :cond_5
    const/16 v0, 0x28

    if-ne p2, v0, :cond_6

    .line 3171
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, v3, v6}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3172
    :cond_6
    const/16 v0, 0x2a

    if-ne p2, v0, :cond_7

    .line 3173
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v3, v1}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_1

    .line 3175
    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v3, v1}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3195
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setRichtonePictureMode(I)V

    goto/16 :goto_1

    .line 3198
    :sswitch_a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startReceivingLocationUpdates()V

    goto/16 :goto_1

    .line 3201
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopReceivingLocationUpdates()V

    goto/16 :goto_1

    .line 3205
    :sswitch_b
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetOnShutterSound(I)V

    goto/16 :goto_1

    .line 3210
    :sswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-eq v0, p2, :cond_9

    .line 3213
    const-string v0, "CommonEngine"

    const-string v1, "antishake need preview restart"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPreview()V

    .line 3215
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    .line 3216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    goto/16 :goto_1

    .line 3218
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_1

    .line 3222
    :sswitch_d
    if-ne p2, v3, :cond_a

    .line 3223
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v1

    invoke-direct {v0, p0, v7, v1}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3225
    :cond_a
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v7, v1}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3229
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3232
    :sswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/Camera;->handleWifiDisplayOnRVF(II)V

    goto/16 :goto_1

    .line 3235
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/Camera;->handleWifiDisplayOnRVF(II)V

    goto/16 :goto_1

    .line 3238
    :sswitch_11
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetFaceRetouchLevel(I)V

    goto/16 :goto_1

    .line 3244
    :sswitch_12
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mStorage:I

    goto/16 :goto_0

    .line 3247
    :sswitch_13
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mWhiteBalance:I

    goto/16 :goto_0

    .line 3116
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_8
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_3
        0x8 -> :sswitch_5
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_0
        0x12 -> :sswitch_3
        0x14 -> :sswitch_a
        0x15 -> :sswitch_b
        0x16 -> :sswitch_0
        0x22 -> :sswitch_9
        0x35 -> :sswitch_f
        0x3f -> :sswitch_0
        0x47 -> :sswitch_0
        0x51 -> :sswitch_0
        0x55 -> :sswitch_2
        0x58 -> :sswitch_6
        0x59 -> :sswitch_2
        0x63 -> :sswitch_10
        0x6c -> :sswitch_2
        0x6d -> :sswitch_11
        0x79 -> :sswitch_0
        0xbb8 -> :sswitch_d
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_7
        0xbbb -> :sswitch_0
        0xbbf -> :sswitch_c
        0xbc7 -> :sswitch_0
        0x170e -> :sswitch_e
    .end sparse-switch

    .line 3242
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_13
        0x16 -> :sswitch_12
        0x6c -> :sswitch_1
    .end sparse-switch
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    .line 7678
    const-string v0, "CommonEngine"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7680
    if-ne p2, v2, :cond_1

    .line 7681
    const-string v0, "CommonEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7683
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCancelVideoRecording()V

    .line 7684
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 7685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    .line 7686
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finishRecordingWithError()V

    .line 7695
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 7696
    :goto_0
    return-void

    .line 7687
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 7688
    const-string v0, "CommonEngine"

    const-string v1, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7689
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 7690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopVideoRecording()V

    .line 7691
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 7692
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleCamcorderRecordingStopSound()V

    goto :goto_0
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 6
    .param p1, "mr"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const v5, 0x7f0b000c

    const/16 v4, 0x2f

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 7699
    const/16 v0, 0x320

    if-ne p2, v0, :cond_6

    .line 7700
    const-string v0, "CommonEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7702
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    if-eqz v0, :cond_1

    .line 7703
    const-string v0, "CommonEngine"

    const-string v1, "onInfo - already stopping so returned."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7744
    :cond_0
    :goto_0
    return-void

    .line 7706
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->handleRecordingTimerElapsed()I

    .line 7708
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7709
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    goto :goto_0

    .line 7714
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 7715
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0, v5, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7721
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7722
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 7725
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_0

    .line 7716
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 7717
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0b000b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 7726
    :cond_6
    const/16 v0, 0x321

    if-ne p2, v0, :cond_8

    .line 7727
    const-string v0, "CommonEngine"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 7728
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7729
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 7730
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    .line 7731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 7733
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0, v5, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7734
    :cond_8
    const/16 v0, 0x384

    if-ne p2, v0, :cond_9

    .line 7735
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoFileLengthInByte:J

    goto/16 :goto_0

    .line 7736
    :cond_9
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    .line 7738
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 7739
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7740
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7741
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionTimescale()I

    move-result v0

    mul-int/2addr v0, p3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mVideoRecordingTimeInMiliSecond:J

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 3257
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v4, :cond_0

    .line 3258
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3261
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v2, :cond_2

    .line 3262
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3263
    .local v0, "holder":Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_1

    .line 3264
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetOriginalViewFinderSize()V

    .line 3267
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_3

    .line 3271
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3272
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3279
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    :cond_2
    :goto_1
    return-void

    .line 3275
    .restart local v0    # "holder":Landroid/view/SurfaceHolder;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3282
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    .line 3283
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3284
    .local v0, "holder":Landroid/view/SurfaceHolder;
    const-wide/16 v1, 0x400

    const-string v3, "Surface View"

    invoke-static {v1, v2, v3, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3285
    const/4 v1, 0x1

    const-string v2, "Surface View"

    invoke-static {v1, v2}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 3287
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreate**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    if-eqz v0, :cond_0

    .line 3289
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3290
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 3292
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3293
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->getOrientationFromtDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastOrientation:I

    .line 3295
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    :cond_1
    return-void
.end method

.method public onSoundShotAddSoundCompleted()V
    .locals 5

    .prologue
    .line 8961
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    if-eqz v1, :cond_0

    .line 8962
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 8965
    :cond_0
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB update : mLastCapturedFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8966
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/ImageSavingUtils;->updatePostSavingFile(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 8968
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 8969
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8970
    .local v0, "action":Landroid/content/Intent;
    const-string v1, "Path"

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8971
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 8973
    .end local v0    # "action":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public reduceContinuousFileSequence()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8279
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # operator-- for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$5010(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I

    .line 8280
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # getter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$5000(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 8281
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$5002(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I

    .line 8282
    :cond_0
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x400

    const/4 v2, 0x0

    .line 7897
    const-string v0, "releaseMediaRecorder"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7899
    const-string v0, "CommonEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7900
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_2

    .line 7901
    invoke-direct {p0}, Lcom/sec/android/app/camera/CommonEngine;->cleanupEmptyFile()V

    .line 7902
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7903
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->unregisterRecordingSurface(Lcom/sec/android/seccamera/SecCamera;)V

    .line 7905
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 7906
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 7907
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 7908
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 7909
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 7910
    iput-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mProfile:Landroid/media/CamcorderProfile;

    .line 7912
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_3

    .line 7913
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->lock()V

    .line 7916
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7917
    return-void
.end method

.method public removeHideFocusRectMessage()V
    .locals 2

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3395
    return-void
.end method

.method public renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p1, "tempFileName"    # Ljava/lang/String;

    .prologue
    .line 7931
    const-string v2, "CommonEngine"

    const-string v3, "renameOutputFile"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 7934
    const/16 v22, 0x0

    .line 8014
    :cond_0
    :goto_0
    return-object v22

    .line 7937
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v13

    .line 7938
    .local v13, "directory":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 7941
    .local v23, "tempFilePath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7942
    .local v18, "fromPix":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v15

    .line 7943
    .local v15, "fileSize":J
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7944
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not exsist.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7945
    const/16 v22, 0x0

    goto :goto_0

    .line 7948
    :cond_2
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    .line 7949
    .local v10, "calendar":Ljava/util/GregorianCalendar;
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 7950
    .local v24, "time":Landroid/text/format/Time;
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    .line 7951
    .local v25, "timezone":Ljava/util/TimeZone;
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7952
    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    .line 7955
    .local v11, "dateTaken":J
    invoke-static {v11, v12}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v20

    .line 7957
    .local v20, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 7958
    .local v17, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 7960
    .local v22, "targetName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 7962
    const/4 v9, 0x0

    .line 7963
    .local v9, "bMove":Z
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    .line 7965
    if-eqz v9, :cond_0

    .line 7966
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 7967
    .local v26, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7972
    const-string v2, "_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7973
    const-string v2, "datetaken"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7974
    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7975
    const-string v2, "orientation"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7976
    const-string v2, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7977
    const-string v2, "height"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7978
    const-string v2, "width"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7979
    const-string v2, "_size"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v19

    .line 7982
    .local v19, "loc":Landroid/location/Location;
    if-eqz v19, :cond_3

    .line 7983
    const-string v2, "latitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 7984
    const-string v2, "longitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 7986
    :cond_3
    const-string v2, "date_modified"

    const-wide/16 v3, 0x3e8

    div-long v3, v11, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7987
    const-string v2, "sef_file_type"

    const/16 v3, 0x830

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7989
    const/4 v6, 0x0

    .line 7991
    .local v6, "fileUri":Landroid/net/Uri;
    :try_start_0
    const-string v2, "CommonEngine"

    const-string v3, "db insert E"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 7993
    const-string v2, "CommonEngine"

    const-string v3, "db insert X"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 7994
    if-eqz v6, :cond_0

    .line 7995
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7996
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " </GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 7998
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 8000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeType()I

    move-result v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/camera/ContextProviderUtils;->getTakePhotoSet(Ljava/lang/String;IIILandroid/net/Uri;II)Landroid/os/Bundle;

    move-result-object v14

    .line 8003
    .local v14, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2, v6, v14}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 8008
    .end local v14    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v21

    .line 8009
    .local v21, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "CommonEngine"

    const-string v3, "Not enough space in database"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0192

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public resetContinuousFileSequence()V
    .locals 2

    .prologue
    .line 8275
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->access$5002(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I

    .line 8276
    return-void
.end method

.method public resetOriginalViewFinderSize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5947
    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 5948
    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 5949
    return-void
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    .prologue
    .line 6027
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    if-eqz v0, :cond_0

    .line 6028
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->resetPanoramaCapturing()V

    .line 6030
    :cond_0
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 12

    .prologue
    const/16 v11, 0x440

    const/16 v10, 0x430

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3398
    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPreviewSize()- WH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isSwitchToCamcorderPreview()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3512
    :goto_0
    return-void

    .line 3405
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v4, :cond_10

    .line 3406
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 3407
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-nez v1, :cond_1

    .line 3408
    const-string v4, "CommonEngine"

    const-string v5, "supported preview size is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3412
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3413
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "dualrecording-hint"

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 3424
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 3425
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v5

    invoke-static {v4, v1, v5, v6}, Lcom/sec/android/app/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    .line 3427
    .local v0, "previewsize":Lcom/sec/android/seccamera/SecCamera$Size;
    if-eqz v0, :cond_4

    .line 3428
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    .line 3429
    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    .line 3443
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_9

    .line 3444
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "1920x1080"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 3470
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    .line 3471
    const-string v4, "CommonEngine"

    const-string v5, "1:1 preview size is feature for samsung. So supported previewsize list doesn\'t have this size"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3473
    :cond_5
    iput v11, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    .line 3474
    iput v11, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    .line 3479
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 3483
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v3

    .line 3484
    .local v3, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_7

    .line 3485
    const/4 v2, 0x0

    .line 3486
    .local v2, "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    iget v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/camera/CommonEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v2

    .line 3487
    if-eqz v2, :cond_7

    .line 3488
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    iget v6, v2, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 3491
    .end local v2    # "thumbnaiSize":Lcom/sec/android/seccamera/SecCamera$Size;
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_f

    .line 3492
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 3493
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v5, 0x44f

    invoke-virtual {v4, v5, v8, v8}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 3495
    :cond_8
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3496
    const-string v4, "CommonEngine"

    const-string v5, "resetPreviewSize()- isCurrentState is INITIALIZING"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3446
    .end local v3    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 3447
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "1920x1080"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3449
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_b

    .line 3451
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "1440x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "1440x1080"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3453
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_c

    .line 3454
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    const-string v6, "800x450"

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3457
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_1

    .line 3476
    :cond_d
    iput v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewWidth:I

    .line 3477
    iput v10, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewHeight:I

    goto/16 :goto_2

    .line 3502
    .restart local v3    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_0

    .line 3504
    :cond_f
    const-string v4, "CommonEngine"

    const-string v5, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3508
    .end local v0    # "previewsize":Lcom/sec/android/seccamera/SecCamera$Size;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    .end local v3    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/seccamera/SecCamera$Size;>;"
    :cond_10
    const-string v4, "CommonEngine"

    const-string v5, "resetPreviewSize()- mParameters is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public resetToDefaultSettings()V
    .locals 2

    .prologue
    .line 3515
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPreview()V

    .line 3516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopEngine()V

    .line 3518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleResetSettings()V

    .line 3520
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartEngine()V

    .line 3521
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->schedulePostInit()V

    .line 3522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetAllParams()V

    .line 3523
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleChangeParameter(II)V

    .line 3525
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    .line 3526
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDualPreview()V

    .line 3527
    return-void
.end method

.method public final scheduleAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 3530
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->removeAFmessage()V

    .line 3533
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 3535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isStartingPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3536
    :cond_0
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoFocus is skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->clearFocusState()V

    .line 3538
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    .line 3559
    :cond_1
    :goto_0
    return-void

    .line 3542
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isBurstCaptureStarting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isGolfShotCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3546
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 3547
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoFocus - current focus mode is off"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3551
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3555
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 3556
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3558
    sput-boolean v2, Lcom/sec/android/app/camera/CommonEngine;->m_bRestartTouchAF:Z

    goto :goto_0
.end method

.method public scheduleAutoNight()V
    .locals 3

    .prologue
    .line 3647
    const-string v0, "CommonEngine"

    const-string v1, "scheduleAutoNight"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3649
    return-void
.end method

.method public scheduleCamcorderRecordingStartSound()V
    .locals 3

    .prologue
    .line 3662
    const-string v0, "CommonEngine"

    const-string v1, "scheduleCamcorderRecordingStartSound"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3664
    return-void
.end method

.method public scheduleCamcorderRecordingStopSound()V
    .locals 3

    .prologue
    .line 3680
    const-string v0, "CommonEngine"

    const-string v1, "scheduleCamcorderRecordingStopSound"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3682
    return-void
.end method

.method public scheduleCancelVideoRecording()V
    .locals 3

    .prologue
    .line 8047
    const-string v0, "CommonEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8049
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8050
    return-void
.end method

.method public final scheduleChangeParameter(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 3562
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleChangeParameter key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3564
    return-void
.end method

.method public final scheduleHideCoverCamera()V
    .locals 3

    .prologue
    .line 8184
    const-string v0, "CommonEngine"

    const-string v1, "scheduleHideCoverCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8185
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8186
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .locals 3

    .prologue
    .line 8053
    const-string v0, "CommonEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8055
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8056
    return-void
.end method

.method public final schedulePostInit()V
    .locals 3

    .prologue
    .line 3567
    const-string v0, "CommonEngine"

    const-string v1, "schedulePostInit"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3569
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 8059
    const-string v0, "CommonEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8061
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8062
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8064
    :cond_0
    return-void
.end method

.method public scheduleProcessBack()V
    .locals 3

    .prologue
    .line 3572
    const-string v0, "CommonEngine"

    const-string v1, "scheduleProcessBack"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3574
    return-void
.end method

.method public final scheduleResetSettings()V
    .locals 3

    .prologue
    .line 3577
    const-string v0, "CommonEngine"

    const-string v1, "scheduleResetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3579
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .locals 3

    .prologue
    .line 8067
    const-string v0, "CommonEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8069
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8070
    return-void
.end method

.method public final scheduleSetAllParams()V
    .locals 3

    .prologue
    .line 3582
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetAllParams"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3585
    return-void
.end method

.method public scheduleSetDualCaptureMode(I)V
    .locals 3
    .param p1, "isDualCaptureModeSync"    # I

    .prologue
    .line 8718
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleSetDualCaptureMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8719
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x34

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8720
    return-void
.end method

.method public final scheduleSetEffectOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 8735
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetEffectOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8736
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x31

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8737
    return-void
.end method

.method public scheduleSetFaceRetouchLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 6145
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleSetFaceRetouchLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6147
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x3a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6148
    return-void
.end method

.method public final scheduleSetMultipleParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 3593
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetMultipleParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3595
    return-void
.end method

.method public scheduleSetOnShutterSound(I)V
    .locals 4
    .param p1, "shuttersound"    # I

    .prologue
    const/16 v3, 0x2e

    .line 6184
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedulesetOnShutterSound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6185
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 6186
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6187
    return-void
.end method

.method public final scheduleSetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3588
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$CeSecCameraParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3590
    return-void
.end method

.method public final scheduleSetSingleEffect()V
    .locals 3

    .prologue
    .line 8097
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetSingleEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8098
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8099
    return-void
.end method

.method public final scheduleSetTrackingVisible()V
    .locals 3

    .prologue
    .line 8135
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSetTrackingVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8136
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x36

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8137
    return-void
.end method

.method public final scheduleShutterTimer(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 3598
    const-string v0, "CommonEngine"

    const-string v1, "scheduleShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3600
    return-void
.end method

.method public final scheduleStartActionShot()V
    .locals 3

    .prologue
    .line 6056
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6059
    return-void
.end method

.method public final scheduleStartBurstShot()V
    .locals 3

    .prologue
    .line 8194
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8195
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8196
    return-void
.end method

.method public scheduleStartDramaShot()V
    .locals 3

    .prologue
    .line 6103
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDramaShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6105
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6106
    return-void
.end method

.method public final scheduleStartDualCamera()V
    .locals 3

    .prologue
    .line 8161
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8162
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8163
    return-void
.end method

.method public final scheduleStartDualPreview()V
    .locals 3

    .prologue
    .line 8117
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartDualPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8118
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8119
    return-void
.end method

.method public final scheduleStartEngine()V
    .locals 3

    .prologue
    .line 3603
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3605
    return-void
.end method

.method public scheduleStartMagicShot()V
    .locals 3

    .prologue
    .line 6115
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartMagicShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6117
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x37

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6118
    return-void
.end method

.method public final scheduleStartPanorama()V
    .locals 3

    .prologue
    .line 6062
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6064
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6065
    return-void
.end method

.method public final scheduleStartPreview()V
    .locals 3

    .prologue
    .line 3608
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3610
    return-void
.end method

.method public final scheduleStartPreviewDummy()V
    .locals 3

    .prologue
    .line 3613
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3615
    return-void
.end method

.method public final scheduleStartRecordDualPreview()V
    .locals 3

    .prologue
    .line 8122
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartRecordDualPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8123
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8124
    return-void
.end method

.method public scheduleStartSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 6068
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6070
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6076
    :cond_0
    :goto_0
    return-void

    .line 6075
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public scheduleStartVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 8073
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8075
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8076
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8078
    :cond_0
    return-void
.end method

.method public final scheduleStopActionShot()V
    .locals 3

    .prologue
    .line 6079
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6082
    return-void
.end method

.method public final scheduleStopBurstShot()V
    .locals 3

    .prologue
    .line 8249
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->burstShotStartCompleted()V

    .line 8251
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8252
    return-void
.end method

.method public scheduleStopDramaShot()V
    .locals 3

    .prologue
    .line 6109
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopDramaShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6111
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6112
    return-void
.end method

.method public final scheduleStopDualCamera()V
    .locals 3

    .prologue
    .line 8179
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopDualCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8180
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x27

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8181
    return-void
.end method

.method public final scheduleStopEngine()V
    .locals 3

    .prologue
    .line 3618
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3620
    return-void
.end method

.method public scheduleStopMagicShot()V
    .locals 3

    .prologue
    .line 6121
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopMagicShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6124
    return-void
.end method

.method public final scheduleStopPanorama()V
    .locals 3

    .prologue
    .line 6085
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6087
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 6088
    return-void
.end method

.method public final scheduleStopPreview()V
    .locals 3

    .prologue
    .line 3623
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3629
    return-void
.end method

.method public final scheduleStopPreviewDummy()V
    .locals 3

    .prologue
    .line 3632
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopPreviewDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3634
    return-void
.end method

.method public scheduleStopSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 6091
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6093
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6100
    :goto_0
    return-void

    .line 6098
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6099
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public scheduleStopVideoRecording()V
    .locals 3

    .prologue
    .line 8081
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8083
    sget-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsRecordingThreadStopping:Z

    if-eqz v0, :cond_0

    .line 8084
    const-string v0, "CommonEngine"

    const-string v1, "scheduleStopVideoRecording - already stopping so returned."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8089
    :goto_0
    return-void

    .line 8088
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleSwitchCamera()V
    .locals 3

    .prologue
    .line 8092
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8093
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8094
    return-void
.end method

.method public final scheduleSwitchToCamcorderPreview()V
    .locals 3

    .prologue
    .line 3637
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSwitchToCamcorderPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3639
    return-void
.end method

.method public final scheduleSwitchToCameraPreview()V
    .locals 3

    .prologue
    .line 3642
    const-string v0, "CommonEngine"

    const-string v1, "scheduleSwitchToCameraPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3644
    return-void
.end method

.method public scheduleTakePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 3653
    const-string v0, "CommonEngine"

    const-string v1, "scheduleTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchDuplicateRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3655
    const-string v0, "CommonEngine"

    const-string v1, "scheduleTakePicture - Now capturing, retun capture request."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    :goto_0
    return-void

    .line 3658
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleWait(I)V
    .locals 3
    .param p1, "milisec"    # I

    .prologue
    .line 3700
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleWait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mili seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 3702
    return-void
.end method

.method public final schedulesetSingleEffectSync(I)V
    .locals 4
    .param p1, "modeid"    # I

    .prologue
    .line 8107
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x33

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3, p1}, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CommonEngine;II)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 8108
    return-void
.end method

.method protected searchLastImageContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 3705
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 3741
    :goto_0
    return-void

    .line 3709
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3710
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3712
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 3713
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3714
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3715
    .local v8, "idIndex":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3717
    .local v7, "dataIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 3718
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    .line 3719
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3720
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3722
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 3723
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3726
    .end local v7    # "dataIndex":I
    .end local v8    # "idIndex":I
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z

    if-eqz v0, :cond_4

    .line 3727
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_3

    .line 3728
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3731
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 3732
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3737
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3734
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto :goto_1

    .line 3739
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto/16 :goto_0
.end method

.method protected searchLastVideoContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 3745
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 3778
    :goto_0
    return-void

    .line 3749
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3750
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3752
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 3753
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3754
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3755
    .local v8, "idIndex":I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3757
    .local v7, "dataIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 3758
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 3759
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 3760
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3763
    .end local v7    # "dataIndex":I
    .end local v8    # "idIndex":I
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_3

    .line 3764
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 3765
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3768
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->removeMessages(I)V

    .line 3769
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3774
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3771
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_1

    .line 3776
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public sendHideFocusRectMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 3782
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3783
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3784
    return-void
.end method

.method public setAEAWBLockParameter(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    .line 3797
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAEAWBLockParameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3810
    :cond_0
    :goto_0
    return-void

    .line 3802
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAeLockSupported:Z

    if-eqz v0, :cond_2

    .line 3803
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAutoExposureLock(Z)V

    .line 3804
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    .line 3806
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 3807
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3808
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsAeAwbLocked:Z

    goto :goto_0
.end method

.method public setAWBLockParameter(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    .line 3787
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAWBLockParameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3794
    :cond_0
    :goto_0
    return-void

    .line 3791
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 3792
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto :goto_0
.end method

.method public setAutoLowLight(Z)V
    .locals 2
    .param p1, "night"    # Z

    .prologue
    .line 8820
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8821
    const-string v0, "CommonEngine"

    const-string v1, "setAutoLowLight is not used in cover mode"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8829
    :cond_0
    :goto_0
    return-void

    .line 8824
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 8825
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onAutoLowLightDetectionChanged(I)V

    .line 8827
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8828
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setAutoLowLight(Z)V

    goto :goto_0
.end method

.method public setAutoShotNight(Z)V
    .locals 5
    .param p1, "night"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6208
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 6222
    :cond_0
    :goto_0
    return-void

    .line 6211
    :cond_1
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoShotNight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6212
    if-eqz p1, :cond_2

    .line 6213
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6214
    iput v4, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    .line 6215
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 6221
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 6217
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6218
    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mAutoShotNight:I

    .line 6219
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    goto :goto_1
.end method

.method public setBurstShotStoring()V
    .locals 2

    .prologue
    .line 6127
    const-string v0, "CommonEngine"

    const-string v1, "setBurstShotStoring"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6129
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->setBurstShotStoring()V

    .line 6131
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation()V
    .locals 8

    .prologue
    .line 3854
    new-instance v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v2}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 3856
    .local v2, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    .line 3857
    .local v1, "id":I
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 3858
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    .line 3863
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 3864
    const/4 v4, 0x0

    .line 3866
    .local v4, "rotation":I
    const/4 v4, 0x1

    .line 3870
    const-string v5, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    const/4 v0, 0x0

    .line 3873
    .local v0, "degrees":I
    packed-switch v4, :pswitch_data_0

    .line 3888
    :goto_1
    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 3889
    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v3, v5, 0x168

    .line 3890
    .local v3, "result":I
    rsub-int v5, v3, 0x168

    rem-int/lit16 v3, v5, 0x168

    .line 3894
    :goto_2
    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    if-eq v5, v3, :cond_1

    .line 3896
    add-int/lit16 v5, v3, 0x168

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    sub-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    .line 3898
    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mDisplayOrientation:I

    invoke-virtual {v5, v6}, Lcom/sec/android/seccamera/SecCamera;->setDisplayOrientation(I)V

    .line 3900
    :cond_1
    const-string v5, "CommonEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientation degrees is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " info.orientation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    return-void

    .line 3859
    .end local v0    # "degrees":I
    .end local v3    # "result":I
    .end local v4    # "rotation":I
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 3860
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    goto/16 :goto_0

    .line 3875
    .restart local v0    # "degrees":I
    .restart local v4    # "rotation":I
    :pswitch_0
    const/4 v0, 0x0

    .line 3876
    goto :goto_1

    .line 3878
    :pswitch_1
    const/16 v0, 0x5a

    .line 3879
    goto :goto_1

    .line 3881
    :pswitch_2
    const/16 v0, 0xb4

    .line 3882
    goto :goto_1

    .line 3884
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 3892
    :cond_3
    iget v5, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v3, v5, 0x168

    .restart local v3    # "result":I
    goto :goto_2

    .line 3873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCompanionChipStatsControl()V
    .locals 0

    .prologue
    .line 3911
    return-void
.end method

.method public setDualEffectSync(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    .line 8570
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 8571
    const/16 v0, 0xc8

    .line 8572
    .local v0, "dualEffectBaseOffset":I
    const/4 v1, 0x2

    .line 8573
    .local v1, "mEffectID":I
    packed-switch p1, :pswitch_data_0

    .line 8611
    :goto_0
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDualEffectSync : mEffectID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8612
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setEffectMode(I)V

    .line 8613
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8614
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8615
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8616
    const-string v2, "CommonEngine"

    const-string v3, "setDualEffectSync : fail to load external filters"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8631
    .end local v0    # "dualEffectBaseOffset":I
    .end local v1    # "mEffectID":I
    :cond_0
    :goto_1
    return-void

    .line 8575
    .restart local v0    # "dualEffectBaseOffset":I
    .restart local v1    # "mEffectID":I
    :pswitch_0
    const/4 v1, 0x0

    .line 8576
    goto :goto_0

    .line 8578
    :pswitch_1
    const/4 v1, 0x1

    .line 8579
    goto :goto_0

    .line 8581
    :pswitch_2
    const/4 v1, 0x2

    .line 8582
    goto :goto_0

    .line 8584
    :pswitch_3
    const/4 v1, 0x3

    .line 8585
    goto :goto_0

    .line 8587
    :pswitch_4
    const/4 v1, 0x4

    .line 8588
    goto :goto_0

    .line 8590
    :pswitch_5
    const/4 v1, 0x5

    .line 8591
    goto :goto_0

    .line 8593
    :pswitch_6
    const/4 v1, 0x6

    .line 8594
    goto :goto_0

    .line 8596
    :pswitch_7
    const/4 v1, 0x7

    .line 8597
    goto :goto_0

    .line 8599
    :pswitch_8
    const/16 v1, 0x8

    .line 8600
    goto :goto_0

    .line 8602
    :pswitch_9
    const/16 v1, 0x9

    .line 8603
    goto :goto_0

    .line 8605
    :pswitch_a
    const/16 v1, 0xa

    .line 8606
    goto :goto_0

    .line 8608
    :pswitch_b
    const/16 v1, 0xc

    goto :goto_0

    .line 8620
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterForSet(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setEffect(Ljava/lang/String;)V

    goto :goto_1

    .line 8622
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setEffect(I)V

    .line 8623
    const/16 v2, 0x33

    if-ne p1, v2, :cond_0

    .line 8624
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isTrackingStart()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8625
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    goto :goto_1

    .line 8627
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    goto :goto_1

    .line 8573
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setDualTrackingCoordinate(Z)V
    .locals 3
    .param p1, "isDualTrackingCoordi"    # Z

    .prologue
    .line 8702
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualTrackingCoordinate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8703
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8704
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setDualTrackingCoordinate(Z)V

    .line 8705
    :cond_0
    return-void
.end method

.method public setDualTrackingMode(Z)V
    .locals 1
    .param p1, "isDualTrackingMode"    # Z

    .prologue
    .line 8708
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8709
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setDualTrackingMode(Z)V

    .line 8710
    :cond_0
    return-void
.end method

.method public setEffectLayerOrderSync(Z)V
    .locals 1
    .param p1, "isRearGoesBottom"    # Z

    .prologue
    .line 8713
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8714
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectLayerOrder(Z)V

    .line 8715
    :cond_0
    return-void
.end method

.method public setEffectVisibleForRecording(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 8729
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffectVisibleForRecording - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8730
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8731
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectVisibleForRecording(Z)V

    .line 8732
    :cond_0
    return-void
.end method

.method public setExternalFilter(Z)V
    .locals 1
    .param p1, "option"    # Z

    .prologue
    .line 8750
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8751
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setExternalEffect(Z)V

    .line 8753
    :cond_0
    return-void
.end method

.method public setFlashOff()V
    .locals 2

    .prologue
    .line 6422
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    .line 6423
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6424
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6425
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 6428
    :cond_0
    return-void
.end method

.method public setFocusModeAuto()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 3941
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3942
    const-string v0, "CommonEngine"

    const-string v1, "Ignore setFocusModeAuto"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    :goto_0
    return-void

    .line 3944
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3945
    :cond_1
    const-string v0, "CommonEngine"

    const-string v1, "Ignore setFocusModeAuto"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 3950
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public setFocusParameter(I)V
    .locals 4
    .param p1, "focus"    # I

    .prologue
    const/4 v3, 0x5

    .line 3914
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3938
    :cond_0
    :goto_0
    return-void

    .line 3919
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CommonEngine;->checkFocusMode(I)I

    move-result p1

    .line 3921
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3925
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3937
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0

    .line 3931
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3933
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFrontSensorMirror(I)V
    .locals 3
    .param p1, "flip"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3982
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    .line 3983
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setFrontSensorMirror(ZI)V

    .line 3984
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3985
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setEffectSaveAsFlipped(I)V

    .line 3988
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3983
    goto :goto_0
.end method

.method public setGolfShotFileString(Ljava/lang/String;)V
    .locals 0
    .param p1, "golfString"    # Ljava/lang/String;

    .prologue
    .line 9086
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mGolfShotFileName:Ljava/lang/String;

    .line 9087
    return-void
.end method

.method public setGroupID(I)V
    .locals 0
    .param p1, "groupId"    # I

    .prologue
    .line 3991
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mGroupId:I

    .line 3992
    return-void
.end method

.method public setHDMICableConnected(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3997
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHDMICableConnected. connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_1

    .line 4000
    const-string v2, "CommonEngine"

    const-string v3, "Recording is in progrss"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setHDMICableConnected(I)V

    .line 4011
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 4001
    goto :goto_0

    .line 4005
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v2, :cond_2

    .line 4006
    const-string v0, "CommonEngine"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4010
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v3, 0x461

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setHalfShutter(Z)V
    .locals 0
    .param p1, "halfShutter"    # Z

    .prologue
    .line 3974
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z

    .line 3975
    return-void
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .locals 3
    .param p1, "chkIsVideoCaptureIntent"    # Z

    .prologue
    .line 8285
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    .line 8286
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoCaptureIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8287
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public setLandscapeActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 4020
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLandscapeActive:Z

    .line 4021
    return-void
.end method

.method public setLastCapturedFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4032
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 4033
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4024
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 4025
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4028
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    .line 4029
    return-void
.end method

.method public setLightPipShotCount(I)V
    .locals 0
    .param p1, "bLightPipShotCount"    # I

    .prologue
    .line 4293
    sput p1, Lcom/sec/android/app/camera/CommonEngine;->mLightPipShotCount:I

    .line 4294
    return-void
.end method

.method public setLiveBeautyMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 6134
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDevice - setLiveBeautyMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6135
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 6136
    if-nez p1, :cond_1

    .line 6137
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->setBeautyEffect(Z)V

    .line 6142
    :cond_0
    :goto_0
    return-void

    .line 6138
    :cond_1
    if-ne p1, v3, :cond_0

    .line 6139
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setBeautyEffect(Z)V

    goto :goto_0
.end method

.method public setLowLightShot(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 6159
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDevice - setLowLightShot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6160
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6161
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setLowLightShot(I)V

    .line 6163
    :cond_0
    return-void
.end method

.method public final setOnFacePositionChangedListener(Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFacePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFacePositionChangedListener;

    .line 845
    return-void
.end method

.method public final setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    .line 855
    return-void
.end method

.method public final setOnGuidePositionChangedListener(Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnGuidePositionChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnGuidePositionChangedListener;

    .line 836
    return-void
.end method

.method public final setOnTimerEventListener(Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

    .prologue
    .line 4040
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CommonEngine$OnTimerEventListener;

    .line 4041
    return-void
.end method

.method public setOrientationAndSendItToFramework()V
    .locals 4

    .prologue
    .line 4044
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setOrientationOnTake(I)V

    .line 4045
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4046
    .local v0, "rotation":I
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientationAndSendItToFramework - rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 4048
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 4049
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 4051
    :cond_0
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 4054
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 4055
    new-instance v0, Lcom/sec/android/app/camera/CommonEngine$4;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CommonEngine$4;-><init>(Lcom/sec/android/app/camera/CommonEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 4083
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 4084
    return-void
.end method

.method protected setOrientationOnTake(I)V
    .locals 0
    .param p1, "orientationOnTake"    # I

    .prologue
    .line 4087
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mOrientationOnTake:I

    .line 4088
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 9097
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, p1}, Lcom/sec/android/seccamera/SecCamera;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9102
    :goto_0
    return-void

    .line 9098
    :catch_0
    move-exception v0

    .line 9100
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPanoramaLowResolutionData([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 8295
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaLowResolutionData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 8297
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 8298
    iput-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 8301
    :cond_0
    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 8302
    return-void
.end method

.method public setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    .prologue
    .line 4389
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mPreviewCallback:Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;

    .line 4390
    return-void
.end method

.method public setRichtonePictureMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setPictureMode(I)V

    .line 4017
    :cond_0
    return-void
.end method

.method public final setShutterSound()V
    .locals 2

    .prologue
    .line 5687
    const-string v0, "CommonEngine"

    const-string v1, "setShutterSound"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5689
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startShutterSound(Z)V

    .line 5692
    :goto_0
    return-void

    .line 5691
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startShutterSound(Z)V

    goto :goto_0
.end method

.method public setSingleEffectSync(I)V
    .locals 5
    .param p1, "effectId"    # I

    .prologue
    const/4 v4, 0x0

    .line 8534
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_0

    .line 8535
    const/16 v0, 0x190

    .line 8536
    .local v0, "singleEffectBaseOffset":I
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSingleEffectSync : effectId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8538
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 8540
    const-string v1, "CommonEngine"

    const-string v2, "setSingleEffectSync: not changing effect because the MediaRecorder is running"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8567
    .end local v0    # "singleEffectBaseOffset":I
    :cond_0
    :goto_0
    return-void

    .line 8544
    .restart local v0    # "singleEffectBaseOffset":I
    :cond_1
    if-nez p1, :cond_3

    .line 8545
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1, v4}, Lcom/sec/android/seccamera/SecCamera;->setEffectMode(I)V

    .line 8550
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8551
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8552
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isValidExternalId(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8553
    :cond_2
    const-string v1, "CommonEngine"

    const-string v2, "setSingleEffectSync : fail to load external filters"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 8554
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_0

    .line 8547
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffectMode(I)V

    goto :goto_1

    .line 8558
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterForSet(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffect(Ljava/lang/String;)V

    .line 8564
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffectSaveAsFlipped(I)V

    goto :goto_0

    .line 8560
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    add-int/lit16 v2, p1, 0x190

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setEffect(I)V

    goto :goto_2
.end method

.method public setSingleShotBurst(Z)V
    .locals 6
    .param p1, "burst"    # Z

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6190
    if-eqz p1, :cond_0

    .line 6191
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6192
    iput v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    .line 6194
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 6196
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6205
    :goto_0
    return-void

    .line 6198
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->setShootingMode(I)V

    .line 6199
    iput v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mSingleShotBurst:I

    .line 6200
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getQualityValue(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 6202
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 4107
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchAutoFocusActive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mTouchAutoFocusActive:Z

    .line 4113
    return-void
.end method

.method public setTouchFocusPosition(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x44fa0000

    const/high16 v10, 0x447a0000

    const/4 v9, 0x0

    .line 4116
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v6, :cond_1

    .line 4160
    :cond_0
    :goto_0
    return-void

    .line 4126
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4127
    .local v1, "focusWidth":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090054

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4129
    .local v0, "focusHeight":I
    iget v5, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 4130
    .local v5, "width":I
    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 4132
    .local v2, "height":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    if-nez v6, :cond_2

    .line 4133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    .line 4134
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    new-instance v7, Lcom/sec/android/seccamera/SecCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v12}, Lcom/sec/android/seccamera/SecCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4137
    :cond_2
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p1, v6

    sub-int v7, v5, v1

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/Util;->clamp(III)I

    move-result v3

    .line 4138
    .local v3, "left":I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    sub-int v7, v2, v0

    invoke-static {v6, v9, v7}, Lcom/sec/android/app/camera/Util;->clamp(III)I

    move-result v4

    .line 4140
    .local v4, "top":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 4141
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v7, v4

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 4142
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v3, v1

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 4143
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera$Area;

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v7, v4, v0

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 4153
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mTapArea:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4157
    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v7, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v6, v7}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 4159
    sput-boolean v12, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    goto/16 :goto_0
.end method

.method public setUsePreviewCallback(ZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "format"    # I

    .prologue
    .line 8815
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 8816
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->setUsePreviewCallback(ZI)V

    .line 8817
    :cond_0
    return-void
.end method

.method public smileDetectionCompleted()V
    .locals 2

    .prologue
    .line 6244
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6245
    return-void
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 3955
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3956
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startContinuousAF()V

    .line 3957
    :cond_0
    return-void
.end method

.method public startHideFaceRectTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 929
    return-void
.end method

.method public startResetTouchFocusTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 706
    return-void
.end method

.method public startTouchAutoFocus()V
    .locals 1

    .prologue
    .line 4172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 4173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    .line 4174
    return-void
.end method

.method public startingPreviewCompleted()V
    .locals 1

    .prologue
    .line 4163
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onStartingPreviewCompleted()V

    .line 4164
    return-void
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 3960
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3961
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopContinuousAF()V

    .line 3962
    :cond_0
    return-void
.end method

.method public stopDualModeShot()V
    .locals 2

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 3966
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startDualModeAsyncShot(Z)V

    .line 3967
    :cond_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 6274
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v1, :cond_1

    .line 6289
    :cond_0
    :goto_0
    return-void

    .line 6276
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 6278
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 6282
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6286
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 6287
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideAllFaceRect()V

    goto :goto_0

    .line 6283
    :catch_0
    move-exception v0

    .line 6284
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CommonEngine"

    const-string v2, "stopFaceDetection failed."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopFaceZoom()V
    .locals 1

    .prologue
    .line 6292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mIsFaceZoomed:Z

    .line 6293
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopFaceZoom()V

    .line 6294
    return-void
.end method

.method public stopHideFaceRectTimer()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    return-void
.end method

.method public stopLongTouchAutoFocus()V
    .locals 1

    .prologue
    .line 6297
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6298
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopTouchAutoFocus()V

    .line 6300
    :cond_0
    return-void
.end method

.method public stopResetTouchFocusTimer()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    return-void
.end method

.method public stopTouchAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 4177
    const-string v0, "CommonEngine"

    const-string v1, "stopTouchAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->stopResetTouchFocusTimer()V

    .line 4181
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 4204
    :cond_0
    :goto_0
    return-void

    .line 4185
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4186
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 4189
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4192
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setFocusParameter(I)V

    .line 4202
    :goto_1
    sput-boolean v3, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchAutoFocusing:Z

    .line 4203
    sput-boolean v3, Lcom/sec/android/app/camera/CommonEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0

    .line 4195
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4196
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4207
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOriginalViewFinderWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOriginalViewFinderHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreate**EndU["

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

    .line 4209
    const-wide/16 v0, 0x1000

    const-string v2, "Surface View"

    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4210
    invoke-static {v5}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    .line 4212
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    if-ne v0, p4, :cond_0

    .line 4251
    :goto_0
    return-void

    .line 4215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 4219
    :cond_1
    iput p3, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    .line 4220
    iput p4, p0, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    .line 4222
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 4224
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->resetPreviewSize()V

    .line 4226
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 4227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 4239
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_3

    .line 4240
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 4242
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 4243
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    .line 4244
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 4246
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartRecordDualPreview()V

    .line 4247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleSetTrackingVisible()V

    .line 4250
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V

    goto :goto_0

    .line 4228
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    .line 4230
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 4231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    goto :goto_1

    .line 4234
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 4235
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    goto/16 :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 4254
    const-string v0, "CommonEngine"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4257
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 4258
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 4261
    const-string v0, "CommonEngine"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4264
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPreviewSync()V

    .line 4265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4267
    :cond_1
    return-void
.end method

.method public switchToBack()V
    .locals 3

    .prologue
    .line 4270
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToBackCamera - setSelfMode - SELF_OFF, setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 4272
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateSettingsWhenSwitchCamera()V

    .line 4273
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->checkFlashRestriction()V

    .line 4274
    return-void
.end method

.method public switchToFront()V
    .locals 3

    .prologue
    .line 4277
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToFrontCamera - setCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 4279
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateSettingsWhenSwitchCamera()V

    .line 4280
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 4281
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 4283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4284
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 4286
    :cond_0
    return-void
.end method

.method public terminateBurstShot()V
    .locals 2

    .prologue
    .line 6303
    const-string v0, "CommonEngine"

    const-string v1, "terminateBurstShot"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6304
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 6305
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->terminateBurstShot()V

    .line 6307
    :cond_0
    return-void
.end method

.method public unlockAEAWB()V
    .locals 2

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3824
    :cond_0
    :goto_0
    return-void

    .line 3822
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 3823
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public unlockAWB()V
    .locals 2

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-nez v0, :cond_1

    .line 3838
    :cond_0
    :goto_0
    return-void

    .line 3836
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->setAWBLockParameter(Z)V

    .line 3837
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_0
.end method

.method public updateFocusIndicator()V
    .locals 2

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    if-eqz v0, :cond_0

    .line 4302
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$OnFocusStateChangedListener;->onFocusStateChanged(I)V

    .line 4304
    :cond_0
    return-void
.end method

.method public updateStorage()V
    .locals 2

    .prologue
    .line 4297
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mStorage:I

    .line 4298
    return-void
.end method

.method public waitForCurrentPictureSaving()V
    .locals 1

    .prologue
    .line 4308
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4309
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4314
    :cond_0
    :goto_0
    return-void

    .line 4311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForEngineStartingThread()V
    .locals 1

    .prologue
    .line 4318
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4319
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4325
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4326
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 4328
    :cond_1
    return-void

    .line 4321
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForLastFileToSync()V
    .locals 6

    .prologue
    .line 4331
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 4344
    :goto_0
    return-void

    .line 4335
    :cond_0
    :try_start_0
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 4337
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 4338
    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after file sync::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4339
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 4340
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4341
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4342
    .local v0, "e":Ljava/io/SyncFailedException;
    invoke-virtual {v0}, Ljava/io/SyncFailedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitForPanoramaStartThreadComplete()V
    .locals 2

    .prologue
    .line 4357
    const-string v0, "CommonEngine"

    const-string v1, "waitForPanoramaStartThreadComplete - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4360
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPanoramaStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4365
    :cond_0
    :goto_0
    const-string v0, "CommonEngine"

    const-string v1, "waitForPanoramaStartThreadComplete - end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    return-void

    .line 4362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStartPreviewThreadComplete()V
    .locals 1

    .prologue
    .line 4348
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4349
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4354
    :cond_0
    :goto_0
    return-void

    .line 4351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 1

    .prologue
    .line 8511
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 8512
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 8514
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 8515
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8520
    :cond_1
    :goto_0
    return-void

    .line 8517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStopRecordingThreadComplete()V
    .locals 2

    .prologue
    .line 8524
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 8525
    const-string v0, "CommonEngine"

    const-string v1, "waitForStopRecordingThreadComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 8526
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8531
    :cond_0
    :goto_0
    return-void

    .line 8528
    :catch_0
    move-exception v0

    goto :goto_0
.end method
