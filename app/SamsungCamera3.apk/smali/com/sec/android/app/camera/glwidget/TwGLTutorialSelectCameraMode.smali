.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorialSelectCameraMode.java"


# static fields
.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final HELP_MODE_POPUP_LANDSCAPE_X:F

.field private static final HELP_MODE_POPUP_LANDSCAPE_Y:F

.field private static final HELP_MODE_POPUP_PORTRAIT_X:F

.field private static final HELP_POPUP_HEIGHT:F

.field private static final HELP_POPUP_PADDING:[F

.field private static final HELP_POPUP_PICKER_PADDING:F

.field private static final HELP_POPUP_WIDTH:[F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_MARGIN:F

.field private static final HELP_TEXT_WIDTH:[F

.field private static final HELP_TEXT_WIDTH_MARGIN:F

.field private static final MODE_BUTTON_X:F

.field private static final MODE_BUTTON_Y:F

.field private static final RIGHT_SIDE_BUTTON_HEIGHT:F

.field private static final RIGHT_SIDE_BUTTON_WIDTH:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHUTTER_BUTTON_WIDTH:F

.field private static final SHUTTER_BUTTON_X:F

.field public static final STEP_CHANGE_MODE:I = 0x3

.field public static final STEP_COMPLETE:I = 0x4

.field public static final STEP_SELECT_MODE:I = 0x1

.field public static final STEP_SWIPE_LIST:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorialSelectCameraMode"


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

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    .line 26
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    .line 28
    const v0, 0x7f0901b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    .line 29
    const v0, 0x7f0901ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT_MARGIN:F

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    .line 31
    const v0, 0x7f0901bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    .line 33
    const v0, 0x7f0901b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_MODE_POPUP_LANDSCAPE_X:F

    .line 34
    const v0, 0x7f0901b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    .line 35
    const v0, 0x7f0901b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_MODE_POPUP_PORTRAIT_X:F

    .line 36
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    .line 37
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    .line 39
    const v0, 0x7f0901b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    .line 40
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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    .line 43
    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    .line 44
    const v0, 0x7f09001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    .line 45
    const v0, 0x7f090020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->MODE_BUTTON_X:F

    .line 46
    const v0, 0x7f090021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->MODE_BUTTON_Y:F

    .line 48
    const v0, 0x7f090018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SHUTTER_BUTTON_WIDTH:F

    .line 49
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SHUTTER_BUTTON_X:F

    .line 51
    const v0, 0x7f0a0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    .line 52
    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_COLOR:I

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
    .line 74
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 69
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 70
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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 71
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 78
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 83
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020317

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 86
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020318

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 88
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    .line 89
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02031b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimation:Landroid/view/animation/Animation;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setStepSelectMode()V

    .line 114
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 458
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
    .line 463
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 119
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 124
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 139
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 141
    :cond_4
    return-void
.end method

.method public onHelpTts()V
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

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

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 525
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setSizeForOrientation(I)V

    .line 518
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 519
    return-void
.end method

.method public setHelpText(I)V
    .locals 11
    .param p1, "step"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "helptext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 151
    .local v3, "rows":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 152
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 153
    .local v1, "mTextSize":F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 382
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 383
    return-void

    .line 157
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0289

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 160
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 187
    :goto_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 188
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 191
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 200
    :goto_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 201
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 202
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sub-float/2addr v7, v1

    const/high16 v8, 0x40000000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 203
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    const/high16 v8, 0x40800000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 212
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 163
    :pswitch_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 164
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 166
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 169
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 174
    :pswitch_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 175
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 177
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 180
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 196
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 206
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 218
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b028a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 221
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 248
    :goto_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 250
    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 251
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 252
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 262
    :goto_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 264
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 265
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x40400000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v10, 0x40000000

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    mul-float/2addr v8, v9

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 267
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 279
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 280
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 224
    :pswitch_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 225
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 226
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 227
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 229
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 230
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 235
    :pswitch_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 236
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 237
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 238
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 240
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 241
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    .line 254
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 255
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_5

    .line 269
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x40400000

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 271
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_6

    .line 284
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b028b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 287
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 314
    :goto_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 316
    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 317
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 318
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 327
    :goto_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 329
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x40400000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v10, 0x40000000

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    mul-float/2addr v8, v9

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 332
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 344
    :goto_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 345
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 346
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 290
    :pswitch_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 291
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 292
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 293
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 295
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 296
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 301
    :pswitch_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 302
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 303
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 304
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 306
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 307
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_7

    .line 320
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 321
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_8

    .line 334
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x40400000

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 336
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const/high16 v9, 0x40800000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_9

    .line 349
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b028c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 352
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 367
    :goto_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 370
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 371
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SHUTTER_BUTTON_X:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SHUTTER_BUTTON_WIDTH:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 374
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 375
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 376
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 355
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 356
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    .line 360
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_a

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 221
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 287
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 352
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000

    const/4 v7, 0x1

    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, "rows":I
    const/4 v0, 0x0

    .line 469
    .local v0, "mTextSize":F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 470
    .local v1, "paint":Landroid/graphics/Paint;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 472
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_0

    .line 473
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 476
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 479
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_2

    .line 480
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 481
    if-ne v2, v7, :cond_3

    .line 482
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 486
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_1

    .line 487
    if-ne v2, v7, :cond_4

    .line 488
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 491
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v9

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 490
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_2

    .line 496
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_5

    .line 497
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 498
    if-ne v2, v7, :cond_6

    .line 499
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 503
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_1

    .line 504
    if-ne v2, v7, :cond_7

    .line 505
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 508
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto/16 :goto_0

    .line 501
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v7

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    .line 507
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v7

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_4

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStepChangeMode()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 434
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 437
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setHelpText(I)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 444
    return-void
.end method

.method public setStepComplete()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 447
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 450
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setHelpText(I)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 454
    return-void
.end method

.method public setStepHide()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public setStepSelectMode()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000

    .line 386
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->MODE_BUTTON_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->RIGHT_SIDE_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->MODE_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->RIGHT_SIDE_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 394
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setHelpText(I)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 418
    return-void
.end method

.method public setStepSwipeList()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 421
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 424
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setHelpText(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 431
    return-void
.end method
