.class public Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList$OnThumbnailListCloseListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative$OnVirtualTourEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final BUTTON_TEXT_FONT_SIZE:I

.field private static final CALIBRATION_DURATION:I = 0x3

.field private static final CALIBRATION_NOTIFICATION_PER_SECOND:I = 0xe

.field private static final CALIBRATION_UPDATE_DEGREE:I = 0xc

.field private static final CALIBRATION_UPDATE_THRESHOLD_PER_SECOND:I = 0xa

.field private static final COUNTER_DISPLAY_THRESHOLD:I = 0x14

.field private static final COUNTER_INDICATOR_HEIGHT:I

.field private static final COUNTER_INDICATOR_POS_X:I

.field private static final COUNTER_INDICATOR_POS_Y:I

.field private static final COUNTER_INDICATOR_WIDTH:I

.field private static final COUNTER_TEXT_STROKE_WIDTH:I

.field private static final DONE_BUTTON_POS_X:I

.field private static final DONE_BUTTON_POS_Y:I

.field private static final EG_VT_UI_INDICATOR_DEACTIVE_BEND_UI:I = 0x24

.field private static final EG_VT_UI_INDICATOR_DEACTIVE_TURNING_AFTER_WALKING_WARNING_UI:I = 0x26

.field private static final EG_VT_UI_INDICATOR_WARNING_APPROACHING_WALK_MAX_BOUNDARY:I = 0x25

.field private static final EG_VT_UI_INDICATOR_WARNING_BEND_DEVICE_DOWN:I = 0x21

