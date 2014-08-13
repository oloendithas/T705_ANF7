.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderRecordingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

.field private static final ANIMATED_PHOTO_PROGRESS_GROUP_X:I

.field private static final ANIMATED_PHOTO_REC_TIME_TEXT_SHADOW:Z

.field private static final CAF_BUTTON_POS_X:I

.field private static final CAF_BUTTON_POS_Y:I

.field private static final DISABLE_SEC:J = 0x3e8L

.field private static final DUAL_BUTTON_POS_X:I

.field private static final DUAL_BUTTON_POS_Y:I

.field private static final DUAL_BUTTON_WIDTH:I

.field public static final DUAL_RECORDING_TIMER_MSG:I = 0x2

.field protected static final DUAL_RECORDING_UPDATE_TIME:I = 0x3e8

.field private static final DUAL_SWITCH_BUTTON_POS_X:I

.field private static final DUAL_SWITCH_BUTTON_POS_Y:I

.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field public static final HELP_TUTORIAL_STEP_COMPLETE_MSG:I = 0x3

.field private static final INDICATOR_FAST_MOTION_GROUP_POS_Y:I

.field private static final INDICATOR_FAST_MOTION_GROUP_WIDTH:I

.field private static final INDICATOR_FAST_MOTION_REC_POS_X:I

.field private static final INDICATOR_FAST_MOTION_TIMER_OFFSET_X:I

.field private static final INDICATOR_FAST_MOTION_TIME_IMG_POS_X:I

.field private static final INDICATOR_FAST_MOTION_TIME_IMG_POS_Y:I

.field private static final INDICATOR_GROUP_HEIGHT:I

.field private static final INDICATOR_GROUP_POS_X:I

.field private static final INDICATOR_GROUP_POS_Y:I

.field private static final INDICATOR_GROUP_WIDTH:I

.field private static final INDICATOR_HEIGHT:I

.field private static final INDICATOR_LEFT_MARGIN:I

.field private static final INDICATOR_MICOFF_POS_X:I

.field private static final INDICATOR_MICOFF_POS_Y:I

.field private static final INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

.field private static final INDICATOR_RIGHT_MARGIN:I

.field private static final INDICATOR_SIDE_MARGIN:I

.field private static final INDICATOR_STABILISATION_WIDTH:I

.field private static final INDICATOR_TIMER_GROUP_POS_Y:I

.field private static final INDICATOR_TOP_MARGIN:I

.field public static final MAX_EMAIL_SIZE:J = 0x3200000L

.field private static final MAX_RECORDING_TIME:I = 0x1517f

.field private static final ONE_SECOND:I = 0x1

.field private static final PAUSE_ICON_POS_X:I

.field private static final PROGRESSBAR_HEIGHT:I

.field private static final PROGRESSBAR_POS_X:I

.field private static final PROGRESSBAR_SIDE_MARGIN:I

.field private static final PROGRESSBAR_WIDTH:I

.field private static final PROGRESS_GROUP_BOTTOM_MARGIN:I

.field private static final PROGRESS_GROUP_BOTTOM_MARGIN_180:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_SIDE_MARGIN:I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final PROGRESS_GROUP_X:I

.field private static final PROGRESS_GROUP_Y:I

.field private static final PROGRESS_MAX_SIZE_POS_X:I

.field private static final PROGRESS_SIZE_TEXT_WIDTH:I

.field private static final RECORDINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final RECORDING_DUAL_TIME_TEXT_WIDTH:I

.field private static final RECORDING_INDICATOR_MIC_ICON_MARGIN:I

.field private static final RECORDING_INDICATOR_MIC_ICON_WIDTH:I

.field private static final RECORDING_INDICATOR_TABLET_OFFSET_X:I

.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_MENU_TAKEPICTURE:I = 0x5

.field private static final RECORDING_MODE_TEXT_SHADOW:Z

.field private static final RECORDING_PAUSE_BUTTON_POS_X:I

.field private static final RECORDING_PAUSE_BUTTON_POS_Y:I

