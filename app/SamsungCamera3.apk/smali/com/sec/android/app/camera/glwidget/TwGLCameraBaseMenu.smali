.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final COVERMODE_CLOSE_BUTTON_POS_X:I

.field private static final COVERMODE_CLOSE_BUTTON_POS_Y:I

.field private static final COVERMODE_CLOSE_CAMERA:I = -0x1

.field private static final COVERMODE_FLASH_BUTTON_POS_X:I

.field private static final COVERMODE_FLASH_BUTTON_POS_Y:I

.field private static final COVERMODE_SHUTTER_BUTTON_POS_X:I

.field private static final COVERMODE_SHUTTER_BUTTON_POS_Y:I

.field private static final COVERMODE_THUMBNAIL_BUTTON_POS_X:I

.field private static final COVERMODE_THUMBNAIL_BUTTON_POS_Y:I

.field private static final GROUP_PLAY_BUTTON:I = 0x0

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final LIVE_BEAUTY_FACE_BUTTON_POS_X:I

.field private static final LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

.field private static final RECORDING_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final SHOOTINGMODE_BUTTON_POS_X:I

.field private static final SHOOTINGMODE_BUTTON_POS_Y:I

.field private static final SHUTTER_ANIMATION_IMAGE_POS_X:I

.field private static final SHUTTER_ANIMATION_IMAGE_POS_Y:I

.field private static final SHUTTER_BUTTON_POS_X:I

.field private static final SHUTTER_BUTTON_POS_Y:I

.field private static final SIDEBAR_HEIGHT:I

.field private static final SIDEBAR_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraBaseMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I

.field private static final THUMBNAIL_LIST_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_LIST_BUTTON_POS_X:I

.field private static final THUMBNAIL_LIST_BUTTON_POS_Y:I

.field private static final THUMBNAIL_LIST_BUTTON_WIDTH:I


# instance fields
.field private mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field public mCameraEnterKeyReleased:Z

.field private mChkBaseMenuItemsShow:Z

.field private mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mDimState:Z

.field private mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

.field public mIsThumbnailListMenuOpen:Z

.field private mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

.field private mModeTextDimImageResId:I

.field private mModeTextImageResId:I

.field private mModeTextPressImageResId:I

.field private mRecordingButton:Lcom/sec/android/glview/TwGLButton;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

.field private mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

.field private mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

.field private mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

