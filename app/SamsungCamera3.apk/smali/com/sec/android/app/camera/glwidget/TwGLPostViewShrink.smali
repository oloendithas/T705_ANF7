.class public Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;
.super Lcom/sec/android/glview/TwGLAniViewGroup;
.source "TwGLPostViewShrink.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLPostViewShutter"

.field private static final THUMBNAIL_LEFT:I

.field private static final THUMBNAIL_SIZE:I

.field private static final THUMBNAIL_TOP:I


# instance fields
.field mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f09037a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_LEFT:I

    .line 40
    const v0, 0x7f09037b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_TOP:I

    .line 41
    const v0, 0x7f09037c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLandroid/graphics/Bitmap;Z)V
    .locals 13
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "previewLeft"    # F
    .param p3, "previewTop"    # F
    .param p4, "previewWidth"    # F
    .param p5, "previewHeight"    # F
    .param p6, "data"    # Landroid/graphics/Bitmap;
    .param p7, "bCamera"    # Z

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    int-to-float v4, v5

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLAniViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v12

    .line 49
    .local v12, "width":I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    .line 51
    .local v9, "height":I
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    .line 53
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setFlip(Z)V

    .line 56
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_SIZE:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float v2, v1, v3

    .line 57
    .local v2, "animWidthRatio":F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_SIZE:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float v4, v1, v3

    .line 59
    .local v4, "animHeightRatio":F
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 60
    .local v10, "shrinkAnimation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000

    const/high16 v3, 0x3f800000

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 61
    .local v0, "ss":Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3, v12, v9}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 62
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 65
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_LEFT:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->THUMBNAIL_TOP:I

    int-to-float v6, v6

    sub-float v6, v6, p3

    invoke-direct {v11, v1, v3, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 66
    .local v11, "ts":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v11, v1, v3, v12, v9}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 67
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 68
    const-wide/16 v5, 0x12c

    invoke-virtual {v11, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 71
    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method


# virtual methods
.method protected setAnimationStep(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 109
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 110
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLImage;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