.field private static final RECORDING_SIZE_GROUP_HEIGHT:I

.field private static final RECORDING_SIZE_GROUP_WIDTH:I

.field private static final RECORDING_SIZE_TEXT_STROKE_COLOR:I

.field private static final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private static final RECORDING_STOP_BUTTON_POS_X:I

.field private static final RECORDING_STOP_BUTTON_POS_Y:I

.field private static final RECORDING_TEXT_STROKE_WIDTH:I

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1

.field private static final RECORDING_TIME_TEXT_STROKE_COLOR:I

.field private static final RECORDING_TIME_TEXT_WIDTH:I

.field private static final REC_ICON_TEXT_STROKE_COLOR:I

.field private static final REC_ICON_TEXT_WIDTH:I

.field private static final REC_ICON_WIDTH:I

.field private static final REC_INDICATOR_TEXT_SIZE:I

.field private static final REC_SIZE_TEXT_SIZE:I

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final SETTINGS_LINE1_POS_X:I

.field private static final SETTINGS_LINE1_POS_X_MARGIN:I

.field private static final SETTINGS_LINE1_POS_Y:I

.field private static final SETTINGS_LINE2_POS_X:I

.field private static final SETTINGS_LINE2_POS_Y:I

.field private static final SETTINGS_LINE3_POS_X:I

.field private static final SETTINGS_LINE3_POS_Y:I

.field private static final SETTINGS_LINE_MARGIN:I

.field private static final SIDE_MENU_HEIGHT:I

.field private static final SIDE_MENU_WIDTH:I

.field private static final SNAPSHOT_BUTTON_POS_X:I

.field private static final SNAPSHOT_BUTTON_POS_Y:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderRecordingMenu"


# instance fields
.field private isEmailMode:Z

.field private isRecRemainTimeVisibility:Z

.field private isSharingMode:Z

.field private mAnimatedPhotoMaxRecTime:Ljava/lang/String;

.field private mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

.field private mCAFButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCurRecSize:Lcom/sec/android/glview/TwGLText;

.field private mDualButton:Lcom/sec/android/glview/TwGLButton;

.field private mDualFHDRecordingMaxLimitTime:I

.field private mDualHDRecordingMaxLimitTime:I

.field private mDualRecordingHandler:Landroid/os/Handler;

.field private mDualRecordingTimeUpdateRepeat:I

.field private mDualSwitch:Lcom/sec/android/glview/TwGLButton;

.field mDualView:Lcom/sec/android/app/camera/MenuBase;

.field private mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mFastModeSpeed:I

.field private mFastModeTimerValue:I

.field private mHMS:Ljava/lang/String;