.field private mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f090013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    .line 58
    const v0, 0x7f090014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    .line 60
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 61
    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 63
    const v0, 0x7f09001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_X:I

    .line 64
    const v0, 0x7f09001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_Y:I

    .line 66
    const v0, 0x7f090020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    .line 67
    const v0, 0x7f090021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    .line 68
    const v0, 0x7f090022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 69
    const v0, 0x7f090023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 71
    const v0, 0x7f090026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 72
    const v0, 0x7f090027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 74
    const v0, 0x7f090028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_X:I

    .line 75
    const v0, 0x7f090029

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_Y:I

    .line 76
    const v0, 0x7f09002a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_WIDTH:I

    .line 77
    const v0, 0x7f09002b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_HEIGHT:I

    .line 79
    const v0, 0x7f090033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_X:I

    .line 80
    const v0, 0x7f090034

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

    .line 84
    const v0, 0x7f0902e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_X:I

    .line 85
    const v0, 0x7f0902ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_Y:I

    .line 86
    const v0, 0x7f0902eb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_X:I

    .line 87
    const v0, 0x7f0902ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_Y:I

    .line 88
    const v0, 0x7f0902ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_X:I

    .line 89
    const v0, 0x7f0902ee

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_Y:I

    .line 90
    const v0, 0x7f0902ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_X:I

    .line 91
    const v0, 0x7f0902f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_Y:I

    .line 95
    const v0, 0x7f090165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    .line 96
    const v0, 0x7f090166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 134
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 106
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 107
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 108
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    .line 128
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    .line 129
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 131
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    .line 137
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mVisibility:Z

    .line 139
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setCaptureEnabled(Z)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setTouchHandled(Z)V

    .line 142
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 143
    return-void
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 11
    .param p1, "parent"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2, "viewId"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "TwGLCameraBaseMenu"

    const-string v1, "mActivityContext is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020211

    const v5, 0x7f020213

    const v6, 0x7f020212

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHUTTER_ANIMATION_IMAGE_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200c4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 169
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02003f

    const v5, 0x7f020040

    const v6, 0x7f02003e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnButtonPressedListener(Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;)V

    .line 178
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SHOOTINGMODE_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getCurrentLocaleModeText()V

    .line 182
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 192
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setTag(I)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setFocusable(Z)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->moveBaseLayoutAbsolute(FFZ)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 209
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020021

    const v5, 0x7f020023

    const v6, 0x7f020022

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 223
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setTag(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 231
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_LIST_BUTTON_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 232
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020026

    const v5, 0x7f020028

    const v6, 0x7f020027

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v10

    .line 236
    .local v10, "shootingMode":I
    const/16 v0, 0x23

    if-ne v10, v0, :cond_6

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 244
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 258
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->LIVE_BEAUTY_FACE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02001f

    const v5, 0x7f020020

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0122

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 276
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    if-lez v0, :cond_9

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    .line 295
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_SHUTTER_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202e6

    const v5, 0x7f0202e7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 313
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_CLOSE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202e4

    const v5, 0x7f0202e5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    .line 324
    .local v9, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v6, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 325
    .local v6, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 326
    .local v7, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_FLASH_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOrientation(I)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setCoverCameraMode(Z)V

    .line 340
    .end local v6    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v9    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 341
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseMenu-loading**added["

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

    .line 342
    const-wide/16 v0, 0x1000

    const-string v2, "Add View"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 343
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 346
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailButton()V

    .line 353
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 358
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    goto/16 :goto_0

    .line 225
    .end local v10    # "shootingMode":I
    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    goto/16 :goto_1

    .line 238
    .restart local v10    # "shootingMode":I
    :cond_6
    const/16 v0, 0x2f

    if-ne v10, v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 272
    :cond_8
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_3

    .line 290
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto/16 :goto_4

    .line 348
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    .line 350
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setEditableSideBarVisibility(I)V

    goto/16 :goto_5
.end method


# virtual methods
.method public addSideBarItem(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->addEmptyItem(FF)V

    .line 1576
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 370
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 371
    return-void
.end method

.method public endShutterAnimation()V
    .locals 2

    .prologue
    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 969
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 972
    :cond_0
    return-void
.end method

.method public getCameraEnterKeyState()Z
    .locals 1

    .prologue
    .line 1557
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    return v0
.end method

.method public getChkBaseMenuItemsShow()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mChkBaseMenuItemsShow:Z

    return v0
.end method

.method public getCurrentLocaleModeText()V
    .locals 7

    .prologue
    const v6, 0x7f020106

    const v5, 0x7f020105

    const v4, 0x7f0200fe

    const v3, 0x7f0200fd

    const v2, 0x7f0200fc

    .line 1184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, "currentLanguage":Ljava/lang/String;
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1187
    const v1, 0x7f020107

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1188
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    .line 1190
    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    const v1, 0x7f0200ea

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1192
    const v1, 0x7f0200ec

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1193
    const v1, 0x7f0200eb

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1196
    const v1, 0x7f0200f3

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1197
    const v1, 0x7f0200f5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1198
    const v1, 0x7f0200f4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 1200
    :cond_2
    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1201
    :cond_3
    const v1, 0x7f0200ed

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1202
    const v1, 0x7f0200ef

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1203
    const v1, 0x7f0200ee

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 1205
    :cond_4
    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1206
    :cond_5
    const v1, 0x7f0200f6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1207
    const v1, 0x7f0200f8

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1208
    const v1, 0x7f0200f7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 1210
    :cond_6
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1211
    :cond_7
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1212
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1213
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 1215
    :cond_8
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1216
    const v1, 0x7f0200ff

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1217
    const v1, 0x7f020101

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1218
    const v1, 0x7f020100

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1220
    :cond_9
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1221
    :cond_a
    const v1, 0x7f020117

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1222
    const v1, 0x7f020119

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1223
    const v1, 0x7f020118

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1225
    :cond_b
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1226
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1227
    const v1, 0x7f020107

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1228
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1230
    :cond_c
    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1231
    const v1, 0x7f020108

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1232
    const v1, 0x7f02010a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1233
    const v1, 0x7f020109

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1235
    :cond_d
    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1236
    const v1, 0x7f0200f0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1237
    const v1, 0x7f0200f2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1238
    const v1, 0x7f0200f1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1240
    :cond_e
    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1241
    const v1, 0x7f02010b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1242
    const v1, 0x7f02010d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1243
    const v1, 0x7f02010c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1245
    :cond_f
    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1246
    const v1, 0x7f02010e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1247
    const v1, 0x7f020110

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1248
    const v1, 0x7f02010f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1250
    :cond_10
    const-string v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1251
    const v1, 0x7f020132

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1252
    const v1, 0x7f020134

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1253
    const v1, 0x7f020133

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1255
    :cond_11
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1256
    :cond_12
    const v1, 0x7f020111

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1257
    const v1, 0x7f020113

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1258
    const v1, 0x7f020112

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1260
    :cond_13
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1261
    const v1, 0x7f02011d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1262
    const v1, 0x7f02011f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1263
    const v1, 0x7f02011e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1265
    :cond_14
    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1266
    const v1, 0x7f020123

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1267
    const v1, 0x7f020125

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1268
    const v1, 0x7f020124

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1270
    :cond_15
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1271
    :cond_16
    const v1, 0x7f020126

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1272
    const v1, 0x7f020128

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1273
    const v1, 0x7f020127

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1275
    :cond_17
    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1276
    const v1, 0x7f020162

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1277
    const v1, 0x7f020164

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1278
    const v1, 0x7f020163

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1280
    :cond_18
    const-string v1, "hy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1281
    const v1, 0x7f0200e7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1282
    const v1, 0x7f0200e9

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1283
    const v1, 0x7f0200e8

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1285
    :cond_19
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1286
    const v1, 0x7f020135

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1287
    const v1, 0x7f020137

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1288
    const v1, 0x7f020136

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1290
    :cond_1a
    const-string v1, "ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1291
    const v1, 0x7f020114

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1292
    const v1, 0x7f020116

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1293
    const v1, 0x7f020115

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1295
    :cond_1b
    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1296
    const v1, 0x7f02013e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1297
    const v1, 0x7f020140

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1298
    const v1, 0x7f02013f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1300
    :cond_1c
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1301
    const v1, 0x7f020138

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1302
    const v1, 0x7f02013a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1303
    const v1, 0x7f020139

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1305
    :cond_1d
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1306
    const v1, 0x7f020141

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1307
    const v1, 0x7f020143

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1308
    const v1, 0x7f020142

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1310
    :cond_1e
    const-string v1, "lo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1311
    const v1, 0x7f020144

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1312
    const v1, 0x7f020146

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1313
    const v1, 0x7f020145

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1315
    :cond_1f
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1316
    const v1, 0x7f020147

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1317
    const v1, 0x7f020149

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1318
    const v1, 0x7f020148

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1320
    :cond_20
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1321
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1322
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1323
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1325
    :cond_21
    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1326
    const v1, 0x7f02014a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1327
    const v1, 0x7f02014c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1328
    const v1, 0x7f02014b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1330
    :cond_22
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1331
    const v1, 0x7f020150

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1332
    const v1, 0x7f020152

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1333
    const v1, 0x7f020151

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1335
    :cond_23
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1336
    :cond_24
    const v1, 0x7f02014d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1337
    const v1, 0x7f02014f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1338
    const v1, 0x7f02014e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1340
    :cond_25
    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1341
    const v1, 0x7f020153

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1342
    const v1, 0x7f020155

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1343
    const v1, 0x7f020154

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1345
    :cond_26
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1346
    const v1, 0x7f020102

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1347
    const v1, 0x7f020104

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1348
    const v1, 0x7f020103

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1350
    :cond_27
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1351
    const v1, 0x7f020156

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1352
    const v1, 0x7f020158

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1353
    const v1, 0x7f020157

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1355
    :cond_28
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1356
    const v1, 0x7f02015c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1357
    const v1, 0x7f02015e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1358
    const v1, 0x7f02015d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1360
    :cond_29
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1361
    const v1, 0x7f020159

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1362
    const v1, 0x7f02015b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1363
    const v1, 0x7f02015a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1365
    :cond_2a
    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1366
    const v1, 0x7f020162

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1367
    const v1, 0x7f020164

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1368
    const v1, 0x7f020163

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1370
    :cond_2b
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1371
    const v1, 0x7f020165

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1372
    const v1, 0x7f020167

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1373
    const v1, 0x7f020166

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1374
    :cond_2c
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1375
    const v1, 0x7f02016b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1376
    const v1, 0x7f02016d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1377
    const v1, 0x7f02016c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1379
    :cond_2d
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1380
    const v1, 0x7f02016e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1381
    const v1, 0x7f020170

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1382
    const v1, 0x7f02016f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1384
    :cond_2e
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1385
    const v1, 0x7f020171

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1386
    const v1, 0x7f020173

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1387
    const v1, 0x7f020172

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1389
    :cond_2f
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1390
    const v1, 0x7f020177

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1391
    const v1, 0x7f020179

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1392
    const v1, 0x7f020178

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1394
    :cond_30
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1395
    const v1, 0x7f0200f9

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1396
    const v1, 0x7f0200fb

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1397
    const v1, 0x7f0200fa

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1399
    :cond_31
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1400
    :cond_32
    const v1, 0x7f0200e4

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1401
    const v1, 0x7f0200e6

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1402
    const v1, 0x7f0200e5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1404
    :cond_33
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1405
    const v1, 0x7f02011a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1406
    const v1, 0x7f02011c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1407
    const v1, 0x7f02011b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1409
    :cond_34
    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1410
    const v1, 0x7f020120

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1411
    const v1, 0x7f020122

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1412
    const v1, 0x7f020121

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1414
    :cond_35
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1415
    const v1, 0x7f020129

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1416
    const v1, 0x7f02012b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1417
    const v1, 0x7f02012a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1419
    :cond_36
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1420
    const v1, 0x7f02012c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1421
    const v1, 0x7f02012e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1422
    const v1, 0x7f02012d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1424
    :cond_37
    const-string v1, "ig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1425
    const v1, 0x7f02012f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1426
    const v1, 0x7f020131

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1427
    const v1, 0x7f020130

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1429
    :cond_38
    const-string v1, "kk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1430
    const v1, 0x7f02013b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1431
    const v1, 0x7f02013d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1432
    const v1, 0x7f02013c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1434
    :cond_39
    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1435
    const v1, 0x7f02015f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1436
    const v1, 0x7f020161

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1437
    const v1, 0x7f020160

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1439
    :cond_3a
    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1440
    const v1, 0x7f020168

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1441
    const v1, 0x7f02016a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1442
    const v1, 0x7f020169

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1444
    :cond_3b
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1445
    const v1, 0x7f020174

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1446
    const v1, 0x7f020176

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1447
    const v1, 0x7f020175

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 1449
    :cond_3c
    const-string v1, "yo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    const v1, 0x7f02017a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextImageResId:I

    .line 1451
    const v1, 0x7f02017c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextPressImageResId:I

    .line 1452
    const v1, 0x7f02017b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0
.end method

.method public getNumberOfEditableSideBarItem()I
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->getNumberOfEditableSideBarItem()I

    move-result v0

    .line 1629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingButtonDimmed()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public getShutterButtonDimmed()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public getSuttherState()Z
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    return v0
.end method

.method public hideBaseMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 860
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 868
    return-void
.end method

.method public hideBaseMenuForBestShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 871
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 877
    return-void
.end method

.method public hideBaseMenuForDualCaptureModeAsyncShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 889
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 894
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 895
    return-void
.end method

.method public hideBaseMenuForEditQuickSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 768
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBeautyMenu()V

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 770
    return-void
.end method

.method public hideBaseMenuForMagicShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 880
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 885
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 886
    return-void
.end method

.method public hideBeautyMenu()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 796
    :cond_0
    return-void
.end method

.method public hideCameraSideBar()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRecordingButton()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 919
    return-void
.end method

.method public hideShutterButton()V
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 946
    return-void
.end method

.method public hideThumbnailButton()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 988
    return-void
.end method

.method public hideThumbnailList()V
    .locals 3

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1127
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1130
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1131
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1132
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1134
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1135
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1136
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1138
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1139
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1140
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 1143
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1144
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    goto/16 :goto_0
.end method

.method public hideThumbnailListButton()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 911
    return-void
.end method

.method public hideThumbnailListMenu()V
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-nez v0, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailListButton()V

    goto :goto_0

    .line 1118
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailListButton()V

    goto :goto_0
.end method

.method public indexOfSideBarItem(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public isCameraZoomrMenuOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1647
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return v1

    .line 1649
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1650
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    .line 1651
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1652
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLaunchSettingMenuByDragStartSideBarItem()Z
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->isLaunchSettingMenuByDragStartSideBarItem()Z

    move-result v0

    .line 1637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModeMenuOpened()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1173
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return v1

    .line 1176
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1178
    .local v0, "modeMenu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 1179
    goto :goto_0
.end method

.method public isRecordingButtonPressed()Z
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    .line 1094
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public isThumbnailButtonDisabled()Z
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->noImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    const/4 v0, 0x1

    .line 1643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbnailListMenuOpened()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1150
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v7, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return v5

    .line 1153
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    .line 1154
    .local v3, "rearMenu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x66

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 1155
    .local v2, "frontMenu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x5a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1156
    .local v0, "dualMenu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2329

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 1157
    .local v1, "extMenu":Lcom/sec/android/app/camera/MenuBase;
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x4d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    .line 1159
    .local v4, "soundShotMode":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 1160
    goto :goto_0

    .line 1161
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 1162
    goto :goto_0

    .line 1163
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    .line 1164
    goto/16 :goto_0

    .line 1165
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    .line 1166
    goto/16 :goto_0

    .line 1167
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 1168
    goto/16 :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1017
    return-void
.end method

.method public onButtonPressed(Lcom/sec/android/glview/TwGLView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "isPressed"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1586
    if-eqz p2, :cond_2

    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1601
    :cond_1
    :goto_0
    return-void

    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 1596
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1597
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeTextPressedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 4
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1524
    if-ne p1, v2, :cond_3

    .line 1525
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 1527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onBeautyLevelMenuSelect(I)V

    .line 1528
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    if-lez v0, :cond_1

    .line 1529
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    .line 1537
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0

    .line 1539
    :cond_3
    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    if-lez v0, :cond_4

    .line 1541
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    .line 1543
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 12
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/16 v11, 0x2f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 586
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v8, :cond_1

    .line 587
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "mActivityContext is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    :goto_0
    return v6

    .line 591
    :cond_1
    if-nez p1, :cond_2

    .line 592
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "v is null"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v8

    const/16 v9, 0x41

    if-eq v8, v9, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v8

    const/16 v9, 0x1d

    if-eq v8, v9, :cond_3

    .line 597
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 600
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 601
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return isCapturing.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->isBurstCaptureStarting()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 606
    :cond_5
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return isBurstCaptureStarting.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 611
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return isPanoramaCapturing.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v8

    if-nez v8, :cond_8

    .line 616
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return isStartPreview.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 620
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 621
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return getIsLaunchGallery.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 625
    :cond_9
    iget-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-eqz v8, :cond_a

    .line 626
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return mIsEffectMenuOpen.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto/16 :goto_0

    .line 631
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x1b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .line 632
    .local v4, "settingMenu":Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v8

    if-nez v8, :cond_0

    .line 636
    :cond_b
    const-string v8, "TwGLCameraBaseMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClick: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v2, 0x0

    .line 642
    .local v2, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    .line 731
    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->handleCoverModeClosed()V

    move v6, v7

    .line 732
    goto/16 :goto_0

    .line 644
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->noImage()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 645
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->showNoImagePopup()V

    :goto_1
    move v6, v7

    .line 653
    goto/16 :goto_0

    .line 647
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 648
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->showCoverModeGallery()V

    move v6, v7

    .line 649
    goto/16 :goto_0

    .line 651
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v8, "quickview"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 655
    :sswitch_2
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 656
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return isPrepareRecording.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 659
    :cond_e
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    if-ne v8, v11, :cond_f

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v8

    if-ne v8, v7, :cond_f

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->isDualCaptureModeAsyncFirstCapturing()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 661
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "return isDualAsyncCapturing.."

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 665
    :cond_f
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_10

    .line 666
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMagicShotState()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v9, v9, Lcom/sec/android/app/camera/Camera;->MAGIC_SHOT_STATE_SELECT:I

    if-ne v8, v9, :cond_14

    .line 667
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->resetMagicShot()V

    .line 673
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v6

    if-nez v6, :cond_11

    .line 674
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 677
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v9

    invoke-static {v7, v6, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_12

    .line 679
    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 680
    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v6

    const/16 v8, 0xcb

    if-ne v6, v8, :cond_13

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    if-ne v6, v7, :cond_13

    .line 681
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 682
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setStepChangeMode()V

    :cond_13
    :goto_2
    move v6, v7

    .line 687
    goto/16 :goto_0

    .line 668
    :cond_14
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isMagicShotCapturing()Z

    move-result v8

    if-eqz v8, :cond_10

    goto/16 :goto_0

    .line 684
    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setStepSwipeList()V

    goto :goto_2

    .line 689
    :sswitch_3
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 690
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 693
    :cond_16
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    .line 694
    .local v5, "shootingmode":I
    const/4 v0, 0x0

    .line 695
    .local v0, "commandId":I
    if-ne v5, v11, :cond_1a

    .line 696
    const/16 v0, 0x5a

    .line 702
    :cond_17
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    .line 703
    .local v3, "menuid":I
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 704
    .local v1, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 707
    :cond_18
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v9, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v8, v9, v6}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 708
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v0, v6, v8, v9, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    .line 709
    if-eqz v2, :cond_19

    .line 710
    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_19
    move v6, v7

    .line 711
    goto/16 :goto_0

    .line 697
    .end local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    .end local v3    # "menuid":I
    :cond_1a
    const/16 v8, 0x23

    if-ne v5, v8, :cond_17

    .line 698
    const/16 v0, 0x4d

    goto :goto_3

    .line 713
    .end local v0    # "commandId":I
    .end local v5    # "shootingmode":I
    :sswitch_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 714
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 716
    :cond_1b
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 717
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 719
    const/16 v6, 0x6d

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v10

    invoke-static {v6, v8, v9, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    .line 720
    if-eqz v2, :cond_1c

    .line 721
    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_1c
    move v6, v7

    .line 729
    goto/16 :goto_0

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_2
        0x1d -> :sswitch_1
        0x51 -> :sswitch_4
        0x71 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1458
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_4

    .line 1459
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1460
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    .line 1465
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1475
    :cond_2
    :goto_0
    return v0

    .line 1469
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1470
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    .line 1471
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1475
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1480
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    .line 1481
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1482
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_4

    .line 1483
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1519
    :cond_2
    :goto_0
    return v0

    .line 1485
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 1490
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 1493
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_5

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_5
    move v0, v1

    .line 1501
    goto :goto_0

    .line 1502
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1503
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_7

    .line 1504
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1506
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 1511
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 1514
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_8

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_8
    move v0, v1

    .line 1516
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->removeUptateMessage()V

    .line 1025
    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 992
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 993
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 994
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1000
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1002
    .local v0, "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1007
    .end local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1008
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailListButton()V

    .line 1012
    :goto_1
    return-void

    .line 996
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    goto :goto_0

    .line 1010
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailListButton()V

    goto :goto_1
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v11, 0x1b

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    instance-of v7, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v7, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v5

    .line 411
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_8

    .line 412
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v7

    if-nez v7, :cond_0

    .line 414
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v7

    if-nez v7, :cond_0

    .line 417
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x4d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 418
    .local v1, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 419
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 422
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 423
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 424
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideThumbnailListMenu()V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailListMenuOpened()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 429
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 437
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v5, v6

    .line 483
    goto :goto_0

    .line 444
    :pswitch_1
    const-string v7, "TwGLCameraBaseMenu"

    const-string v8, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 448
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v11, v9}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 449
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    if-eqz v5, :cond_4

    .line 450
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v7, 0xc9

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    .line 451
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setStepHide()V

    goto :goto_1

    .line 456
    :pswitch_2
    const-string v5, "TwGLCameraBaseMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailListMenuOpened()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 458
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 460
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v5

    if-nez v5, :cond_7

    .line 461
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 462
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_6
    move v5, v6

    .line 464
    goto/16 :goto_0

    .line 466
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v11, v9}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 467
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    if-eqz v5, :cond_4

    .line 468
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v7, 0xc9

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    if-ne v5, v10, :cond_4

    .line 472
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialCaptureMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setStepHide()V

    goto/16 :goto_1

    .line 477
    :pswitch_3
    const-string v5, "TwGLCameraBaseMenu"

    const-string v7, "onTouch MotionEvent.ACTION_CANCEL"

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    .line 484
    .end local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    const/16 v8, 0x41

    if-ne v7, v8, :cond_10

    .line 485
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v7

    if-nez v7, :cond_0

    .line 487
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailListMenuOpened()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 492
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 495
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0x4d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 496
    .restart local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 497
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 500
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_b
    :goto_3
    :pswitch_4
    move v5, v6

    .line 537
    goto/16 :goto_0

    .line 502
    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v7, 0x82

    invoke-virtual {v5, v7, v9}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_3

    .line 505
    :pswitch_6
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 506
    const-string v5, "TwGLCameraBaseMenu"

    const-string v7, "return isRecording.."

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 507
    goto/16 :goto_0

    .line 509
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 510
    const-string v5, "TwGLCameraBaseMenu"

    const-string v7, "return isAutoFocusing.."

    invoke-static {v5, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 511
    goto/16 :goto_0

    .line 513
    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 514
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 515
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->hideBeautyFaceLevelMenu()V

    .line 516
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v5

    if-nez v5, :cond_f

    .line 517
    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v5

    if-nez v5, :cond_e

    .line 518
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_4

    :cond_e
    move v5, v6

    .line 520
    goto/16 :goto_0

    .line 523
    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v7, 0x82

    invoke-virtual {v5, v7, v9}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 524
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    if-eqz v5, :cond_b

    .line 525
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v7, 0xca

    if-ne v5, v7, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-ne v5, v6, :cond_b

    .line 526
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepHide()V

    goto/16 :goto_3

    .line 538
    .end local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_10
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    const/16 v8, 0x71

    if-ne v7, v8, :cond_0

    .line 539
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->isDim()Z

    move-result v7

    if-nez v7, :cond_0

    .line 542
    const/4 v2, 0x0

    .line 546
    .local v2, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    :cond_11
    :goto_5
    :pswitch_7
    move v5, v6

    .line 580
    goto/16 :goto_0

    .line 552
    :pswitch_8
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v7, :cond_0

    .line 555
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 556
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 558
    :cond_12
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    .line 559
    .local v4, "shootingmode":I
    const/4 v0, 0x0

    .line 560
    .local v0, "commandId":I
    const/16 v7, 0x2f

    if-ne v4, v7, :cond_15

    .line 561
    const/16 v0, 0x5a

    .line 567
    :cond_13
    :goto_6
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    .line 568
    .local v3, "menuid":I
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    .line 569
    .restart local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 572
    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v8, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 573
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v8

    invoke-static {v0, v5, v7, v8, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    .line 574
    if-eqz v2, :cond_11

    .line 575
    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto :goto_5

    .line 562
    .end local v1    # "menu":Lcom/sec/android/app/camera/MenuBase;
    .end local v3    # "menuid":I
    :cond_15
    const/16 v7, 0x23

    if-ne v4, v7, :cond_13

    .line 563
    const/16 v0, 0x4d

    goto :goto_6

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 500
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 546
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public refreshSideBar()V
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->resetEditableMenu()V

    .line 1611
    :cond_0
    return-void
.end method

.method public removeSideBarEmptyItem()V
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    .line 1582
    :cond_0
    return-void
.end method

.method public setCameraBaseMenuRequestFocus()V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1570
    :cond_1
    return-void
.end method

.method public setCameraEnterKeyState(Z)V
    .locals 0
    .param p1, "CameraHardKey"    # Z

    .prologue
    .line 1553
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCameraEnterKeyReleased:Z

    .line 1554
    return-void
.end method

.method public setChkBaseMenuItemsShow(Z)V
    .locals 0
    .param p1, "setChk"    # Z

    .prologue
    .line 832
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mChkBaseMenuItemsShow:Z

    .line 833
    return-void
.end method

.method public setCoverCameraMode(Z)V
    .locals 6
    .param p1, "coverMode"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1034
    const-string v0, "TwGLCameraBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverCameraMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideCameraSideBar()V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->COVERMODE_THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->translateAbsolute(FFZ)V

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setRotatableForCoverMode(Z)V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 1060
    :goto_0
    return-void

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showCameraSideBar()V

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->translateAbsolute(FFZ)V

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setRotatableForCoverMode(Z)V

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->updateThumbnailButton()V

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mCoverModeFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEasyMode(Z)V
    .locals 7
    .param p1, "easyMode"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1063
    const-string v0, "TwGLCameraBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEasyMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    if-eqz p1, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    if-nez v0, :cond_1

    .line 1071
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 1088
    :goto_0
    return-void

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    .line 1081
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-nez v0, :cond_4

    .line 1082
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->SIDEBAR_HEIGHT:I

    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getZorder()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mBaseMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 1085
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEditableSideBarDraggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setDraggable(Z)V

    .line 1623
    :cond_0
    return-void
.end method

.method public setEditableSideBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setEditableSideBarVisibility(I)V

    .line 1617
    :cond_0
    return-void
.end method

.method public setLiveBeautyMode(Z)V
    .locals 5
    .param p1, "isOn"    # Z

    .prologue
    const v4, 0x7f0b0032

    const/4 v3, 0x0

    .line 929
    if-eqz p1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001f

    const v2, 0x7f020020

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0122

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 942
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001d

    const v2, 0x7f02001e

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0123

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRecordingButtonDimmed(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 825
    return-void
.end method

.method public setShutterButtonDimmed(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 817
    return-void
.end method

.method public setThumbnailButtonDimmed(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->lockButton(Z)V

    .line 1031
    :cond_0
    return-void
.end method

.method public showBaseMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showCameraSideBar()V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 852
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBeautyMenu()V

    .line 853
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    .line 857
    return-void
.end method

.method public showBaseMenuForEditQuickSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showCameraSideBar()V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShootingModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBeautyMenu()V

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 789
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setChkBaseMenuItemsShow(Z)V

    goto :goto_0
.end method

.method public showBeautyMenu()V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 802
    :cond_0
    return-void
.end method

.method public showCameraSideBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 760
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mEasyCameraSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->setVisibility(I)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mSideBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLiveBeautyController()V
    .locals 5

    .prologue
    .line 805
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 808
    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 809
    .local v0, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mLiveBeautyFaceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 813
    return-void
.end method

.method public showRecordingButton()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 915
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showThumbnailButton()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isModeMenuOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showThumbnailListButton()V
    .locals 4

    .prologue
    .line 898
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 899
    .local v0, "shootingMode":I
    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 906
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 907
    return-void

    .line 901
    :cond_0
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 902
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showThumbnailListMenu()V
    .locals 2

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    if-eqz v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailListGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public startShutterAnimation()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000

    const/4 v3, 0x0

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mDimState:Z

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mShutterAnimationImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 964
    return-void
.end method

.method public updateEmptyButton()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmptyButton()V

    .line 389
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method
