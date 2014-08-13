.class public Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    }
.end annotation


# static fields
.field private static final AppVersion:Ljava/lang/String; = "360Panorama AppVer.1.0.2 2013/10/01"

.field public static final BOUNDARY_APS_FOR_CALC_OFFSET:D

.field public static final BOUNDARY_APS_FOR_EXTRA_TIME:D

.field public static CENTER_GUIDE_ANIMATION_PHASE1:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE2:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE3:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE4:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE5:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS1:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS2:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS3:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "TwGLPanorama360Menu"

.field private static final MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

.field private static final MORPHO_HELP_TEXT_ALIGN_POS_X:F

.field private static final MORPHO_HELP_TEXT_ALIGN_POS_Y:F

.field private static final MORPHO_HELP_TEXT_ALIGN_SIZE:F

.field private static final MORPHO_HELP_TEXT_ALIGN_WIDTH:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_SIZE:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

.field private static final MORPHO_ROTATE_GUIDE_HEIGHT:F

.field private static final MORPHO_ROTATE_GUIDE_POS_X:F

.field private static final MORPHO_ROTATE_GUIDE_POS_Y:F

.field private static final MORPHO_ROTATE_GUIDE_WIDTH:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_POS_X:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_SIZE:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

.field public static final OUTPUT_TYPE_BOUNDING:I = 0x0

.field public static final OUTPUT_TYPE_CLIPPING:I = 0x1

.field public static final REQUIRED_STORAGE_SIZE:J = 0x1400000L

.field public static final SENSOR_CORRECTION_EXTRA_TIME:I = 0x3e8

.field public static final SENSOR_CORRECTION_TIME_BEFORE_HAND:I = 0x2710

.field public static final SENSOR_CORRECTION_TIME_EVERYTIME:I = 0xbb8

.field public static final SF_MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:I = 0x3

.field public static final SF_MODE_USE_ALL_SENSORS:I = 0x0

.field public static final SF_MODE_USE_GYROSCOPE:I = 0x1

.field public static final SF_MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:I = 0x4

.field public static final SF_MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:I = 0x2

.field public static final SF_MODE_USE_GYROSCOPE_WITH_ACCELEROMETER_EX:I = 0x6

.field public static final SF_MODE_USE_ROTATION_VECTOR:I = 0x5

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I


# instance fields
.field private contextActivity:Lcom/sec/android/app/camera/Camera;

.field private imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mAllGuideTaken:Z

.field private mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mEmptyPreviewSyncObj:Ljava/lang/Object;

.field private mGuideDialogVisibility:Z

.field private mGuideType:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

.field private mImageClassifyResult:D

.field private mInFinishShootingAsync:Z

.field private mIsEnoughSpace:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

.field private mNeedToRestart:Z

.field private mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

.field protected mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRootView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

.field private mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

.field private mSaveStorage:I

.field private mSceneStr:Ljava/lang/String;

.field private mShootingNum:I

.field private mStartingPanorama360Time:J

.field private mStopUpdate:Z

.field private mUndoButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f090006

    const/high16 v2, 0x40000000

    .line 99
    const/16 v0, 0x280

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    .line 100
    const/16 v0, 0x49c

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    .line 101
    const/16 v0, 0x71c

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE3:I

    .line 102
    const/16 v0, 0x938

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    .line 103
    const/16 v0, 0xbb8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE5:I

    .line 104
    const/16 v0, 0x2aaa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS1:I

    .line 105
    const/16 v0, 0x5555

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS2:I

    .line 106
    const v0, 0x8000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS3:I

    .line 108
    const-wide/high16 v0, 0x4014000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_EXTRA_TIME:D

    .line 109
    const-wide/high16 v0, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_CALC_OFFSET:D

    .line 111
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_X:I

    .line 112
    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_Y:I

    .line 114
    const v0, 0x7f0902bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    .line 115
    const v0, 0x7f0902c0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

    .line 116
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_X:F

    .line 117
    const v0, 0x7f0902c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    .line 118
    const v0, 0x7f0902c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_SIZE:F

    .line 119
    const v0, 0x7f0902c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    .line 120
    const v0, 0x7f0902c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

    .line 121
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

    .line 122
    const v0, 0x7f0902ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    .line 123
    const v0, 0x7f0902cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_SIZE:F

    .line 124
    const v0, 0x7f0902cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    .line 125
    const v0, 0x7f0902ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

    .line 126
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_X:F

    .line 127
    const v0, 0x7f0902cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    .line 128
    const v0, 0x7f0902d1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_SIZE:F

    .line 130
    const v0, 0x7f0902c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    .line 131
    const v0, 0x7f0902c5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_HEIGHT:F

    .line 132
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_X:F

    .line 133
    const v0, 0x7f0902c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1, "camera"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "menuidPanorama360"    # I
    .param p3, "mShootingmodeRoot"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "mMenuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 173
    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;

    .line 156
    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->setCaptureEnabled(Z)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->setTouchHandled(Z)V

    .line 177
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn TwGLPanorama360Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020214

    const v5, 0x7f020215

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 200
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->initUndoButton()V

    .line 202
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    .line 205
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b02c5

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0902c2

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f090006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0902c2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f090007

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 221
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b02c6

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0902cb

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f090006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0902cb

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f090007

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 238
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0902d0

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f090006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0902d0

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f090007

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 253
    const v0, 0x7f02036d

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    .line 254
    const v0, 0x7f02036e

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 258
    .local v9, "SCREEN_WIDTH":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 259
    .local v8, "SCREEN_HEIGHT":I
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v9

    int-to-float v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    .line 262
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 272
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getBaseIndicatorRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    return v0
.end method

