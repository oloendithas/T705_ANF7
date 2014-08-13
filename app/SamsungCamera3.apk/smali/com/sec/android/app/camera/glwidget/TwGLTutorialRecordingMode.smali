.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorialRecordingMode.java"


# static fields
.field private static final CAMCORDER_BUTTON_X:F

.field private static final CAMCORDER_BUTTON_Y:F

.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final HELP_POPUP_HEIGHT:F

.field private static final HELP_POPUP_PADDING:[F

.field private static final HELP_POPUP_PICKER_PADDING:F

.field private static final HELP_POPUP_WIDTH:[F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_MARGIN:F

.field private static final HELP_TEXT_WIDTH:[F

.field private static final HELP_TEXT_WIDTH_MARGIN:F

.field private static final RECORDING_BUTTON_GROUP_X:F

.field private static final RECORDING_SNAPSHOT_BUTTON_Y:F

.field private static final RECORDING_SNAPSHOT_MARGIN_Y:F

.field private static final RECORDING_STOP_BUTTON_Y:F

.field private static final RIGHT_SIDE_BUTTON_HEIGHT:F

.field private static final RIGHT_SIDE_BUTTON_WIDTH:F

.field private static final RIGHT_SIDE_MENU_X:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field public static final STEP_COMPLETE:I = 0x4

.field public static final STEP_RECORDING_START:I = 0x1

.field public static final STEP_RECORDING_STOP:I = 0x3

.field public static final STEP_SNAP_SHOT:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorialRecordingMode"


# instance fields
.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field public mTutorialStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x40000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    .line 26
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    .line 28
    const v0, 0x7f0901b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    .line 29
    const v0, 0x7f0901ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT_MARGIN:F

    .line 30
    new-array v0, v6, [F

    const v1, 0x7f0901bb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0901bc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    .line 31
    const v0, 0x7f0901bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    .line 33
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    .line 34
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    .line 36
    const v0, 0x7f0901b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0901b3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0901b4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0901b2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x3

    const v2, 0x7f0901b5

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    .line 40
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const v1, 0x7f090011

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_MENU_X:F

    .line 41
    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    .line 42
    const v0, 0x7f09001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    .line 43
    const v0, 0x7f090022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_X:F

    .line 44
    const v0, 0x7f090023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_Y:F

    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_MENU_X:F

    const v1, 0x7f09008d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_BUTTON_GROUP_X:F

    .line 46
    const v0, 0x7f09008c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_SNAPSHOT_BUTTON_Y:F

    .line 47
    const v0, 0x7f09008b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_SNAPSHOT_MARGIN_Y:F

    .line 48
    const v0, 0x7f090090

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_STOP_BUTTON_Y:F

    .line 50
    const v0, 0x7f0a0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    .line 51
    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 68
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 69
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a

    const/high16 v2, 0x3f800000

    const v3, 0x3f19999a

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 70
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 77
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 79
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 82
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020317

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020318

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 87
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02031b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepRecordingStart()V

    .line 112
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 470
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 475
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 117
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 132
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 137
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 139
    :cond_4
    return-void
.end method

.method public onHelpTts()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 541
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setSizeForOrientation(I)V

    .line 534
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 535
    return-void
.end method

.method public setHelpText(I)V
    .locals 11
    .param p1, "step"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "helptext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 149
    .local v3, "rows":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 150
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 151
    .local v1, "mTextSize":F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 370
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 371
    return-void

    .line 155
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0286

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 158
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 185
    :goto_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 186
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 187
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 189
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 198
    :goto_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 199
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 200
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    const/high16 v8, 0x40400000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 210
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 211
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 212
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 161
    :pswitch_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 162
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 164
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 167
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 172
    :pswitch_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 173
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 175
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 178
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 192
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 194
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 204
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 216
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0287

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 219
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 246
    :goto_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 247
    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 248
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 250
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 259
    :goto_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 260
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sub-float/2addr v7, v1

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 262
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    const/high16 v8, 0x40800000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 271
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 272
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 273
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 222
    :pswitch_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 223
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 224
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 225
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 227
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 228
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 233
    :pswitch_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 234
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 236
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 238
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 253
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 255
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_5

    .line 265
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 267
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_6

    .line 277
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0288

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 280
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 307
    :goto_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 308
    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 309
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 311
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 320
    :goto_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 321
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 322
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    const/high16 v8, 0x40400000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 323
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    add-float/2addr v7, v1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 331
    :goto_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 332
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 333
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 334
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 283
    :pswitch_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 284
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 285
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 286
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 288
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 289
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 294
    :pswitch_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 295
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 296
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 297
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 299
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 314
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 316
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_8

    .line 326
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 328
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_9

    .line 337
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b028c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 340
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 355
    :goto_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 356
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 358
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 359
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_X:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 363
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 343
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 344
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    .line 348
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 349
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 158
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 219
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 280
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 340
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 11
    .param p1, "orientation"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/high16 v8, 0x40000000

    const/4 v7, 0x1

    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, "rows":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 481
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x0

    .line 482
    .local v0, "mTextSize":F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 484
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_0

    .line 485
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 488
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 491
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_2

    .line 492
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 493
    if-ne v2, v7, :cond_4

    .line 494
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 498
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_1

    .line 499
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_3

    .line 500
    if-ne v2, v7, :cond_5

    .line 501
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 505
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_0

    .line 496
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v10

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 503
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_2

    .line 510
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_6

    .line 511
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 512
    if-ne v2, v7, :cond_8

    .line 513
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 517
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_1

    .line 518
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-eq v3, v9, :cond_7

    .line 519
    if-ne v2, v7, :cond_9

    .line 520
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 524
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto/16 :goto_0

    .line 515
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v7

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    .line 522
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v7

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_4

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStepComplete()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 459
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 462
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xca

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 466
    return-void
.end method

.method public setStepHide()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public setStepRecordingStart()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000

    .line 374
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->CAMCORDER_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 381
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xca

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 405
    return-void
.end method

.method public setStepRecordingStop()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x40000000

    .line 434
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_BUTTON_GROUP_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_STOP_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 448
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 456
    return-void
.end method

.method public setStepSnapShot()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x40000000

    .line 408
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setStepRecordingStop()V

    .line 431
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_BUTTON_GROUP_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RECORDING_SNAPSHOT_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 420
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->setHelpText(I)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0
.end method
