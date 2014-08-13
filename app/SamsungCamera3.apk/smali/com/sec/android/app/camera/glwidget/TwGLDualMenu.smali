.class public Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDualMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;


# static fields
.field private static final DUAL_ASYNC_FRONT_ICON_POS_X:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_X:I

.field private static final DUAL_FRONT_PROGRESS_BAR_POS_Y:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

.field private static final DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

.field protected static final DUAL_PROGRESS_TIMER_MSG:I = 0x2

.field protected static final DUAL_PROGRESS_UPDATE_TIME:I = 0xc8

.field private static final DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_X:I

.field private static final DUAL_REAR_PROGRESS_BAR_POS_Y:I

.field private static final DUAL_TRACKING_BUTTON_POS_X:I

.field private static final DUAL_TRACKING_BUTTON_POS_Y:I

.field private static final HANDLER_AREA_PADDING:I

.field protected static final HIDE_BOUNDRY:I = 0x1

.field public static final HIDE_TIMEOUT:I = 0xbb8

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final SHOW_BOUNDRY:I = 0x3

.field public static final SHOW_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TwGLDualMenu"


# instance fields
.field private mAsyncFront:Lcom/sec/android/glview/TwGLImage;

.field private mAsyncRear:Lcom/sec/android/glview/TwGLImage;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

.field private mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field protected mDualMsgHandler:Landroid/os/Handler;

.field private mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mDual_splitview_height:I

.field private mDual_splitview_start_posX:I

.field private mDual_splitview_start_posY:I

.field private mDual_splitview_width:I

.field private mEffectSizeRatio:F

.field private mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