.field private static final EG_VT_UI_INDICATOR_WARNING_BEND_DEVICE_UP:I = 0x20

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERITCAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERITCAL:F

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final LEFT_INDICATOR_POS_X:[I

.field private static final LEFT_INDICATOR_POS_Y:[I

.field private static final MAX_SWEEP_COUNT:I = 0x1e

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_LANDSCAPE:I = 0x2

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_PORTRAIT:I = 0x1

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_REVERSE_LANDSCAPE:I = 0x4

.field private static final MSG_ALERT_ORIENTATION_CHANGED_TO_REVERSE_PORTRAIT:I = 0x3

.field private static final MSG_CALIBRATION_DONE:I = 0x7

.field private static final MSG_CALIBRATION_ERROR_SENSOR_FAILED_IN_CALIBRATION:I = 0x27

.field private static final MSG_CALIBRATION_FAILED:I = 0x6

.field private static final MSG_CALIBRATION_IN_PROGRESS:I = 0x9

.field private static final MSG_CALIBRATION_OUT_OF_WINDOW:I = 0x8

.field private static final MSG_CALIBRATION_STARTED:I = 0x5

.field private static final MSG_DONE_WITHOUT_SAVING:I = 0xc9

.field private static final MSG_DONE_WITH_SAVING:I = 0xc8

.field private static final MSG_DONE_WITH_SAVING_ON_ORIENTATION_CHANGED:I = 0xca

.field private static final MSG_ERROR_BOTH_WALK_AND_TURN:I = 0x23

.field private static final MSG_ERROR_INTOLERABLE_DEVICE_SHAKE:I = 0x17

.field private static final MSG_ERROR_NO_CAPTURES_TIME_OUT:I = 0x18

.field private static final MSG_ERROR_WALKING_AFTER_TURNING:I = 0x22

.field private static final MSG_FIRST_IMAGE_UNDONE:I = 0x10

.field private static final MSG_GUIDE_ROTATE_DEVICE_ANTICLOCKWISE:I = 0x66

.field private static final MSG_GUIDE_ROTATE_DEVICE_CLOCKWISE:I = 0x65

.field private static final MSG_IN_STATIONARY:I = 0xf

.field private static final MSG_IS_CAPTURABLE:I = 0xa

.field private static final MSG_MAX_SIZE:I = 0x27

.field private static final MSG_SAVING_DONE:I = 0x3e8

.field private static final MSG_TURN_LEFT_INPROGRESS_BLINKING:I = 0x1a

.field private static final MSG_TURN_LEFT_IN_PROGRESS:I = 0xd

.field private static final MSG_TURN_LEFT_MAX_BOUNDARY_CROSSED:I = 0x1e

.field private static final MSG_TURN_RIGHT_INPROGRESS_BLINKING:I = 0x1b

.field private static final MSG_TURN_RIGHT_IN_PROGRESS:I = 0xe

.field private static final MSG_TURN_RIGHT_MAX_BOUNDARY_CROSSED:I = 0x1f

.field private static final MSG_WALKIN_MAX_BOUNDARY_CROSSED:I = 0xc

.field private static final MSG_WALKIN_MIN_BOUNDARY_CROSSED:I = 0xb

.field private static final MSG_WALK_IN_PROGRESS_BLINKING:I = 0x19

.field private static final MSG_WARNING_APPROACHING_WALK_MAX_BOUNDARY:I = 0xcb

.field private static final MSG_WARNING_ARROW_SOUND:I = 0xcc

.field private static final MSG_WARNING_DISABLE_TOO_FAST:I = 0x16

.field private static final MSG_WARNING_MAX_SWEEP_PHOTO_CROSSED:I = 0x12

.field private static final MSG_WARNING_PITCH_BOUNDARY_CROSSED:I = 0x13

.field private static final MSG_WARNING_ROLL_BOUNDARY_CROSSED:I = 0x14

.field private static final MSG_WARNING_TOO_FAST:I = 0x15

.field private static final MSG_WARNING_TURNING_AFTER_WALKING:I = 0x11

.field private static final MSG_WARNING_TURN_APPROACHING_LEFT_MAX_BOUNDARY:I = 0x1c

.field private static final MSG_WARNING_TURN_APPROACHING_RIGHT_MAX_BOUNDARY:I = 0x1d

.field private static final PROGRESSWHEEL_CALIBRATION_HEIGHT:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_X:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_Y:I

.field private static final PROGRESSWHEEL_CALIBRATION_WIDTH:I

.field private static final PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_X:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_Y:I

.field private static final PROGRESSWHEEL_CAPTURABLE_WIDTH:I

.field private static final REMAIN_STEP_THRESHOLD:I = 0x6

.field private static final REQUIRED_STORAGE_SIZE:J = 0x1400000L

.field private static final RIGHT_INDICATOR_POS_X:[I

.field private static final RIGHT_INDICATOR_POS_Y:[I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final STABILIZER_STATE_CALIBRATION:I = 0x1

.field private static final STABILIZER_STATE_CAPTURABLE:I = 0x2

.field private static final STABILIZER_STATE_INVISIBLE:I = 0x0

.field private static final STRAIGHT_INDICATOR_POS_X:[I

.field private static final STRAIGHT_INDICATOR_POS_Y:[I

.field private static final TAG:Ljava/lang/String; = "TwGL3DTourMenu"

.field private static final TAGTHRD:Ljava/lang/String; = "3DAlign"

.field private static final THUMBNAIL_LIST_HEIGHT:I

.field private static final THUMBNAIL_LIST_POS_X:I

.field private static final THUMBNAIL_LIST_POS_Y:I

.field private static final THUMBNAIL_LIST_WIDTH:I

.field private static final UNDO_BUTTON_HEIGHT:I

.field private static final UNDO_BUTTON_TEXT_PADDING:I

.field private static final UNDO_THRESHOLD:I = 0x2

.field private static final WARNING_ARROW_HEIGHT:I

.field private static final WARNING_ARROW_SHUTTER_POS_X:I

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static final WARNING_ARROW_WIDTH:I

.field private static final WARNING_TEXT_HEIGHT:F

.field private static final WARNING_TEXT_MARGIN:F

.field private static final WARNING_TEXT_WIDTH:F

.field private static mActivityContext:Lcom/sec/android/app/camera/Camera;

.field static mPf32TransitionData:[F

.field static mPs32Direction:[I


# instance fields
.field private final BACKGROUND_THREAD_SATE_START:I

.field private final BACKGROUND_THREAD_STATE_FINISH_REMAINING:I

.field private final BACKGROUND_THREAD_STATE_KILL:I

.field private final BACKGROUND_THREAD_STATE_PAUSE:I

.field private final BACKGROUND_THREAD_STATE_RESUME:I

.field private final BACKGROUND_THREAD_STATE_RUNNING:I

.field private final IMAGE_ALIGNMENT_THREAD_WAIT_TIME_IN_MS:I

.field private mAngleY:F

.field private mAngleZ:F

.field private mBackGroundThread:Ljava/lang/Thread;

.field private volatile mBackGroundThreadRunning:Z

.field private volatile mBackGroundThreadState:Ljava/lang/Integer;

.field private mBlinkingAnimation:Landroid/view/animation/Animation;

.field private mCalibrationInProgressCount:I

.field private mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturing:Z

.field private mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCounterText:Lcom/sec/android/glview/TwGLText;

.field private volatile mCurrentPhotoCount:I

.field protected mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

.field private mDoneButton:Lcom/sec/android/glview/TwGLButton;

.field private mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

.field private mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerActiveFlag:Z

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHorizonCalibrationThread:Ljava/lang/Thread;

.field private mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mIAMutexObject:Ljava/lang/Object;

.field private mIAProgressCount:I

.field private mImageAlignmentRunnable:Ljava/lang/Runnable;

.field private mImageAlignmentVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSavingThread:Ljava/lang/Thread;

.field private mIsTranslationValid:[I

.field private mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

.field private mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOrientation:I

.field private mOrientationForPicture:I

.field private mPlayWarningArrowSound:Z

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/secvision/solutions/virtualtour/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProgressDegree:I

.field private mRemainingStepCount:I

.field private mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

.field private mRightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mRunning:Z

.field mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

.field private mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

.field private mTransitionsData:[F

.field private mTransitionsType:[I

.field private mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

.field private mUndoButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;

.field private miIAThrdCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    .line 74
    const v0, 0x7f090001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    .line 75
    const v0, 0x7f09032b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    .line 76
    const v0, 0x7f09032c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    .line 77
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    .line 78
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    .line 79
    const v0, 0x7f09032d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    .line 80
    const v0, 0x7f09032e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    .line 81
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    .line 82
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    .line 83
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_X:I

    .line 84
    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_Y:I

    .line 85
    const v0, 0x7f09032f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    .line 86
    const v0, 0x7f090330

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    .line 87
    const v0, 0x7f0a0048

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    .line 88
    new-array v0, v6, [I

    const v3, 0x7f090331

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f090332

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090333

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090334

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    .line 90
    new-array v0, v6, [I

    const v3, 0x7f090335

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f090336

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090337

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090338

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    .line 92
    new-array v0, v6, [I

    const v3, 0x7f090339

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f09033a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f09033b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f09033c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    .line 95
    new-array v0, v6, [I

    const v3, 0x7f09033d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f09033e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f09033f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090340

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    .line 98
    new-array v0, v6, [I

    const v3, 0x7f090341

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f090342

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090343

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090344

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    .line 100
    new-array v0, v6, [I

    const v3, 0x7f090345

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f090346

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f090347

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f090348

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    .line 102
    const v0, 0x7f090349

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_X:I

    .line 103
    const v0, 0x7f09034a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_Y:I

    .line 104
    const v0, 0x7f09034b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_WIDTH:I

    .line 105
    const v0, 0x7f09034c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    .line 107
    const v0, 0x7f090351

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    .line 108
    const v0, 0x7f090352

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    .line 109
    const v0, 0x7f090324

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 110
    const v0, 0x7f090353

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    .line 112
    const v0, 0x7f090354

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    .line 113
    const v0, 0x7f090355

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    .line 114
    const v0, 0x7f090356

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    .line 116
    const v0, 0x7f090357

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    .line 117
    const v0, 0x7f090358

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    .line 118
    const v0, 0x7f090359

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    .line 119
    const v0, 0x7f09035a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    .line 120
    const v0, 0x7f09006b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    .line 121
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_X:F

    .line 122
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    .line 123
    const v0, 0x7f0a003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIZE:F

    .line 124
    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    .line 125
    const v0, 0x7f0a001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SET_SHADOW:Z

    .line 126
    const v0, 0x7f0a0015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    .line 127
    const/high16 v0, 0x7f080000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 129
    const v0, 0x7f09034f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    .line 130
    const v0, 0x7f090350

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    .line 131
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_X:I

    .line 132
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    float-to-int v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_Y:I

    .line 133
    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    .line 328
    new-array v0, v1, [F

    const/4 v3, 0x0

    aput v3, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    .line 331
    new-array v0, v1, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    return-void

    :cond_0
    move v0, v2

    .line 125
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 15
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 770
    const/4 v6, 0x6

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    .line 277
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    .line 278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 285
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 288
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    .line 290
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    .line 292
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    .line 293
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleZ:F

    .line 295
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    .line 298
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_SATE_START:I

    .line 299
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_RUNNING:I

    .line 300
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_PAUSE:I

    .line 301
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_RESUME:I

    .line 302
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_KILL:I

    .line 303
    const/4 v1, 0x6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BACKGROUND_THREAD_STATE_FINISH_REMAINING:I

    .line 306
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    .line 307
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    .line 308
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    .line 310
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    .line 311
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    .line 312
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    .line 320
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    .line 342
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    .line 347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    .line 349
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    .line 351
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    .line 353
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    .line 355
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 358
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 359
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    .line 363
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I

    .line 365
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    .line 366
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    .line 367
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAMutexObject:Ljava/lang/Object;

    .line 369
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->IMAGE_ALIGNMENT_THREAD_WAIT_TIME_IN_MS:I

    .line 371
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    .line 771
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setCaptureEnabled(Z)V

    .line 772
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setTouchHandled(Z)V

    .line 774
    sput-object p1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 776
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 778
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 781
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 782
    .local v12, "paint":Landroid/graphics/Paint;
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 783
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b02d9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    .line 784
    .local v14, "undoButtonWidth":I
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    sub-int v13, v1, v14

    .line 786
    .local v13, "undoButtonPosX":I
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 787
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b02d9

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIIZZ)V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b02d9

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 794
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    int-to-float v3, v14

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    const/4 v3, 0x0

    int-to-float v4, v14

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 798
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->DONE_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020214

    const v6, 0x7f020215

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    .line 799
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 800
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 804
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 805
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 815
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 816
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 817
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 818
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 819
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203b9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 821
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 822
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 823
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 825
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 831
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 833
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 834
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 835
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 837
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 838
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 839
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 842
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 843
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 844
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 845
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 846
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 848
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 851
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_POS_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 852
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 853
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 854
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 855
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 856
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 857
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 859
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 861
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v6, v6

    const-string v7, ""

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    .line 862
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 864
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 865
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 867
    new-instance v1, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    invoke-direct {v1}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    .line 868
    new-instance v1, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    invoke-direct {v1}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    .line 869
    sget-boolean v1, Lcom/sec/android/secvision/solutions/virtualtour/Constant;->MODELLER_IMAGE_ALIGNMENT_MODULE:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 871
    new-instance v1, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-direct {v1}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    .line 872
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->set_nKeypoints(I)V

    .line 875
    :cond_0
    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    .line 876
    const/16 v1, 0x1d

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    .line 877
    const/16 v1, 0x1d

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    .line 878
    const/16 v1, 0x1d

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    .line 879
    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    .line 882
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    invoke-direct {v3}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    invoke-direct {v3}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    .line 883
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    .line 884
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    .line 888
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setOnThumbnailListCloseListener(Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList$OnThumbnailListCloseListener;)V

    .line 889
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 892
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020240

    const v6, 0x7f020242

    const v7, 0x7f020241

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    .line 894
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 895
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 896
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 899
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    const v7, 0x7f0201a7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 900
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const v7, 0x7f0201a4

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 902
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201a5

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 903
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201a6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 906
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_1

    .line 907
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 908
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 906
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 911
    :cond_1
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    const v7, 0x7f0b0223

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 912
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 913
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 914
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 915
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 918
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    const v7, 0x7f0b0179

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 921
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 922
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 923
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 924
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 925
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 926
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 927
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_POS_Y:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 928
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 929
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 932
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 934
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    .line 936
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 937
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 939
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    .line 940
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    .line 941
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 942
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 943
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0203ba

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 944
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->moveBaseLayout(FF)V

    .line 945
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 947
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 949
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 950
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 951
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 970
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->getBlinkAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    .line 972
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAMutexObject:Ljava/lang/Object;

    .line 974
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;

    .line 1021
    return-void
.end method

.method private ImageAlignment(I)I
    .locals 12
    .param p1, "nIAIndex"    # I

    .prologue
    .line 1802
    const/4 v11, 0x0

    .line 1803
    .local v11, "ret":I
    const/4 v7, 0x0

    .local v7, "Bm1":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .local v8, "Bm2":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 1805
    .local v0, "BmTmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    .line 1806
    :cond_0
    const-string v1, "3DAlign"

    const-string v2, "ImageAlignment : Improper params"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/4 v1, -0x1

    .line 1920
    :goto_0
    return v1

    .line 1810
    :cond_1
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    .line 1811
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageAlignment : Improper params-> Vecsize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/4 v1, -0x1

    goto :goto_0

    .line 1815
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_4

    .line 1816
    :cond_3
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The vector has exceeded the limit. current size= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const/4 v1, -0x1

    goto :goto_0

    .line 1820
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;

    .line 1821
    .local v9, "CurrentProcessingObject":Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;

    .line 1822
    .local v10, "PreviousProcessingObject":Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    .line 1823
    :cond_5
    const-string v1, "3DAlign"

    const-string v2, "ImageAlignment : Unable to fetch from vector"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1827
    :cond_6
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Index1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Transition Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const-string v1, "3DAlign"

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const-string v1, "3DAlign"

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1834
    .local v5, "matrix":Landroid/graphics/Matrix;
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientationForPicture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    if-nez v1, :cond_b

    .line 1838
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1839
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1896
    :goto_1
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "Calling Translation Vector Estimation if bmps not null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    if-eqz v7, :cond_18

    if-eqz v8, :cond_18

    .line 1898
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bm1 Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Bm1 Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bm2 Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Bm2 Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 1902
    :cond_7
    const-string v1, "3DAlign"

    const-string v2, "Bm1.getWidth() !=  Bm2.getWidth() || Bm1.getHeight() !=  Bm2.getHeight()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_8
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    .line 1905
    :cond_9
    const-string v1, "3DAlign"

    const-string v2, "WALK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-direct {p0, v7, v8, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WalkVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v11

    .line 1913
    :goto_2
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    move v1, v11

    .line 1920
    goto/16 :goto_0

    .line 1840
    :cond_b
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 1842
    const/high16 v1, 0x43340000

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1843
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1844
    if-nez v0, :cond_c

    .line 1845
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1848
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1849
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1850
    if-nez v0, :cond_d

    .line 1851
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1854
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1855
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1856
    :cond_e
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 1858
    const/high16 v1, 0x43870000

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1859
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1860
    if-nez v0, :cond_f

    .line 1861
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1864
    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1865
    const/4 v0, 0x0

    .line 1866
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1867
    if-nez v0, :cond_10

    .line 1868
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1871
    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1872
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1873
    :cond_11
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1875
    const/high16 v1, 0x42b40000

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1876
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1877
    if-nez v0, :cond_12

    .line 1878
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1881
    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1882
    const/4 v0, 0x0

    .line 1884
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1885
    if-nez v0, :cond_13

    .line 1886
    const-string v1, "TwGL3DTourMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BmTmp is Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1889
    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1890
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1892
    :cond_14
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "Wrong Orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1907
    :cond_15
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 1908
    :cond_16
    const-string v1, "3DAlign"

    const-string v2, "TURN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-direct {p0, v7, v8, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->TurnVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v11

    goto/16 :goto_2

    .line 1911
    :cond_17
    const-string v1, "3DAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NONE: Wrong Transition Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I
    invoke-static {v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1915
    :cond_18
    if-nez v7, :cond_19

    .line 1916
    const-string v1, "3DAlign"

    const-string v2, "Bm1 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_19
    if-nez v8, :cond_a

    .line 1918
    const-string v1, "3DAlign"

    const-string v2, "Bm2 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private TurnVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 20
    .param p1, "Bm1"    # Landroid/graphics/Bitmap;
    .param p2, "Bm2"    # Landroid/graphics/Bitmap;
    .param p3, "nIAIndex"    # I

    .prologue
    .line 1968
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->computeCameraParameters(II)V

    .line 1969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    aget v2, v2, p3

    invoke-static {v2}, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->computeSearchRegions(F)V

    .line 1971
    const-string v2, "TwGL3DTourMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " angle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    aget v4, v4, p3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;FFFF)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;FFFF)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1982
    .local v12, "lst1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1985
    .local v13, "lst2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1988
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    .line 1989
    const/4 v15, 0x0

    .line 1991
    .local v15, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->matchImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v15

    .line 1995
    if-eqz v15, :cond_4

    .line 1999
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2000
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2001
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;

    .line 2002
    .local v14, "match":Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;
    new-instance v16, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v2, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x1:F

    iget v3, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y1:F

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    .line 2003
    .local v16, "p1":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    new-instance v17, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v2, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x2:F

    iget v3, v14, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y2:F

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    .line 2005
    .local v17, "p2":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->containsPoint(Lcom/sec/android/secvision/solutions/virtualtour/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->m_aSearchRects:[Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->containsPoint(Lcom/sec/android/secvision/solutions/virtualtour/Point;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2006
    const/high16 v9, 0x41200000

    .line 2008
    .local v9, "fd":F
    const/4 v8, 0x0

    .line 2009
    .local v8, "bSimilar":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 2010
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    .line 2011
    .local v18, "ptaux1":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    .line 2012
    .local v19, "ptaux2":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/secvision/solutions/virtualtour/Point;->getDistance(Lcom/sec/android/secvision/solutions/virtualtour/Point;)F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/secvision/solutions/virtualtour/Point;->getDistance(Lcom/sec/android/secvision/solutions/virtualtour/Point;)F

    move-result v2

    cmpg-float v2, v2, v9

    if-gez v2, :cond_2

    .line 2013
    const/4 v8, 0x1

    .line 2017
    .end local v18    # "ptaux1":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    .end local v19    # "ptaux2":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    :cond_1
    if-nez v8, :cond_0

    .line 2018
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2009
    .restart local v18    # "ptaux1":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    .restart local v19    # "ptaux2":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2025
    .end local v8    # "bSimilar":Z
    .end local v9    # "fd":F
    .end local v11    # "j":I
    .end local v14    # "match":Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;
    .end local v16    # "p1":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    .end local v17    # "p2":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    .end local v18    # "ptaux1":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    .end local v19    # "ptaux2":Lcom/sec/android/secvision/solutions/virtualtour/Point;
    :cond_3
    invoke-static {v12, v13}, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry;->computeTurn(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    .line 2026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    if-eqz v2, :cond_5

    .line 2027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    const/4 v3, 0x1

    aput v3, v2, p3

    .line 2028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    new-instance v3, Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v4, v4, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v4, v4, Lcom/sec/android/secvision/solutions/virtualtour/Point;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v5, v5, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v5, v5, Lcom/sec/android/secvision/solutions/virtualtour/Point;->y:F

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/secvision/solutions/virtualtour/Vector3;-><init>(FFF)V

    aput-object v3, v2, p3

    .line 2029
    const-string v2, "TwGL3DTourMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in turn vector VALID VECTORm_oResult.m_ptAnchor.x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v4, v4, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v4, v4, Lcom/sec/android/secvision/solutions/virtualtour/Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m_oResult.m_ptAnchor.y "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mResult:Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;

    iget-object v4, v4, Lcom/sec/android/secvision/keypoint_matcher/TurnGeometry$TurnResult;->m_ptAnchor:Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v4, v4, Lcom/sec/android/secvision/solutions/virtualtour/Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-virtual {v2}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->clean()V

    .line 2037
    const-string v2, "TwGL3DTourMenu"

    const-string v3, "Turn Vector executed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const/4 v2, 0x1

    return v2

    .line 2031
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    :cond_5
    const-string v2, "TwGL3DTourMenu"

    const-string v3, "in turn vector  NOT VALID VECTOR"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private WalkVectorEstimation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 10
    .param p1, "Bm1"    # Landroid/graphics/Bitmap;
    .param p2, "Bm2"    # Landroid/graphics/Bitmap;
    .param p3, "nIAIndex"    # I

    .prologue
    const/4 v9, 0x1

    .line 2044
    const/4 v0, 0x0

    .line 2045
    .local v0, "cTranslationResult":Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry$TranslationResult;
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "WalkVectorEstimation Start"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->matchImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v5

    .line 2047
    .local v5, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "KeyPointMatching executed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    if-eqz v5, :cond_1

    .line 2049
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2050
    .local v2, "lst1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    .local v3, "lst2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2052
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2053
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;

    .line 2054
    .local v4, "match":Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;
    new-instance v6, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v7, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x1:F

    iget v8, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y1:F

    invoke-direct {v6, v7, v8}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2055
    new-instance v6, Lcom/sec/android/secvision/solutions/virtualtour/Point;

    iget v7, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->x2:F

    iget v8, v4, Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;->y2:F

    invoke-direct {v6, v7, v8}, Lcom/sec/android/secvision/solutions/virtualtour/Point;-><init>(FF)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2058
    .end local v4    # "match":Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;
    :cond_0
    const-string v6, "TwGL3DTourMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lst1.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    const/high16 v6, 0x42480000

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry;->setCameraCalibrationMatrixParameters(FII)V

    .line 2060
    invoke-static {v2, v3}, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry;->computeTranslation(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry$TranslationResult;

    move-result-object v0

    .line 2062
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry$TranslationResult;->m_vTranslation:Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    if-eqz v6, :cond_2

    .line 2063
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "VALID VECTOR"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    aput v9, v6, p3

    .line 2065
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    iget-object v7, v0, Lcom/sec/android/secvision/keypoint_matcher/EpipolarGeometry$TranslationResult;->m_vTranslation:Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    aput-object v7, v6, p3

    .line 2071
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    .end local v2    # "lst1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    .end local v3    # "lst2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mKeyPointMatcher:Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;

    invoke-virtual {v6}, Lcom/sec/android/secvision/keypoint_matcher/KeyPointMatcher;->clean()V

    .line 2072
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "WalkVectorEstimation executed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    return v9

    .line 2067
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/secvision/keypoint_matcher/Keypoint_Match;>;"
    .restart local v2    # "lst1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    .restart local v3    # "lst2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/secvision/solutions/virtualtour/Point;>;"
    :cond_2
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "NOT VALID VECTOR"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()Lcom/sec/android/app/camera/Camera;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$1512(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->onDone(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetDirectionEstimator()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    return p1
.end method

.method static synthetic access$3108(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->ImageAlignment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mVirtualTourDataManager:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourDataManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->prepareDirectories()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->calculateOrientationForPicture(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetStabilizer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setProgress(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1698
    move v0, p1

    .line 1699
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 1700
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1701
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 1708
    :cond_1
    :goto_0
    return v0

    .line 1703
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1704
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method private declared-synchronized closeDirectionEstimator()V
    .locals 2

    .prologue
    .line 1263
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "closeDirectionEstimator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    if-nez v0, :cond_0

    .line 1266
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    :goto_0
    monitor-exit p0

    return-void

    .line 1269
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopCalibrationThread()V

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    invoke-virtual {v0}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;FFFF)V
    .locals 0
    .param p1, "rc"    # Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F

    .prologue
    .line 2077
    iput p2, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->x:F

    .line 2078
    iput p3, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->y:F

    .line 2079
    iput p4, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    .line 2080
    iput p5, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->height:F

    .line 2081
    return-void
.end method

.method private fillRectangle(Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;)V
    .locals 1
    .param p1, "rc"    # Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;
    .param p2, "rcSrc"    # Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;

    .prologue
    .line 2084
    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->x:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->x:F

    .line 2085
    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->y:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->y:F

    .line 2086
    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->width:F

    .line 2087
    iget v0, p2, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->height:F

    iput v0, p1, Lcom/sec/android/secvision/solutions/virtualtour/Rectangle;->height:F

    .line 2088
    return-void
.end method

.method private getAnimation(I)Landroid/view/animation/AnimationSet;
    .locals 8
    .param p1, "warningArrowIndex"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x40800000

    .line 2206
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2207
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 2208
    .local v0, "anim":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 2209
    .local v2, "xDistance":F
    const/4 v3, 0x0

    .line 2211
    .local v3, "yDistance":F
    packed-switch p1, :pswitch_data_0

    .line 2232
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, v6, v2, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2233
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_HEIGHT:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2235
    if-eqz v0, :cond_0

    .line 2236
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2237
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 2238
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 2239
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2240
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2243
    :cond_0
    return-object v1

    .line 2213
    :pswitch_0
    const/4 v2, 0x0

    .line 2214
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v3, v5, v4

    .line 2215
    goto :goto_0

    .line 2217
    :pswitch_1
    const/4 v2, 0x0

    .line 2218
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 2219
    goto :goto_0

    .line 2221
    :pswitch_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v2, v5, v4

    .line 2222
    const/4 v3, 0x0

    .line 2223
    goto :goto_0

    .line 2225
    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 2226
    const/4 v3, 0x0

    .line 2227
    goto :goto_0

    .line 2211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onDone(Z)V
    .locals 6
    .param p1, "saveOutput"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1131
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onDone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    .line 1133
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1134
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarDraggable(Z)V

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1136
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1142
    if-eqz p1, :cond_1

    .line 1143
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideThumbnailButton()V

    .line 1144
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    .line 1148
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1149
    invoke-direct {p0, v3, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V

    .line 1150
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 1151
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    .line 1152
    if-eqz p1, :cond_2

    .line 1153
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->saveSEFFile()V

    .line 1160
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetHorizon()V

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->resetList()V

    .line 1162
    if-nez p1, :cond_0

    .line 1164
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetDirectionEstimator()V

    .line 1165
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->prepareDirectories()V

    .line 1166
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetContinuousFileSequence()V

    .line 1167
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->on3DTourComplete()V

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0179

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1177
    :goto_2
    return-void

    .line 1146
    :cond_1
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    goto :goto_0

    .line 1156
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    goto :goto_1

    .line 1171
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->closeDirectionEstimator()V

    .line 1173
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    .line 1175
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    goto :goto_2
.end method

.method private openDirectionEstimator()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1207
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "openDirectionEstimator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    if-nez v0, :cond_1

    .line 1211
    :cond_0
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :goto_0
    return-void

    .line 1215
    :cond_1
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    const/16 v0, 0x27

    if-gt v6, v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1215
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1225
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    .line 1227
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    .line 1228
    const/4 v6, 0x0

    :goto_2
    const/16 v0, 0x1d

    if-ge v6, v0, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    aput v2, v0, v6

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    aput-object v3, v0, v6

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    const/4 v1, 0x0

    aput v1, v0, v6

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    aput v2, v0, v6

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    aput-object v3, v0, v6

    .line 1228
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1236
    :cond_3
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1237
    :cond_4
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "resetDirectionEstimator return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1241
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1259
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startCalibrationThread()V

    goto :goto_0

    .line 1243
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto :goto_3

    .line 1247
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto :goto_3

    .line 1251
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto/16 :goto_3

    .line 1255
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Open(IIIII)V

    goto/16 :goto_3

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private prepareDirectories()V
    .locals 8

    .prologue
    .line 1673
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1674
    :cond_0
    const-string v6, "TwGL3DTourMenu"

    const-string v7, "prepareDirectories return because of null pointer"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_1
    :goto_0
    return-void

    .line 1677
    :cond_2
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v1

    .line 1678
    .local v1, "dstDir":Ljava/lang/String;
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    const-string v7, "/.3DTour"

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1680
    .local v5, "tempDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, "dst":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1682
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1684
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1685
    .local v4, "temp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1686
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 1688
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1689
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 1690
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1691
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1689
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private resetDirectionEstimator()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1274
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "resetDirectionEstimator"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopCalibrationThread()V

    .line 1277
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x27

    if-gt v6, v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1287
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandlerActiveFlag:Z

    .line 1289
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    .line 1290
    const/4 v6, 0x0

    :goto_1
    const/16 v0, 0x1d

    if-ge v6, v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIsTranslationValid:[I

    aput v2, v0, v6

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTranslations:[Lcom/sec/android/secvision/solutions/virtualtour/Vector3;

    aput-object v3, v0, v6

    .line 1293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    const/4 v1, 0x0

    aput v1, v0, v6

    .line 1294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    aput v2, v0, v6

    .line 1295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mEpiPole:[Lcom/sec/android/secvision/solutions/virtualtour/Point;

    aput-object v3, v0, v6

    .line 1290
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1298
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1299
    :cond_2
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "resetDirectionEstimator return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_2
    return-void

    .line 1303
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1323
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startCalibrationThread()V

    goto :goto_2

    .line 1305
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto :goto_3

    .line 1309
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto :goto_3

    .line 1313
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto/16 :goto_3

    .line 1317
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->Reset(IIIII)V

    goto/16 :goto_3

    .line 1303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private resetHorizon()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1591
    return-void
.end method

.method private resetStabilizer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1553
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationInProgressCount:I

    .line 1554
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setProgress(I)V

    .line 1555
    return-void
.end method

.method private saveSEFFile()V
    .locals 2

    .prologue
    .line 1420
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "saveSEFFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    .line 1549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1550
    return-void
.end method

.method private setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1558
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    .line 1559
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mProgressDegree:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    .line 1560
    return-void
.end method

.method private setRemainCounter()V
    .locals 3

    .prologue
    .line 1664
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1670
    :goto_0
    return-void

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStabilizerVisibleState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2247
    packed-switch p1, :pswitch_data_0

    .line 2266
    :goto_0
    return-void

    .line 2249
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 2250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 2251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 2254
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 2255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 2256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 2259
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 2260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 2261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 2247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStabilizerVisibleState(IZ)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "update"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2269
    packed-switch p1, :pswitch_data_0

    .line 2288
    :goto_0
    return-void

    .line 2271
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 2272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 2273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 2276
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 2277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 2278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 2281
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 2282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 2283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 2269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setWarningArrowVisibleState(ZI)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "msg"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 2091
    const/4 v0, 0x0

    .line 2092
    .local v0, "rect_x":F
    const/4 v1, 0x0

    .line 2094
    .local v1, "rect_y":F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2095
    if-eqz p1, :cond_8

    .line 2096
    packed-switch p2, :pswitch_data_0

    .line 2190
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    .line 2203
    :goto_0
    return-void

    .line 2098
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-nez v2, :cond_1

    .line 2099
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 2100
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    .line 2101
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2102
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2103
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2104
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2105
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2106
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2135
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2136
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0b0223

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 2137
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 2138
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 2139
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2140
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    .line 2141
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2107
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v7, :cond_2

    .line 2108
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 2109
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v1, v2, v3

    .line 2110
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2111
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2112
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2113
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2114
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2115
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1

    .line 2116
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v8, :cond_3

    .line 2117
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v0, v2, v3

    .line 2118
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 2119
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2120
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2121
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2122
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2123
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2124
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    .line 2125
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v9, :cond_0

    .line 2126
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    .line 2127
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 2128
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2129
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2130
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2131
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2132
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2133
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    .line 2144
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-nez v2, :cond_5

    .line 2145
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 2146
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v1, v2, v3

    .line 2147
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2148
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2149
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2150
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2151
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2152
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2181
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2182
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0b0224

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 2183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 2184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 2185
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2186
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    .line 2187
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2153
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v7, :cond_6

    .line 2154
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 2155
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v1, v2, v3

    .line 2156
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2157
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2158
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2159
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2160
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2161
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_2

    .line 2162
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v8, :cond_7

    .line 2163
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v0, v2, v3

    .line 2164
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 2165
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2166
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2167
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2168
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2169
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2170
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 2171
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-ne v2, v9, :cond_4

    .line 2172
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v0, v2, v3

    .line 2173
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 2174
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2175
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 2176
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2177
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2178
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2179
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 2194
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2195
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2196
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2197
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2198
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2199
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 2200
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2201
    :cond_9
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPlayWarningArrowSound:Z

    goto/16 :goto_0

    .line 2096
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startCalibrationThread()V
    .locals 2

    .prologue
    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    .line 1328
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1374
    return-void
.end method

.method private declared-synchronized startImageAlignmentThread()V
    .locals 5

    .prologue
    .line 1767
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 1768
    .local v0, "CallerClassName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 1769
    .local v1, "line":I
    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startImageAlignmentThread->Called From: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 1771
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    .line 1773
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-nez v2, :cond_3

    .line 1776
    :cond_1
    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThreadInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " And Vector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " create thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    .line 1779
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    .line 1780
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    .line 1781
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TwGL3DTourMenu_ImageAlignmentThread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1782
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->miIAThrdCnt:I

    .line 1784
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-nez v2, :cond_2

    .line 1785
    const-string v2, "3DAlign"

    const-string v3, " Vector is null also"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    .line 1792
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    :goto_1
    monitor-exit p0

    return-void

    .line 1788
    :cond_2
    :try_start_1
    const-string v2, "3DAlign"

    const-string v3, "Vector already created hence clearing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1767
    .end local v0    # "CallerClassName":Ljava/lang/String;
    .end local v1    # "line":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1797
    .restart local v0    # "CallerClassName":Ljava/lang/String;
    .restart local v1    # "line":I
    :cond_3
    :try_start_2
    const-string v2, "3DAlign"

    const-string v3, "Image Alignment Start Done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private stopCalibrationThread()V
    .locals 2

    .prologue
    .line 1377
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    .line 1378
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonCalibrationThread:Ljava/lang/Thread;

    .line 1386
    :cond_0
    return-void

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopImageAlignmentThread(I)V
    .locals 7
    .param p1, "State"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x3

    .line 1924
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 1926
    .local v0, "CallerClassName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 1928
    .local v2, "line":I
    const-string v3, "3DAlign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopImageAlignmentThread->Called From: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    monitor-enter v4

    .line 1930
    if-ne p1, v6, :cond_1

    .line 1931
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    .line 1937
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    const-string v3, "3DAlign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopImageAlignmentThread with state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAMutexObject:Ljava/lang/Object;

    monitor-enter v4

    .line 1941
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    if-eqz v3, :cond_4

    .line 1942
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1944
    :try_start_2
    const-string v3, "3DAlign"

    const-string v5, "BackGround Thread Join 0"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 1946
    const-string v3, "3DAlign"

    const-string v5, "BackGround Thread Join 1"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1950
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;

    .line 1953
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-nez v3, :cond_3

    .line 1954
    const-string v3, "3DAlign"

    const-string v5, "Return because of null pointer"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1964
    :goto_2
    return-void

    .line 1932
    :cond_1
    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    .line 1933
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    goto :goto_0

    .line 1937
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1935
    :cond_2
    :try_start_5
    const-string v3, "3DAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopImageAlignmentThread called with wrong state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1947
    :catch_0
    move-exception v1

    .line 1948
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1963
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 1957
    :cond_3
    :try_start_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 1958
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z

    .line 1959
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:Ljava/lang/Integer;

    .line 1960
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    .line 1963
    :cond_4
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method

.method private updateHorizon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x40000000

    .line 1570
    const/4 v1, 0x0

    .line 1571
    .local v1, "dy":F
    const/4 v0, 0x0

    .line 1572
    .local v0, "dx":F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1586
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1587
    return-void

    .line 1574
    :pswitch_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v1, v5, v2

    .line 1575
    goto :goto_0

    .line 1577
    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v0, v2, v3

    .line 1578
    goto :goto_0

    .line 1580
    :pswitch_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v1, v2, v3

    .line 1581
    goto :goto_0

    .line 1583
    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v0, v5, v2

    goto :goto_0

    .line 1572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private waitImageSavingThread()V
    .locals 3

    .prologue
    .line 1404
    const-string v1, "3DAlign"

    const-string v2, "waitImageSavingThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    :try_start_0
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "waitImageSavingThread Join 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1409
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "waitImageSavingThread Join 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    .line 1417
    :goto_1
    return-void

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1415
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "TwGL3DTourMenu"

    const-string v2, "waitImageSavingThread not require"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public SOnStepWalk_RemainingStepsUpdate(I)V
    .locals 3
    .param p1, "remainingStepCount"    # I

    .prologue
    .line 1723
    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining StepCount - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRemainingStepCount:I

    .line 1725
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1726
    return-void
.end method

.method public createTemplate()V
    .locals 13

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1594
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, "CallerClassName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 1596
    .local v2, "line":I
    const-string v7, "TwGL3DTourMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createTemplate ->Called From: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  Line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v6, 0x0

    .line 1600
    .local v6, "toasttoshow":Ljava/lang/String;
    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_1

    .line 1601
    :cond_0
    const-string v7, "TwGL3DTourMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong Case mCurrentPhotoCount= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :goto_0
    return-void

    .line 1605
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDirectionEstimator:Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/secvision/solutions/virtualtour/CDirectionEstimator;->GetTemplate(I[F[I)I

    move-result v3

    .line 1607
    .local v3, "result":I
    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-nez v7, :cond_5

    .line 1608
    const-string v7, "TwGL3DTourMenu"

    const-string v8, "createTemplate First Photo"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v7, v7, v11

    if-nez v7, :cond_2

    .line 1612
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Photo  1 at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v8, v8, v11

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " degrees"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1616
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startImageAlignmentThread()V

    .line 1644
    :cond_3
    :goto_1
    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    .line 1645
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-eqz v7, :cond_4

    .line 1646
    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    const-string v8, "/.3DTour"

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1647
    .local v5, "tempDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "3DTour_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1649
    .local v1, "FileName":Ljava/lang/String;
    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-gt v7, v12, :cond_9

    .line 1650
    const/4 v4, 0x0

    .line 1654
    .local v4, "s32State":I
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, p0, v9, v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;-><init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1655
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;

    monitor-enter v8

    .line 1656
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 1657
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    .end local v1    # "FileName":Ljava/lang/String;
    .end local v4    # "s32State":I
    .end local v5    # "tempDir":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setRemainCounter()V

    .line 1660
    const-string v7, "TwGL3DTourMenu"

    const-string v8, "createTemplate Exited"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1620
    :cond_5
    if-eqz v3, :cond_3

    .line 1621
    const-string v7, "TwGL3DTourMenu"

    const-string v8, "createTemplate Photo %d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v7, "TwGL3DTourMenu"

    const-string v8, "!#!! CURRENTPHOTOoclk %d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v9, v9, v11

    aput v9, v7, v8

    .line 1627
    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v7, v7, v11

    if-ne v7, v12, :cond_6

    .line 1628
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v9, v9, v11

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    neg-double v9, v9

    double-to-float v9, v9

    aput v9, v7, v8

    .line 1629
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Photo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " turned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Left "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v8, v8, v11

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " degrees"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1632
    :cond_6
    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v7, v7, v11

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 1633
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v9, v9, v11

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v7, v8

    .line 1634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Photo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " turned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Right "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v8, v8, v11

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " degrees"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1635
    :cond_7
    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v7, v7, v11

    const/16 v8, 0x9

    if-ne v7, v8, :cond_8

    .line 1636
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v9, v9, v11

    aput v9, v7, v8

    .line 1637
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Photo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Walk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1638
    :cond_8
    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    aget v7, v7, v11

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    .line 1639
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsData:[F

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v8, v8, -0x1

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPf32TransitionData:[F

    aget v9, v9, v11

    aput v9, v7, v8

    .line 1640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Photo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Walk++"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1652
    .restart local v1    # "FileName":Ljava/lang/String;
    .restart local v5    # "tempDir":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mTransitionsType:[I

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v8, v8, -0x2

    aget v4, v7, v8

    .restart local v4    # "s32State":I
    goto/16 :goto_2

    .line 1657
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 2291
    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method public hideCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->resetList()V

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1196
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    .line 1198
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setWarningArrowVisibleState(ZI)V

    .line 1199
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 1200
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 1069
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 1071
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1073
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 1074
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x1

    .line 1078
    const-string v5, "TwGL3DTourMenu"

    const-string v6, "onClick"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1080
    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 1081
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 1082
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->removeLastThumbnail()V

    .line 1084
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    if-eqz v5, :cond_4

    .line 1085
    const-string v4, "TwGL3DTourMenu"

    const-string v5, "Undo from queue"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1087
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1091
    :cond_0
    :goto_0
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    const-string v5, "/.3DTour"

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, "tempDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3DTour_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "FileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v1, "temp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1095
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1097
    :cond_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->reduceContinuousFileSequence()V

    .line 1098
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    .line 1099
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-ne v4, v3, :cond_2

    .line 1100
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1103
    .end local v0    # "FileName":Ljava/lang/String;
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "tempDir":Ljava/lang/String;
    :cond_2
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-nez v4, :cond_3

    .line 1104
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1105
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1106
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1107
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    .line 1108
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1109
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0b0179

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1110
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 1112
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1113
    invoke-static {}, Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;->SNOnUndoFlagUpdate()V

    .line 1114
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setRemainCounter()V

    .line 1127
    :goto_1
    return v3

    .line 1089
    :cond_4
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I

    goto/16 :goto_0

    .line 1116
    :cond_5
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    if-le v5, v3, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1117
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1119
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1120
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1121
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setVisibility(I)V

    .line 1122
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1123
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1124
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->startAnimation()V

    :cond_7
    move v3, v4

    .line 1127
    goto :goto_1
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 1038
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->closeDirectionEstimator()V

    .line 1041
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->hideCaptureLayout()V

    .line 1044
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    .line 1045
    return-void
.end method

.method public onImageStoringCompleted()V
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCapturing:Z

    .line 1204
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1389
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1391
    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back button pressed current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1397
    :goto_0
    const/4 v0, 0x1

    .line 1400
    :goto_1
    return v0

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1400
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onOnThumbnailListCloseListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    if-eqz v0, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1749
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->startAnimation()V

    .line 1751
    :cond_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1730
    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientatiON-CHANGEd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    .line 1736
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mCurrentPhotoCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageSavingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1737
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1739
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1049
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->closeDirectionEstimator()V

    .line 1052
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->stopImageAlignmentThread(I)V

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->hideCaptureLayout()V

    .line 1055
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->waitImageSavingThread()V

    .line 1056
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1060
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    .line 1062
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    .line 1063
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->openDirectionEstimator()V

    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->showCaptureLayout()V

    .line 1065
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 1025
    const-string v0, "TwGL3DTourMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->prepareDirectories()V

    .line 1027
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->resetStabilizer()V

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mRunning:Z

    .line 1029
    invoke-static {}, Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;->getInstance()Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative;->setStackStateListener(Lcom/sec/android/secvision/solutions/virtualtour/CVirtualTourNative$OnVirtualTourEventListener;)V

    .line 1030
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    .line 1031
    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->openDirectionEstimator()V

    .line 1033
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->showCaptureLayout()V

    .line 1034
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    .line 1717
    const-string v0, "TwGL3DTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1719
    return-void
.end method

.method public setAngles(FF)V
    .locals 0
    .param p1, "angleY"    # F
    .param p2, "angleZ"    # F

    .prologue
    .line 1563
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleY:F

    .line 1564
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mAngleZ:F

    .line 1566
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->updateHorizon()V

    .line 1567
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setStabilizerVisibleState(I)V

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1186
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->setRemainCounter()V

    .line 1187
    return-void
.end method

.method public updateThumbnail([B)V
    .locals 3
    .param p1, "jpegData"    # [B

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mPs32Direction:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mOrientationForPicture:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourThumbnailList;->addThumbnail([BII)V

    .line 1713
    return-void
.end method
