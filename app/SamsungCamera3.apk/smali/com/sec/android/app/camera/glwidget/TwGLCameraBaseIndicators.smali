.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$OnSideTouchIndicatorHideListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final COVER_SCREEN_WINDOW_HEIGHT:I

.field private static final COVER_SCREEN_WINDOW_WIDTH:I

.field private static final FACE_IS_CENTER:I = 0x0

.field public static final FACE_IS_CENTER_BOTTOM:I = 0x8

.field public static final FACE_IS_CENTER_MIDDLE:I = 0x5

.field public static final FACE_IS_CENTER_TOP:I = 0x2

.field private static final FACE_IS_LEFT:I = 0x1

.field public static final FACE_IS_LEFT_BOTTOM:I = 0x7

.field public static final FACE_IS_LEFT_MIDDLE:I = 0x4

.field public static final FACE_IS_LEFT_TOP:I = 0x1

.field private static final FACE_IS_RIGHT:I = 0x2

.field public static final FACE_IS_RIGHT_BOTTOM:I = 0x9

.field public static final FACE_IS_RIGHT_MIDDLE:I = 0x6

.field public static final FACE_IS_RIGHT_TOP:I = 0x3

.field private static final FACE_RECT_POSITION_BISECTION:I = 0x2

.field private static final FACE_RECT_POSITION_TRISECTION:I = 0x3

.field private static final FOCUS_BUTTON_POS_X:I

.field private static final FOCUS_BUTTON_POS_Y:I

.field private static final HELPTEXT_TIMEOUT:I = 0x1b58

.field private static final HELP_TEXT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERITCAL:F

.field private static final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERITCAL:F

.field private static final INDICATOR_GROUP_HEIGHT:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_X:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_Y:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_Y_FOR_SIDE_TOUCH_MENU:I

.field private static final INDICATOR_GROUP_LANDSCAPE_RIGHT_PADDING:I

.field private static final INDICATOR_GROUP_WIDTH:I

.field private static final INDICATOR_SHADOW_Y_POS:I

.field private static final INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

.field private static final INDICATOR_SHOOTINGMODE_HEIGHT:I

.field private static final INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

.field private static final INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

.field private static final INDICATOR_SHOOTINGMODE_WIDTH:I

.field private static final INDICATOR_TEXT_SIZE:I

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final INDICATOR_TEXT_STROKE_WIDTH:I

.field private static final MAX_FACE_COUNT:I = 0xa

.field private static final REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

.field private static final REMAIN_COUNTER_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET_FOR_TFT_LCD:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_RADIUS_FOR_TFT_LCD:I

.field private static final SIDE_TOUCH_GROUP_HEIGHT:I

.field private static final SIDE_TOUCH_GROUP_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraBaseIndicators"

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c


# instance fields
.field private mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

.field private mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

.field private mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

.field private mFaceCount:I

.field private mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

.field private mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

.field private mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

.field private mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

.field private mFocusButtonPosX:I

.field private mFocusButtonPosY:I

.field private mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

.field private mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideDescription:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsHelpTextHidedByTimeOut:Z

.field private final mMatrixForFace:Landroid/graphics/Matrix;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOrientation:I

.field private mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

.field private final mRect:Landroid/graphics/RectF;

.field private mRemainCount:I

.field private mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

.field private mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

.field private mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

.field private mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

.field private mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

.field private mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

.field private mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

.field private mTouchFocusRectCenterX:I

.field private mTouchFocusRectCenterY:I

.field private mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

