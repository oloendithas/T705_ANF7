.class public Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLGolfMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final DETECTING_DURATION:I = 0x3e8

.field private static GOLF_LEFT_BUTTON_POS_X:I = 0x0

.field private static GOLF_LEFT_BUTTON_POS_Y:I = 0x0

.field private static GOLF_MAX_WAIT_SEC:I = 0x0

.field private static GOLF_RIGHT_BUTTON_POS_X:I = 0x0

.field private static GOLF_RIGHT_BUTTON_POS_Y:I = 0x0

.field protected static GOLF_SCREEN_HEIGHT:I = 0x0

.field protected static GOLF_SCREEN_HEIGHT_PADDING:I = 0x0

.field protected static GOLF_SCREEN_LEFT:I = 0x0

.field private static final GOLF_SCREEN_POS_X:F

.field private static final GOLF_SCREEN_POS_Y:F

.field protected static GOLF_SCREEN_TOP:I = 0x0

.field protected static GOLF_SCREEN_WIDTH:I = 0x0

.field private static final HELP_TEXT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERTICAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERTICAL:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOW_DETECTING_TEXT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLGolfMenu"


# instance fields
.field private mCount:I

.field private mDetectState:Z

.field private mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

.field private mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

.field private mGolfImage:Lcom/sec/android/glview/TwGLImage;