.field private mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorFastModeTimerImg:[I

.field private mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorStabilisationIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMicOffImage:Lcom/sec/android/glview/TwGLImage;

.field private mPauseButton:Lcom/sec/android/glview/TwGLButton;

.field private mPauseTime:J

.field private mProgress:I

.field private mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecBackground:Lcom/sec/android/glview/TwGLImage;

.field private mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecSizeText:Lcom/sec/android/glview/TwGLText;

.field private mRecordingDualMode:I

.field private mRecordingHelpCompleteHandler:Landroid/os/Handler;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mRemainRecTime:I

.field private mRemainRecordingMaxLimitTime:I

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResumeButton:Lcom/sec/android/glview/TwGLButton;

.field private mResumeTime:J

.field private mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

.field private mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

.field private mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

.field private mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopping:Z

.field private mUHDRecordingMaxLimitTime:I

.field private mWQHDRecordingMaxLimitTime:I

.field private preSecond:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v4, 0x7f090092

    const v5, 0x7f09008d

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 33
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    .line 34
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    .line 35
    const v0, 0x7f090011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    .line 36
    const v0, 0x7f090012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_HEIGHT:I

    .line 37
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    .line 38
    const v0, 0x7f0a0041

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_INDICATOR_TEXT_SIZE:I

    .line 39
    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    .line 42
    const v0, 0x7f090093

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    .line 43
    const v0, 0x7f090095

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    .line 44
    const v0, 0x7f090094

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_RIGHT_MARGIN:I

    .line 45
    const v0, 0x7f090096

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    .line 46
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    .line 49
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    .line 50
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    .line 51
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TIMER_GROUP_POS_Y:I

    .line 52
    const v0, 0x7f090091

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    .line 53
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    .line 54
    const v0, 0x7f090097

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    .line 55
    const v0, 0x7f0900a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    .line 56
    const v0, 0x7f0900a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PAUSE_ICON_POS_X:I

    .line 57
    const v0, 0x7f0900a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    .line 58
    const v0, 0x7f0900a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    .line 59
    const v0, 0x7f090098

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    .line 60
    const v0, 0x7f090099

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    .line 61
    const v0, 0x7f0900bb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_TABLET_OFFSET_X:I

    .line 62
    const v0, 0x7f0900bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIMER_OFFSET_X:I

    .line 63
    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    .line 64
    const v0, 0x7f080002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    .line 65
    const/high16 v0, 0x7f080000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    .line 66
    const v0, 0x7f080003

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    .line 69
    const v0, 0x7f09009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    .line 70
    const v0, 0x7f09009b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_POS_Y:I

    .line 71
    const v0, 0x7f09009c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    .line 72
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_X:I

    .line 73
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_Y:I

    .line 74
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_X:I

    .line 75
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_Y:I

    .line 78
    const v0, 0x7f0900b4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    .line 79
    const v0, 0x7f0900b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    .line 80
    const v0, 0x7f0900b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    .line 81
    const v0, 0x7f0900b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    .line 82
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    .line 83
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    .line 84
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    .line 85
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    .line 86
    const v0, 0x7f0900b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    .line 87
    const v0, 0x7f0900b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN:I

    .line 88
    const v0, 0x7f0900ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    .line 89
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    .line 90
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    .line 91
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    add-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    .line 92
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_X:I

    .line 95
    const v0, 0x7f0900a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    .line 96
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    .line 99
    const v0, 0x7f09008b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SNAPSHOT_MARGIN_Y:I

    .line 100
    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_X:I

    .line 101
    const v0, 0x7f09008e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_Y:I

    .line 104
    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_X:I

    .line 105
    const v0, 0x7f09008c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_Y:I

    .line 108
    const v0, 0x7f09008f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_X:I

    .line 109
    const v0, 0x7f090090

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_Y:I

    .line 112
    const v0, 0x7f0900a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    .line 113
    const v0, 0x7f0900a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    .line 116
    const v0, 0x7f0900a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    .line 117
    const v0, 0x7f0900a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_X:I

    .line 118
    const v0, 0x7f0900a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_Y:I

    .line 121
    const v0, 0x7f0900aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_X:I

    .line 122
    const v0, 0x7f0900ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_Y:I

    .line 125
    const v0, 0x7f0900ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    .line 126
    const v0, 0x7f0900ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    .line 127
    const v0, 0x7f0900ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    .line 128
    const v0, 0x7f0900af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    .line 131
    const v0, 0x7f0900b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_X:I

    .line 132
    const v0, 0x7f0900b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_Y:I

    .line 135
    const v0, 0x7f0900b2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_X:I

    .line 136
    const v0, 0x7f0900b3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_Y:I

    .line 139
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_X:I

    .line 140
    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_Y:I

    .line 142
    const v0, 0x7f0a0019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    .line 143
    const v0, 0x7f0a0018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 144
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_REC_TIME_TEXT_SHADOW:Z

    .line 146
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

    .line 147
    const v0, 0x7f0900be

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_STABILISATION_WIDTH:I

    return-void

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    :cond_1
    move v1, v2

    .line 144
    goto :goto_1
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "zOrder"    # I

    .prologue
    .line 298
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 193
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    .line 230
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    .line 245
    const-string v0, "10:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    .line 246
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualFHDRecordingMaxLimitTime:I

    .line 247
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualHDRecordingMaxLimitTime:I

    .line 248
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mUHDRecordingMaxLimitTime:I

    .line 249
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mWQHDRecordingMaxLimitTime:I

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    .line 251
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    .line 259
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->setTouchHandled(Z)V

    .line 301
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 303
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->init()V

    .line 304
    return-void

    .line 193
    :array_0
    .array-data 4
        0x7f020217
        0x7f020218
        0x7f020219
        0x7f02021a
        0x7f02021b
        0x7f02021c
        0x7f02021d
        0x7f02021e
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    return v0
.end method

.method static synthetic access$220(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private hmsConvert(I)Ljava/lang/String;
    .locals 6
    .param p1, "seconds"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 1173
    const v3, 0x1517f

    if-le p1, v3, :cond_0

    .line 1174
    const p1, 0x1517f

    .line 1177
    :cond_0
    div-int/lit8 v0, p1, 0x3c

    .line 1178
    .local v0, "min":I
    rem-int/lit8 v1, p1, 0x3c

    .line 1180
    .local v1, "sec":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    .local v2, "str":Ljava/lang/StringBuilder;
    if-ge v0, v5, :cond_1

    .line 1183
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    :goto_0
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    if-ge v1, v5, :cond_2

    .line 1192
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1198
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1186
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1195
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private init()V
    .locals 11

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    .line 309
    .local v10, "glContext":Lcom/sec/android/glview/TwGLContext;
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 312
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-direct {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 313
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f020216

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    .line 314
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f02023c

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    .line 315
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "REC"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f08000d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 342
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_TIME_IMG_POS_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 361
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 362
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f02023b

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 363
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PAUSE_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f02023a

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    .line 364
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "REC"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f08000d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 390
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 391
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_INDICATOR_TEXT_SIZE:I

    int-to-float v7, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 395
    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 421
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 423
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_INDICATOR_TEXT_SIZE:I

    int-to-float v7, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 427
    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 432
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_DUAL_TIME_TEXT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 454
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_STABILISATION_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_STABILISATION_WIDTH:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 458
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f020009

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorStabilisationIcon:Lcom/sec/android/glview/TwGLImage;

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TIMER_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorStabilisationIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 477
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 478
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "0K"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_QUICK_SETTING_STABILISATION_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TIMER_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 503
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 504
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "0K"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 509
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201ee

    const v7, 0x7f0201ef

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 511
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 514
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, "50M"

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 533
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_Y:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 534
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0201ee

    const v7, 0x7f0201ef

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    .line 538
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_REC_TIME_TEXT_SHADOW:Z

    move-object v1, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->ANIMATED_PHOTO_PROGRESS_GROUP_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 556
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v2, v2

    const v3, 0x7f020204

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 564
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020208

    const v5, 0x7f02020a

    const v6, 0x7f020209

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 582
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02020b

    const v5, 0x7f02020d

    const v6, 0x7f02020c

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 592
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 596
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_SWITCH_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200d6

    const v5, 0x7f0200d8

    const v6, 0x7f0200d7

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 614
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 618
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0201ea

    const v5, 0x7f0201eb

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 632
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201f8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 637
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020342

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->REC_ICON_TEXT_WIDTH:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_FAST_MOTION_REC_POS_X:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_RIGHT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_MICOFF_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TIMER_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_INDICATOR_MIC_ICON_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 655
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f020205

    const v5, 0x7f020207

    const v6, 0x7f020206

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 669
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->CAF_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f020202

    const v5, 0x7f020203

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 684
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_X:I

    int-to-float v2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f02020e

    const v5, 0x7f020210

    const v6, 0x7f02020f

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 696
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020214

    const v5, 0x7f020215

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 708
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    goto/16 :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    goto/16 :goto_1
.end method

.method private isNotElapsed1SEC()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1481
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_2

    .line 1482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1482
    goto :goto_0

    .line 1483
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1484
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1486
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 714
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 719
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 724
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 729
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 734
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_5

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 739
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 742
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 744
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    .line 747
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_7

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 749
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    .line 752
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_8

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 754
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 757
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_9

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 759
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 762
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_a

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 764
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 767
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_b

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 769
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 772
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_c

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 774
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 777
    :cond_c
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    .line 778
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    .line 779
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 780
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    .line 781
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    .line 782
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecIconText:Lcom/sec/android/glview/TwGLText;

    .line 783
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    .line 784
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    .line 785
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    .line 786
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 787
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 788
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 789
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 791
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 792
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    .line 793
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    .line 795
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 796
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 797
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 798
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 799
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 800
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    .line 801
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    .line 803
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    .line 804
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    .line 805
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    .line 806
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    .line 808
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 809
    return-void
.end method

.method public doDimmingRecordingButtons(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1351
    :cond_3
    return-void
.end method

.method public doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1354
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-eqz v0, :cond_1

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getRecordingStopAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 1367
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    .line 1369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 1371
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doDimmingRecordingButtons(Z)V

    .line 1373
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 1374
    :cond_2
    return-void
.end method

.method public forceStop()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1377
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    .line 1379
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 1382
    return-void
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 1454
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    .prologue
    .line 1275
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public getSnapShotButtonDimmed()Z
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    .line 1477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCAFButton()V
    .locals 2

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1471
    :cond_0
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualView:Lcom/sec/android/app/camera/MenuBase;

    .line 1142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualView:Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_0

    move v0, v1

    .line 1146
    :goto_0
    return v0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualView:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1146
    goto :goto_0
.end method

.method public onBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepComplete()V

    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1168
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1169
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 1170
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 7
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1492
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1493
    :cond_0
    const-string v1, "TwGLCamcorderRecordingMenu"

    const-string v2, "Call onClick after Clear!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_1
    :goto_0
    return v0

    .line 1497
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    .line 1498
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1499
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeTime:J

    .line 1501
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1504
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v0, :cond_1

    .line 1507
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    .line 1508
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1509
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1510
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1511
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1512
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1513
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1514
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1515
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    .line 1516
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1517
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseTime:J

    .line 1518
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v2, v5, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isNotElapsed1SEC()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1521
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lt v2, v0, :cond_1

    .line 1524
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-eq v2, v0, :cond_1

    .line 1527
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    .line 1528
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1529
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1530
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1531
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1532
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1533
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1534
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1535
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1536
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_0

    .line 1539
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto/16 :goto_0

    .line 1542
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1543
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1544
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setContinuousAF()V

    .line 1545
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1548
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1549
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    if-ne v2, v0, :cond_b

    .line 1550
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onRecordingDualModeSelected(I)V

    .line 1551
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    goto/16 :goto_0

    .line 1553
    :cond_b
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onRecordingDualModeSelected(I)V

    .line 1554
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    goto/16 :goto_0

    .line 1557
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1558
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraSettingsInDual()V

    .line 1559
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 1560
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraModeForDualCamera(I)V

    .line 1561
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualCameraSync()V

    .line 1562
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    .line 1563
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/16 v2, 0xbba

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(II)V

    .line 1564
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(II)V

    goto/16 :goto_0

    .line 1565
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1566
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->setFlashOff()V

    .line 1567
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraModeForDualCamera(I)V

    .line 1568
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualCameraSync()V

    .line 1569
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetAllParamsSync()V

    .line 1570
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/CommonEngine;->doChangeParameterSync(II)V

    .line 1571
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    goto/16 :goto_0

    .line 1574
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1575
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    .line 1576
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xca

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-ne v2, v6, :cond_1

    .line 1577
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepHide()V

    .line 1578
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1579
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1580
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_f

    .line 1581
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 1583
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepRecordingStop()V

    goto/16 :goto_0

    .line 1586
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1587
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xca

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-ne v1, v5, :cond_11

    .line 1589
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepComplete()V

    .line 1590
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1591
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1593
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto/16 :goto_0

    .line 1595
    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1596
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto/16 :goto_0

    :cond_13
    move v0, v1

    .line 1599
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doDimmingRecordingButtons(Z)V

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 1128
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stopTimer()V

    .line 1129
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    .line 1131
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 1132
    return-void
.end method

.method public onHideMenu()V
    .locals 0

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    .line 1136
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1603
    sparse-switch p1, :sswitch_data_0

    .line 1611
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1609
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1603
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1615
    sparse-switch p1, :sswitch_data_0

    .line 1654
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 1617
    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    if-nez v1, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    .line 1621
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    .line 1622
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepHide()V

    .line 1623
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 1630
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCameraKeyEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1631
    const-string v1, "TwGLCamcorderRecordingMenu"

    const-string v2, "returning because the enter key of the keyboard was inputted in the video recording state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1634
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    goto :goto_0

    .line 1651
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    .line 1615
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 1683
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1739
    :goto_0
    return-void

    .line 1685
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE2_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1687
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE3_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 1693
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1695
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1697
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1707
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 1708
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1712
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1716
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1726
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1730
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1731
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1733
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1735
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 1736
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepHide()V

    .line 1155
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHide()V

    .line 1157
    return-void
.end method

.method public onRecordingDualModeSelected(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1658
    const-string v0, "TwGLCamcorderRecordingMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingDualModeSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    if-ne p1, v3, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 1672
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualVisible()V

    .line 1673
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setOrientationForDual()V

    .line 1678
    :goto_0
    return-void

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleForRecording(Z)V

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setDualInvisible()V

    goto :goto_0
.end method

.method protected onShow()V
    .locals 10

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 812
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doDimmingRecordingButtons(Z)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onOrientationChanged(I)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-ne v0, v8, :cond_0

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_10

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_10

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_3

    .line 856
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v9, :cond_4

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-ne v0, v8, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v0

    if-nez v0, :cond_13

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 866
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 874
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_TOP_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_LEFT_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->RECORDING_SIZE_GROUP_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->INDICATOR_GROUP_POS_X:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE_MARGIN:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_X_MARGIN:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->SETTINGS_LINE1_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->DUAL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->updateLayout(Z)V

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showThumbnailButton()V

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 914
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    .line 915
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1034
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_8

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1036
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1052
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_9

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1054
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1060
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_a

    .line 1061
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1062
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1068
    :cond_a
    :goto_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v8, :cond_b

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mResumeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorPauseIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1078
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-ne v0, v9, :cond_d

    .line 1079
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopping:Z

    .line 1081
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 1082
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1087
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1089
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1091
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1095
    :cond_f
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 1096
    return-void

    .line 832
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    if-ne v0, v8, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v0

    if-nez v0, :cond_11

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 841
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_12

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 850
    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSettingsLine3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 853
    iput v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingDualMode:I

    goto/16 :goto_1

    .line 838
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 849
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualSwitch:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_7

    .line 863
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mQuickSettingButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 930
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eq v0, v8, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 931
    :cond_15
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    .line 932
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 946
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 947
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    .line 948
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 962
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 963
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    .line 964
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v4, :cond_18

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFastMotionSpeed()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 994
    :goto_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    .line 995
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 983
    :pswitch_0
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    goto :goto_8

    .line 986
    :pswitch_1
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    goto :goto_8

    .line 989
    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    goto :goto_8

    .line 998
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorSlowModeIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 1004
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1005
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    .line 1006
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1018
    :cond_1a
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    .line 1019
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1025
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mPauseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 1038
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-ne v0, v7, :cond_1d

    .line 1045
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_3

    .line 1047
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mSnapShotButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto/16 :goto_3

    .line 1056
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 1064
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mMicOffImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_5

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1451
    return-void
.end method

.method public setRecordingState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1458
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1459
    return-void
.end method

.method public showCAFButton()V
    .locals 2

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCAFButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1465
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 7

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x15

    const/16 v2, 0x12c

    const/4 v6, 0x0

    .line 1385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    .line 1386
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    .line 1392
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    .line 1394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-eq v0, v4, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    .line 1421
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getTotalStorage(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    const/16 v1, 0xe10

    if-ge v0, v1, :cond_3

    .line 1422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1423
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 1424
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    .line 1425
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    .line 1433
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stepSecond()V

    .line 1434
    return-void

    .line 1399
    :cond_4
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 1400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    if-le v0, v2, :cond_5

    .line 1401
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualFHDRecordingMaxLimitTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    .line 1402
    const-string v0, "05:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    .line 1419
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    .line 1403
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    if-le v0, v2, :cond_6

    .line 1404
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mUHDRecordingMaxLimitTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    .line 1405
    const-string v0, "05:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    goto :goto_1

    .line 1406
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    if-le v0, v2, :cond_7

    .line 1407
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mWQHDRecordingMaxLimitTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    .line 1408
    const-string v0, "05:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    goto :goto_1

    .line 1412
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_8

    .line 1413
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualHDRecordingMaxLimitTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    .line 1414
    const-string v0, "10:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    goto :goto_1

    .line 1416
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    .line 1417
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    goto :goto_1
.end method

.method public stepSecond()V
    .locals 5

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->handleRecordingTimerElapsed()I

    move-result v0

    .line 1438
    .local v0, "drift":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    rsub-int/lit8 v3, v0, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1439
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1444
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 1446
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 13
    .param p1, "bytes"    # J

    .prologue
    const-wide/16 v11, 0x0

    const/16 v10, 0x12

    const/4 v9, 0x1

    const-wide/16 v7, 0x400

    .line 1279
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isSharingMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isEmailMode:Z

    if-eqz v3, :cond_3

    .line 1280
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v0

    .line 1281
    .local v0, "mMaxSize":J
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p1

    div-long/2addr v3, v0

    long-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    .line 1282
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mProgress:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 1284
    cmp-long v3, p1, v0

    if-ltz v3, :cond_1

    .line 1285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    .line 1287
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1301
    .end local v0    # "mMaxSize":J
    :cond_2
    invoke-static {v9}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-eq v3, v9, :cond_6

    .line 1303
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v10, :cond_4

    .line 1304
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1324
    :goto_0
    return-void

    .line 1289
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v3

    if-ge v3, v9, :cond_2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1290
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->doStop()V

    goto :goto_0

    .line 1306
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    div-long v5, p1, v7

    div-long/2addr v5, v7

    cmp-long v3, v5, v11

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    div-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "M"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, p1, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "K"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1314
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v10, :cond_7

    .line 1315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1322
    .local v2, "modifiedSizeText":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecSizeText:Lcom/sec/android/glview/TwGLText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v5

    const-wide/32 v7, 0x2080000

    add-long/2addr v5, v7

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1317
    .end local v2    # "modifiedSizeText":Ljava/lang/String;
    :cond_7
    div-long v3, p1, v7

    div-long/2addr v3, v7

    cmp-long v3, v3, v11

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v7

    div-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "modifiedSizeText":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .end local v2    # "modifiedSizeText":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public updateRecordingTime(I)V
    .locals 9
    .param p1, "second"    # I

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    if-nez v0, :cond_8

    .line 1204
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    if-ne v0, p1, :cond_0

    .line 1205
    add-int/lit8 p1, p1, 0x1

    .line 1207
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeSpeed:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1220
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    .line 1223
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1226
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    if-lez v0, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoRecTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mAnimatedPhotoMaxRecTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1232
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->isRecRemainTimeVisibility:Z

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_5

    .line 1262
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecTimeText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1265
    :cond_6
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 1267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1272
    :cond_7
    :goto_2
    return-void

    .line 1212
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->preSecond:I

    if-le v0, p1, :cond_9

    .line 1213
    const-string v0, "TwGLCamcorderRecordingMenu"

    const-string v1, "wrong called more than once in fast motion"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1216
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerImg:[I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mFastModeTimerValue:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorFastModeTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_0

    .line 1240
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1242
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    sub-int/2addr v0, p1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b

    .line 1243
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1247
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    sub-int/2addr v0, p1

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_c

    .line 1248
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingTimeUpdateRepeat:I

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mDualRecordingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1252
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRemainRecordingMaxLimitTime:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_6

    .line 1253
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mRecordingState:I

    if-eq v0, v5, :cond_6

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1257
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1269
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2
.end method