.field private mWifiIndicator:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f090007

    const v3, 0x7f090006

    const/4 v0, 0x1

    .line 42
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    .line 43
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    .line 45
    const v1, 0x7f0902e5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    .line 46
    const v1, 0x7f0902e4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    .line 48
    const v1, 0x7f09005d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    .line 49
    const v1, 0x7f09005e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    .line 50
    const v1, 0x7f09005b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_RIGHT_PADDING:I

    .line 51
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_RIGHT_PADDING:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 52
    const v1, 0x7f090059

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    .line 53
    const v1, 0x7f09005a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y_FOR_SIDE_TOUCH_MENU:I

    .line 54
    const v1, 0x7f09005c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    .line 55
    const v1, 0x7f0a0039

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    .line 56
    const v1, 0x7f09005f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    .line 58
    const v1, 0x7f090062

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

    .line 59
    const v1, 0x7f090063

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    .line 60
    const v1, 0x7f090064

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

    .line 61
    const v1, 0x7f090065

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    .line 62
    const v1, 0x7f090066

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    .line 63
    const v1, 0x7f0a001d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    .line 64
    const/high16 v1, 0x7f080000

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 65
    const v1, 0x7f0903f5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHADOW_Y_POS:I

    .line 67
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 68
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    .line 72
    const v1, 0x7f090067

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    .line 73
    const v1, 0x7f090068

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    .line 74
    const v1, 0x7f090069

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    .line 75
    const v1, 0x7f09006a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    .line 76
    const v1, 0x7f09006c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    .line 77
    const v1, 0x7f09006d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    .line 78
    const v1, 0x7f09006e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    .line 79
    const v1, 0x7f09020d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    .line 80
    const v1, 0x7f09006b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    .line 81
    const v1, 0x7f09006f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 82
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    .line 83
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    .line 84
    const v1, 0x7f0a003c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    .line 85
    const v1, 0x7f0a001e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_STROKE_WIDTH:I

    .line 86
    const v1, 0x7f0a001f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SET_SHADOW:Z

    .line 87
    const v0, 0x7f0a0015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    .line 88
    const v0, 0x7f0a0016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET_FOR_TFT_LCD:I

    .line 89
    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_RADIUS_FOR_TFT_LCD:I

    .line 90
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_TOUCH_GROUP_WIDTH:I

    .line 91
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SIDE_TOUCH_GROUP_HEIGHT:I

    .line 93
    const v0, 0x7f0a0046

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 167
    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    .line 136
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/seccamera/SecCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    .line 143
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    .line 145
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 146
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 147
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    .line 148
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    .line 153
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    .line 156
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    .line 158
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHideDescription:Ljava/lang/Runnable;

    .line 169
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setCaptureEnabled(Z)V

    .line 170
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchHandled(Z)V

    .line 171
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 174
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->init()V

    .line 175
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    return-object v0
.end method

.method private getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I
    .locals 6
    .param p1, "FaceInfo"    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2, "max"    # I

    .prologue
    .line 998
    const/4 v1, 0x0

    .line 999
    .local v1, "MaxValue":F
    const/4 v0, 0x0

    .line 1001
    .local v0, "BigRectIndex":I
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 1003
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 1004
    const-string v3, "TwGLCameraBaseIndicators"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p2, :cond_1

    .line 1015
    :cond_0
    return v0

    .line 1009
    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    .line 1010
    add-int/lit8 v0, v2, 0x1

    .line 1011
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 1003
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDownRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1, "FaceInfo"    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2, "max"    # I
    .param p3, "BigRectIndex"    # I

    .prologue
    .line 1030
    const/4 v0, 0x0

    .line 1032
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1033
    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 1034
    add-int/lit8 v0, v0, 0x1

    .line 1032
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :cond_1
    return v0
.end method

.method private getLeftRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1, "FaceInfo"    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2, "max"    # I
    .param p3, "BigRectIndex"    # I

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1022
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1023
    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    .line 1024
    add-int/lit8 v0, v0, 0x1

    .line 1022
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1026
    :cond_1
    return v0
.end method

