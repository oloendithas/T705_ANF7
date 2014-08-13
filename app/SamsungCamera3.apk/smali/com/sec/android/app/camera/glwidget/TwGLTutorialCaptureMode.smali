.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorialCaptureMode.java"


# static fields
.field private static final FOCUS_PICKER_LEFT_PADDING:I

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

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHUTTER_BUTTON_HEIGHT:F

.field private static final SHUTTER_BUTTON_WIDTH:F

.field private static final SHUTTER_BUTTON_X:F

.field private static final SHUTTER_BUTTON_Y:F

.field public static final STEP_BURST_SHOT:I = 0x3

.field public static final STEP_COMPLETE:I = 0x4

.field public static final STEP_SINGLE_SHOT:I = 0x2

.field public static final STEP_TOUCH_FOCUS:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorialCaptureMode"

.field private static final TOUCH_FOCUS_X:I

.field private static final TOUCH_FOCUS_Y:I


# instance fields
.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

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

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    .line 26
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    .line 28
    const v0, 0x7f0901b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    .line 29
    const v0, 0x7f0901ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT_MARGIN:F

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    .line 31
    const v0, 0x7f0901bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    .line 33
    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    .line 34
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    .line 36
    const v0, 0x7f0901b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    .line 40
    const v0, 0x7f090018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_WIDTH:F

    .line 41
    const v0, 0x7f090019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_HEIGHT:F

    .line 42
    const v0, 0x7f09001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_X:F

    .line 43
    const v0, 0x7f09001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_Y:F

    .line 45
    const v0, 0x7f0901af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->TOUCH_FOCUS_X:I

    .line 46
    const v0, 0x7f0901b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->TOUCH_FOCUS_Y:I

    .line 47
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FOCUS_PICKER_LEFT_PADDING:I

    .line 49
    const v0, 0x7f0a0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    .line 50
    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_COLOR:I

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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 71
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 78
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 84
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020317

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 87
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020318

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020319

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    .line 90
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->blinkAnimation:Landroid/view/animation/Animation;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02031b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setStepTouchFocus()V

    .line 116
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 480
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 485
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideHelpTutorial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 126
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 131
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 136
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 141
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    .line 143
    :cond_4
    return-void
.end method

.method public onHelpTts()V
    .locals 4

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

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

    .line 562
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 564
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setSizeForOrientation(I)V

    .line 557
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 558
    return-void
.end method

.method public setHelpText(I)V
    .locals 11
    .param p1, "step"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "helptext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 153
    .local v3, "rows":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 154
    .local v2, "paint":Landroid/graphics/Paint;
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "mTextSize":F
    packed-switch p1, :pswitch_data_0

    .line 378
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 379
    return-void

    .line 159
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0283

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 162
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 197
    :goto_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 198
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-double v7, v7

    const-wide v9, 0x3fc999999999999aL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v8, 0x40000000

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    float-to-double v7, v7

    const-wide v9, 0x3fe999999999999aL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 209
    :goto_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 210
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 211
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v10, 0x40000000

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 221
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 222
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 223
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 224
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 165
    :pswitch_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 166
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 168
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 175
    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_1

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_4

    .line 180
    :pswitch_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 181
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 183
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 190
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 191
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_1

    .line 186
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 187
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_5

    .line 204
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-double v7, v7

    const-wide v9, 0x3fc999999999999aL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-double v7, v7

    const-wide v9, 0x3fe999999999999aL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 216
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 218
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_3

    .line 228
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0284

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 230
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 256
    :goto_6
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 257
    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 258
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 269
    :goto_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 270
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 271
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 272
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v10, 0x40000000

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 280
    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 233
    :pswitch_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 234
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 236
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_6

    .line 238
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_6

    .line 244
    :pswitch_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 245
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 246
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 247
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_6

    .line 249
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 250
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_6

    .line 263
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 265
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_7

    .line 275
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 277
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_8

    .line 286
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0285

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 289
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 315
    :goto_9
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 316
    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 317
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 319
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 328
    :goto_a
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 329
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v9, 0x40000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 331
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v10, 0x40000000

    mul-float/2addr v9, v10

    add-float/2addr v9, v1

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 339
    :goto_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 340
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 342
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 292
    :pswitch_7
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 293
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 294
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 295
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_9

    .line 297
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_9

    .line 302
    :pswitch_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v3

    .line 303
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 304
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 305
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_9

    .line 307
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 308
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_9

    .line 322
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 324
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_a

    .line 334
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 336
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    goto/16 :goto_b

    .line 345
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b028c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 348
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 363
    :goto_c
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 364
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 366
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_X:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_WIDTH:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 370
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 371
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 372
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 351
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 352
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_c

    .line 356
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 357
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_c

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 162
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 230
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 289
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 348
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
    const/high16 v7, 0x40000000

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 489
    const/4 v2, 0x0

    .line 491
    .local v2, "rows":I
    const/4 v0, 0x0

    .line 492
    .local v0, "mTextSize":F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 493
    .local v1, "paint":Landroid/graphics/Paint;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 495
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 499
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 553
    :cond_1
    :goto_0
    return-void

    .line 502
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    if-eq v3, v9, :cond_2

    .line 503
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 504
    if-ne v2, v8, :cond_5

    .line 505
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 509
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_4

    .line 510
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    if-eq v3, v9, :cond_3

    .line 511
    if-ne v2, v8, :cond_6

    .line 512
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 516
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 518
    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    if-ne v3, v8, :cond_1

    .line 519
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_1

    .line 520
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 521
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 507
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v10

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 514
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_2

    .line 527
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    if-eq v3, v9, :cond_7

    .line 528
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FONT_SIZE:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v2

    .line 529
    if-ne v2, v8, :cond_a

    .line 530
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 534
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_9

    .line 535
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    if-eq v3, v9, :cond_8

    .line 536
    if-ne v2, v8, :cond_b

    .line 537
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v0

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 541
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 543
    :cond_9
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    if-ne v3, v8, :cond_1

    .line 544
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_1

    .line 545
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 546
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 532
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_WIDTH:[F

    aget v4, v4, v8

    int-to-float v5, v2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    .line 539
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v8

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_4

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStepBurstShot()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000

    const/4 v1, 0x0

    .line 451
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 457
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setHelpText(I)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 466
    return-void
.end method

.method public setStepComplete()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 469
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 472
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setHelpText(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 476
    return-void
.end method

.method public setStepHide()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public setStepSingleShot()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v5, 0x40000000

    .line 429
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_WIDTH:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SHUTTER_BUTTON_HEIGHT:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020318

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 439
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setHelpText(I)V

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 448
    return-void
.end method

.method public setStepTouchFocus()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/high16 v6, 0x40000000

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 382
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->TOUCH_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->TOUCH_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f02031a

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FOCUS_PICKER_LEFT_PADDING:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->FOCUS_PICKER_LEFT_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 391
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->setHelpText(I)V

    .line 392
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xc9

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mTutorialStep:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 422
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialCaptureMode;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method
