.class public Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLBurstMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;,
        Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;
    }
.end annotation


# static fields
.field private static BESTFACE_MAX_IMAGE_COUNT:I = 0x0

.field public static final BESTPIC_ICON_POX_X:[I

.field public static final BESTPIC_ICON_POX_Y:[I

.field public static final BESTPIC_TEXT_POX_X:[I

.field public static final BESTPIC_TEXT_POX_Y:[I

.field private static BEST_MAX_IMAGE_COUNT:I = 0x0

.field public static final BEST_PIC_ICON_HEIGHT:I

.field public static final BEST_PIC_ICON_WIDTH:I

.field private static final BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

.field private static final BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

.field private static final BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

.field private static final BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

.field private static BURST_MAX_IMAGE_COUNT:I = 0x0

.field private static final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

.field private static final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

.field private static final CAPTURE_PROGRESSBAR_STEP_GAP:I

.field private static final CAPTURE_PROGRESSBAR_STEP_WIDTH:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_SIZE:F

.field private static final DEFAULT_BURST_MAX_IMAGE_COUNT:I = 0x14

.field private static final HELP_TEXT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERTICAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:F

.field private static MAGIC_MAX_IMAGE_COUNT:I = 0x0

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field protected static final POST_PROGRESS_DURATION:I = 0x64

.field protected static final POST_PROGRESS_UPDATE:I = 0x2

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLBurstMenu"

.field private static mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;


# instance fields
.field private BestPoseFilePath:[Ljava/lang/String;

.field protected mBackUpDBupdateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mBestFaceMode:Z

.field private mBestFacepCount:I

.field private mBestPicMode:Z

.field private mBestPicNum:I

.field private mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

.field private final mBurstMsgHandler:Landroid/os/Handler;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

.field protected mDBupdateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mDBupdateThread:Ljava/lang/Thread;

.field private mIsBurstCapturing:Z

.field private mIsBusrtShotSavingCompleted:Z

.field private mLastOrientationTake:I

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

.field private mMaxStep:I

.field private mOrientation:I

.field private mProgressBarHeight:I

.field private mProgressBarWidth:I

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStoreCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    .line 74
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    .line 75
    const-string v0, "20"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    .line 76
    const/16 v0, 0x20

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->MAGIC_MAX_IMAGE_COUNT:I

    .line 90
    new-array v0, v6, [I

    const v1, 0x7f090277

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f090278

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f090279

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f09027a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    .line 93
    new-array v0, v6, [I

    const v1, 0x7f09027b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f09027c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f09027d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f09027e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    .line 96
    const v0, 0x7f09027f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

    .line 97
    const v0, 0x7f090280

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

    .line 99
    const v0, 0x7f0903cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_WIDTH:I

    .line 100
    const v0, 0x7f0903cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_HEIGHT:I

    .line 101
    new-array v0, v6, [I

    const v1, 0x7f0903ce

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0903cf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0903d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0903d1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    .line 103
    new-array v0, v6, [I

    const v1, 0x7f0903d2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0903d3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0903d4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0903d5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    .line 105
    new-array v0, v6, [I

    const v1, 0x7f0903d6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0903d7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0903d8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0903d9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    .line 107
    new-array v0, v6, [I

    const v1, 0x7f0903da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0903db

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0903dc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0903dd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    .line 111
    const v0, 0x7f090271

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    .line 112
    const v0, 0x7f090272

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    .line 113
    const v0, 0x7f090273

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    .line 114
    const v0, 0x7f090274

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    .line 115
    const v0, 0x7f090275

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    .line 116
    const v0, 0x7f090276

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    .line 117
    const v0, 0x7f0a003b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_SIZE:F

    .line 118
    const v0, 0x7f090067

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:F

    .line 119
    const v0, 0x7f090069

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT:F

    .line 120
    const v0, 0x7f09006a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    .line 122
    const v0, 0x7f09006b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIDE_MARGIN:F

    .line 123
    const v0, 0x7f0902f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 125
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_POS_X:F

    .line 126
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_POS_Y:F

    .line 128
    const v0, 0x7f0a003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIZE:F

    .line 129
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->SCREEN_WIDTH:I

    .line 130
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 14
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "modeId"    # I

    .prologue
    .line 193
    const/4 v6, 0x6

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 83
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBusrtShotSavingCompleted:Z

    .line 143
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 144
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    .line 146
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    .line 147
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    .line 148
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    .line 152
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    .line 153
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    .line 195
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureEnabled(Z)V

    .line 197
    const/16 v1, 0x19

    move/from16 v0, p5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    move/from16 v0, p5

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    .line 206
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    .line 207
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    .line 208
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    .line 209
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    .line 210
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_SIZE:F

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFFIFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    .line 214
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f020008

    const v8, 0x7f020007

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_WIDTH:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_HEIGHT:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    .line 217
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT:F

    const-string v7, ""

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setRotatable(Z)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setRotatable(Z)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 232
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->init()V

    .line 234
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    .line 235
    new-instance v13, Landroid/os/HandlerThread;

    const-string v1, "TwGLBurstMenu"

    invoke-direct {v13, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 236
    .local v13, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 237
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    .line 238
    return-void

    .line 199
    .end local v13    # "ht":Landroid/os/HandlerThread;
    :cond_1
    const/16 v1, 0x18

    move/from16 v0, p5

    if-ne v0, v1, :cond_2

    .line 200
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto/16 :goto_0

    .line 201
    :cond_2
    const/16 v1, 0x2e

    move/from16 v0, p5

    if-ne v0, v1, :cond_3

    .line 202
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->MAGIC_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto/16 :goto_0

    .line 204
    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBusrtShotSavingCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setLeftTop(IFF)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setLeftTop(IFF)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setLeftTop(IFF)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v7

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLText;->updateLayout(Z)V

    .line 255
    return-void
.end method


# virtual methods
.method public DBUpdatebyThread()V
    .locals 2

    .prologue
    .line 773
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    const-string v1, "mDBupdateThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 806
    return-void
.end method

.method public DBUpdatebyThreadDuringLowSaving()V
    .locals 2

    .prologue
    .line 809
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBusrtShotSavingCompleted:Z

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    const-string v1, "mDBupdateThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 834
    return-void
.end method

.method protected calculateOrientationForPicture(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1008
    move v0, p1

    .line 1009
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1011
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 1018
    :cond_1
    :goto_0
    return v0

    .line 1013
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1014
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public cleanBackUpDBStack()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBusrtShotSavingCompleted:Z

    .line 844
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 260
    return-void
.end method

.method public clearBurstProgressBar()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->clearProgressBar()V

    .line 448
    :cond_0
    return-void
.end method

.method public convertToExifInterfaceOrientation(I)I
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 995
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 996
    const/4 v0, 0x6

    .line 1004
    :cond_0
    :goto_0
    return v0

    .line 997
    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 998
    const/4 v0, 0x3

    goto :goto_0

    .line 999
    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 1000
    const/16 v0, 0x8

    goto :goto_0

    .line 1001
    :cond_3
    const/16 v1, 0x168

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public createDirForBurst()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1022
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 1024
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v1, :cond_1

    .line 1026
    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/DCIM"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1028
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1030
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    const-string v1, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1032
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1035
    .end local v0    # "directory":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1038
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1040
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1042
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1043
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1044
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1047
    .end local v0    # "directory":Ljava/io/File;
    :cond_3
    return v3
.end method

.method public getBestFaceExtras()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 648
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FilePath1"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v1, "FilePath2"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v1, "FilePath3"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v1, "FilePath4"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const-string v1, "FilePath5"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    return-object v0
.end method

.method getBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "index"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "tempBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 684
    return-object v0
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    return v0
.end method

.method public getEraserExtras()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 665
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v0, "eraserModeFilePath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    const-string v2, "file_list_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 678
    return-object v1
.end method

.method public getPostCaptureProgress()I
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getProgress()I

    move-result v0

    .line 377
    :goto_0
    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getProgressValue()I

    move-result v0

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPostCaptureProgressMax()I
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-eqz v0, :cond_0

    .line 388
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    .line 394
    :goto_0
    return v0

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 390
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getPostCaptureProgressMax()I

    move-result v0

    goto :goto_0

    .line 394
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 422
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    goto :goto_0
.end method

.method public interruptProcessforBestPics()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 937
    iget-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v11, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBurstShots()Z

    move-result v9

    .line 991
    :cond_0
    :goto_0
    return v9

    .line 941
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, "directory":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/.BestPic"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 944
    .local v4, "fromBestpic":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 947
    const/4 v0, 0x0

    .line 951
    .local v0, "bMove":Z
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v5, v11

    .line 952
    .local v5, "i":I
    const-string v11, "TwGLBurstMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Move BestPics to /Camera folder. file number is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :cond_2
    if-lez v5, :cond_3

    .line 959
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v5, v11

    .line 960
    if-nez v5, :cond_5

    .line 983
    :cond_3
    if-eqz v0, :cond_4

    .line 985
    const-string v8, "bucket_id = ?"

    .line 986
    .local v8, "mWhereClause":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 987
    .local v1, "bucketId":I
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v13, v10, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-virtual {v11, v12, v8, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 989
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .end local v1    # "bucketId":I
    .end local v8    # "mWhereClause":Ljava/lang/String;
    :cond_4
    move v9, v10

    .line 991
    goto/16 :goto_0

    .line 953
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 954
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v10, "TwGLBurstMenu"

    const-string v11, "directory is not valid, so return."

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 962
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "i":I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 964
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 966
    .local v6, "mFilePath":Ljava/lang/String;
    const-string v11, "_bestshot"

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    .line 969
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const-string v12, "_bestshot"

    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v7, v11, v9, v12}, Ljava/lang/String;-><init>([BII)V

    .line 970
    .local v7, "mFilename":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 972
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v5

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 973
    if-eqz v0, :cond_6

    .line 974
    sget-object v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 977
    :cond_6
    if-nez v0, :cond_2

    goto/16 :goto_0
.end method

.method public interruptProcessforBurstShots()Z
    .locals 6

    .prologue
    .line 910
    const/4 v1, 0x0

    .line 912
    .local v1, "mDelete":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2

    .line 913
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->MAGIC_MAX_IMAGE_COUNT:I

    .line 918
    .local v3, "max_capture_count":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-gt v0, v3, :cond_7

    .line 919
    const/16 v4, 0xa

    if-ge v0, v4, :cond_4

    .line 920
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 921
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Burst0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 928
    .local v2, "mFile":Ljava/io/File;
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 929
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 918
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 915
    .end local v0    # "i":I
    .end local v2    # "mFile":Ljava/io/File;
    .end local v3    # "max_capture_count":I
    :cond_2
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    .restart local v3    # "max_capture_count":I
    goto :goto_0

    .line 923
    .restart local v0    # "i":I
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Burst0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "mFile":Ljava/io/File;
    goto :goto_2

    .line 924
    .end local v2    # "mFile":Ljava/io/File;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 925
    :cond_5
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Burst"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "mFile":Ljava/io/File;
    goto :goto_2

    .line 927
    .end local v2    # "mFile":Ljava/io/File;
    :cond_6
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Burst"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "mFile":Ljava/io/File;
    goto/16 :goto_2

    .line 933
    .end local v2    # "mFile":Ljava/io/File;
    :cond_7
    return v1
.end method

.method public isBestGroupMode()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    return v0
.end method

.method public isBestPicMode()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    return v0
.end method

.method public isBurstCapturing()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    return v0
.end method

.method public isBurstShotSavingCompleted()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBusrtShotSavingCompleted:Z

    return v0
.end method

.method public isNeedInternalStorage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public lastImageUpdate(Landroid/content/ContentValues;)V
    .locals 18
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 848
    const/4 v5, 0x0

    .line 849
    .local v5, "fileUri":Landroid/net/Uri;
    const-string v1, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 850
    .local v13, "mTargetName":Ljava/lang/String;
    const-string v1, "TwGLBurstMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastImageUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    .line 853
    const-string v1, "TwGLBurstMenu"

    const-string v2, "lastImageUpdate - mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_0
    return-void

    .line 857
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderHeight()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v2

    invoke-static {v13, v2}, Lcom/sec/android/app/camera/Util;->makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 863
    const-string v1, "TwGLBurstMenu"

    const-string v2, "db insert last image E"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 865
    if-nez v5, :cond_1

    .line 866
    const-string v1, "TwGLBurstMenu"

    const-string v2, "lastImageUpdate - fileUri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeType()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/camera/ContextProviderUtils;->getTakePhotoSet(Ljava/lang/String;IIILandroid/net/Uri;II)Landroid/os/Bundle;

    move-result-object v11

    .line 871
    .local v11, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1, v5, v11}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    const/4 v10, 0x0

    .line 880
    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 882
    .local v16, "startId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 883
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 885
    .local v14, "rowId":J
    long-to-int v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    add-int/lit8 v16, v1, 0x1

    .line 888
    .end local v14    # "rowId":J
    :cond_2
    invoke-static {v10}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 891
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-ge v12, v1, :cond_3

    .line 892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "startId":I
    .local v17, "startId":I
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->addUriListInSecureMode(Landroid/net/Uri;)V

    .line 891
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v17

    .end local v17    # "startId":I
    .restart local v16    # "startId":I
    goto :goto_1

    .line 888
    .end local v12    # "i":I
    :catchall_0
    move-exception v1

    invoke-static {v10}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .line 895
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "startId":I
    :cond_3
    const-string v1, "TwGLBurstMenu"

    const-string v2, "db insert last image X"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 280
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x1b

    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 451
    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_3

    .line 456
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_3

    .line 457
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - block zoom function."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_3
    if-eq p1, v3, :cond_4

    if-ne p1, v4, :cond_6

    .line 463
    :cond_4
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_5

    .line 464
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - it is stitching"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_6

    .line 467
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_6
    if-ne p1, v3, :cond_7

    .line 473
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_7

    .line 474
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    :cond_7
    const/16 v2, 0x1a

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    if-ne p1, v2, :cond_9

    .line 480
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 481
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_9
    if-ne p1, v4, :cond_e

    .line 487
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_a

    .line 488
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_a
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 492
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    mul-int/lit8 v2, v2, 0x5a

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 493
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v2, :cond_c

    .line 495
    new-instance v0, Ljava/io/File;

    const-string v2, "mnt/sdcard/DCIM"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 499
    :cond_b
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    const-string v2, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 504
    .end local v0    # "directory":Ljava/io/File;
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-ne v2, v1, :cond_e

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-ne v2, v1, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v1

    if-nez v1, :cond_e

    .line 507
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 511
    :cond_d
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 519
    .end local v0    # "directory":Ljava/io/File;
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 523
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 524
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_1

    .line 525
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyDown - block zoom function."

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return v0

    .line 530
    :cond_1
    if-eq p1, v2, :cond_2

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_4

    .line 531
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_3

    .line 532
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - it is stitching "

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_4

    .line 535
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :cond_4
    if-ne p1, v2, :cond_5

    .line 541
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_5

    .line 542
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_5
    const/16 v1, 0x1a

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 548
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 549
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyDown - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 604
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 605
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 567
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBurstCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onBurstCaptureCancelled()V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    .line 573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->onHide()V

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->resetPostCaptureProgress()V

    .line 578
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 563
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 564
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 276
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 583
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string v0, "TwGLBurstMenu"

    const-string v1, "Burstshot restart"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->resetProgressBar()V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setProgress(I)V

    .line 288
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    .line 289
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 292
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetPostCaptureProgress()V
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 309
    .local v0, "modeid":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    .line 310
    :cond_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    .line 319
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    goto :goto_0

    .line 311
    :cond_3
    const/16 v1, 0x18

    if-ne v0, v1, :cond_4

    .line 312
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto :goto_1

    .line 313
    :cond_4
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    .line 314
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->MAGIC_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto :goto_1

    .line 316
    :cond_5
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto :goto_1
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 333
    const-string v0, "TwGLBurstMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->startCancelTimer()V

    .line 336
    return-void
.end method

.method public setBestGroupMode(Z)V
    .locals 0
    .param p1, "bestGroupMode"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    .line 626
    return-void
.end method

.method public setBestPic(I)V
    .locals 0
    .param p1, "bestpicNum"    # I

    .prologue
    .line 616
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 617
    return-void
.end method

.method public setBestPicMode(Z)V
    .locals 1
    .param p1, "bestPicMode"    # Z

    .prologue
    .line 620
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    .line 622
    return-void
.end method

.method public setBurstCapturing(Z)V
    .locals 1
    .param p1, "capture"    # Z

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 599
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    .line 352
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 359
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setProgress(I)V

    goto :goto_1
.end method

.method public setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    .line 442
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 367
    const-string v0, "TwGLBurstMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method public setPostCaptureProgressImage(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "captureBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 608
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, p1, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setCaptureProgressIncreased(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setAcquisitionProgress(I)V

    .line 613
    :cond_0
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    .line 384
    :cond_0
    return-void
.end method

.method public showCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 438
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHighlight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 629
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 631
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 635
    const-string v1, "Camera-BestPic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v1, "from-Camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x7dd

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 640
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    .line 414
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 415
    return-void

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    goto :goto_0
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 339
    const-string v0, "TwGLBurstMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public storeBurstStrings([B)V
    .locals 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 688
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    .line 689
    .local v5, "mTemp":Ljava/lang/String;
    const-string v8, "jpg"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v8, :cond_0

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 705
    .local v0, "dateTaken":J
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "camera/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    const-string v9, ".jpg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "mTempName":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/app/camera/CommonEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 709
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 710
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 715
    .local v2, "directory":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "mTargetName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 718
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v9

    goto :goto_0

    .line 712
    .end local v2    # "directory":Ljava/lang/String;
    .end local v4    # "mTargetName":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v2    # "directory":Ljava/lang/String;
    goto :goto_1

    .line 722
    .restart local v4    # "mTargetName":Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 723
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v8, "_display_name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 730
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v8, "orientation"

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    const-string v8, "_data"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v8, "height"

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    const-string v8, "width"

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v3

    .line 737
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_5

    .line 738
    const-string v8, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 739
    const-string v8, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 741
    :cond_5
    const-string v8, "group_id"

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CommonEngine;->getGroupID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    const-string v8, "date_modified"

    const-wide/16 v9, 0x3e8

    div-long v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 745
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBackUpDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public waitForDBSaving()V
    .locals 1

    .prologue
    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0
.end method