.method static synthetic access$3508(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showNotEnoughSpaceMsg()V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;D)D
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # D

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I

    return v0
.end method

.method static synthetic access$6302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I

    return p1
.end method

.method static synthetic access$6400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    return p1
.end method

.method static synthetic access$7000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    return-object v0
.end method

.method private checkAvailableStorage()Z
    .locals 5

    .prologue
    .line 3375
    const/4 v0, 0x1

    .line 3376
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v1

    const-wide/32 v3, 0x1400000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 3377
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available storage size is not enough. -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    const/4 v0, 0x0

    .line 3380
    :cond_0
    return v0
.end method

.method private createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;
    .locals 12
    .param p1, "rid"    # I

    .prologue
    const v11, 0x7f0902c7

    const v10, 0x7f090006

    const/4 v6, 0x1

    const/high16 v9, 0x40000000

    const v8, 0x7f090007

    .line 342
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn createRotateGuideImage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_HEIGHT:F

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    .line 344
    .local v0, "guide_image":Lcom/sec/android/glview/TwGLImage;
    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 346
    const/4 v1, 0x2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 348
    const/4 v1, 0x3

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 350
    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 351
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 352
    return-object v0
.end method

.method public static getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 3384
    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method private initUndoButton()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 283
    const v0, 0x7f0a0049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v11, v0

    .line 284
    .local v11, "fontSize":F
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 285
    .local v12, "paint":Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0b02c9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, "buttonText":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 287
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000

    add-float v4, v0, v1

    .line 288
    .local v4, "textWidth":F
    const v0, 0x7f0902d2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    .line 289
    .local v5, "height":F
    const/4 v12, 0x0

    .line 291
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0902d3

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v2, v4

    const v3, 0x7f0902d4

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 292
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v2, v7

    move v3, v7

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v10, v11, v1, v13}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const-string v1, "Undo"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0902d5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const v2, 0x7f0902d6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    const v2, 0x7f0902d7

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    const v3, 0x7f0902d8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    const v2, 0x7f0902d9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const v3, 0x7f0902da

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 319
    return-void
.end method

.method private showNotEnoughSpaceMsg()V
    .locals 1

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showMediaStorageDialog()V

    .line 3389
    return-void
.end method

.method private showVersion()V
    .locals 5

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "engVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 325
    .local v2, "sfusionVersion":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-eqz v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_1
    const-string v0, "360Panorama AppVer.1.0.2 2013/10/01"

    .line 336
    .local v0, "appVersion":Ljava/lang/String;
    const-string v3, "TwGLPanorama360Menu"

    const-string v4, "360Panorama AppVer.1.0.2 2013/10/01"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v3, "TwGLPanorama360Menu"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v3, "TwGLPanorama360Menu"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 328
    .end local v0    # "appVersion":Ljava/lang/String;
    :cond_0
    const-string v1, "engVersion is null"

    goto :goto_0

    .line 333
    :cond_1
    const-string v2, "sfusionVersion is null"

    goto :goto_1
.end method


