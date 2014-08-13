.class public Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLProgressingPopup.java"


# static fields
.field private static final POPUP_HEIGHT:I

.field private static final POPUP_PORTRAIT_POS_X:I

.field private static final POPUP_PORTRAIT_POS_Y:I

.field private static final POPUP_POS_X:I

.field private static final POPUP_POS_Y:I

.field private static final POPUP_WIDTH:I

.field private static final PROGRESSING_BAR_HEIGHT:I

.field private static final PROGRESSING_BAR_TOP_PADDING:I

.field private static final PROGRESSING_ITEM_LEFT_PADDING:I

.field private static final PROGRESSING_TITLE_COLOR:I

.field private static final PROGRESSING_TITLE_HEIGHT:I

.field private static final PROGRESSING_TITLE_SIZE:F

.field private static final PROGRESSING_TITLE_TOP_PADDING:I


# instance fields
.field private mMenuID:I

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mSideMenuHidden:Z

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0902a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    .line 38
    const v0, 0x7f0902a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    .line 39
    const v0, 0x7f0902a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    .line 40
    const v0, 0x7f0902a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    .line 41
    const v0, 0x7f0902a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    .line 42
    const v0, 0x7f0902aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    .line 43
    const v0, 0x7f0902ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    .line 44
    const v0, 0x7f0902ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    .line 45
    const v0, 0x7f0902ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    .line 46
    const v0, 0x7f0a0045

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_SIZE:F

    .line 47
    const v0, 0x7f080013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_COLOR:I

    .line 48
    const v0, 0x7f0902ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_TOP_PADDING:I

    .line 49
    const v0, 0x7f0902af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "titleText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 61
    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 58
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    .line 62
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuID:I

    .line 63
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 64
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->title:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->init()V

    .line 66
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 71
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v11, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 81
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->title:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 87
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0201ee

    const v7, 0x7f0201ef

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 93
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 94
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 97
    return-void
.end method


# virtual methods
.method public getPostCaptureLayoutVisibility()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getPostCaptureProgressMax()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 151
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 114
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 106
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 166
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 175
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 195
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    .line 199
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 101
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 102
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 186
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    .line 122
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .param p1, "nProgress"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 128
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 135
    :cond_0
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 139
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 143
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 163
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 155
    return-void
.end method
