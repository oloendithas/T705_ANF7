.class public Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLBurstPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final CAPTURETRI_HEIGHT:F

.field private static final CAPTURETRI_WIDTH:F

.field private static final GUIDE_HELP_TEXT_HEIGHT:F

.field private static final GUIDE_HELP_TEXT_POS_X:F

.field private static final GUIDE_HELP_TEXT_POS_Y:F

.field private static final GUIDE_HELP_TEXT_SIZE:F

.field private static final GUIDE_HELP_TEXT_WIDTH:F

.field private static final GUIDE_TEXT_HEIGHT:F

.field private static final GUIDE_TEXT_MARGIN:F

.field private static final GUIDE_TEXT_PORTRAIT_MARGIN:F

.field private static final GUIDE_TEXT_SIZE:F

.field private static final GUIDE_TEXT_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_X:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_X:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_Y:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_X:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_Y:F = 0.0f

.field private static final INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_X:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_Y:F = 0.0f

.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private static final LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_X:F

.field private static final LIVEPREVIEW_LANDSCAPE_Y:F

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 60.0f

.field private static final LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_X:F

.field private static final LIVEPREVIEW_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_RECT_THICKNESS:F

.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_X:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_SINGLE_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_X:F

.field private static final LIVEPREVIEW_SINGLE_Y:F

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_MOVESLOWLY:I = 0x5

.field private static final PANORAMASHOT_RECT_HEIGHT:F

.field private static final PANORAMASHOT_RECT_WIDTH:F

.field private static final PANORAMASHOT_TRI_HEIGHT_WIDTH:F