# virtual methods
.method public LeavePanorama360(Z)V
    .locals 8
    .param p1, "isReleaseEngine"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 659
    const-string v2, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mn LeavePanorama360 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    invoke-interface {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;->onPanorama360CaptureCancelled()V

    .line 666
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_1

    .line 667
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v2, v7, v6, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 675
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 676
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 678
    if-ne p1, v7, :cond_a

    .line 680
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_8

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    .line 684
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-result-object v2

    array-length v0, v2

    .line 685
    .local v0, "arrayLength":I
    const/4 v1, 0x0

    .local v1, "renderInfoID":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 686
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-result-object v2

    aput-object v5, v2, v1

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v2, :cond_4

    .line 690
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->clear()V

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iput-object v5, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .line 694
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_5

    .line 695
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 698
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_6

    .line 699
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 702
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_7

    .line 703
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 706
    :cond_7
    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 708
    .end local v0    # "arrayLength":I
    .end local v1    # "renderInfoID":I
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v2, :cond_9

    .line 709
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    .line 710
    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 713
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_a
    return-void
.end method

.method public hideBaseIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 752
    :cond_0
    return-void
.end method

.method public hideUndoButton()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 3396
    const-string v0, "Test"

    const-string v1, "hideUndoButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 3398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 3400
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showBaseIndicator()V

    .line 3401
    return-void
.end method

.method public isCalibrationLastPhase()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE5:I

    if-gt v1, v2, :cond_0

    .line 738
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn Panorama360 is waiting on last phase state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " waitTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama360Capturing()Z
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    if-lez v0, :cond_0

    .line 719
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn Panorama360 is capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v0, 0x1

    .line 722
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama360Saving()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-ne v1, v0, :cond_0

    .line 727
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn Panorama360 is saving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mnSensorCalculationCompleted()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 637
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn mnSensorCalculationCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_2

    .line 645
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcSensorCalculationCompleted()V

    .line 653
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    .line 655
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBaseMenu()V

    goto :goto_0
.end method

.method public mnSetOnPanorama360CaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    .line 357
    return-void
.end method

.method public onAutoFocusCompleted()Z
    .locals 2

    .prologue
    .line 623
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onAutoFocusCompleted()Z

    .line 624
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onAutoFocusCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 3

    .prologue
    .line 362
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn onBack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 364
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 365
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcOnBackProc()Z

    move-result v0

    .line 369
    .local v0, "fin":Z
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_2

    .line 371
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mActivityContext is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 382
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method protected onHide()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 389
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 391
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 398
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    if-nez v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationEnable(Z)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 412
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 432
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn onKeyDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-ne p1, v4, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 440
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 446
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn onKeyUp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_0

    .line 456
    :goto_0
    return v0

    .line 450
    :cond_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 452
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v1, v0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    goto :goto_0

    .line 456
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x3

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1002(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    .line 479
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/16 v1, 0x1388

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 488
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 489
    return-void
.end method

.method protected onShow()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 494
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    .line 496
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    .line 497
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mn onShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J

    .line 500
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-nez v0, :cond_2

    .line 504
    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 505
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPrepareShooting(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)V

    .line 515
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    if-eqz v0, :cond_6

    .line 516
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_5

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z

    .line 520
    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    .line 529
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_7

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-nez v0, :cond_8

    .line 532
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "onShow PANORAMA_STATE_UNINITIALIZED call mPanorama360Callback.pcPanoramaInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaInitialize()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 534
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "onShow PANORAMA_STATE_UNINITIALIZED back from mPanorama360Callback.pcPanoramaInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 560
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    goto/16 :goto_0

    .line 539
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    goto :goto_1
.end method

.method public onStartingPreviewCompleted()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 595
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStartingPreviewCompleted()Z

    .line 596
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mn onStartingPreviewCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->isPanorama360Saving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManagerPanorama360()V

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)I

    move-result v0

    if-lez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x5

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->isPanorama360Saving()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_2

    .line 611
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    :goto_0
    return v3

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBaseMenu()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 567
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 569
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideUndoButton()V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    .line 584
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    .line 588
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 591
    :cond_2
    return-void
.end method

.method public setGuideDialogVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 3392
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    .line 3393
    return-void
.end method

.method public showBaseIndicator()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 747
    :cond_0
    return-void
.end method

.method public showUndoButton()V
    .locals 2

    .prologue
    .line 3404
    const-string v0, "Test"

    const-string v1, "showUndoButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 3408
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->hideBaseIndicator()V

    .line 3409
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 465
    return-void
.end method