.field private mGolfImageArray:[I

.field private mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

.field protected mHandler:Landroid/os/Handler;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mOrientation:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f090007

    const v3, 0x7f090006

    const/high16 v2, 0x40000000

    .line 49
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_WIDTH:I

    .line 50
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_HEIGHT:I

    .line 52
    const v0, 0x7f090067

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    .line 53
    const v0, 0x7f090068

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 54
    const v0, 0x7f090069

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    .line 55
    const v0, 0x7f09006a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    .line 57
    const v0, 0x7f09006b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIDE_MARGIN:F

    .line 58
    const v0, 0x7f0902f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 60
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    .line 61
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_Y:F

    .line 63
    const v0, 0x7f0a003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIZE:F

    .line 65
    const v0, 0x7f0902b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_LEFT:I

    .line 66
    const v0, 0x7f0902b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_TOP:I

    .line 67
    const v0, 0x7f0902b2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    .line 68
    const v0, 0x7f0902b3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    .line 69
    const v0, 0x7f0902b4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT_PADDING:I

    .line 71
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_X:F

    .line 72
    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_Y:F

    .line 74
    const v0, 0x7f0902f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_X:I

    .line 75
    const v0, 0x7f0902f4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_Y:I

    .line 76
    const v0, 0x7f0902f5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_X:I

    .line 77
    const v0, 0x7f0902f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_Y:I

    .line 79
    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 125
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 85
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDetectState:Z

    .line 88
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImageArray:[I

    .line 106
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_LEFT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_TOP:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f02009a

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT_PADDING:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_POS_X:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_SCREEN_HEIGHT_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_Y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 140
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020313

    const v5, 0x7f020314

    const v6, 0x7f020313

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_RIGHT_BUTTON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 152
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020311

    const v5, 0x7f020312

    const v6, 0x7f020311

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_LEFT_BUTTON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 164
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0b022a

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;-><init>(Lcom/sec/android/glview/TwGLContext;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setToastAlign(II)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setDuration(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setAnimationEnable(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setCaptureEnabled(Z)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setTouchHandled(Z)V

    .line 183
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->init()V

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setOrientationListener()V

    .line 185
    return-void

    .line 99
    :array_0
    .array-data 4
        0x7f02009c
        0x7f02009b
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    return p1
.end method

.method static synthetic access$110(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->resetAcquisitionProgress()V

    .line 190
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 380
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->clear()V

    .line 384
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 389
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 394
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 399
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 404
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    .line 406
    :cond_5
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 407
    return-void
.end method

.method public getOrientationGolf()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getProgressValue()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 0

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideHelpText()V

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfImage()V

    .line 301
    return-void
.end method

.method public hideDetectText()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->removeDetectingMessage()V

    .line 251
    return-void
.end method

.method public hideGolfButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 539
    :cond_1
    return-void
.end method

.method public hideGolfImage()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfButton()V

    .line 268
    :cond_0
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->removeDetectingMessage()V

    .line 228
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 286
    return-void
.end method

.method public onGolfShotCreatingCompleted()V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0b022c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    return-void
.end method

.method public onGolfshotCancel()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 460
    return-void
.end method

.method public onGolfshotError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0b022b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->removeDetectingMessage()V

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 510
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideCaptureLayout()V

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setShutterButtonDim(I)V

    .line 282
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 322
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    :cond_1
    :goto_0
    return v0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    if-ne v1, v0, :cond_3

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 339
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x1b

    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    const/16 v1, 0x50

    if-eq p1, v1, :cond_2

    if-ne p1, v5, :cond_3

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    if-nez v1, :cond_3

    .line 348
    const-string v1, "TwGLGolfMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setOrientation(I)V

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfOrientationToast:Lcom/sec/android/app/camera/glwidget/TwGLToast;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->show()V

    goto :goto_0

    .line 356
    :cond_3
    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_5

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    :cond_5
    if-ne p1, v4, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    goto :goto_0

    .line 369
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 552
    const-string v0, "TwGLGolfMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setShutterButtonDim(I)V

    .line 558
    rem-int/lit8 v0, p1, 0x2

    if-ne v0, v3, :cond_2

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 562
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    .line 563
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showGolfImage()V

    .line 573
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showText()V

    goto :goto_0

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->onGolfshotCancel()V

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_5

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 571
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfButton()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopGolfShot()V

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideCaptureLayout()V

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setShutterButtonDim(I)V

    .line 416
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->reset()V

    .line 422
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 276
    return-void
.end method

.method public removeDetectingMessage()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    .line 319
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showCaptureLayout()V

    .line 374
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 290
    return-void
.end method

.method public setGolfImageLeftRight(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 517
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_0

    .line 530
    :goto_0
    return-void

    .line 520
    :cond_0
    if-nez p1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImageArray:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 529
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGolfDirection(I)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImageArray:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionLeftButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDirectionRightButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 500
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 293
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 296
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 314
    return-void
.end method

.method public setShutterButtonDim(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v1, 0x75

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 548
    :cond_0
    return-void
.end method

.method public showCaptureLayout()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showText()V

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showGolfImage()V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 311
    :cond_0
    return-void
.end method

.method public showDetectText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b0229

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (00:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDetectState:Z

    .line 242
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->hideGolfButton()V

    .line 244
    return-void

    .line 236
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (00:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showGolfImage()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 256
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mGolfImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGolfDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->setGolfImageLeftRight(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public showHelpText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b016e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 219
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mDetectState:Z

    .line 221
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showText()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    .line 194
    .local v0, "state":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 196
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mOrientation:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b022a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 209
    :cond_1
    return-void

    .line 202
    :cond_2
    if-ne v0, v3, :cond_3

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0229

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    if-nez v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public storeGolfimage([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/4 v11, 0x0

    .line 429
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    .line 430
    .local v6, "tempString":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v8, "golf"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    invoke-direct {v2, p1, v11, v8}, Ljava/lang/String;-><init>([BII)V

    .line 431
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v8, "Camera/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    const-string v9, ".golf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, "Camera/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x7

    sub-int/2addr v9, v10

    invoke-direct {v3, p1, v8, v9}, Ljava/lang/String;-><init>([BII)V

    .line 433
    .local v3, "filename":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 434
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v4

    .line 435
    .local v4, "location":Landroid/location/Location;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getLastDateTaken()J

    move-result-wide v0

    .line 437
    .local v0, "dateTaken":J
    const-string v8, "title"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v8, "_display_name"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v8, "mime_type"

    const-string v9, "video/golf"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v8, "_data"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz v4, :cond_0

    .line 443
    const-string v8, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 444
    const-string v8, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 446
    :cond_0
    const-string v8, "_size"

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 449
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v5

    .line 451
    .local v5, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v8, "TwGLGolfMenu"

    const-string v9, "Not enough space in database"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0192

    invoke-static {v8, v9, v11}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
