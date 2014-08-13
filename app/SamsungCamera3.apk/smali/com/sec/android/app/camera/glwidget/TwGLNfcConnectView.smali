.class public Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLNfcConnectView.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

.field private static final NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

.field private static final NFC_CONNECTING_CANCEL_BTN_WIDTH:I

.field private static final NFC_CONNECTING_CANCEL_BTN_X:I

.field private static final NFC_CONNECTING_CANCEL_BTN_Y:I

.field private static final NFC_CONNECTING_IMAGE_HEIGHT:I

.field private static final NFC_CONNECTING_IMAGE_WIDTH:I

.field private static final NFC_CONNECTING_IMAGE_X:I

.field private static final NFC_CONNECTING_IMAGE_Y:I

.field private static final NFC_CONNECTING_MESSAGE_FONT_SIZE:I

.field private static final NFC_CONNECTING_MESSAGE_HEIGHT:I

.field private static final NFC_CONNECTING_MESSAGE_PORTRAIT_HEIGHT:I

.field private static final NFC_CONNECTING_MESSAGE_PORTRAIT_WIDTH:I

.field private static final NFC_CONNECTING_MESSAGE_PORTRAIT_X:I

.field private static final NFC_CONNECTING_MESSAGE_PORTRAIT_Y:I

.field private static final NFC_CONNECTING_MESSAGE_WIDTH:I

.field private static final NFC_CONNECTING_MESSAGE_X:I

.field private static final NFC_CONNECTING_MESSAGE_Y:I

.field private static final TAG:Ljava/lang/String; = "TwGLNfcConnectView"


# instance fields
.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    .line 40
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    .line 42
    const v0, 0x7f090198

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    .line 43
    const v0, 0x7f090199

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    .line 44
    const v0, 0x7f09019a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    .line 45
    const v0, 0x7f09019b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    .line 47
    const v0, 0x7f09019c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    .line 48
    const v0, 0x7f09019d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    .line 49
    const v0, 0x7f09019e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    .line 50
    const v0, 0x7f09019f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    .line 51
    const v0, 0x7f0a0026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    .line 52
    const v0, 0x7f0901a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_X:I

    .line 53
    const v0, 0x7f0901a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_Y:I

    .line 54
    const v0, 0x7f0901a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_WIDTH:I

    .line 55
    const v0, 0x7f0901a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_HEIGHT:I

    .line 57
    const v0, 0x7f0901a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    .line 58
    const v0, 0x7f0901a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    .line 59
    const v0, 0x7f0901a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    .line 60
    const v0, 0x7f0901a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    .line 61
    const v0, 0x7f0a0027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 69
    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 71
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f02036f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 74
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f0202f0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 82
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0b01c7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 90
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0203c9

    const v7, 0x7f0203cb

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    int-to-float v2, v2

    const v3, 0x7f080016

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    return-void
.end method


# virtual methods
.method public hideNfcConnectView()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "hideNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 157
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "arg0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 140
    const-string v0, "TwGLNfcConnectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    .line 143
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "mButton onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 124
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 131
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_PORTRAIT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 162
    return-void
.end method

.method public resetNfcConnectView()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "resetNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    .line 121
    return-void
.end method

.method public showNfcConnectView()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "showNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 110
    return-void
.end method