.method private getRectPosition([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 7
    .param p1, "rect"    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2, "max"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, "BigRectIndex":I
    const/4 v1, 0x0

    .line 965
    .local v1, "CountIndex":I
    if-nez p3, :cond_2

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    .line 967
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getLeftRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    .line 979
    :cond_0
    :goto_0
    const-string v4, "TwGLCameraBaseIndicators"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BigRectIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   CountIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    if-ne p2, v3, :cond_6

    .line 982
    if-nez v1, :cond_5

    .line 992
    :cond_1
    :goto_1
    return v2

    .line 968
    :cond_2
    const/4 v4, 0x3

    if-ne p3, v4, :cond_3

    .line 969
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    .line 970
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getDownRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    goto :goto_0

    .line 971
    :cond_3
    if-ne p3, v3, :cond_4

    .line 972
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    .line 973
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRightRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    goto :goto_0

    .line 974
    :cond_4
    if-ne p3, v2, :cond_0

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getBigRect([Lcom/sec/android/seccamera/SecCamera$Face;I)I

    move-result v0

    .line 976
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getUpRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 985
    goto :goto_1

    .line 987
    :cond_6
    if-eqz v1, :cond_1

    .line 989
    if-ne v1, v2, :cond_7

    .line 990
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move v2, v3

    .line 992
    goto :goto_1
.end method

.method private getRectPositionBasedScreen(ILandroid/graphics/RectF;I)I
    .locals 8
    .param p1, "orientation"    # I
    .param p2, "faceRect"    # Landroid/graphics/RectF;
    .param p3, "devision"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/high16 v7, 0x40000000

    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, "bound":F
    const/4 v1, 0x0

    .line 1063
    .local v1, "rectCenter":F
    if-nez p1, :cond_0

    .line 1064
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    .line 1065
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float v1, v4, v7

    .line 1077
    :goto_0
    cmpg-float v4, v1, v0

    if-gez v4, :cond_3

    .line 1082
    :goto_1
    return v2

    .line 1066
    :cond_0
    if-ne p1, v2, :cond_1

    .line 1067
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    .line 1068
    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float v1, v4, v7

    goto :goto_0

    .line 1069
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1070
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    .line 1071
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v1, v4, v7

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    div-int/2addr v4, p3

    int-to-float v0, v4

    .line 1074
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v1, v4, v7

    goto :goto_0

    .line 1079
    :cond_3
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_4

    mul-float v2, v0, v7

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    const/4 v2, 0x3

    if-ne p3, v2, :cond_4

    .line 1080
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1082
    goto/16 :goto_1
.end method

.method private getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "faceRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x3

    const/high16 v7, 0x41000000

    const/high16 v10, 0x40400000

    const/high16 v9, 0x40000000

    const/4 v4, 0x1

    .line 1093
    const/4 v1, 0x0

    .line 1094
    .local v1, "bound_row":F
    const/4 v0, 0x0

    .line 1095
    .local v0, "bound_col":F
    const/4 v3, 0x0

    .line 1096
    .local v3, "rectCenter_row":F
    const/4 v2, 0x0

    .line 1098
    .local v2, "rectCenter_col":F
    if-nez p1, :cond_2

    .line 1099
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1100
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1101
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 1102
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    .line 1120
    :goto_0
    mul-float v6, v0, v10

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7

    .line 1121
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5

    .line 1122
    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 1123
    :cond_0
    const/4 v4, 0x7

    .line 1160
    :cond_1
    :goto_1
    return v4

    .line 1103
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1104
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1105
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1106
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 1107
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto :goto_0

    .line 1108
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 1109
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1110
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1111
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 1112
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto/16 :goto_0

    .line 1114
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1115
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1116
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 1117
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto/16 :goto_0

    .line 1126
    :cond_5
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_6

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    .line 1127
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 1129
    :cond_6
    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    .line 1132
    const/4 v4, 0x7

    goto/16 :goto_1

    .line 1134
    :cond_7
    mul-float v6, v0, v10

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_e

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_e

    .line 1135
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    .line 1136
    if-eq p1, v4, :cond_8

    if-ne p1, v5, :cond_9

    .line 1137
    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 1139
    :cond_9
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1140
    :cond_a
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_b

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_b

    .line 1141
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 1143
    :cond_b
    if-eq p1, v4, :cond_c

    if-ne p1, v5, :cond_d

    .line 1144
    :cond_c
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1146
    :cond_d
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 1149
    :cond_e
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_11

    .line 1150
    if-eq p1, v4, :cond_f

    if-ne p1, v5, :cond_10

    .line 1151
    :cond_f
    const/16 v4, 0x9

    goto/16 :goto_1

    :cond_10
    move v4, v5

    .line 1153
    goto/16 :goto_1

    .line 1154
    :cond_11
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    const/high16 v6, 0x40a00000

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_12

    .line 1155
    const/4 v4, 0x6

    goto/16 :goto_1

    .line 1157
    :cond_12
    if-eq p1, v4, :cond_13

    if-ne p1, v5, :cond_14

    :cond_13
    move v4, v5

    .line 1158
    goto/16 :goto_1

    .line 1160
    :cond_14
    const/16 v4, 0x9

    goto/16 :goto_1
.end method

.method private getRightRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1, "FaceInfo"    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2, "max"    # I
    .param p3, "BigRectIndex"    # I

    .prologue
    .line 1050
    const/4 v0, 0x0

    .line 1052
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1053
    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 1054
    add-int/lit8 v0, v0, 0x1

    .line 1052
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1056
    :cond_1
    return v0
.end method

.method private getUpRect([Lcom/sec/android/seccamera/SecCamera$Face;II)I
    .locals 4
    .param p1, "FaceInfo"    # [Lcom/sec/android/seccamera/SecCamera$Face;
    .param p2, "max"    # I
    .param p3, "BigRectIndex"    # I

    .prologue
    .line 1040
    const/4 v0, 0x0

    .line 1042
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1043
    aget-object v2, p1, p3

    iget-object v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    .line 1044
    add-int/lit8 v0, v0, 0x1

    .line 1042
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    :cond_1
    return v0
.end method

.method private declared-synchronized init()V
    .locals 21

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    .line 180
    .local v2, "glContext":Lcom/sec/android/glview/TwGLContext;
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 188
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 190
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mInitialZoomValueOnScaleBegin:I

    .line 193
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButtonPosY:I

    int-to-float v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mInitialZoomValueOnScaleBegin:I

    int-to-float v6, v6

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setVisibility(I)V

    .line 196
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v8, 0x7f0e0026

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;-><init>(Lcom/sec/android/app/camera/Camera;IILcom/sec/android/app/camera/PreviewFrameLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    .line 201
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setDirection(I)V

    .line 204
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->setClipping(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFlashIndicator(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    .line 208
    .local v20, "selectedCommandId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0xbc4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    .line 211
    :cond_1
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0139

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 211
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 217
    :cond_2
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->setClipping(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTimerIndicator(I)V

    .line 220
    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 220
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 225
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getRemainCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 227
    const v1, 0x7f0a0001

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/4 v10, 0x1

    .line 228
    .local v10, "textUseShadow":Z
    :goto_2
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->REMAINCOUNTER_INDICATOR_TEXT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setClipping(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 235
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setClipping(Z)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setStorageIndicator(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    .line 239
    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_5

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0149

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 239
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 227
    .end local v10    # "textUseShadow":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 245
    .restart local v10    # "textUseShadow":Z
    :cond_5
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setClipping(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBatteryLevel()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isBatteryCharging()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    .line 248
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_6

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 248
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 252
    :cond_6
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setClipping(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    .line 256
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 260
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    .line 261
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_8

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 261
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 258
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 178
    .end local v2    # "glContext":Lcom/sec/android/glview/TwGLContext;
    .end local v10    # "textUseShadow":Z
    .end local v19    # "i":I
    .end local v20    # "selectedCommandId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 267
    .restart local v2    # "glContext":Lcom/sec/android/glview/TwGLContext;
    .restart local v10    # "textUseShadow":Z
    .restart local v19    # "i":I
    .restart local v20    # "selectedCommandId":I
    :cond_8
    :try_start_1
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setClipping(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGPSIndicator(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    .line 271
    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_9

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0145

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 277
    :cond_9
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setClipping(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setVisibility(I)V

    .line 281
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    const v5, 0x7f0201ec

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setClipping(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 286
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;->setClipping(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShareIndicator(I)V

    .line 290
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    const v5, 0x7f02033a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setClipping(Z)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setClickable(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setTitle(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x72

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v20

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setSubTitle(Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "mode":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    int-to-float v6, v6

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v8, v8

    const v9, 0x7f080006

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v9

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    .line 304
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v12, 0x1

    const v13, 0x40490fdb

    const/4 v14, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHADOW_Y_POS:I

    int-to-float v15, v1

    const v16, 0x7f080007

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const v3, 0x7f0a003a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 309
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_EASYMODE_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 329
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_TOP_MARGIN:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 334
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->setClipping(Z)V

    .line 336
    const/16 v19, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_c

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0162

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 336
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 326
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHOOTINGMODE_WIDTH:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_8

    .line 341
    :cond_c
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_PADDING_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->setClipping(Z)V

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRecordingModeIndicator(I)V

    .line 344
    const/16 v19, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getSize()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_d

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 359
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_e

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 377
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    .line 396
    :cond_f
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    .line 397
    const/16 v19, 0x0

    :goto_b
    const/16 v1, 0xa

    move/from16 v0, v19

    if-ge v0, v1, :cond_10

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    new-instance v11, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x42700000

    const/high16 v16, 0x42700000

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v11, v1, v19

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v19

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v19

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v19

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 397
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 416
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 422
    new-instance v11, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v16, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    const-string v17, ""

    sget v18, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIZE:F

    invoke-direct/range {v11 .. v18}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v12, 0x1

    const v13, 0x40490fdb

    const/4 v14, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_SHADOW_Y_POS:I

    int-to-float v15, v1

    const v16, 0x7f080007

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v3, 0x7f0a003d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 427
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setOrientation(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 444
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setCoverCameraMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :cond_12
    monitor-exit p0

    return-void
.end method

.method private isBatteryPercentageDisplay()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1320
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_battery_percentage"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1323
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private needToSetShootingModeText(I)Z
    .locals 4
    .param p1, "shootingMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1538
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->settingShootingModeToCommandId(I)I

    move-result v0

    .line 1540
    .local v0, "commandId":I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return v1

    .line 1549
    :cond_1
    const/16 v2, 0x155

    if-eq v0, v2, :cond_0

    .line 1553
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_2

    .line 1554
    const/4 v1, 0x1

    goto :goto_0

    .line 1557
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->isShootingModeAvailable(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 9
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x1

    const/high16 v8, 0x44fa0000

    const/high16 v7, 0x40000000

    const/high16 v5, 0x3f800000

    .line 1166
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v0

    .line 1167
    .local v0, "info":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    if-eqz v0, :cond_1

    iget v4, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_1

    .line 1170
    .local v1, "mirror":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1171
    .local v3, "previewWidth":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1173
    .local v2, "previewHeight":I
    if-eqz v1, :cond_2

    const/high16 v4, -0x40800000

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1175
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getDisplayOrientation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1178
    int-to-float v4, v3

    div-float/2addr v4, v8

    int-to-float v5, v2

    div-float/2addr v5, v8

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1179
    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v2

    div-float/2addr v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1182
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1183
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getViewMode()I

    move-result v4

    if-nez v4, :cond_0

    .line 1184
    const/16 v3, 0xb1c

    .line 1185
    const/16 v2, 0x640

    .line 1189
    :cond_0
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1190
    return-void

    .line 1167
    .end local v1    # "mirror":Z
    .end local v2    # "previewHeight":I
    .end local v3    # "previewWidth":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "mirror":Z
    .restart local v2    # "previewHeight":I
    .restart local v3    # "previewWidth":I
    :cond_2
    move v4, v5

    .line 1173
    goto :goto_1
.end method

.method private showShootingModeIndicator()V
    .locals 2

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShootingModeText()V

    .line 1522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1523
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 461
    :cond_0
    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 466
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    .line 468
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 471
    return-void

    .line 468
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized doesFaceRectContainsThisPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p1, "input"    # Landroid/graphics/Point;

    .prologue
    .line 1262
    monitor-enter p0

    const/4 v3, 0x0

    .line 1264
    .local v3, "ret":Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 1265
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 1274
    :cond_0
    monitor-exit p0

    return-object v3

    .line 1267
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 1268
    .local v1, "loc":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 1270
    .local v2, "loc2":Landroid/graphics/Point;
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_2

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_2

    .line 1271
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "ret":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    .restart local v3    # "ret":Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1262
    .end local v1    # "loc":Landroid/graphics/Point;
    .end local v2    # "loc2":Landroid/graphics/Point;
    .end local v3    # "ret":Landroid/graphics/Point;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getFaceCount()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    return v0
.end method

.method public getTouchFocusRectCenterX()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    return v0
.end method

.method public getTouchFocusRectCenterY()I
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    return v0
.end method

.method public declared-synchronized hideAllFaceRect()V
    .locals 3

    .prologue
    .line 849
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 858
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 852
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 853
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(I)V

    .line 854
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->resetTranslate()V

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 849
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hideCameraBaseIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1495
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setVisibility(I)V

    .line 1504
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->stopSideBezelTouchIconAnimation()V

    .line 1506
    :cond_1
    return-void
.end method

.method public hideCameraBaseIndicatorForVirtualKey()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setVisibility(I)V

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1517
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1518
    return-void
.end method

.method public hideFocusIndicator()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 828
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->hideFocusRect()V

    .line 834
    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 1463
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideScaleZoomRect()V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setVisibility(I)V

    .line 1223
    :cond_0
    return-void
.end method

.method public isFocusIndicatorEnabled()Z
    .locals 5

    .prologue
    const/16 v4, 0x30

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 759
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchFocusPositioned()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 780
    :cond_1
    :goto_0
    return v0

    .line 763
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getFaceCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 771
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_4
    move v0, v1

    .line 780
    goto :goto_0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 837
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-nez v1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScaleZoomRectVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 843
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-nez v1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 476
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 11
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 496
    sparse-switch p1, :sswitch_data_0

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 498
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 500
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 502
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 504
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 505
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 507
    sparse-switch p2, :sswitch_data_1

    .line 556
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showShootingModeIndicator()V

    goto :goto_0

    .line 511
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0171

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0173

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0171

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0174

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    .line 527
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0170

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto :goto_1

    .line 531
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 532
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 534
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 536
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 537
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0175

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 541
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 543
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 545
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024f

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 548
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 549
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 551
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 552
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0250

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 559
    :sswitch_8
    if-nez p2, :cond_3

    .line 560
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 561
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 562
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v2, v10, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b024f

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :cond_3
    if-ne p2, v6, :cond_0

    .line 567
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 568
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_SOUNDSHOT_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 569
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 570
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0250

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setHelpText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :sswitch_9
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->isFocusIndicatorEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eq v2, v10, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    goto/16 :goto_0

    .line 580
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 582
    :catch_0
    move-exception v2

    goto :goto_2

    .line 592
    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFlashIndicator(I)V

    .line 593
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 594
    .local v1, "selectedCommandId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 599
    .end local v0    # "i":I
    .end local v1    # "selectedCommandId":I
    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTimerIndicator(I)V

    .line 600
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 601
    .restart local v1    # "selectedCommandId":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 606
    .end local v0    # "i":I
    .end local v1    # "selectedCommandId":I
    :sswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setStorageIndicator(I)V

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 608
    .restart local v1    # "selectedCommandId":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 613
    .end local v0    # "i":I
    .end local v1    # "selectedCommandId":I
    :sswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGPSIndicator(I)V

    .line 614
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 615
    .restart local v1    # "selectedCommandId":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 620
    .end local v0    # "i":I
    .end local v1    # "selectedCommandId":I
    :sswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRecordingModeIndicator(I)V

    .line 621
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 622
    .restart local v1    # "selectedCommandId":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 623
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 627
    .end local v0    # "i":I
    .end local v1    # "selectedCommandId":I
    :sswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 628
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    .line 629
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 633
    :goto_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 634
    .restart local v1    # "selectedCommandId":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 631
    .end local v0    # "i":I
    .end local v1    # "selectedCommandId":I
    :cond_5
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_8

    .line 639
    :sswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShareIndicator(I)V

    goto/16 :goto_0

    .line 642
    :sswitch_11
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemoteViewfinderIndicator(I)V

    .line 643
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 644
    .restart local v1    # "selectedCommandId":I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .end local v1    # "selectedCommandId":I
    :sswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    goto/16 :goto_0

    .line 651
    :sswitch_13
    if-ne p2, v6, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_7

    .line 652
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    .line 653
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 654
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    .line 656
    :cond_6
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    .line 659
    :cond_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    goto/16 :goto_0

    .line 663
    :sswitch_14
    if-nez p2, :cond_0

    .line 664
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    goto/16 :goto_0

    .line 669
    :sswitch_15
    if-nez p2, :cond_0

    .line 670
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    goto/16 :goto_0

    .line 673
    :sswitch_16
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicator(I)V

    goto/16 :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_b
        0x13 -> :sswitch_12
        0x14 -> :sswitch_d
        0x16 -> :sswitch_c
        0x35 -> :sswitch_10
        0x47 -> :sswitch_f
        0x4d -> :sswitch_8
        0x55 -> :sswitch_14
        0x57 -> :sswitch_13
        0x59 -> :sswitch_15
        0x63 -> :sswitch_11
        0x6c -> :sswitch_a
        0x70 -> :sswitch_16
        0xbb8 -> :sswitch_e
    .end sparse-switch

    .line 507
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_6
        0xe -> :sswitch_3
        0x11 -> :sswitch_3
        0x17 -> :sswitch_3
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1f -> :sswitch_5
        0x22 -> :sswitch_1
        0x23 -> :sswitch_7
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x2d -> :sswitch_4
        0x2e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 491
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 492
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/app/camera/MenuBase;

    .prologue
    .line 1679
    instance-of v1, p1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1680
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .line 1681
    .local v0, "settingMenu":Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->hasShowNextViewMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->startSideBezelTouchIconAnimation()V

    .line 1683
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setShowNextViewMsg(Z)V

    .line 1686
    .end local v0    # "settingMenu":Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
    :cond_0
    return-void
.end method

.method public onOnSideTouchIndicatorHideListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->resetLayout()V

    .line 1693
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 1562
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1563
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    .line 1566
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAlignForOrientation()V

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1569
    packed-switch p1, :pswitch_data_0

    .line 1582
    :cond_1
    :goto_0
    return-void

    .line 1571
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicator(I)V

    goto :goto_0

    .line 1576
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicator(I)V

    goto :goto_0

    .line 1569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public refreshAllIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFlashIndicator(I)V

    .line 1601
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTimerIndicator(I)V

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setStorageIndicator(I)V

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    .line 1606
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 1611
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGPSIndicator(I)V

    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setShareIndicator(I)V

    .line 1613
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showShootingModeIndicator()V

    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1616
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1618
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    .line 1625
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRecordingModeIndicator(I)V

    .line 1626
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 1629
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1632
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    .line 1639
    :cond_0
    return-void

    .line 1608
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    goto :goto_0

    .line 1620
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setAutoNightDetectionIndicator(I)V

    goto :goto_1

    .line 1623
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showAutoNightDetectionIndicator(I)V

    goto :goto_1
.end method

.method public resetFocus(Lcom/sec/android/app/camera/PreviewFrameLayout;)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/app/camera/PreviewFrameLayout;

    .prologue
    .line 449
    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 450
    .local v0, "mTouchFocusX":I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 452
    .local v1, "mTouchFocusY":I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetInit(II)V

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 454
    return-void
.end method

.method public resetFocusPosIndicator()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetFocusPosIndicator()V

    .line 814
    :cond_0
    return-void
.end method

.method public resetPosIndicator()V
    .locals 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    goto :goto_0
.end method

.method public restoreMenu()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 483
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 484
    return-void
.end method

.method public setAlignForOrientation()V
    .locals 3

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1597
    :goto_0
    return-void

    .line 1588
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    .line 1592
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_WIDTH_VERITCAL:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->HELP_TEXT_HEIGHT_VERITCAL:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    .line 1585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioRecordIndicator(Z)V
    .locals 3
    .param p1, "isAudioRecording"    # Z

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    if-nez v0, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setRecoring()V

    .line 1366
    if-eqz p1, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setAudioRecordIndicatorlevel([I)V
    .locals 1
    .param p1, "MicAmplitude"    # [I

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    if-nez v0, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAudioRecordIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->setRecoringAmplitude([I)V

    goto :goto_0
.end method

.method public setAutoNightDetectionIndicator(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const v3, 0x7f0b0122

    const/4 v2, 0x0

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 684
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 687
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->setAutoNightDetectionIndicatorStatus(I)V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBatteryLevel(IZ)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "ischarging"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const v2, 0x7f0b02f1

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1294
    if-eqz p2, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b02f0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 1304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    :cond_2
    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    const/16 v0, 0x10

    if-ge p1, v0, :cond_3

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_3
    const/16 v0, 0x10

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_4

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    :cond_4
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setConnectingStateGPS(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 1358
    :goto_0
    return-void

    .line 1346
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1354
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 1348
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 1351
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 1346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCoverCameraMode(Z)V
    .locals 4
    .param p1, "coverMode"    # Z

    .prologue
    .line 1209
    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideCameraBaseIndicator()V

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->COVER_SCREEN_WINDOW_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->resetPositionForCoverMode(IIZ)V

    .line 1217
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showCameraBaseIndicator()V

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->resetPositionForCoverMode(IIZ)V

    goto :goto_0
.end method

.method public declared-synchronized setFaceCountChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 6
    .param p1, "faces"    # [Lcom/sec/android/seccamera/SecCamera$Face;

    .prologue
    .line 931
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 933
    if-eqz p1, :cond_2

    .line 934
    array-length v0, p1

    .line 935
    .local v0, "faceCount":I
    const/4 v1, 0x0

    .line 937
    .local v1, "minFaceCount":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 938
    const/16 v0, 0xa

    .line 940
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    if-eq v2, v0, :cond_1

    if-lt v0, v1, :cond_1

    .line 941
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 942
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 943
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 944
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 945
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    .line 947
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    const/4 v5, 0x2

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRectPositionBasedScreen(ILandroid/graphics/RectF;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->playFacePositionBasedScreen(I)V

    .line 953
    :cond_1
    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    .end local v0    # "faceCount":I
    .end local v1    # "minFaceCount":I
    :cond_2
    monitor-exit p0

    return-void

    .line 949
    .restart local v0    # "faceCount":I
    .restart local v1    # "minFaceCount":I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->playFaceCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 931
    .end local v0    # "faceCount":I
    .end local v1    # "minFaceCount":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFaceRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 9
    .param p1, "faces"    # [Lcom/sec/android/seccamera/SecCamera$Face;

    .prologue
    const/16 v8, 0xa

    .line 887
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 888
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 889
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 890
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_0

    .line 891
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(IZ)V

    .line 892
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->resetTranslate()V

    .line 888
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 897
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 899
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setRect(FFFF)V

    .line 900
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setVisibility(IZ)V

    .line 901
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v4, p1, v1

    aput-object v4, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 887
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 905
    .restart local v1    # "i":I
    :cond_1
    if-eqz p1, :cond_5

    .line 906
    :try_start_1
    array-length v0, p1

    .line 907
    .local v0, "faceCount":I
    const/4 v2, 0x0

    .line 909
    .local v2, "minFaceCount":I
    if-le v0, v8, :cond_2

    .line 910
    const/16 v0, 0xa

    .line 912
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    if-eq v3, v0, :cond_4

    if-lt v0, v2, :cond_4

    .line 913
    const-string v3, "VerificationLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face Detected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 916
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRectPosition([Lcom/sec/android/seccamera/SecCamera$Face;II)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/camera/Camera;->playFacePosition(II)V

    .line 923
    :cond_4
    :goto_2
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    .line 924
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 925
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    .end local v0    # "faceCount":I
    .end local v2    # "minFaceCount":I
    :cond_5
    monitor-exit p0

    return-void

    .line 917
    .restart local v0    # "faceCount":I
    .restart local v2    # "minFaceCount":I
    :cond_6
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 918
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->playFacePositionBasedScreenForVoiceGuide(I)V

    goto :goto_2

    .line 920
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/Camera;->playFaceCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setFlashIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 707
    if-nez p1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 713
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFlashIndicator:Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFlashIndicator;->setFlashStatus(I)V

    goto :goto_0
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->isFocusIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusRectIndicator(I)V

    .line 749
    :cond_0
    return-void
.end method

.method public setFocusRotationDegree(I)V
    .locals 1
    .param p1, "postionGap"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusRotationDegree(I)V

    .line 743
    :cond_0
    return-void
.end method

.method protected setGPSIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1331
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1333
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 1336
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/app/camera/PreviewFrameLayout;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V

    .line 1259
    :cond_0
    return-void
.end method

.method public setHelpText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    .line 1442
    return-void
.end method

.method public setRecordingModeIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    if-nez v0, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1383
    :cond_0
    if-nez p1, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRecordingModeIndicator:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;->setRecordingModeStatus(I)V

    goto :goto_0
.end method

.method public setRemainCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x4

    .line 1278
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    .line 1280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1290
    :goto_0
    return-void

    .line 1283
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCounterIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setRemoteViewfinderIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1405
    const-string v0, "TwGLCameraBaseIndicators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteViewfinderIndicator - mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_0

    .line 1414
    :goto_0
    return-void

    .line 1409
    :cond_0
    if-nez p1, :cond_1

    .line 1410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemoteViewfinderIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setScaleZoomRect()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setVisibility(I)V

    .line 1196
    :cond_0
    return-void
.end method

.method public setShareIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1392
    const-string v0, "TwGLCameraBaseIndicators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShareIndicator - mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    if-nez v0, :cond_0

    .line 1402
    :goto_0
    return-void

    .line 1396
    :cond_0
    if-nez p1, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShareIndicator:Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLShareIndicator;->setShareStatus(I)V

    goto :goto_0
.end method

.method public setShootingModeText()V
    .locals 3

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 1528
    .local v0, "shootingMode":I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->needToSetShootingModeText(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mShootingModeIndicator:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1531
    :cond_0
    return-void
.end method

.method public setSideTouchIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-nez v0, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1646
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    if-nez v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 1648
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setSideTouchIndicatorState(I)V

    goto :goto_0

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->stopSideBezelTouchIconAnimation()V

    .line 1653
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setSideTouchIndicatorState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setSideTouchBarState(I)V

    .line 1661
    :cond_0
    return-void
.end method

.method public setStorageIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setStorage(I)V

    .line 727
    if-nez p1, :cond_2

    .line 728
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_1

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setTimerIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 722
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTimerIndicator:Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerIndicator;->setTimerStatus(I)V

    goto :goto_0
.end method

.method public setTouchFocusRectCenter(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1226
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 1227
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(II)V

    .line 1232
    :cond_0
    return-void
.end method

.method public setTouchFocusRectCenterWithoutAnimation(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1235
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterX:I

    .line 1236
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mTouchFocusRectCenterY:I

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(IIZ)V

    .line 1240
    :cond_0
    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1430
    const-string v0, "TwGLCameraBaseIndicators"

    const-string v1, "setVoiceStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVoiceStatus(I)V

    goto :goto_0
.end method

.method public setWifiDirectStatus()V
    .locals 3

    .prologue
    .line 1417
    const-string v1, "TwGLCameraBaseIndicators"

    const-string v2, "setWifiDirectStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    if-nez v1, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1421
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ShareShot;->checkWifiConnection(Z)Z

    move-result v0

    .line 1422
    .local v0, "wifidirect":Z
    if-eqz v0, :cond_1

    .line 1423
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0201ed

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0

    .line 1425
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mWifiIndicator:Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f0201ec

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 1
    .param p1, "zoomValue"    # I

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mScaleZoomRect:Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->setZoomValue(I)V

    .line 1206
    :cond_0
    return-void
.end method

.method public showAutoNightDetectionIndicator(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    if-nez v0, :cond_0

    .line 704
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mAutoNightDetectionIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAutoNightDetectionIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public showCameraBaseIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    .line 1480
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setVoiceStatus(I)V

    .line 1487
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showShootingModeIndicator()V

    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->setVisibility(I)V

    .line 1492
    :cond_1
    return-void

    .line 1482
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public showFocusIndicator()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->isFocusIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->showFocusIndicator(I)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 822
    :cond_0
    return-void
.end method

.method public showHelpText()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1445
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1447
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1452
    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIsHelpTextHidedByTimeOut:Z

    .line 1453
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1456
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    .line 1457
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1458
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1460
    :cond_2
    return-void
.end method

.method public showVoiceInputIndicator(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mVoiceIndicator:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->shrinkRect()V

    .line 1254
    :cond_0
    return-void
.end method

.method public declared-synchronized startHideFaceRectAnimation()V
    .locals 4

    .prologue
    .line 861
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 884
    :cond_0
    monitor-exit p0

    return-void

    .line 864
    :cond_1
    :try_start_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 865
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 879
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 880
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 881
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 882
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public startSideBezelTouchIconAnimation()V
    .locals 3

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mOrientation:I

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->startSideBezelTouchIconAnimation()V

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mIndicatorGroup:Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_Y_FOR_SIDE_TOUCH_MENU:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;->moveLayoutAbsolute(FF)V

    .line 1669
    :cond_0
    return-void
.end method

.method public stopSideBezelTouchIconAnimation()V
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mSideBezelTouchIndicator:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->stopSideBezelTouchIconAnimation()V

    .line 1675
    :cond_0
    return-void
.end method