.field private mGluePointInfo:[F

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field private mHeightOffsetForhandle:I

.field private mInvisible:Z

.field private mNeedToOrientation:Z

.field private mOrientation:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviousEffect:I

.field private mRectinfo:[Landroid/graphics/RectF;

.field private mShowEditableShortMenu:Z

.field private mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

.field private mTrackingStart:Z

.field private mWidthOffsetForhandle:I

.field private mX:[F

.field private mY:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    .line 53
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    .line 55
    const v0, 0x7f090180

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    .line 101
    const v0, 0x7f0901f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X:I

    .line 102
    const v0, 0x7f0901f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y:I

    .line 103
    const v0, 0x7f0901f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

    .line 104
    const v0, 0x7f0901f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

    .line 105
    const v0, 0x7f0901f4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_ASYNC_FRONT_ICON_POS_X:I

    .line 106
    const v0, 0x7f0901f5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_X:I

    .line 107
    const v0, 0x7f0901f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_Y:I

    .line 108
    const v0, 0x7f0901f7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

    .line 109
    const v0, 0x7f0901f8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

    .line 110
    const v0, 0x7f0901f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_X:I

    .line 111
    const v0, 0x7f0901fa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_Y:I

    .line 112
    const v0, 0x7f0901fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

    .line 113
    const v0, 0x7f0901fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

    .line 114
    const v0, 0x7f0901fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

    .line 115
    const v0, 0x7f0901fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

    .line 116
    const v0, 0x7f0901ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

    .line 117
    const v0, 0x7f090200

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

    .line 118
    const v0, 0x7f090201

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

    .line 119
    const v0, 0x7f090202

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

    .line 120
    const v0, 0x7f090205

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_X:I

    .line 121
    const v0, 0x7f090206

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 181
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 57
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    .line 58
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    .line 59
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    .line 60
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    .line 62
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    .line 64
    const v0, 0x7f0901e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    .line 65
    const v0, 0x7f0901e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    .line 66
    const v0, 0x7f0901e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    .line 67
    const v0, 0x7f0901e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    .line 73
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    .line 95
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    .line 97
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    .line 135
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->loadDualEffectPositionFromPreference()V

    .line 188
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    .line 189
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setCaptureEnabled(Z)V

    .line 193
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->readEffectRectinfo()V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/high16 v1, -0x3e600000

    const/high16 v2, -0x3e600000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDragVibration(Z)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/high16 v1, -0x3e600000

    const/high16 v2, -0x3e600000

    const/high16 v3, -0x3e600000

    const/high16 v4, -0x3e600000

    const/high16 v5, -0x3e600000

    const/high16 v6, -0x3e600000

    const/high16 v7, -0x3e600000

    const/high16 v8, -0x3e600000

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDragVibration(Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    .line 211
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 213
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020006

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncRear:Lcom/sec/android/glview/TwGLImage;

    .line 214
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_ASYNC_FRONT_ICON_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f020005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncFront:Lcom/sec/android/glview/TwGLImage;

    .line 216
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_REAR_PROGRESS_BAR_POS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202de

    const v7, 0x7f0202dd

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 218
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_FRONT_PROGRESS_BAR_POS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202de

    const v7, 0x7f0202dd

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_90:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_90:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_180:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_180:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_X_270:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_PROGRESS_BAR_GROUP_POS_Y_270:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncRear:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mAsyncFront:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    .line 234
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->DUAL_TRACKING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202a3

    const v5, 0x7f0202a5

    const v6, 0x7f0202a4

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setOrientationChanged(IZ)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setOrientationListener()V

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setTouchHandled(Z)V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;)Lcom/sec/android/glview/TwGLProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    return-object v0
.end method

.method private canRestoreDualEffectRectPosition()Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v11, 0x33

    .line 1753
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v6

    float-to-int v1, v6

    .line 1754
    .local v1, "left":I
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopY()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v6

    float-to-int v2, v6

    .line 1755
    .local v2, "top":I
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v6

    float-to-int v6, v6

    sub-int v3, v6, v1

    .line 1756
    .local v3, "width":I
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopY()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v6, v2

    .line 1758
    .local v0, "height":I
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    if-eq v6, v11, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectWidth()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectHeight()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return v4

    .line 1761
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    if-ne v6, v11, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v4, v5

    .line 1767
    goto :goto_0

    .line 1769
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v6

    if-ne v6, v11, :cond_3

    if-lez v3, :cond_3

    if-gtz v0, :cond_0

    :cond_3
    move v4, v5

    .line 1772
    goto/16 :goto_0
.end method

.method private getRectIndex(I)I
    .locals 1
    .param p1, "menu"    # I

    .prologue
    const/4 v0, 0x0

    .line 1800
    packed-switch p1, :pswitch_data_0

    .line 1826
    :goto_0
    :pswitch_0
    return v0

    .line 1804
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1806
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1808
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1810
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1812
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1814
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1816
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1818
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 1820
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 1822
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 1824
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 1800
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
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private readEffectRectinfo()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0901cf

    const v10, 0x7f0901ce

    const v9, 0x7f0901cd

    const v8, 0x7f0901cc

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v12

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901d0

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901d1

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1699
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901d2

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901d3

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901d4

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901d5

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1709
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901d6

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901d7

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901d8

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901d9

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1719
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901da

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901db

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901dc

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901dd

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1729
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901de

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901df

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1734
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1737
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/RectF;

    const v3, 0x7f0901ec

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f0901ed

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x7f0901ec

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f0901ee

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x7f0901ed

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f0901ef

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 1742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v12

    .line 1743
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x1

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1747
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1748
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x6

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1749
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v1, 0x7

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1750
    return-void
.end method

.method private restoreDualEffectRectPosition()V
    .locals 9

    .prologue
    .line 1776
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    .line 1778
    .local v0, "nEffectMode":I
    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 1797
    :goto_0
    return-void

    .line 1781
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    .line 1783
    const/16 v1, 0x33

    if-eq v0, v1, :cond_1

    .line 1784
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getRectIndex(I)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRectHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v1, v2

    goto :goto_0

    .line 1788
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1789
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1790
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1791
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightTopY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1792
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1793
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectRightBottomY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1794
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomX()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 1795
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftBottomY()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public adjustRectMargin(I)V
    .locals 6
    .param p1, "mEffect"    # I

    .prologue
    const/16 v2, 0x33

    const/4 v5, 0x0

    .line 1493
    const-string v0, "TwGLDualMenu"

    const-string v1, "adjustRectMargin"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    .line 1496
    if-eq p1, v2, :cond_1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getRectIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getRectIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    if-ne p1, v2, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxBound()V

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->moveBy([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    goto :goto_0
.end method

.method public applyInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x33

    const/4 v1, 0x1

    .line 492
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    if-nez v0, :cond_0

    .line 501
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showTrackingButton()V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 515
    :cond_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    goto :goto_0
.end method

.method public applyInvisibleForDualOff()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    .line 544
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 546
    return-void
.end method

.method public applyInvisibleForGlueRecording()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 519
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 521
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getHasMessageTrackingStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    .line 527
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v0

    .line 530
    .local v0, "pts":[F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v5

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v4

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 532
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v7

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    aget v2, v0, v8

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v0, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v0, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 539
    .end local v0    # "pts":[F
    :cond_1
    return-void
.end method

.method public applyVisible()V
    .locals 14

    .prologue
    const/16 v13, 0x33

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v13, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getIsCalledSwitchToCameraSync()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendShowBoundryRectMessage()V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    .line 571
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v12

    .line 574
    .local v12, "pts":[F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    aget v1, v12, v11

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aget v2, v12, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v12, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v12, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aget v5, v12, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aget v6, v12, v7

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x6

    aget v7, v12, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, v12, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    invoke-virtual/range {v0 .. v11}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    .line 579
    .end local v12    # "pts":[F
    :cond_1
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v13, :cond_4

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueAreaHandle()V

    .line 586
    :cond_2
    :goto_1
    return-void

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto :goto_0

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showDualAreaHandle()V

    goto :goto_1
.end method

.method public calulateCoordinateForNormalPreviewRatio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 631
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    .line 635
    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getViewMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 639
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    .line 643
    :goto_2
    const v0, 0x7f0901e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    .line 644
    const v0, 0x7f0901e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    .line 645
    const v0, 0x7f0901e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    .line 646
    const v0, 0x7f0901e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    .line 664
    :goto_3
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    .line 665
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setHandlerAreaTopBoundary(I)V

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setHandlerAreaBottomBoundary(I)V

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_top_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setHandlerAreaTopBoundary(I)V

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setHandlerAreaBottomBoundary(I)V

    .line 670
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->readEffectRectinfo()V

    goto/16 :goto_0

    .line 633
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    goto :goto_1

    .line 641
    :cond_2
    const v0, 0x7f090203

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    goto :goto_2

    .line 647
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isSquarePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    .line 653
    const v0, 0x7f0901ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    .line 654
    const v0, 0x7f0901eb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    .line 655
    const v0, 0x7f0901e8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    .line 656
    const v0, 0x7f0901e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    goto :goto_3

    .line 658
    :cond_4
    const v0, 0x7f090204

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    .line 659
    const v0, 0x7f0901e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    .line 660
    const v0, 0x7f0901e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    .line 661
    const v0, 0x7f0901e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posX:I

    .line 662
    const v0, 0x7f0901e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_start_posY:I

    goto/16 :goto_3
.end method

.method public checkTrackingBoundary(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1028
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1029
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 1030
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr p2, v4

    .line 1031
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v5

    .line 1032
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v5

    .line 1033
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v6

    .line 1034
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v6

    .line 1035
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v9

    .line 1036
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v9

    .line 1037
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x6

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v10

    .line 1038
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v10

    .line 1040
    const-string v4, "TwGLDualMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mX[0]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[0]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mX[1]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[1]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mX[2]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[2]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mX[3]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mY[3]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v3, 0x0

    .line 1043
    .local v3, "xinters":F
    const/4 v0, 0x0

    .line 1044
    .local v0, "counter":I
    const/4 v2, 0x3

    .line 1045
    .local v2, "max_count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_2

    .line 1046
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v4, v4, v5

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v2

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMinValue(FF)F

    move-result v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 1047
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMinValue(FF)F

    move-result v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    .line 1048
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMaxValue(FF)F

    move-result v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    .line 1049
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v1

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->getMaxValue(FF)F

    move-result v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    .line 1050
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    .line 1051
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    sub-float v4, p2, v4

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v7, v7, v1

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    div-float/2addr v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    add-float v3, v4, v7

    .line 1052
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    add-int/lit8 v7, v1, -0x1

    aget v4, v4, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v1

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_0

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_1

    .line 1053
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1045
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1062
    :cond_2
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    move v4, v5

    .line 1068
    .end local v0    # "counter":I
    .end local v1    # "i":I
    .end local v2    # "max_count":I
    .end local v3    # "xinters":F
    :goto_1
    return v4

    .restart local v0    # "counter":I
    .restart local v1    # "i":I
    .restart local v2    # "max_count":I
    .restart local v3    # "xinters":F
    :cond_3
    move v4, v6

    .line 1065
    goto :goto_1

    .end local v0    # "counter":I
    .end local v1    # "i":I
    .end local v2    # "max_count":I
    .end local v3    # "xinters":F
    :cond_4
    move v4, v5

    .line 1068
    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    aput-object v2, v1, v0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    .line 324
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 326
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->clear()V

    .line 331
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->clear()V

    .line 336
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_5

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 340
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_6

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 344
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    .line 346
    :cond_6
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    .line 347
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 348
    return-void
.end method

.method public clearGLView()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 314
    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 315
    return-void
.end method

.method public decideEffectSize(I)F
    .locals 18
    .param p1, "effect"    # I

    .prologue
    .line 1426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v14

    .line 1427
    .local v14, "rect":Landroid/graphics/RectF;
    packed-switch p1, :pswitch_data_0

    .line 1475
    :pswitch_0
    const/16 v1, 0x1f40

    move/from16 v0, p1

    if-lt v0, v1, :cond_2

    .line 1476
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1477
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    return v1

    .line 1429
    :pswitch_1
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901ce

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1432
    :pswitch_2
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901d0

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1435
    :pswitch_3
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901d2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1438
    :pswitch_4
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901d4

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1441
    :pswitch_5
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901d6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1444
    :pswitch_6
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901d8

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 1447
    :pswitch_7
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901da

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1450
    :pswitch_8
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901dc

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1453
    :pswitch_9
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f0901de

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1456
    :pswitch_a
    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1459
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v13

    .line 1460
    .local v13, "pts":[F
    const/4 v1, 0x0

    aget v2, v13, v1

    const/4 v1, 0x1

    aget v3, v13, v1

    const/4 v1, 0x2

    aget v4, v13, v1

    const/4 v1, 0x3

    aget v5, v13, v1

    const/4 v1, 0x4

    aget v6, v13, v1

    const/4 v1, 0x5

    aget v7, v13, v1

    const/4 v1, 0x6

    aget v8, v13, v1

    const/4 v1, 0x7

    aget v9, v13, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->isOutOfBoundary(FFFFFFFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x2

    aget v3, v13, v3

    const/4 v4, 0x4

    aget v4, v13, v4

    const/4 v5, 0x6

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v12

    .line 1462
    .local v12, "left":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v13, v2

    const/4 v3, 0x3

    aget v3, v13, v3

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, 0x7

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v15

    .line 1463
    .local v15, "top":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x2

    aget v3, v13, v3

    const/4 v4, 0x4

    aget v4, v13, v4

    const/4 v5, 0x6

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    sub-float v16, v1, v12

    .line 1464
    .local v16, "width":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v13, v2

    const/4 v3, 0x3

    aget v3, v13, v3

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, 0x7

    aget v5, v13, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    sub-float v10, v1, v15

    .line 1466
    .local v10, "height":F
    const v1, 0x7f0901ce

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    div-float v17, v16, v1

    .line 1467
    .local v17, "widthRatio":F
    const v1, 0x7f0901cf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    div-float v11, v10, v1

    .line 1468
    .local v11, "heightRatio":F
    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1470
    .end local v10    # "height":F
    .end local v11    # "heightRatio":F
    .end local v12    # "left":F
    .end local v15    # "top":F
    .end local v16    # "width":F
    .end local v17    # "widthRatio":F
    :cond_0
    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1479
    .end local v13    # "pts":[F
    :cond_1
    const/high16 v1, 0x3f800000

    :try_start_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 1484
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1482
    :cond_2
    const/high16 v1, 0x3f800000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1427
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public getBackGroundImage()Lcom/sec/android/glview/TwGLImage;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBackGroundImage()Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    return-object v0
.end method

.method public getBoundryShowed()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    return v0
.end method

.method public getEditableShortMenuShow()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    return v0
.end method

.method public getGlueBoundryShowed()Z
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getBoundryShowed()Z

    move-result v0

    return v0
.end method

.method public getMaxValue(FF)F
    .locals 1
    .param p1, "v1"    # F
    .param p2, "v2"    # F

    .prologue
    .line 1076
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMinValue(FF)F
    .locals 1
    .param p1, "v1"    # F
    .param p2, "v2"    # F

    .prologue
    .line 1072
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public hideAllBoundryRect()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    .line 845
    return-void
.end method

.method public hideDualAreaHandle()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setBackGroundInvisible()V

    .line 861
    return-void
.end method

.method public hideGlueAreaHandle()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundInvisible()V

    .line 872
    return-void
.end method

.method public hideTrackingButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 909
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setBackGroundInvisible()V

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 915
    :cond_0
    return-void
.end method

.method public isInvisibleMode()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    return v0
.end method

.method public isOutOfBoundary(FFFFFFFF)Z
    .locals 11
    .param p1, "X0"    # F
    .param p2, "Y0"    # F
    .param p3, "X1"    # F
    .param p4, "Y1"    # F
    .param p5, "X2"    # F
    .param p6, "Y2"    # F
    .param p7, "X3"    # F
    .param p8, "Y3"    # F

    .prologue
    .line 975
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v9, p1, p3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v9

    float-to-int v4, v9

    .line 976
    .local v4, "left":I
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p6

    move/from16 v1, p8

    invoke-virtual {v9, p2, p4, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v9

    float-to-int v7, v9

    .line 977
    .local v7, "top":I
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v9, p1, p3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v9

    float-to-int v9, v9

    sub-int v8, v9, v4

    .line 978
    .local v8, "width":I
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p6

    move/from16 v1, p8

    invoke-virtual {v9, p2, p4, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v9

    float-to-int v9, v9

    sub-int v3, v9, v7

    .line 980
    .local v3, "height":I
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxBound()Landroid/graphics/RectF;

    move-result-object v2

    .line 981
    .local v2, "boundRect":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinSizeF()Landroid/graphics/RectF;

    move-result-object v6

    .line 982
    .local v6, "minRect":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxSizeF()Landroid/graphics/RectF;

    move-result-object v5

    .line 984
    .local v5, "maxRect":Landroid/graphics/RectF;
    int-to-float v9, v4

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_0

    add-int v9, v4, v8

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_0

    int-to-float v9, v7

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_0

    add-int v9, v7, v3

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 986
    :cond_0
    const/4 v9, 0x1

    .line 995
    :goto_0
    return v9

    .line 988
    :cond_1
    int-to-float v9, v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    int-to-float v9, v8

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_2

    int-to-float v9, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    int-to-float v9, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 990
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 992
    :cond_3
    if-lez v8, :cond_4

    if-gtz v3, :cond_5

    .line 993
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    .line 995
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public isTrackingStart()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    return v0
.end method

.method public needToOrientation()V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    .line 611
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x33

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1000
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v0

    .line 1003
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->checkTrackingBoundary(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 1006
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    :cond_2
    move v0, v1

    .line 1008
    goto :goto_0

    .line 1009
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    move v0, v1

    .line 1012
    goto :goto_0

    .line 1013
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 1015
    goto/16 :goto_0

    .line 1016
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    move v0, v1

    .line 1022
    goto/16 :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->saveDualLastTrackingPosition()V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 356
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueHanlderRect()V

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualCaptureModeAsyncInit()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDualModeAsyncCaptureCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 460
    return-void
.end method

.method public onDualModeAsyncFirstCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 437
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 305
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 306
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1081
    sparse-switch p1, :sswitch_data_0

    .line 1100
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1083
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    goto :goto_0

    .line 1095
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onVideoRecordingStop()V

    goto :goto_0

    .line 1081
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_2

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->showBoundryRect()V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_3

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    .line 829
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    .line 830
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendHideBoundryRectMessage()V

    goto :goto_0
.end method

.method public onMove(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 10
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    .line 687
    cmpl-float v0, p4, p5

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    :cond_3
    cmpg-float v0, p4, p5

    if-gez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v0, :cond_6

    :cond_4
    cmpg-float v0, p4, p5

    if-gez v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    :cond_5
    cmpl-float v0, p4, p5

    if-lez v0, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-nez v0, :cond_c

    .line 691
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    .line 692
    .local v8, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    .line 693
    .local v9, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 703
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v9    # "rotateRect":Landroid/graphics/RectF;
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_b

    .line 704
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->showBoundryRect()V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_9

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocusState()V

    .line 709
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_a

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    .line 712
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    .line 713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendHideBoundryRectMessage()V

    .line 716
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getBoundryShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendHideBoundryRectMessage()V

    goto/16 :goto_0

    .line 696
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, p3, v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFII)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->saveDualLastTrackingPosition()V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    .line 420
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 421
    return-void
.end method

.method public onQuadHandlerMove(FFFFFFFF)V
    .locals 18
    .param p1, "pt1X"    # F
    .param p2, "pt1Y"    # F
    .param p3, "pt2X"    # F
    .param p4, "pt2Y"    # F
    .param p5, "pt3X"    # F
    .param p6, "pt3Y"    # F
    .param p7, "pt4X"    # F
    .param p8, "pt4Y"    # F

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_2

    .line 724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v7, v7

    sub-float v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v8, v8

    sub-float v8, p4, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v9, v9

    sub-float v9, p5, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v10, v10

    sub-float v10, p6, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v11, v11

    sub-float v11, p7, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v12, v12

    sub-float v12, p8, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v15, 0x0

    invoke-virtual/range {v4 .. v15}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    .line 735
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v5

    sub-float v16, v4, v5

    .line 736
    .local v16, "left":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p8

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p8

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v5

    sub-float v17, v4, v5

    .line 738
    .local v17, "top":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getBoundryShowed()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->geLeftBeforeDragged()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpl-float v4, v4, v16

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->geLeftBeforeDragged()[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    cmpl-float v4, v4, v17

    if-eqz v4, :cond_0

    .line 739
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 408
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 409
    return-void
.end method

.method public onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setAlpha(F)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualRearProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    .line 278
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_5

    .line 279
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    if-nez v0, :cond_1

    .line 280
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->applyInvisible()V

    .line 290
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 291
    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualFrontProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->applyVisible()V

    goto :goto_1

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setTouchHandled(Z)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 489
    :cond_0
    return-void
.end method

.method public roundOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 944
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public saveDualLastTrackingPosition()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1832
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    .line 1835
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    .line 1836
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    .line 1837
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    .line 1838
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    .line 1839
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    .line 1840
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v13

    .line 1841
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v13

    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v0, v13

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v0, v13

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->isOutOfBoundary(FFFFFFFF)Z

    move-result v0

    if-ne v0, v10, :cond_1

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->resetHandler()V

    .line 1848
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v9

    .line 1849
    .local v9, "pts":[F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v11

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopX(I)V

    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v10

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopY(I)V

    .line 1851
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v12

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopX(I)V

    .line 1852
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v13

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopY(I)V

    .line 1853
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    aget v1, v9, v14

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomX(I)V

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x5

    aget v1, v9, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomY(I)V

    .line 1855
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x6

    aget v1, v9, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomX(I)V

    .line 1856
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x7

    aget v1, v9, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomY(I)V

    .line 1860
    .end local v9    # "pts":[F
    :cond_0
    return-void

    .line 1846
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v1, v11

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v6, v12

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v13

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    goto/16 :goto_0
.end method

.method public sendHideBoundryRectMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 879
    return-void
.end method

.method public sendShowBoundryRectMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 886
    return-void
.end method

.method public setAlphaDualModeProgressbar(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 448
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 449
    return-void
.end method

.method public setEditableShortMenuShow(Z)V
    .locals 1
    .param p1, "showEditableShortMenu"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mShowEditableShortMenu:Z

    .line 550
    if-eqz p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    .line 552
    :cond_0
    return-void
.end method

.method public setEffect(I)V
    .locals 20
    .param p1, "effect"    # I

    .prologue
    .line 1505
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 1508
    const-string v2, "TwGLDualMenu"

    const-string v3, "setEffect : mActivityContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    const/16 v2, 0x33

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueAreaHandle()V

    .line 1521
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->canRestoreDualEffectRectPosition()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x30

    if-eq v2, v3, :cond_3

    .line 1526
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->restoreDualEffectRectPosition()V

    .line 1528
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    .line 1530
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->adjustRectMargin(I)V

    .line 1532
    packed-switch p1, :pswitch_data_0

    .line 1635
    const/16 v2, 0x1f40

    move/from16 v0, p1

    if-lt v0, v2, :cond_e

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1639
    const-string v2, "TwGLDualMenu"

    const-string v3, "setDualEffectSync : fail to load external filters"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1516
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->resetHandler()V

    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showDualAreaHandle()V

    goto/16 :goto_1

    .line 1534
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 1670
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_6

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setAspectRatioLocked(Z)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    .line 1675
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_7

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 1678
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 1679
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v17

    .line 1680
    .local v17, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v18

    .line 1681
    .local v18, "rotateRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_0

    .line 1542
    .end local v17    # "rect":Landroid/graphics/RectF;
    .end local v18    # "rotateRect":Landroid/graphics/RectF;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d0

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d0

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1550
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d2

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d3

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d2

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d3

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1558
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d4

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d5

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d4

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d5

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1566
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d7

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d7

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1574
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d9

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d9

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1582
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901da

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901db

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901da

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901db

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1590
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901dc

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901dd

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901dc

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901dd

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1598
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901de

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901df

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901de

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901df

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1606
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_a

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 1613
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->LEFT_LOCK:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setSideLock(I)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    goto/16 :goto_2

    .line 1617
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_5

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_2

    .line 1622
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 1623
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v9, 0x5

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v10, 0x6

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxSizeF(FF)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMinSizeF(FF)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v9, 0x5

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v10, 0x6

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    .line 1632
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto/16 :goto_2

    .line 1645
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_e

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPosx(I)I

    move-result v15

    .line 1647
    .local v15, "posx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPosy(I)I

    move-result v16

    .line 1648
    .local v16, "posy":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v19

    .line 1649
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v14

    .line 1650
    .local v14, "height":I
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min setEffect :: unknown effext setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "posy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v3, v15

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int v4, v4, v16

    int-to-float v4, v4

    move/from16 v0, v19

    int-to-float v5, v0

    int-to-float v6, v14

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    mul-int/lit8 v3, v19, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-int/lit8 v4, v14, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    mul-int/lit8 v3, v19, 0x3

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    mul-int/lit8 v4, v14, 0x3

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_d

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    int-to-float v6, v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 1657
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    .end local v14    # "height":I
    .end local v15    # "posx":I
    .end local v16    # "posy":I
    .end local v19    # "width":I
    :cond_e
    :goto_3
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect :: unknown effext setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1663
    :catch_0
    move-exception v2

    goto :goto_3

    .line 1532
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public setEffectMenuSelect(I)V
    .locals 23
    .param p1, "effect"    # I

    .prologue
    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 1105
    const-string v2, "TwGLDualMenu"

    const-string v3, "setEffectMenuSelect : mActivityContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffectMenuSelect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v20

    .line 1110
    .local v20, "rect":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 1111
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    .line 1112
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto :goto_0

    .line 1115
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x1f40

    if-lt v2, v3, :cond_3

    .line 1116
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHandler(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FALSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1117
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto :goto_0

    .line 1121
    :cond_3
    const/16 v2, 0x33

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x33

    if-ne v2, v3, :cond_5

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->removeMessageTrackingStart()V

    .line 1123
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v2, :cond_6

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v4

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v4

    .line 1128
    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float/2addr v7, v8

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .end local v20    # "rect":Landroid/graphics/RectF;
    .local v21, "rect":Landroid/graphics/RectF;
    move-object/from16 v20, v21

    .line 1130
    .end local v21    # "rect":Landroid/graphics/RectF;
    .restart local v20    # "rect":Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v19

    .line 1131
    .local v19, "newrect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1132
    move-object/from16 v20, v19

    .line 1137
    .end local v19    # "newrect":Landroid/graphics/RectF;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->decideEffectSize(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    .line 1139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 1141
    const/16 v2, 0x33

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideDualAreaHandle()V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showGlueAreaHandle()V

    .line 1150
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_30

    const/16 v2, 0x1f40

    move/from16 v0, p1

    if-lt v0, v2, :cond_30

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1376
    const-string v2, "TwGLDualMenu"

    const-string v3, "setDualEffectSync : fail to load external filters"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1134
    :cond_6
    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDualEffectLeftTopY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .end local v20    # "rect":Landroid/graphics/RectF;
    .restart local v21    # "rect":Landroid/graphics/RectF;
    move-object/from16 v20, v21

    .end local v21    # "rect":Landroid/graphics/RectF;
    .restart local v20    # "rect":Landroid/graphics/RectF;
    goto/16 :goto_1

    .line 1145
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->resetHandler()V

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->hideGlueAreaHandle()V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->showDualAreaHandle()V

    goto/16 :goto_2

    .line 1152
    :pswitch_0
    const v2, 0x7f0901ce

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1153
    .local v5, "width":F
    const v2, 0x7f0901cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1155
    .local v6, "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1156
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1158
    :cond_8
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1159
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1161
    :cond_9
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 1162
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1164
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 1408
    .end local v5    # "width":F
    .end local v6    # "height":F
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_c

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setAspectRatioLocked(Z)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setGrowable(Z)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->hideBoundryRect()V

    .line 1413
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_d

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 1416
    :cond_d
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    .line 1417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v20

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v22

    .line 1420
    .local v22, "rotateRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_0

    .line 1172
    .end local v22    # "rotateRect":Landroid/graphics/RectF;
    :pswitch_1
    const v2, 0x7f0901d0

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1173
    .restart local v5    # "width":F
    const v2, 0x7f0901d1

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1175
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    .line 1176
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1178
    :cond_10
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    .line 1179
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1181
    :cond_11
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    .line 1182
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1184
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d0

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d0

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1192
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_2
    const v2, 0x7f0901d2

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1193
    .restart local v5    # "width":F
    const v2, 0x7f0901d3

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1195
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 1196
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1198
    :cond_13
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_14

    .line 1199
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1201
    :cond_14
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    .line 1202
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1204
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d2

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d3

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d2

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d3

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1212
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_3
    const v2, 0x7f0901d4

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1213
    .restart local v5    # "width":F
    const v2, 0x7f0901d5

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1215
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    .line 1216
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1218
    :cond_16
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_17

    .line 1219
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1221
    :cond_17
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    .line 1222
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1224
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d4

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d5

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d4

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d5

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1232
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_4
    const v2, 0x7f0901d6

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1233
    .restart local v5    # "width":F
    const v2, 0x7f0901d7

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1235
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    .line 1236
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1238
    :cond_19
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1a

    .line 1239
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1241
    :cond_1a
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    .line 1242
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1244
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d7

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d6

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d7

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1252
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_5
    const v2, 0x7f0901d8

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1253
    .restart local v5    # "width":F
    const v2, 0x7f0901d9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1255
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    .line 1256
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1258
    :cond_1c
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    .line 1259
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1261
    :cond_1d
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e

    .line 1262
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1264
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901d9

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901d8

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901d9

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1272
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_6
    const v2, 0x7f0901da

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1273
    .restart local v5    # "width":F
    const v2, 0x7f0901db

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1275
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f

    .line 1276
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1278
    :cond_1f
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    .line 1279
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1281
    :cond_20
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_21

    .line 1282
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1284
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901da

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901db

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901da

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901db

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1292
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_7
    const v2, 0x7f0901dc

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1293
    .restart local v5    # "width":F
    const v2, 0x7f0901dd

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1295
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_22

    .line 1296
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1298
    :cond_22
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_23

    .line 1299
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1301
    :cond_23
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    .line 1302
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1304
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901dc

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901dd

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901dc

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901dd

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1312
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_8
    const v2, 0x7f0901de

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1313
    .restart local v5    # "width":F
    const v2, 0x7f0901df

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1315
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25

    .line 1316
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1318
    :cond_25
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_26

    .line 1319
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1321
    :cond_26
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    .line 1322
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1324
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901de

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901df

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const v3, 0x7f0901de

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901df

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1332
    .end local v5    # "width":F
    .end local v6    # "height":F
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v7, 0x9

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_28

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 1339
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->LEFT_LOCK:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setSideLock(I)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    goto/16 :goto_3

    .line 1343
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v8, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    goto/16 :goto_3

    .line 1348
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingCoordinate(Z)V

    .line 1349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 1351
    const v2, 0x7f0901ce

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1352
    .restart local v5    # "width":F
    const v2, 0x7f0901cf

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1353
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    .line 1354
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1356
    :cond_29
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2a

    .line 1357
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1359
    :cond_2a
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    .line 1360
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1362
    :cond_2b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v10, v2, v5

    move-object/from16 v0, v20

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float v12, v2, v5

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v13, v2, v6

    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float v15, v2, v6

    invoke-virtual/range {v7 .. v15}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxSizeF(FF)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const v3, 0x7f0901ce

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x7f0901cf

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMinSizeF(FF)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_b

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v8, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v9, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v10, v2, v5

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float v11, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v12, v2, v5

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v13, v2, v6

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float v14, v2, v3

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float v15, v2, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v7 .. v18}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    goto/16 :goto_3

    .line 1382
    .end local v5    # "width":F
    .end local v6    # "height":F
    :cond_2c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v5, v2, v3

    .line 1383
    .restart local v5    # "width":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mEffectSizeRatio:F

    mul-float v6, v2, v3

    .line 1384
    .restart local v6    # "height":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d

    .line 1385
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_right_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1387
    :cond_2d
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    .line 1388
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_left_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1390
    :cond_2e
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    .line 1391
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1393
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxSizeF(FF)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterWidth(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterHeight(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMinSizeF(FF)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_30

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    .end local v5    # "width":F
    .end local v6    # "height":F
    :cond_30
    :goto_4
    const-string v2, "TwGLDualMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect :: unknown effext setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1401
    :catch_0
    move-exception v2

    goto :goto_4

    .line 1150
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
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public setOrientationChanged(IZ)V
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "forceUpdateHandler"    # Z

    .prologue
    const/4 v2, 0x1

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    .line 950
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_6

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    if-ne v0, v2, :cond_5

    .line 957
    :cond_3
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 972
    :cond_4
    :goto_0
    return-void

    .line 961
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    .line 962
    .local v8, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x0

    iget v1, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, v8, Landroid/graphics/RectF;->right:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, v8, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    .line 964
    .local v9, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->updateRectBeforeDragged()V

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 969
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v9    # "rotateRect":Landroid/graphics/RectF;
    :cond_6
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    goto :goto_0
.end method

.method public setOrientationForDual()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 607
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 934
    return-void
.end method

.method public setPreviousPosition(I)V
    .locals 22
    .param p1, "effect"    # I

    .prologue
    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setMaxBound()V

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxBound()V

    .line 750
    const/16 v1, 0x30

    move/from16 v0, p1

    if-eq v0, v1, :cond_c

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_9

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v18

    .line 753
    .local v18, "rect":Landroid/graphics/RectF;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 754
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    .line 806
    .end local v18    # "rect":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    return-void

    .line 757
    .restart local v18    # "rect":Landroid/graphics/RectF;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v16

    .line 758
    .local v16, "newrect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 759
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x31

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x31

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mPreviousEffect:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    if-nez v1, :cond_8

    .line 763
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v18

    .line 764
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v19

    .line 765
    .local v19, "rotateRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setPosition(FFFF)V

    .line 766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFIIZ)V

    .line 795
    .end local v16    # "newrect":Landroid/graphics/RectF;
    .end local v18    # "rect":Landroid/graphics/RectF;
    .end local v19    # "rotateRect":Landroid/graphics/RectF;
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    if-eqz v1, :cond_1

    .line 796
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mNeedToOrientation:Z

    .line 797
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    goto/16 :goto_0

    .line 769
    .restart local v16    # "newrect":Landroid/graphics/RectF;
    .restart local v18    # "rect":Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFII)V

    goto :goto_1

    .line 774
    .end local v16    # "newrect":Landroid/graphics/RectF;
    .end local v18    # "rect":Landroid/graphics/RectF;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getPosition()[F

    move-result-object v17

    .line 776
    .local v17, "pts":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    const/4 v4, 0x4

    aget v4, v17, v4

    const/4 v5, 0x6

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v1

    float-to-int v14, v1

    .line 777
    .local v14, "left":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x3

    aget v3, v17, v3

    const/4 v4, 0x5

    aget v4, v17, v4

    const/4 v5, 0x7

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMinValue(FFFF)F

    move-result v1

    float-to-int v0, v1

    move/from16 v20, v0

    .line 778
    .local v20, "top":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v3, 0x2

    aget v3, v17, v3

    const/4 v4, 0x4

    aget v4, v17, v4

    const/4 v5, 0x6

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    float-to-int v1, v1

    sub-int v21, v1, v14

    .line 779
    .local v21, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x1

    aget v2, v17, v2

    const/4 v3, 0x3

    aget v3, v17, v3

    const/4 v4, 0x5

    aget v4, v17, v4

    const/4 v5, 0x7

    aget v5, v17, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getMaxValue(FFFF)F

    move-result v1

    float-to-int v1, v1

    sub-int v13, v1, v20

    .line 780
    .local v13, "height":I
    if-eqz v21, :cond_a

    if-nez v13, :cond_b

    .line 781
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto/16 :goto_0

    .line 785
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->moveBy([F)[F

    move-result-object v15

    .line 786
    .local v15, "newpts":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    const/4 v4, 0x2

    aget v4, v15, v4

    const/4 v5, 0x3

    aget v5, v15, v5

    const/4 v6, 0x4

    aget v6, v15, v6

    const/4 v7, 0x5

    aget v7, v15, v7

    const/4 v8, 0x6

    aget v8, v15, v8

    const/4 v9, 0x7

    aget v9, v15, v9

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    .line 787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_7

    .line 788
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 789
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v15, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v15, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v15, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v15, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v15, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x5

    aget v7, v15, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x6

    aget v8, v15, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x7

    aget v9, v15, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFFFFFIIZ)V

    goto/16 :goto_1

    .line 804
    .end local v13    # "height":I
    .end local v14    # "left":I
    .end local v15    # "newpts":[F
    .end local v17    # "pts":[F
    .end local v20    # "top":I
    .end local v21    # "width":I
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->setEffect(I)V

    goto/16 :goto_0
.end method

.method public setResizeHandleDragVibration(Z)V
    .locals 1
    .param p1, "vibration"    # Z

    .prologue
    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setResizeHandleDragVibration(Z)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setResizeHandleDragVibration(Z)V

    .line 603
    return-void
.end method

.method public setTrackingStart(Z)V
    .locals 0
    .param p1, "TrackingStart"    # Z

    .prologue
    .line 593
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    .line 594
    return-void
.end method

.method public setonHandlerMoveListener()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->getonHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;)V

    .line 617
    :cond_0
    return-void
.end method

.method public setonQuadHandlerMoveListener()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->getonQuadHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setonQuadHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;)V

    .line 623
    :cond_0
    return-void
.end method

.method public showDualAreaHandle()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setBackGroundVisible()V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->NONE_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setSideLock(I)V

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDraggable(Z)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->setDisable(Z)V

    .line 854
    :cond_0
    return-void
.end method

.method public showDualListMenu()V
    .locals 8

    .prologue
    const/16 v2, 0x5a

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 369
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_0

    .line 370
    new-instance v4, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v1}, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 371
    .local v4, "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 372
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v4    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 375
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->disableAnimation()V

    .line 376
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 377
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->enableAnimation()V

    .line 379
    :cond_1
    return-void
.end method

.method public showGlueAreaHandle()V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundVisible()V

    .line 866
    return-void
.end method

.method public showGlueHanlderRect()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setMaxBound()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v9

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v9

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v10

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v11

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mWidthOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSecImagingString()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mHeightOffsetForhandle:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v1, v12

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v0, v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v0, v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v0, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v0, v11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v0, v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v0, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->isOutOfBoundary(FFFFFFFF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v5, v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mX:[F

    aget v7, v7, v12

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mY:[F

    aget v8, v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    .line 401
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->applyVisible()V

    .line 402
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->moveBy([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v3, v3, v11

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    aget v5, v5, v13

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v8, 0x6

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGluePointInfo:[F

    const/4 v9, 0x7

    aget v8, v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setPosition(FFFFFFFF)V

    goto :goto_0
.end method

.method public showTrackingButton()V
    .locals 4

    .prologue
    const/16 v3, 0x33

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 891
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->hideBoundryRect()V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundInvisible()V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingStart:Z

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getIsCalledSwitchToCameraSync()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->sendShowBoundryRectMessage()V

    .line 900
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mTrackingOffButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 901
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mInvisible:Z

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setDisable(Z)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->setBackGroundVisible()V

    goto :goto_0

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualMenu;->mGlueAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->showBoundryRect()V

    goto :goto_1
.end method
