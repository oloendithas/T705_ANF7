.class public Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLScaleZoomRect.java"


# static fields
.field private static final DEFAULT_COLOR:I

.field private static final DEFAULT_COLOR_IN:I

.field private static final DEFAULT_THICKNESS:I

.field private static final DEFAULT_THICKNESS_IN:I

.field public static final MAX_ZOOM_LEVEL:I

.field public static final MAX_ZOOM_RATIO:I

.field public static final MIN_ZOOM_RATIO:I

.field protected static final TAG:Ljava/lang/String; = "TwGLScaleZoomRect"

.field private static final TEXT_SIZE:I

.field private static final ZOOM_RECT_SIZE:I

.field public static final ZOOM_STEP:F

.field private static final ZOOM_TEXT_HEIGHT:F

.field private static final ZOOM_TEXT_MARGIN:F

.field private static final ZOOM_TEXT_SHADOW:Z

.field private static final ZOOM_TEXT_SHADOW_OFFSET:I

.field private static final ZOOM_TEXT_STROKE_COLOR:I

.field private static final ZOOM_TEXT_STROKE_WIDTH:I


# instance fields
.field private mAudioZoomIndicatorSizeMargin:I

.field private mAudioZoomIndicatorWidth:I

.field private mAudioZoomInidicator:Lcom/sec/android/glview/TwGLImage;

.field private mCenterPosX:F

.field private mCenterPosY:F

.field private mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

.field private mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

.field private mZoomRectSize:I

.field private mZoomText:Lcom/sec/android/glview/TwGLText;

.field private mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    const v1, 0x7f0a0010

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_RATIO:I

    .line 38
    const v1, 0x7f0a0011

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MIN_ZOOM_RATIO:I

    .line 39
    const v1, 0x7f0a000f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_LEVEL:I

    .line 40
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_RATIO:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MIN_ZOOM_RATIO:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->MAX_ZOOM_LEVEL:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    .line 42
    const v1, 0x7f0901c1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    .line 43
    const v1, 0x7f0901bf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    .line 44
    const v1, 0x7f0901c0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    .line 45
    const v1, 0x7f0a001d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_WIDTH:I

    .line 46
    const/high16 v1, 0x7f080000

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_COLOR:I

    .line 48
    const v1, 0x7f0a003e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->TEXT_SIZE:I

    .line 49
    const v1, 0x7f080014

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR:I

    .line 50
    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR_IN:I

    .line 51
    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS:I

    .line 52
    const v1, 0x7f0a0013

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS_IN:I

    .line 53
    const v1, 0x7f0a0024

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW:Z

    .line 54
    const v0, 0x7f0a0025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW_OFFSET:I

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 10
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "centerPosX"    # F
    .param p3, "centerPosY"    # F
    .param p4, "zoomValueText"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    .line 57
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorWidth:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorSizeMargin:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    .line 74
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    .line 75
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    .line 77
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorSizeMargin:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    .line 79
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS:I

    int-to-float v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_COLOR_IN:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->DEFAULT_THICKNESS_IN:I

    int-to-float v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 84
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v1, v1

    sub-float v2, p2, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    sub-float v3, p3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    add-float/2addr v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sub-float v2, p2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 97
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mAudioZoomIndicatorSizeMargin:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->TEXT_SIZE:I

    int-to-float v7, v1

    const v1, 0x7f080006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW:Z

    move-object v1, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    .line 99
    sget-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    return-void
.end method


# virtual methods
.method public resetPositionForCoverMode(IIZ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "coverMode"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 158
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    .line 159
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    .line 161
    if-eqz p3, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectSize:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomTextGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 11
    .param p1, "currentZoomValue"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x3f800000

    .line 110
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    .line 111
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 112
    .local v3, "tempWidth":F
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    sub-float v1, v5, v6

    .line 113
    .local v1, "left":F
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    sub-float v4, v5, v6

    .line 114
    .local v4, "top":F
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    .line 115
    .local v2, "right":F
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    .line 117
    .local v0, "bottom":F
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 118
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v6, v2, v1

    sub-float v7, v0, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 119
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 120
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v6, v2, v1

    sub-float v7, v0, v4

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 122
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 123
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    add-float/2addr v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 124
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    add-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setZoomValue(IZ)V
    .locals 12
    .param p1, "currentZoomValue"    # I
    .param p2, "isEnableAudioZoom"    # Z

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x3f800000

    .line 128
    const/4 v5, 0x0

    .line 129
    .local v5, "zoomTextMoveX":I
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    .line 130
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_RECT_SIZE:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 131
    .local v3, "tempWidth":F
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    add-float/2addr v7, v11

    mul-float/2addr v7, v3

    sub-float v1, v6, v7

    .line 132
    .local v1, "left":F
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    add-float/2addr v7, v11

    mul-float/2addr v7, v3

    sub-float v4, v6, v7

    .line 133
    .local v4, "top":F
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosX:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    add-float/2addr v7, v11

    mul-float/2addr v7, v3

    add-float v2, v6, v7

    .line 134
    .local v2, "right":F
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mCenterPosY:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v7, v8

    add-float/2addr v7, v11

    mul-float/2addr v7, v3

    add-float v0, v6, v7

    .line 136
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 137
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectOut:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v7, v2, v1

    sub-float v8, v0, v4

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 138
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 139
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomRectIn:Lcom/sec/android/glview/TwGLRectangle;

    sub-float v7, v2, v1

    sub-float v8, v0, v4

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 151
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 152
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    int-to-float v7, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_TEXT_HEIGHT:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    add-float/2addr v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 153
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomValue:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v8, v9

    add-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 154
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->mZoomText:Lcom/sec/android/glview/TwGLText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 155
    return-void
.end method