.field private static final PANORAMASHOT_TRI_POS_X:[F

.field private static final PANORAMASHOT_TRI_POS_Y:[F

.field private static final PANORAMASHOT_TRI_WIDTH:F

.field private static final PANORAMASHOT_TRI_WIDTH_HEIGHT:F

.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x190

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static SCREEN_HEIGHT:I = 0x0

.field private static final SCREEN_RATIO:F

.field protected static SCREEN_WIDTH:I = 0x0

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLBurstPanoramaMenu"

.field private static final WARNING_ARROW_OFFSET:F

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static WARNING_DISTANCE_HORIZONTAL:I

.field private static WARNING_DISTANCE_VERTICAL:I

.field private static WARNING_LEVEL_HIGH:I

.field private static WARNING_LEVEL_LOW:I

.field private static WARNING_LEVEL_NONE:I

.field private static WARNING_LEVEL_STOP:I


# instance fields
.field private bDrawLivePreview:Z

.field private bSupportRotatePreviewRect:Z

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEnterOrientation:I

.field private mGTShow:Z

.field private mGuideText:Lcom/sec/android/glview/TwGLText;

.field private mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaWarning:Z

.field private mPostProgress:I

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailWidth:F

.field private mPreviousCaptureCount:I

.field private mSideMenuHidden:Z

.field private mThumbnailPreviewHeight:I

.field private mThumbnailPreviewMaxHeight:I

.field private mThumbnailPreviewMaxWidth:I

.field private mThumbnailPreviewPreallocatedBuffer:[I

.field private mThumbnailPreviewWidth:I

.field private mTri:[[Lcom/sec/android/glview/TwGLImage;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x40000000

    .line 67
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    .line 68
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    .line 69
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    .line 71
    const v0, 0x7f09030f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    .line 72
    const v0, 0x7f090310

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    .line 74
    const v0, 0x7f090311

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    .line 75
    const v0, 0x7f090312

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 76
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_X:F

    .line 77
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_Y:F

    .line 78
    const v0, 0x7f0a003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_SIZE:F

    .line 80
    const v0, 0x7f09030d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    .line 81
    const v0, 0x7f09030e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    .line 82
    const v0, 0x7f0a003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    .line 83
    const v0, 0x7f090313

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    .line 84
    const v0, 0x7f090314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_PORTRAIT_MARGIN:F

    .line 87
    const v0, 0x7f090315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40e00000

    div-float/2addr v0, v1

    const-string v1, "7"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 88
    const v0, 0x7f090316

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 89
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 90
    const v0, 0x7f090317

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 91
    const v0, 0x7f090318

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 92
    const v0, 0x7f090319

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x41400000

    div-float/2addr v0, v1

    const-string v1, "12"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 93
    const v0, 0x7f09031a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    .line 94
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 95
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 96
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 97
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 98
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 99
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 100
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 101
    const v0, 0x7f09031b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    .line 102
    const v0, 0x7f09031c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 104
    const v0, 0x7f09031d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 107
    const v0, 0x7f090320

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    .line 108
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    .line 109
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    .line 110
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    .line 111
    const v0, 0x7f090323

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    .line 112
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    .line 113
    const v0, 0x7f090321

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    .line 114
    const v0, 0x7f090322

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    .line 116
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    .line 117
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    .line 118
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    .line 120
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    .line 121
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    .line 122
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    .line 125
    const v0, 0x7f090324

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 126
    const v0, 0x7f090325

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    .line 128
    const v0, 0x7f09031e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    .line 129
    const v0, 0x7f09031f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    .line 130
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    const/high16 v1, 0x41a00000

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    .line 132
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    .line 135
    const v0, 0x7f09030a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:F

    .line 136
    const v0, 0x7f09030b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    .line 137
    const v0, 0x7f09030c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f090302

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090303

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f090304

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f090305

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f090306

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090307

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f090308

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f090309

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    .line 151
    sput v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 152
    sput v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    .line 153
    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    .line 154
    sput v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    .line 156
    const v0, 0x7f0a0028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    .line 157
    const v0, 0x7f0a0029

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    .line 170
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    .line 171
    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 265
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 161
    const/4 v0, 0x4

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/sec/android/glview/TwGLImage;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 185
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 205
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setCaptureEnabled(Z)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 271
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 272
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 277
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    const v6, 0x7f0b0227

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 283
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 284
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 285
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 286
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 294
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 296
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201a2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 298
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201a3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 302
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 310
    const v0, 0x7f090327

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v8

    .line 312
    .local v8, "arrowOffsetPx":F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02019c

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f02019b

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020199

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f02019a

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02019d

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f02019e

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020198

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f020197

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02019c

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:F

    const/4 v5, 0x0

    const v6, 0x7f02019b

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 333
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02019d

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:F

    const v6, 0x7f02019e

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 341
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 355
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    const v6, 0x7f0201a3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 358
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201a8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 360
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201a9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 363
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    const v6, 0x7f0b0223

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 368
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020214

    const v5, 0x7f020215

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 377
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->onOrientationChanged(I)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 387
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/4 v0, 0x4

    if-ge v9, v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 387
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 305
    .end local v8    # "arrowOffsetPx":F
    .end local v9    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    .line 395
    .restart local v8    # "arrowOffsetPx":F
    .restart local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 398
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->init()V

    .line 399
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 1479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1480
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x40000000

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_PORTRAIT_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_PORTRAIT_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_HELP_TEXT_WIDTH:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 406
    return-void
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 51
    .param p1, "detectedDirection"    # Z

    .prologue
    .line 1511
    monitor-enter p0

    :try_start_0
    const-string v5, "TwGLBurstPanoramaMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLivePreviewLayout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " direction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_5

    if-nez p1, :cond_5

    .line 1515
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 1521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1522
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    .line 1523
    :cond_0
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1524
    .local v24, "groupX":F
    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1525
    .local v25, "groupY":F
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1526
    .local v23, "groupW":F
    sget v20, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1527
    .local v20, "groupH":F
    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1528
    .local v40, "rectW":F
    sget v39, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1541
    .local v39, "rectH":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v8, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1548
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    .end local v20    # "groupH":F
    .end local v23    # "groupW":F
    .end local v24    # "groupX":F
    .end local v25    # "groupY":F
    .end local v39    # "rectH":F
    .end local v40    # "rectW":F
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 1530
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 1531
    :cond_3
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    .line 1532
    .restart local v24    # "groupX":F
    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1533
    .restart local v25    # "groupY":F
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1534
    .restart local v23    # "groupW":F
    sget v20, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1535
    .restart local v20    # "groupH":F
    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1536
    .restart local v40    # "rectW":F
    sget v39, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .restart local v39    # "rectH":F
    goto :goto_0

    .line 1538
    .end local v20    # "groupH":F
    .end local v23    # "groupW":F
    .end local v24    # "groupX":F
    .end local v25    # "groupY":F
    .end local v39    # "rectH":F
    .end local v40    # "rectW":F
    :cond_4
    const-string v5, "TwGLBurstPanoramaMenu"

    const-string v8, "updateLivePreviewLayout: Invalid orientation"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1511
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1552
    :cond_5
    if-eqz p1, :cond_1

    .line 1553
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 1554
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v5, :cond_7

    .line 1556
    :cond_6
    const-string v5, "TwGLBurstPanoramaMenu"

    const-string v8, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1559
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showStopButton()V

    .line 1569
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v47, v5, v8

    .line 1570
    .local v47, "widthFocus":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v27, v5, v8

    .line 1572
    .local v27, "heightFocus":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v35, v5, v8

    .line 1573
    .local v35, "oldLeftGroup":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v37, v5, v8

    .line 1574
    .local v37, "oldTopGroup":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v34

    .line 1575
    .local v34, "oldLeft":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v36

    .line 1576
    .local v36, "oldTop":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v38

    .line 1577
    .local v38, "oldWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v33

    .line 1578
    .local v33, "oldHeight":F
    const/16 v29, 0x1

    .line 1580
    .local v29, "landscape":Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v46, v5, v8

    .line 1581
    .local v46, "width":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v26, v5, v8

    .line 1583
    .local v26, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v50, v0

    monitor-enter v50
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1584
    :try_start_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v5, :pswitch_data_0

    .line 1666
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v17, v35, v5

    .line 1667
    .local v17, "fromXDeltaRect":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v19, v37, v5

    .line 1668
    .local v19, "fromYDeltaRect":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v5, v35, v5

    add-float v34, v34, v5

    .line 1669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v5

    sub-float v16, v34, v5

    .line 1670
    .local v16, "fromXDelta":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v5, v37, v5

    add-float v36, v36, v5

    .line 1671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v5

    sub-float v18, v36, v5

    .line 1672
    .local v18, "fromYDelta":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v5

    div-float v4, v38, v5

    .line 1673
    .local v4, "scaleX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    div-float v6, v33, v5

    .line 1675
    .local v6, "scaleY":F
    new-instance v28, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v28 .. v28}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1680
    .local v28, "interpol":Landroid/view/animation/Interpolator;
    if-eqz v29, :cond_8

    .line 1681
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000

    const/high16 v7, 0x3f800000

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1682
    .local v3, "animRect":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v3, v5, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1683
    const-wide/16 v8, 0xb2

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1684
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1685
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1686
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1711
    :goto_3
    new-instance v43, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1712
    .local v43, "ta":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1713
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v43

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1714
    const-wide/16 v8, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1715
    const/4 v5, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1716
    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetClipRect()V

    .line 1719
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5, v3}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    .line 1723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->startAnimation()V

    .line 1724
    monitor-exit v50

    goto/16 :goto_1

    .end local v3    # "animRect":Landroid/view/animation/Animation;
    .end local v4    # "scaleX":F
    .end local v6    # "scaleY":F
    .end local v16    # "fromXDelta":F
    .end local v17    # "fromXDeltaRect":F
    .end local v18    # "fromYDelta":F
    .end local v19    # "fromYDeltaRect":F
    .end local v28    # "interpol":Landroid/view/animation/Interpolator;
    .end local v43    # "ta":Landroid/view/animation/Animation;
    :catchall_1
    move-exception v5

    monitor-exit v50
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1586
    :pswitch_1
    const/16 v21, 0x0

    .line 1587
    .local v21, "groupLeft":F
    const/16 v22, 0x0

    .line 1588
    .local v22, "groupTop":F
    const/16 v48, 0x0

    .line 1589
    .local v48, "x":F
    const/16 v49, 0x0

    .line 1590
    .local v49, "y":F
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    neg-float v5, v5

    const/high16 v8, 0x40800000

    div-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    add-float v42, v5, v8

    .line 1591
    .local v42, "startOffsetPosition":F
    move/from16 v31, v42

    .line 1592
    .local v31, "leftFocus":F
    sget v21, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 1593
    sget v22, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 1594
    move/from16 v48, v31

    .line 1595
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float v49, v5, v8

    .line 1597
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v8, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v46

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1605
    add-float v5, v31, v47

    const/high16 v8, 0x41400000

    sub-float v46, v5, v8

    .line 1606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    move/from16 v0, v46

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1611
    .end local v21    # "groupLeft":F
    .end local v22    # "groupTop":F
    .end local v31    # "leftFocus":F
    .end local v42    # "startOffsetPosition":F
    .end local v48    # "x":F
    .end local v49    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    neg-float v5, v5

    const/high16 v8, 0x40400000

    mul-float/2addr v5, v8

    const/high16 v8, 0x40800000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float v42, v5, v8

    .line 1617
    .restart local v42    # "startOffsetPosition":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    sub-float v30, v5, v46

    .line 1618
    .local v30, "left":F
    move/from16 v31, v42

    .line 1619
    .restart local v31    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    move/from16 v0, v30

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v46

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v10, 0x40800000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v31

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1622
    const/high16 v5, 0x40000000

    div-float v5, v47, v5

    sub-float v5, v31, v5

    const/high16 v8, 0x41400000

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v46, v5, v8

    .line 1623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/high16 v8, 0x42200000

    add-float v8, v8, v46

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1628
    .end local v30    # "left":F
    .end local v31    # "leftFocus":F
    .end local v42    # "startOffsetPosition":F
    :pswitch_3
    const/16 v29, 0x0

    .line 1629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1633
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v5, v5, v26

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v44, v5, v8

    .line 1634
    .local v44, "top":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    neg-float v5, v5

    const/high16 v8, 0x40000000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sub-float v42, v5, v8

    .line 1635
    .restart local v42    # "startOffsetPosition":F
    move/from16 v45, v42

    .line 1636
    .local v45, "topFocus":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v26, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1637
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float v31, v5, v8

    .line 1638
    .restart local v31    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v44

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1640
    const/high16 v5, 0x40000000

    div-float v5, v27, v5

    sub-float v5, v44, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v5, v8

    const/high16 v8, 0x41b00000

    sub-float v26, v5, v8

    .line 1641
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    const/high16 v9, 0x41900000

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1646
    .end local v31    # "leftFocus":F
    .end local v42    # "startOffsetPosition":F
    .end local v44    # "top":F
    .end local v45    # "topFocus":F
    :pswitch_4
    const/16 v29, 0x0

    .line 1647
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1652
    const/16 v44, 0x0

    .line 1653
    .restart local v44    # "top":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40000000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v26, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v44

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1655
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000

    mul-float/2addr v5, v8

    const/high16 v8, 0x41100000

    div-float/2addr v5, v8

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    add-float v27, v5, v8

    .line 1656
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x40000000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float v42, v5, v8

    .line 1657
    .restart local v42    # "startOffsetPosition":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float v31, v5, v8

    .line 1658
    .restart local v31    # "leftFocus":F
    move/from16 v45, v42

    .line 1659
    .restart local v45    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v31

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1660
    add-float v5, v26, v27

    const/high16 v8, 0x40000000

    div-float v8, v27, v8

    sub-float v26, v5, v8

    .line 1661
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    const/high16 v9, 0x41900000

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1688
    .end local v31    # "leftFocus":F
    .end local v42    # "startOffsetPosition":F
    .end local v44    # "top":F
    .end local v45    # "topFocus":F
    .restart local v4    # "scaleX":F
    .restart local v6    # "scaleY":F
    .restart local v16    # "fromXDelta":F
    .restart local v17    # "fromXDeltaRect":F
    .restart local v18    # "fromYDelta":F
    .restart local v19    # "fromYDeltaRect":F
    .restart local v28    # "interpol":Landroid/view/animation/Interpolator;
    :cond_8
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000

    const/high16 v11, 0x3f800000

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000

    move v8, v4

    move v10, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1689
    .local v7, "scaleRect":Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 1690
    const-wide/16 v8, 0xb2

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1691
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1692
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1693
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1695
    new-instance v32, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1696
    .local v32, "moveRect":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 1697
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1698
    const-wide/16 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1699
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1700
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1702
    new-instance v41, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1703
    .local v41, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1704
    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1705
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1706
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1707
    move-object/from16 v3, v41

    .restart local v3    # "animRect":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 1584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1483
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 1484
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1485
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 1488
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 1489
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1492
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1493
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1494
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 1496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 1497
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1498
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1496
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1503
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1504
    return-void
.end method

.method public getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .param p1, "speed"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 443
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 444
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 446
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 472
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 473
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 474
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 475
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 476
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 477
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 480
    :cond_0
    return-object v1

    .line 449
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 450
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 455
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 456
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 461
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 462
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 467
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 468
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getEnterOrientation()I
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    return v0
.end method

.method public getPreviewThumbnailSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1742
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_0

    .line 1743
    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewThumbnailSize : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1762
    :pswitch_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 1763
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 1767
    :goto_0
    return-void

    .line 1750
    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 1751
    .local v0, "Ratio":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 1752
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    goto :goto_0

    .line 1757
    .end local v0    # "Ratio":F
    :pswitch_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 1758
    .restart local v0    # "Ratio":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 1759
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    goto :goto_0

    .line 1747
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hideCaptureTri()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 614
    return-void
.end method

.method public hideGuideText()V
    .locals 2

    .prologue
    .line 426
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public hideLivePreview()V
    .locals 2

    .prologue
    .line 695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 696
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 698
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method public hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 540
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 541
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    return-void
.end method

.method public hideStopButton()V
    .locals 2

    .prologue
    .line 603
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 609
    return-void
.end method

.method public hideWarningArrow(Z)V
    .locals 3
    .param p1, "all"    # Z

    .prologue
    const/4 v2, 0x4

    .line 1462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    .line 1464
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1467
    :cond_0
    if-eqz p1, :cond_1

    .line 1468
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1470
    :cond_1
    return-void
.end method

.method public hideWarningBox()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1475
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureStopped()V

    .line 486
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 494
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetPanoramaCapturing()V

    .line 490
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 682
    const/4 v0, 0x1

    .line 685
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 557
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    .line 560
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 711
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 712
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_1

    .line 713
    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return v0

    .line 718
    :cond_1
    if-ne p1, v2, :cond_2

    .line 719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_2

    .line 720
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 729
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_3

    .line 730
    :cond_0
    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->onBack()V

    .line 761
    :cond_1
    :goto_0
    return v0

    .line 735
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-gtz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 739
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 743
    :cond_3
    if-ne p1, v2, :cond_6

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_4

    .line 745
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 749
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 750
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyUp - Preview is not started yet"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 753
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 754
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    goto :goto_0

    .line 761
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLivePreviewData([B)V
    .locals 27
    .param p1, "data"    # [B

    .prologue
    .line 1776
    monitor-enter p0

    :try_start_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lmj onLivePreviewData , mCapturecount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/4 v9, 0x0

    .line 1779
    .local v9, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_4

    .line 1780
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    .line 1781
    .local v21, "rotation":[Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1782
    if-nez v9, :cond_2

    .line 1783
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to decode RGBA data for live preview. Data: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    .end local v21    # "rotation":[Ljava/lang/Integer;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1787
    .restart local v21    # "rotation":[Ljava/lang/Integer;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    .line 1794
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    .line 1795
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .line 1797
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1955
    .end local v21    # "rotation":[Ljava/lang/Integer;
    :cond_3
    :goto_1
    if-nez v9, :cond_12

    .line 1956
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, " data:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1776
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1800
    .restart local v9    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-eq v3, v4, :cond_1

    .line 1806
    const/4 v14, 0x1

    .line 1808
    .local v14, "bCheckPassed":Z
    const v7, 0x1869f

    .line 1809
    .local v7, "width":I
    const v8, 0x1869f

    .line 1810
    .local v8, "height":I
    const/4 v15, 0x0

    .line 1811
    .local v15, "datarotation":I
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_7

    .line 1812
    :cond_5
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Received null or invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/4 v14, 0x0

    .line 1836
    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-ne v14, v3, :cond_3

    .line 1838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    if-nez v3, :cond_a

    .line 1839
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_0

    .line 1855
    :pswitch_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1816
    :cond_7
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/16 v4, 0x47

    if-ne v3, v4, :cond_8

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_8

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_9

    .line 1817
    :cond_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Data is invalid (RGBA tag not found)"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1818
    const/4 v14, 0x0

    .line 1822
    :cond_9
    const/4 v3, 0x4

    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v7

    .line 1823
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v8

    .line 1824
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    .line 1830
    :goto_3
    :try_start_4
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, v7, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x10

    if-ge v3, v4, :cond_6

    .line 1831
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onLivePreviewData: The buffer is too small to contain a image of "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "x"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1825
    :catch_0
    move-exception v16

    .line 1826
    .local v16, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Could not parse panorama bitmap header"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const/4 v14, 0x0

    goto :goto_3

    .line 1842
    .end local v16    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 1843
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 1844
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1845
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1865
    :cond_a
    :goto_4
    :try_start_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 1866
    .local v18, "intData":[I
    const/16 v10, 0xff

    .line 1867
    .local v10, "MASK":I
    const/16 v20, 0x0

    .line 1868
    .local v20, "result":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    move/from16 v0, v17

    if-ge v0, v3, :cond_b

    .line 1870
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v20, v3, 0x10

    .line 1871
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x8

    add-int v20, v20, v3

    .line 1872
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    add-int v20, v20, v3

    .line 1873
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x18

    add-int v20, v20, v3

    .line 1874
    aput v20, v18, v17
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1868
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1849
    .end local v10    # "MASK":I
    .end local v17    # "i":I
    .end local v18    # "intData":[I
    .end local v20    # "result":I
    :pswitch_2
    :try_start_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 1850
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 1851
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1852
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 1877
    .restart local v10    # "MASK":I
    .restart local v17    # "i":I
    .restart local v18    # "intData":[I
    .restart local v20    # "result":I
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_1

    .line 1943
    :pswitch_3
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 1947
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v10    # "MASK":I
    .end local v17    # "i":I
    .end local v18    # "intData":[I
    .end local v20    # "result":I
    :catch_1
    move-exception v16

    .line 1948
    .restart local v16    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Index Control Failed!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1879
    .end local v16    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    .restart local v10    # "MASK":I
    .restart local v17    # "i":I
    .restart local v18    # "intData":[I
    .restart local v20    # "result":I
    :pswitch_4
    :try_start_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_c

    .line 1880
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1882
    :cond_c
    const/16 v23, 0x0

    .local v23, "y":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_d

    .line 1883
    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v24, v24, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1882
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 1885
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1887
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 1888
    :catch_2
    move-exception v19

    .line 1889
    .local v19, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1895
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v23    # "y":I
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_e

    .line 1896
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1898
    :cond_e
    const/16 v23, 0x0

    .restart local v23    # "y":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_f

    .line 1899
    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v25, v0

    mul-int v25, v25, v23

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1898
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 1902
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1904
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 1906
    :catch_3
    move-exception v19

    .line 1907
    .restart local v19    # "oom":Ljava/lang/OutOfMemoryError;
    :try_start_d
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1913
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v23    # "y":I
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_10

    .line 1914
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1916
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v25, v25, v8

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1918
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1920
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 1922
    :catch_4
    move-exception v19

    .line 1923
    .restart local v19    # "oom":Ljava/lang/OutOfMemoryError;
    :try_start_f
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1929
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_11

    .line 1930
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1932
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1933
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1935
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 1936
    :catch_5
    move-exception v19

    .line 1937
    .restart local v19    # "oom":Ljava/lang/OutOfMemoryError;
    :try_start_11
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 1959
    .end local v10    # "MASK":I
    .end local v14    # "bCheckPassed":Z
    .end local v15    # "datarotation":I
    .end local v17    # "i":I
    .end local v18    # "intData":[I
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v20    # "result":I
    :cond_12
    :try_start_12
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    .line 1961
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    .line 1963
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_14

    .line 1964
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 1968
    :cond_14
    const/4 v12, 0x0

    .line 1969
    .local v12, "arrowleft":F
    const/4 v13, 0x0

    .line 1970
    .local v13, "arrowtop":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1971
    .local v5, "left":F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1972
    .local v6, "top":F
    const/16 v22, 0x0

    .line 1974
    .local v22, "stopPanorama":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1e

    .line 1975
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    .line 1976
    :cond_15
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 1977
    .local v7, "width":F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2044
    .local v8, "height":F
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_17

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2046
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v3, :cond_16

    .line 2047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 2051
    :cond_16
    new-instance v3, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 2052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 2053
    monitor-exit v24
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2056
    :cond_17
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ge v3, v4, :cond_26

    .line 2057
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 2059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v4, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 2064
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 2065
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v11, v3, v4

    .line 2070
    .local v11, "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    :goto_9
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 2071
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2072
    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2074
    if-eqz v22, :cond_19

    .line 2075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    .line 2089
    .end local v11    # "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 2090
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 1978
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 1979
    :cond_1c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 1980
    .restart local v8    # "height":F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .restart local v7    # "width":F
    goto/16 :goto_8

    .line 1982
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_1d
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "komlang : onLivePreviewData : invalid orientation "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1986
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1f

    .line 1987
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 1988
    .restart local v7    # "width":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 1989
    .restart local v8    # "height":F
    const/16 v22, 0x1

    .line 2004
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_2

    .line 2039
    :pswitch_8
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1990
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    .line 1991
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 1992
    .restart local v7    # "width":F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 1993
    .restart local v8    # "height":F
    const/16 v22, 0x1

    goto :goto_b

    .line 1995
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v7, v3, v4

    .line 1997
    .restart local v7    # "width":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    .line 1998
    :cond_21
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v7, v3

    .line 2001
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .restart local v8    # "height":F
    goto :goto_b

    .line 2006
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    add-float/2addr v3, v4

    const v4, 0x7f090328

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    add-float v12, v3, v4

    .line 2007
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float v13, v3, v4

    .line 2008
    goto/16 :goto_8

    .line 2011
    :pswitch_a
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v5, v3, v7

    .line 2012
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    sub-float/2addr v3, v4

    const v4, 0x7f090328

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float v12, v3, v4

    .line 2014
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float v13, v3, v4

    .line 2015
    goto/16 :goto_8

    .line 2018
    :pswitch_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_23

    .line 2019
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f800000

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c80000

    div-float v8, v3, v4

    .line 2020
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    .line 2022
    :cond_23
    const v3, 0x7f090328

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    add-float v13, v3, v4

    .line 2023
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v12, v3, v4

    .line 2024
    goto/16 :goto_8

    .line 2027
    :pswitch_c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v6, v3, v8

    .line 2029
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_24

    .line 2030
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f800000

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c80000

    div-float v8, v3, v4

    .line 2031
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    .line 2033
    :cond_24
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    const/high16 v24, 0x40000000

    div-float v4, v4, v24

    sub-float/2addr v3, v4

    const v4, 0x7f090328

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float v13, v3, v4

    .line 2035
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    add-float v12, v3, v4

    .line 2036
    goto/16 :goto_8

    .line 2053
    :catchall_1
    move-exception v3

    :try_start_15
    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v3

    .line 2067
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v11, v3, v4

    .restart local v11    # "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    goto/16 :goto_9

    .line 2079
    .end local v11    # "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    .line 2080
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2084
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ne v3, v4, :cond_19

    .line 2085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_a

    .line 2082
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_c

    .line 2092
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 1839
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1877
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 2004
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 13
    .param p1, "orientation"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 2106
    const-string v6, "TwGLBurstPanoramaMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-nez v6, :cond_0

    .line 2109
    const/4 p1, 0x0

    .line 2117
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v6, :cond_2

    .line 2118
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged - Already mActivityContext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_1
    :goto_0
    return-void

    .line 2123
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isPanoramaCapturing()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v6, :cond_4

    .line 2124
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eq v6, p1, :cond_4

    .line 2125
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 2144
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 2145
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 2148
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 2154
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v6, :cond_3

    .line 2155
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2156
    :cond_3
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 2157
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/Camera;->showPanoramaToastPopup(I)V

    .line 2162
    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 2164
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    if-eq v6, p1, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lt v6, v11, :cond_6

    .line 2165
    const/4 v0, 0x0

    .line 2166
    .local v0, "bStop":Z
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 2184
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 2185
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 2187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 2188
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 2191
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    .line 2195
    .end local v0    # "bStop":Z
    :cond_6
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 2196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    .line 2201
    :cond_7
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 2205
    :pswitch_0
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    .line 2206
    .local v4, "rectX":F
    const/4 v5, 0x0

    .line 2207
    .local v5, "rectY":F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    .line 2208
    .local v1, "groupX":F
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    .line 2210
    .local v2, "groupY":F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 2213
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 2214
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2216
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2218
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2219
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 2222
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v10, :cond_1

    .line 2223
    if-ge v3, v12, :cond_9

    .line 2224
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    .line 2225
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2222
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2168
    .end local v1    # "groupX":F
    .end local v2    # "groupY":F
    .end local v3    # "i":I
    .end local v4    # "rectX":F
    .end local v5    # "rectY":F
    .restart local v0    # "bStop":Z
    :pswitch_1
    if-eq p1, v12, :cond_5

    .line 2169
    const/4 v0, 0x1

    goto :goto_1

    .line 2172
    :pswitch_2
    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    .line 2173
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2176
    :pswitch_3
    if-eqz p1, :cond_5

    .line 2177
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2180
    :pswitch_4
    if-eq p1, v11, :cond_5

    .line 2181
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2228
    .end local v0    # "bStop":Z
    .restart local v1    # "groupX":F
    .restart local v2    # "groupY":F
    .restart local v3    # "i":I
    .restart local v4    # "rectX":F
    .restart local v5    # "rectY":F
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 2235
    .end local v1    # "groupX":F
    .end local v2    # "groupY":F
    .end local v3    # "i":I
    .end local v4    # "rectX":F
    .end local v5    # "rectY":F
    :pswitch_5
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    .line 2236
    .restart local v4    # "rectX":F
    const/4 v5, 0x0

    .line 2237
    .restart local v5    # "rectY":F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    .line 2238
    .restart local v1    # "groupX":F
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    .line 2240
    .restart local v2    # "groupY":F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 2243
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 2244
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2246
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2248
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2249
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 2252
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v10, :cond_1

    .line 2253
    if-ge v3, v12, :cond_b

    .line 2254
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2252
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2256
    :cond_b
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 2257
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 2166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2201
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 765
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 769
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 770
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 771
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 548
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 774
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 781
    :cond_0
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 797
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_3

    .line 798
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 821
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 841
    :goto_1
    :pswitch_0
    if-eqz p1, :cond_2

    .line 842
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_2

    .line 843
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 844
    .local v0, "height":F
    if-eq p1, v4, :cond_0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_4

    .line 845
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 846
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 847
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 853
    :cond_1
    :goto_2
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 854
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 855
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 858
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_2
    return-void

    .line 801
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 802
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 803
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 804
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 808
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 809
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 810
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 811
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 815
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 816
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 817
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 818
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 823
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f02019d

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 824
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f02019e

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 827
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f020198

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 828
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f020197

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 831
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f020199

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 832
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f02019a

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 835
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f02019c

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 836
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f02019b

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 848
    .restart local v0    # "height":F
    .restart local v1    # "width":F
    :cond_4
    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_1

    .line 849
    :cond_5
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 850
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 851
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    goto/16 :goto_2

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 821
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public panoramaMoveSlowly()V
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showGuideText()V

    .line 440
    :cond_0
    return-void
.end method

.method public panoramaRectChanged(II)V
    .locals 27
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 911
    const/4 v12, 0x0

    .line 912
    .local v12, "rect_x":F
    const/4 v13, 0x0

    .line 913
    .local v13, "rect_y":F
    const/4 v14, 0x0

    .line 915
    .local v14, "startOffsetPosition":F
    const/4 v15, 0x0

    .line 916
    .local v15, "text_x":F
    const/16 v16, 0x0

    .line 917
    .local v16, "text_y":F
    const/4 v4, 0x0

    .line 918
    .local v4, "arrow_x":F
    const/4 v5, 0x0

    .line 919
    .local v5, "arrow_y":F
    const/4 v10, 0x0

    .line 920
    .local v10, "box_x":F
    const/4 v11, 0x0

    .line 921
    .local v11, "box_y":F
    const/4 v9, 0x0

    .line 922
    .local v9, "box_w":F
    const/4 v8, 0x0

    .line 923
    .local v8, "box_h":F
    const/4 v6, 0x0

    .line 924
    .local v6, "box_absx":F
    const/4 v7, 0x0

    .line 928
    .local v7, "box_absy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 1459
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 930
    :pswitch_1
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v24

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 931
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v12, v23, v24

    .line 932
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42700000

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v13, v14, v23

    .line 953
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 959
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 961
    .local v3, "WarningLevel":I
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v19, v0

    .line 962
    .local v19, "xDistance":D
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v21, v0

    .line 963
    .local v21, "yDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    if-gez p2, :cond_4

    .line 964
    :cond_2
    const-wide/16 v21, 0x0

    .line 968
    :cond_3
    :goto_2
    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    .line 970
    .local v17, "totalDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 1451
    :goto_3
    :pswitch_2
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 1452
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Stop case - totalDistance:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1454
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1455
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    .line 935
    .end local v3    # "WarningLevel":I
    .end local v17    # "totalDistance":D
    .end local v19    # "xDistance":D
    .end local v21    # "yDistance":D
    :pswitch_3
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v24

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 936
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v12, v23, v24

    .line 937
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x42700000

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v13, v14, v23

    .line 938
    goto/16 :goto_1

    .line 940
    :pswitch_4
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 941
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v12, v14, v23

    .line 942
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v23, v24

    .line 943
    goto/16 :goto_1

    .line 945
    :pswitch_5
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 946
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v12, v14, v23

    .line 947
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v23, v24

    .line 948
    goto/16 :goto_1

    .line 965
    .restart local v3    # "WarningLevel":I
    .restart local v19    # "xDistance":D
    .restart local v21    # "yDistance":D
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    if-gtz p1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    .line 966
    :cond_6
    const-wide/16 v19, 0x0

    goto/16 :goto_2

    .line 973
    .restart local v17    # "totalDistance":D
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v10

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v11

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v9

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v6

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v7

    .line 979
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", abs xy = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_a

    .line 982
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 991
    :goto_4
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_c

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 997
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1007
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1032
    :cond_8
    :goto_5
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-lt v3, v0, :cond_12

    .line 1033
    cmpl-double v23, v21, v19

    if-lez v23, :cond_10

    .line 1034
    if-lez p2, :cond_f

    .line 1035
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1038
    const/high16 v23, 0x40000000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v23, v23, v24

    add-float v23, v23, v13

    const v24, 0x7f090326

    invoke-static/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v24

    add-float v5, v23, v24

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_2

    .line 1068
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1191
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1197
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " XY = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 983
    :cond_a
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0000000000000L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_b

    .line 984
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_4

    .line 987
    :cond_b
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_4

    .line 1009
    :cond_c
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_e

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1015
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1025
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_5

    .line 1028
    :cond_e
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_5

    .line 1043
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1044
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v23, v24

    .line 1045
    const/high16 v23, 0x40800000

    div-float v23, v8, v23

    add-float v16, v13, v23

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1049
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1050
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v12, v23

    .line 1051
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1055
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1056
    add-float v23, v12, v9

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    .line 1057
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v8, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1061
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1062
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1063
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1074
    :cond_f
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1077
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v23

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1080
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_3

    .line 1107
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1082
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1083
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v23, v24

    .line 1084
    const/high16 v23, 0x40800000

    div-float v23, v8, v23

    add-float v16, v13, v23

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_8

    .line 1088
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1089
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v12, v23

    .line 1090
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_8

    .line 1094
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1095
    add-float v23, v12, v9

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    .line 1096
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v8, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_8

    .line 1100
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1101
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1102
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v8

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_8

    .line 1114
    :cond_10
    if-lez p1, :cond_11

    .line 1115
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v4, v12, v23

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_4

    .line 1148
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1123
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1124
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v4, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v15, v23, v24

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1129
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1130
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v4, v23

    .line 1131
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1135
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1136
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1141
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1142
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v4, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1152
    :cond_11
    if-gez p1, :cond_9

    .line 1153
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v4, v23, v24

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_5

    .line 1186
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1161
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1167
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    .line 1169
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1173
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1179
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1200
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1203
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    .line 1211
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v10

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v11

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v9

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v6

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v7

    .line 1217
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", abs xy = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_16

    .line 1220
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 1229
    :goto_b
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_18

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1232
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1235
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1245
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1270
    :cond_14
    :goto_c
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-lt v3, v0, :cond_1e

    .line 1272
    cmpl-double v23, v19, v21

    if-lez v23, :cond_1c

    .line 1273
    if-lez p1, :cond_1b

    .line 1274
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v4, v12, v23

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_6

    .line 1307
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1430
    :cond_15
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1436
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " XY = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1221
    :cond_16
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0000000000000L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_17

    .line 1222
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_b

    .line 1225
    :cond_17
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_b

    .line 1247
    :cond_18
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_1a

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1250
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1253
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1263
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_c

    .line 1266
    :cond_1a
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_c

    .line 1282
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1283
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1284
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    .line 1288
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1289
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1290
    add-float v23, v13, v8

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v23, v24

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    .line 1294
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1295
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1296
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    .line 1300
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1301
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1302
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_d

    .line 1313
    :cond_1b
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v4, v23, v24

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_7

    .line 1346
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_e

    .line 1321
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1322
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1323
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_f

    .line 1327
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1328
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1329
    add-float v23, v13, v8

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v23, v24

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_f

    .line 1333
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1334
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1335
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_f

    .line 1339
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1340
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1341
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_f

    .line 1351
    :cond_1c
    if-gez p2, :cond_1d

    .line 1352
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1355
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v23

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_8

    .line 1385
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_e

    .line 1360
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1362
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v5, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    .line 1366
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1368
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v5, v23

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    .line 1372
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1374
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v5, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    .line 1378
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1380
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v5, v23

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    .line 1391
    :cond_1d
    if-lez p2, :cond_15

    .line 1392
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v5, v23, v24

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_9

    .line 1425
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_e

    .line 1400
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0224

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1401
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v13

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    const v24, 0x7f090326

    invoke-static/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v24

    add-float v16, v23, v24

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1406
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0223

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v5

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v16, v23, v24

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1412
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0226

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1413
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1414
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1418
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0b0225

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1419
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1420
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1439
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1442
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1443
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1444
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 970
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1041
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 1080
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 1121
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 1159
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 1280
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
    .end packed-switch

    .line 1319
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
    .end packed-switch

    .line 1358
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 1398
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "removeLivePreview"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 564
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "komlang : called reset!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->resetAcquisitionProgress()V

    .line 567
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 568
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 569
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    .line 570
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 571
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    .line 573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 575
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 576
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 577
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 578
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 584
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 592
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideCaptureTri()V

    .line 594
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 595
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 500
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 502
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 624
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 626
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->startCancelTimer()V

    .line 627
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .param p1, "nProgress"    # I

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForVirtualKey()V

    .line 510
    :cond_0
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 895
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 896
    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panoramaRectChanged mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 640
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnterOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 2101
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    .line 2102
    return-void
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1733
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    .line 702
    return-void
.end method

.method public declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :cond_0
    monitor-exit p0

    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 1737
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 1738
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 1739
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 691
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 692
    return-void
.end method

.method public showGuideText()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 409
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 411
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    :cond_1
    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    goto :goto_0
.end method

.method public showPostCaptureLayout()V
    .locals 0

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 671
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 674
    return-void
.end method

.method public showPreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    .line 519
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 533
    :cond_1
    return-void

    .line 522
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showStopButton()V
    .locals 2

    .prologue
    .line 598
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 600
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 621
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 630
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    :cond_0
    return-void
.end method

.method public stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 907
    :cond_2
    return-void
.end method

.method public updateArrow()V
    .locals 9

    .prologue
    const/high16 v5, 0x40400000

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/high16 v7, 0x40000000

    const/4 v6, 0x1

    .line 861
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 885
    :goto_0
    return-void

    .line 863
    :pswitch_0
    const v1, 0x7f090328

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    .line 865
    .local v0, "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 866
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 870
    .end local v0    # "triOffset":F
    :pswitch_1
    const v1, 0x7f090328

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    .line 872
    .restart local v0    # "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 873
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 877
    .end local v0    # "triOffset":F
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v6

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 878
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v6

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v6

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 881
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v4

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[F

    aget v2, v2, v4

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[F

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
