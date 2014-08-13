.class Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;
.super Landroid/view/animation/RotateAnimation;
.source "TwGLFocusButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusRotateAnimation"
.end annotation


# instance fields
.field private mFromDegrees:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPivotX:F

.field private mPivotY:F

.field private mToDegrees:F

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;FFIFIF)V
    .locals 7
    .param p2, "fromDegrees"    # F
    .param p3, "toDegrees"    # F
    .param p4, "pivotXType"    # I
    .param p5, "pivotXValue"    # F
    .param p6, "pivotYType"    # I
    .param p7, "pivotYValue"    # F

    .prologue
    .line 489
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 490
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 491
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mFromDegrees:F

    .line 492
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mToDegrees:F

    .line 493
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mPivotX:F

    .line 494
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mPivotY:F

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 496
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 505
    invoke-super {p0, p1, p2}, Landroid/view/animation/RotateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 506
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mFromDegrees:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mToDegrees:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mFromDegrees:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v1

    .line 507
    .local v0, "degrees":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mPivotX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mPivotY:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 508
    return-void
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public setDegree(FF)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F

    .prologue
    .line 499
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mFromDegrees:F

    .line 500
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mToDegrees:F

    .line 501
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$FocusRotateAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 512
    return-void
.end method
