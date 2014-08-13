.class public Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLActionMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

.field private static final ACTIONSHOT_HELP_TEXT_HEIGHT:I

.field private static final ACTIONSHOT_HELP_TEXT_SIZE:F

.field private static final ACTIONSHOT_HELP_TEXT_WIDTH:I

.field private static final ACTIONSHOT_HELP_TEXT_X:[I

.field private static final ACTIONSHOT_HELP_TEXT_Y:[I

.field private static final ACTIONSHOT_RECT_HEIGHT:I

.field private static final ACTIONSHOT_RECT_POS_X:I

.field private static final ACTIONSHOT_RECT_POS_Y:I

.field private static final ACTIONSHOT_RECT_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLActionMenu"


# instance fields
.field private mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mActionRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsCreatingResultStarted:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

.field private mPostProgress:I

.field private mSideMenuHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-array v0, v6, [I

    const v1, 0x7f090381

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f090382

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f090383

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f090384

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    .line 43
    new-array v0, v6, [I

    const v1, 0x7f090385

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f090386

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f090387

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f090388

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    .line 46
    const v0, 0x7f090389

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    .line 47
    const v0, 0x7f090010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    .line 48
    const v0, 0x7f09038b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    .line 49
    new-array v0, v4, [F

    const v1, 0x7f09038c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f09038d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    .line 51
    new-array v0, v6, [I

    const v1, 0x7f09038e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f09038f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f090390

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f090391

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    .line 53
    new-array v0, v6, [I

    const v1, 0x7f09038e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f09038f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f090390

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f090391

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    .line 55
    const v0, 0x7f090396

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    .line 56
    const v0, 0x7f090397

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    .line 57
    const v0, 0x7f0a003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    .line 58
    const v0, 0x7f090398

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    .line 59
    const v0, 0x7f090399

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    .line 60
    const v0, 0x7f09039a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    .line 61
    const v0, 0x7f09039b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 81
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    .line 83
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202de

    const v7, 0x7f0202dd

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0b016d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 89
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f080008

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    const/high16 v7, 0x40a00000

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f080006

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    const/high16 v7, 0x40a00000

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->init()V

    .line 113
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 129
    return-void
.end method


# virtual methods
.method public actionShotCaptureCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 311
    return-void
.end method

.method public actionShotCreatingResultStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 287
    :cond_1
    return-void
.end method

.method public actionShotRectChanged([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 290
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v1, v4, v5

    .line 291
    .local v1, "left":I
    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v3, v4, v5

    .line 292
    .local v3, "top":I
    const/16 v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    .line 293
    .local v2, "right":I
    const/16 v4, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xf

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v0, v4, v5

    .line 295
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 297
    sub-int v4, v2, v1

    if-lez v4, :cond_0

    sub-int v4, v0, v3

    if-lez v4, :cond_0

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 299
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v5, v1

    int-to-float v6, v3

    sub-int v7, v2, v1

    int-to-float v7, v7

    sub-int v8, v0, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 303
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 306
    :cond_1
    return-void
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 190
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;->onActionShotCaptureCancelled()V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 145
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 203
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    .line 209
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 214
    :cond_3
    if-ne p1, v3, :cond_4

    .line 215
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 216
    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyDown - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_4
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

    .line 226
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 232
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    if-gtz v1, :cond_0

    .line 237
    :cond_3
    if-ne p1, v2, :cond_4

    .line 238
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 239
    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyUp - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setSizeForOrientation()V

    .line 277
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onActionShotCaptureCancelled()V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 252
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 141
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 164
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 167
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .param p1, "nProgress"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 173
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 178
    :cond_0
    return-void
.end method

.method public setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    .line 199
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 181
    const-string v0, "TwGLActionMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    .line 183
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 195
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 133
    return-void
.end method
