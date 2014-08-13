.class public Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLFocusButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;,
        Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;
    }
.end annotation


# static fields
.field public static final FOCUSING:I = 0x1

.field private static final FOCUS_BASE_HEIGHT:I

.field private static final FOCUS_BASE_WIDTH:I

.field private static final FOCUS_CONTROL_HEIGHT:I

.field private static final FOCUS_CONTROL_WIDTH:I

.field public static final FOCUS_FAIL:I = 0x3

.field public static final FOCUS_NOT_STARTED:I = 0x0

.field public static final FOCUS_SUCCESS:I = 0x2

.field private static MAX_PAF_CONTROL_POSITION:F = 0.0f

.field private static MAX_PAF_LENS_POSITION:I = 0x0

.field public static MAX_SCALE_VALUE:F = 0.0f

.field private static MIN_PAF_CONTROL_POSITION:F = 0.0f

.field public static MIN_SCALE_VALUE:F = 0.0f

.field public static final MODE_FAIL:I = 0xd

.field public static final MODE_FOCUS:I = 0xb

.field public static final MODE_NOTREADY:I = 0xa

.field public static final MODE_READY:I = 0xc

.field private static PAF_CONTROL_DURATION:I = 0x0

.field private static PAF_CONTROL_END_DURATION:I = 0x0

.field private static final SOLID_RECT_HEIGHT:I

.field private static final SOLID_RECT_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLFocusButton"


# instance fields
.field private aniRectGrow:Landroid/view/animation/Animation;

.field private aniRectShrink:Landroid/view/animation/Animation;

.field private aniRectTranslateGrow:Landroid/view/animation/Animation;

.field private mDegrees:F

.field private mEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mFocus:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFocusControlPosX:I

.field private mFocusControlPosY:I

.field private mFocusRectSizeX:I

.field private mFocusRectSizeY:I

.field private mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRect_Touch:Lcom/sec/android/glview/TwGLResourceTexture;

.field private mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

.field private mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

.field private mInitPosX:I

.field private mInitPosY:I

.field private mMode:I

.field private mOldPosX:I

.field private mOldPosY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f090053

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    .line 44
    const v0, 0x7f090054

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    .line 45
    const v0, 0x7f090055

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_WIDTH:I

    .line 46
    const v0, 0x7f090056

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_BASE_HEIGHT:I

    .line 47
    const v0, 0x7f090057

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_WIDTH:I

    .line 48
    const v0, 0x7f090058

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->FOCUS_CONTROL_HEIGHT:I

    .line 50
    const/high16 v0, 0x3f800000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_SCALE_VALUE:F

    .line 51
    const v0, 0x3f666666

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_SCALE_VALUE:F

    .line 90
    const/16 v0, 0x96

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_CONTROL_DURATION:I

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_CONTROL_END_DURATION:I

    .line 92
    const/16 v0, 0x190

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_LENS_POSITION:I

    .line 93
    const/high16 v0, 0x42340000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_PAF_CONTROL_POSITION:F

    .line 94
    const/high16 v0, 0x43340000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 9
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 62
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 95
    const/high16 v0, 0x42b40000

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    .line 98
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 137
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f020043

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 140
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f020041

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f020042

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 146
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v1, v1

    const v4, 0x3f99999a

    mul-float/2addr v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v1, v1

    const v5, 0x3f99999a

    mul-float/2addr v5, v1

    const v6, 0x7f020043

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Touch:Lcom/sec/android/glview/TwGLResourceTexture;

    .line 148
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v0, v0

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    .line 149
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    .line 151
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Touch:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 227
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const v2, 0x3f4ccccd

    const v3, 0x3f8ccccd

    const v4, 0x3f4ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 257
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f800000

    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->SOLID_RECT_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 290
    float-to-int v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    .line 291
    float-to-int v0, p3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    .line 293
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 294
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 296
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 297
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;JFFLandroid/view/animation/Interpolator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
    .param p1, "x1"    # J
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # Z

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->startAnimation(JFFLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLResourceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLResourceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLResourceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_CONTROL_END_DURATION:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    return v0
.end method

.method private startAnimation(JFFLandroid/view/animation/Interpolator;Z)V
    .locals 8
    .param p1, "duration"    # J
    .param p3, "fromDegrees"    # F
    .param p4, "toDegrees"    # F
    .param p5, "i"    # Landroid/view/animation/Interpolator;
    .param p6, "hasEndAction"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x40000000

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float v7, v1, v6

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, p5}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->setDegree(FF)V

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRotateAnimation:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Control:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 480
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 459
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
    .line 464
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideFocusRect()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 375
    return-void
.end method

.method public onFocus(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(IIZ)V

    .line 301
    return-void
.end method

.method public onFocus(IIZ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animation"    # Z

    .prologue
    const/16 v6, 0xb

    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 304
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    .line 305
    .local v0, "moveX":I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    .line 307
    .local v1, "moveY":I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_1

    .line 308
    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 309
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 311
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 314
    :cond_1
    if-eqz p3, :cond_2

    .line 315
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    if-eq v2, v6, :cond_2

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 326
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 329
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectTranslateGrow:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 330
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 332
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 335
    :cond_2
    return-void
.end method

.method public resetFocusPosIndicator()V
    .locals 3

    .prologue
    .line 353
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosX:I

    .line 354
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mOldPosY:I

    .line 356
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusRectIndicator(I)V

    .line 359
    return-void
.end method

.method public resetInit(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 362
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosX:I

    .line 363
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRectSizeY:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mInitPosY:I

    .line 364
    return-void
.end method

.method public setFocusRectIndicator(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 435
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 407
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 419
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 422
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 430
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusRotationDegree(I)V
    .locals 4
    .param p1, "postionGap"    # I

    .prologue
    .line 338
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 339
    .local v0, "diff":I
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_PAF_CONTROL_POSITION:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MIN_PAF_CONTROL_POSITION:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_LENS_POSITION:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 341
    int-to-float v1, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 342
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->MAX_PAF_CONTROL_POSITION:F

    float-to-int v0, v1

    .line 345
    :cond_0
    if-lez p1, :cond_1

    .line 346
    mul-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_1
    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F

    goto :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 378
    if-nez p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Ready:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_Fail:Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public shrinkRect()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocusRect_NotReady:Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectGrow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 454
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I

    .line 455
    return-void
.end method
