.class public Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLMagicMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_PROGRESS_HEIGHT:I

.field private static final CAPTURE_PROGRESS_WIDTH:I

.field private static final CAPTURE_PROGRESS_X:[I

.field private static final CAPTURE_PROGRESS_Y:[I

.field protected static final DISABLE_MENU:I = 0x0

.field protected static final ENABLE_MENU:I = 0x1

.field private static MAGIC_FRONT_MAX_IMAGE_COUNT:I = 0x0

.field private static MAGIC_MAX_IMAGE_COUNT:I = 0x0

.field private static MAGIC_MAX_PROGRESS_COUNT:I = 0x0

.field private static final MAGIC_PROGRESS_TEXT_SHADOW_OFFSET:I

.field private static final MAGIC_SHOT_MODES:[Ljava/lang/String;

.field private static final MAGIC_SHOT_PACKAGE:Ljava/lang/String; = "com.arcsoft.magicshotstudio"

.field private static final MAGIC_TEXT_SHADOW_COLOR:I

.field private static final MAGIC_TEXT_SHADOW_OFFSET:I

.field private static final MAGIC_TEXT_SHADOW_RADIUS:F = 1.0f

.field private static final PROGRESSBAR_TEXT_BOTTOM_PADDING:I

.field private static final PROGRESSBAR_TEXT_HEIGHT:I

.field private static final PROGRESSBAR_TEXT_SIZE:F

.field private static final PROGRESS_GROUP_HEIGHT:I

.field public static final REQUIRED_STORAGE_SIZE_FRONT:J = 0xa00000L

.field public static final REQUIRED_STORAGE_SIZE_REAR:J = 0x1900000L

.field private static final SELECT_FRONT_ITEM1_POS_X:I

.field private static final SELECT_FRONT_ITEM1_POS_Y:I

.field private static final SELECT_FRONT_ITEM2_POS_X:I

.field private static final SELECT_FRONT_ITEM2_POS_Y:I

.field private static final SELECT_ITEM1_POS_X:I

.field private static final SELECT_ITEM1_POS_Y:I

.field private static final SELECT_ITEM2_POS_X:I

.field private static final SELECT_ITEM2_POS_Y:I

.field private static final SELECT_ITEM3_POS_X:I

.field private static final SELECT_ITEM3_POS_Y:I

.field private static final SELECT_ITEM4_POS_X:I

.field private static final SELECT_ITEM4_POS_Y:I

.field private static final SELECT_ITEM5_POS_X:I

.field private static final SELECT_ITEM5_POS_Y:I

.field private static final SELECT_ITEM_TEXT_HEIGHT:I

.field private static final SELECT_ITEM_TEXT_MARGIN_H:I

.field private static final SELECT_ITEM_TEXT_SIZE:I

.field private static final SELECT_ITEM_TEXT_WIDTH:I

.field private static final SELECT_ITEM_TEXT_WIDTH_S:I

.field private static final SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

.field private static final SELECT_ITEM_WIDTH:I

.field private static final SELECT_MENU_BG_POS_X:I

.field private static final SELECT_MENU_BG_POS_Y:I

.field private static final SELECT_MENU_HEIGHT:I

.field private static final SELECT_MENU_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLMagicMenu"


# instance fields
.field private DEFAULT_TEXT_COLOR:I

.field private mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

.field private mBestFaceText:Lcom/sec/android/glview/TwGLText;

.field private mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

.field private mBestPhotoText:Lcom/sec/android/glview/TwGLText;

.field protected mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mDramaButton:Lcom/sec/android/glview/TwGLButton;

.field private mDramaText:Lcom/sec/android/glview/TwGLText;

.field private mEraserButton:Lcom/sec/android/glview/TwGLButton;

.field private mEraserText:Lcom/sec/android/glview/TwGLText;

.field private mInputPath:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;

.field private mMaxImageCount:I

.field private mOrientation:I

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

.field private mPicMotionText:Lcom/sec/android/glview/TwGLText;

.field private mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

.field private mSelectMode:I

.field private mTempFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const/16 v0, 0x20

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_IMAGE_COUNT:I

    .line 54
    const/16 v0, 0x10

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_FRONT_MAX_IMAGE_COUNT:I

    .line 55
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    .line 71
    const v0, 0x7f090289

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESS_GROUP_HEIGHT:I

    .line 73
    new-array v0, v6, [I

    const v1, 0x7f090281

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f090283

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f090285

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f090287

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    .line 76
    new-array v0, v6, [I

    const v1, 0x7f090282

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f090284

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f090286

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f090288

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    .line 79
    const v0, 0x7f09028c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    .line 80
    const v0, 0x7f09028d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_HEIGHT:I

    .line 82
    const v0, 0x7f09028a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_HEIGHT:I

    .line 83
    const v0, 0x7f09028b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    .line 84
    const v0, 0x7f0a003b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_SIZE:F

    .line 88
    const v0, 0x7f090291

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    .line 89
    const v0, 0x7f090292

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_X:I

    .line 90
    const v0, 0x7f090293

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_Y:I

    .line 91
    const v0, 0x7f090292

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_X:I

    .line 92
    const v0, 0x7f090294

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_Y:I

    .line 93
    const v0, 0x7f090295

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_X:I

    .line 94
    const v0, 0x7f090296

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_Y:I

    .line 95
    const v0, 0x7f090297

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_X:I

    .line 96
    const v0, 0x7f090298

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_Y:I

    .line 97
    const v0, 0x7f090299

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    .line 98
    const v0, 0x7f09029a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    .line 99
    const v0, 0x7f09029b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    .line 100
    const v0, 0x7f09029c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    .line 101
    const v0, 0x7f09029d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    .line 102
    const v0, 0x7f09029e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    .line 103
    const v0, 0x7f09029f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    .line 104
    const v0, 0x7f0902a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    .line 105
    const v0, 0x7f0902a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    .line 106
    const v0, 0x7f0902a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    .line 107
    const v0, 0x7f0902a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    .line 108
    const v0, 0x7f0a0047

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    .line 109
    const v0, 0x7f09028e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_X:I

    .line 110
    const v0, 0x7f09028f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_Y:I

    .line 111
    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_WIDTH:I

    .line 112
    const v0, 0x7f090001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_HEIGHT:I

    .line 132
    const v0, 0x7f0a001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    .line 133
    const v0, 0x7f0a001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_PROGRESS_TEXT_SHADOW_OFFSET:I

    .line 135
    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    .line 622
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.arcsoft.magicshotstudio.Main"

    aput-object v1, v0, v2

    const-string v1, "com.arcsoft.magicshotstudio.BestFace"

    aput-object v1, v0, v3

    const-string v1, "com.arcsoft.magicshotstudio.BestPhoto"

    aput-object v1, v0, v4

    const-string v1, "com.arcsoft.magicshotstudio.Eraser"

    aput-object v1, v0, v5

    const-string v1, "com.arcsoft.magicshotstudio.Drama"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.arcsoft.magicshotstudio.PicMotion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_SHOT_MODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 148
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 85
    const v0, 0x7f080006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    .line 150
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setCaptureEnabled(Z)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setTouchHandled(Z)V

    .line 155
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0201ee

    const v7, 0x7f0201ef

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 163
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->PROGRESSBAR_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_PROGRESS_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 170
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 606
    const-string v0, "TwGLMagicMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 610
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 615
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 618
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 619
    return-void
.end method

.method public getCaptureProgressIncreased()I
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getInputString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMagicTempFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-wide/32 v0, 0xa00000

    .line 434
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1900000

    goto :goto_0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 518
    const-string v0, "TwGLMagicMenu"

    const-string v1, "hideCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 520
    return-void
.end method

.method public hideSelectLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 554
    return-void
.end method

.method public init()V
    .locals 14

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_FRONT_MAX_IMAGE_COUNT:I

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 186
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    .line 193
    :cond_1
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_MENU_BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200d9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_X:I

    .line 197
    .local v12, "mBestPhotoPosX":I
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM1_POS_Y:I

    .line 198
    .local v13, "mBestPhotoPosY":I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    .line 202
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v2, v12

    int-to-float v3, v13

    const v4, 0x7f02002f

    const v5, 0x7f020031

    const v6, 0x7f020030

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_X:I

    .line 212
    .local v10, "mBestFacePosX":I
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_FRONT_ITEM2_POS_Y:I

    .line 213
    .local v11, "mBestFacePosY":I
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    .line 217
    :cond_3
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v2, v10

    int-to-float v3, v11

    const v4, 0x7f02002c

    const v5, 0x7f02002e

    const v6, 0x7f02002d

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    .line 231
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020032

    const v5, 0x7f020034

    const v6, 0x7f020033

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    .line 244
    :cond_5
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020035

    const v5, 0x7f020037

    const v6, 0x7f020036

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    .line 257
    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020038

    const v5, 0x7f02003a

    const v6, 0x7f020039

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_7

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    .line 271
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int v2, v12, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b003a

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_8

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    .line 283
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int v2, v10, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b003b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    .line 294
    :cond_9
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b0046

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_a

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    .line 305
    :cond_a
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b003f

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    .line 316
    :cond_b
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b0048

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->DEFAULT_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_TEXT_SHADOW_COLOR:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    int-to-float v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    int-to-float v2, v12

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    int-to-float v2, v10

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v12, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 360
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v10, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v12, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v10, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v11

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int v2, v12, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 378
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int v2, v10, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM3_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM4_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM5_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 386
    const-string v0, ".magic.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    .line 389
    return-void

    .line 177
    .end local v10    # "mBestFacePosX":I
    .end local v11    # "mBestFacePosY":I
    .end local v12    # "mBestPhotoPosX":I
    .end local v13    # "mBestPhotoPosY":I
    :cond_c
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_IMAGE_COUNT:I

    goto/16 :goto_0

    .line 196
    :cond_d
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_X:I

    goto/16 :goto_1

    .line 197
    .restart local v12    # "mBestPhotoPosX":I
    :cond_e
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM1_POS_Y:I

    goto/16 :goto_2

    .line 211
    .restart local v13    # "mBestPhotoPosY":I
    :cond_f
    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_X:I

    goto/16 :goto_3

    .line 212
    .restart local v10    # "mBestFacePosX":I
    :cond_10
    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM2_POS_Y:I

    goto/16 :goto_4

    .line 358
    .restart local v11    # "mBestFacePosY":I
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int v2, v12, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    goto/16 :goto_5

    .line 375
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    sub-int v2, v12, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_MARGIN_H:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    goto/16 :goto_6
.end method

.method public launchMagicStudio()V
    .locals 18

    .prologue
    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v15, "com.arcsoft.magicshotstudio"

    invoke-static {v14, v15}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v15, "com.arcsoft.magicshotstudio"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 662
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    .line 665
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 666
    .local v6, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v14, "com.arcsoft.magicshotstudio"

    sget-object v15, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_SHOT_MODES:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-direct {v3, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .local v3, "component":Landroid/content/ComponentName;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 669
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v14

    invoke-static {v14}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "directory":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local v12, "tempFile":Ljava/io/File;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    .line 672
    :cond_3
    const-string v14, "TwGLMagicMenu"

    const-string v15, "out file open error"

    invoke-static {v14, v15}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 676
    .local v13, "title":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "BestFace_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, "fileName":Ljava/lang/String;
    const-string v14, "TwGLMagicMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fileName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "BestFace_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "bestFace":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "BestPhoto_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "bestPhoto":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Eraser_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, "piclear":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Drama_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 683
    .local v9, "picaction":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "PicMotion_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 685
    .local v11, "picmotion":Ljava/lang/String;
    const-string v14, "sef_file_name"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v14, "select_mode"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v14

    invoke-static {v14}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v8

    .line 690
    .local v8, "mwidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v14

    invoke-static {v14}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v7

    .line 691
    .local v7, "mheight":I
    const-string v14, "TwGLMagicMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mwidth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v14, "TwGLMagicMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mheight: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v14, "image_width"

    invoke-virtual {v6, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string v14, "image_height"

    invoke-virtual {v6, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string v14, "bestphoto"

    invoke-virtual {v6, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v14, "bestface"

    invoke-virtual {v6, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v14, "eraser"

    invoke-virtual {v6, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v14, "drama"

    invoke-virtual {v6, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v14, "picmotion"

    invoke-virtual {v6, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->isFromLockScreen()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 703
    const-string v14, "createdByLockscreen"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/app/camera/Camera;->setIsLaunchSStudio(Z)V

    .line 707
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14, v6}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/high16 v15, 0x7f040000

    const v16, 0x7f040001

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 710
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v14}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopMagicShot()V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    :goto_0
    return v2

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_3

    .line 632
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    .line 643
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideSelectLayout()V

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v1, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_IDLE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setMagicShotState(I)V

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->launchMagicStudio()V

    goto :goto_0

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_4

    .line 634
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1

    .line 635
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_5

    .line 636
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_6

    .line 638
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1

    .line 639
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    .line 640
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    goto :goto_1
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "TwGLMagicMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideCaptureLayout()V

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideSelectLayout()V

    .line 408
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 737
    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown return, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v0, 0x1

    .line 742
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 747
    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 749
    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp return, keycode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 753
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->cancelCaptureForMagic()V

    :cond_2
    move v0, v1

    .line 757
    goto :goto_0

    .line 758
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMagicShotState()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, v3, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_SELECT:I

    if-ne v2, v3, :cond_0

    .line 759
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->reset(Z)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_IDLE:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setMagicShotState(I)V

    move v0, v1

    .line 761
    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 726
    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    .line 732
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->updateAlign()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 716
    const-string v0, "TwGLMagicMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;->onMagicCaptureCancelled()V

    .line 720
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->reset(Z)V

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->removeTempFile()V

    .line 722
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 400
    const-string v0, "TwGLMagicMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideCaptureLayout()V

    .line 402
    return-void
.end method

.method public pushInputString(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mInputPath:Ljava/lang/String;

    .line 485
    sget-boolean v0, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "TwGLMagicMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushInputString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    return-void
.end method

.method public removeTempFile()V
    .locals 6

    .prologue
    .line 466
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "TwGLMagicMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "bPause"    # Z

    .prologue
    const/4 v2, 0x0

    .line 411
    const-string v0, "TwGLMagicMenu"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 414
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    .line 415
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMode:I

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setTouchHandled(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideCaptureLayout()V

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->hideSelectLayout()V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 428
    :cond_1
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 5

    .prologue
    .line 490
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_FRONT_MAX_IMAGE_COUNT:I

    :goto_0
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, "progress":I
    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_PROGRESS_COUNT:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mMaxImageCount:I

    div-int v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_1
    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 502
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->setTouchHandled(Z)V

    .line 504
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 505
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideShutterButton()V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->showCaptureLayout()V

    .line 511
    :cond_1
    return-void

    .line 490
    .end local v1    # "progress":I
    :cond_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->MAGIC_MAX_IMAGE_COUNT:I

    goto/16 :goto_0

    .line 494
    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .line 495
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "TwGLMagicMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture count calculate - finish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setOnMagicCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu$OnMagicCaptureCancelListener;

    .line 145
    return-void
.end method

.method public setOutputFile()V
    .locals 6

    .prologue
    .line 439
    const-string v3, "TwGLMagicMenu"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    const-string v3, "TwGLMagicMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    const-string v3, "TwGLMagicMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, -0xa

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 463
    :goto_0
    return-void

    .line 460
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 523
    const-string v0, "TwGLMagicMenu"

    const-string v1, "showCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSelectLayout(I)V
    .locals 9
    .param p1, "modes"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    const-string v1, "TwGLMagicMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSelectLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "str":Ljava/lang/String;
    const-string v1, "TwGLMagicMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str.length(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 564
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 569
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_5

    .line 570
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 571
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 573
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_f

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_8

    .line 578
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 579
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 581
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v7, :cond_b

    .line 585
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 586
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 588
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 591
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-eqz v1, :cond_d

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v8, :cond_e

    .line 592
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 593
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 595
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 596
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 598
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenuBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 601
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->updateAlign()V

    .line 602
    return-void
.end method

.method public updateAlign()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mSelectMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 769
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 771
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto :goto_0

    .line 786
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 791
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto/16 :goto_0

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 805
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 810
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_S:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto/16 :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH_VERTICAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_2

    .line 824
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestPhotoText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mBestFaceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mDramaText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mEraserText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->SELECT_ITEM_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMagicMenu;->mPicMotionText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    goto/16 :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
